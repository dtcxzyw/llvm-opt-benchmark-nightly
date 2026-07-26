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
  %i.g = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 3 uses
  %i.i = srem i64 %i.b, 8                         ; 3 uses
  %i.j = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL16kTrailingBitmaskE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = icmp eq i64 %i.e, %i.d
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  %i.n = select i1 %i.m, i8 0, i8 %i.k
  %i.o = or i8 %i.n, %i.h
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = and i8 %i.q, %i.h
  %i.s = xor i8 %i.h, -1
  %i.t = select i1 %3, i8 %i.s, i8 0
  %i.u = or i8 %i.r, %i.t
  store i8 %i.u, ptr %i.p, align 1, !tbaa !8
  %reass.sub = sub nsw i64 %i.e, %i.d             ; 2 uses
  %i.v = icmp sgt i64 %reass.sub, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.x = add nsw i64 %reass.sub, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 %i.c, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %i.i, 0
  br i1 %i.y, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c
  %.sink = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.f ]
  %.sink51 = phi i8 [ %i.o, %bb.c ], [ %i.k, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.sink ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = and i8 %i.aa, %.sink51
  %i.ac = xor i8 %.sink51, -1
  %i.ad = select i1 %3, i8 %i.ac, i8 0
  %i.ae = or i8 %i.ab, %i.ad
  store i8 %i.ae, ptr %i.z, align 1, !tbaa !8
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = getelementptr i8, ptr %i.l, i64 %2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = xor i8 %i.o, %i.m
  %i.q = sdiv i64 %1, 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = or i8 %i.s, %i.p
  store i8 %i.t, ptr %i.r, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit

bb.e:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %i.u = trunc i64 %i.h to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = sdiv i64 %1, 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp ult i32 %i.v, 8
  %.neg.i = sext i1 %i.z to i32
  %i.aa = and i32 %i.v, 7
  %.neg37.i = shl nsw i32 %.neg.i, %i.aa
  %.neg38.i = trunc nsw i32 %.neg37.i to i8
  %i.ab = or i8 %i.y, %.neg38.i
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !8
  %i.ac = add nsw i64 %i.i, %1                    ; 2 uses
  %i.ad = sub nsw i64 %2, %i.i                    ; 3 uses
  %i.ae = sdiv i64 %i.ac, 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = lshr i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 -1, i64 %i.ag, i1 false)
  %i.ah = and i64 %i.ad, 7                        ; 2 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = and i64 %i.ad, -8
  %i.aj = add nsw i64 %i.ai, %i.ac
  %i.ak = trunc nuw nsw i64 %i.ah to i8
  %i.al = sdiv i64 %i.aj, 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %notmask.i = shl nsw i8 -1, %i.ak
  %i.ao = xor i8 %notmask.i, -1
  %i.ap = or i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !8
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = getelementptr i8, ptr %i.l, i64 %2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = sdiv i64 %1, 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = xor i8 %i.m, %i.o
  %i.t = xor i8 %i.s, -1
  %i.u = and i8 %i.r, %i.t
  store i8 %i.u, ptr %i.q, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit

bb.e:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %i.v = trunc i64 %i.h to i32
  %i.w = sub nsw i32 8, %i.v                      ; 2 uses
  %i.x = sdiv i64 %1, 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = icmp ult i32 %i.w, 8
  %i.ab = zext i1 %i.aa to i32
  %i.ac = and i32 %i.w, 7
  %i.ad = shl nuw nsw i32 %i.ab, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = add i8 %i.ae, -1
  %i.ag = and i8 %i.z, %i.af
  store i8 %i.ag, ptr %i.y, align 1, !tbaa !8
  %i.ah = add nsw i64 %i.i, %1                    ; 2 uses
  %i.ai = sub nsw i64 %2, %i.i                    ; 3 uses
  %i.aj = sdiv i64 %i.ah, 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = lshr i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  %i.am = and i64 %i.ai, 7                        ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.ai, -8
  %i.ao = add nsw i64 %i.an, %i.ah
  %i.ap = trunc nuw nsw i64 %i.am to i8
  %i.aq = sdiv i64 %i.ao, 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %.neg.i = shl nsw i8 -1, %i.ap
  %i.at = and i8 %i.as, %.neg.i
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit

_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
