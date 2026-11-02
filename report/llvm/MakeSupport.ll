Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MakeSupport?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15quoteMakeTargetEN4llvm9StringRefERNS0_15SmallVectorImplIcEE(ptr nofree readonly captures(none) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %.not27 = icmp eq i64 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = and i64 %1, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph29, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21
  %indvars.iv.a = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next.a, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21 ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.a ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  switch i8 %i.f, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 36, label %bb.i
    i8 35, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = trunc nuw i64 %indvars.iv.a to i32
  %.024 = add i32 %i.g, -1                        ; 2 uses
  %i.h = icmp sgt i32 %.024, -1
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15
  %.025 = phi i32 [ %.0, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15 ], [ %.024, %bb.c ] ; 3 uses
  %3 = zext nneg i32 %.025 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 92
  br i1 %i.k, label %bb.f, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i = icmp ult i64 %i.l, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !17

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 92)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.e:                                             ; preds = %.critedge
  %i.n = load ptr, ptr %2, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 92, ptr %i.o, align 1
  %i.p = load i64, ptr %i.b, align 8, !tbaa !11
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.b, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.f:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i14 = icmp ult i64 %i.r, %i.s
  br i1 %.not.i14, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 92)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 92, ptr %i.u, align 1
  %i.v = load i64, ptr %i.b, align 8, !tbaa !11
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.b, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit15: ; preds = %bb.g, %bb.h
  %.0 = add nsw i32 %.025, -1
  %i.x = icmp sgt i32 %.025, 0
  br i1 %i.x, label %.lr.ph, label %.critedge, !llvm.loop !13

bb.i:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i16 = icmp ult i64 %i.y, %i.z
  br i1 %.not.i16, label %bb.k, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 36)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %2, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 36, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i18 = icmp ult i64 %i.ae, %i.af
  br i1 %.not.i18, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 92)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 92, ptr %i.ah, align 1
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !11
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.e, %bb.d, %bb.b
  %i.ak = load i8, ptr %i.e, align 1, !tbaa !15   ; 2 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.am = load i64, ptr %i.c, align 8, !tbaa !16
  %.not.i20 = icmp ult i64 %i.al, %i.am
  br i1 %.not.i20, label %bb.p, label %bb.o, !prof !17

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext %i.ak)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 %i.ak, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !11
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit21: ; preds = %bb.o, %bb.p
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next.a, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #3
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !11
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !8, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 8}
!12 = !{!10, !8, i64 0}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = !{!4, !4, i64 0}
!16 = !{!10, !9, i64 16}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0
