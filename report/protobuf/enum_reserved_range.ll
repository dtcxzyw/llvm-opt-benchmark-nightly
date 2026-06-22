inline.NumInlined: 38
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Reserved range (%d, %d) is invalid, enum=%s\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_upb_EnumReservedRange_At(ptr nofree noundef readnone captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @upb_EnumReservedRange_Start(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @upb_EnumReservedRange_End(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_EnumReservedRanges_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.a, 3                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !23 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !26

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.f, align 8, !tbaa !23
  br label %.lr.ph.preheader

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.f, i64 noundef %i.d) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #6
  unreachable

.lr.ph.preheader:                                 ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.m, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.i38 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %bb.g ]
  ret ptr %.0.i38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 1              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i32, ptr %i.r, align 1              ; 3 uses
  %i.t = icmp slt i32 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.u = tail call ptr @upb_EnumDef_FullName(ptr noundef %3) #7
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %i.u) #6
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 2 uses
  store i32 %i.q, ptr %i.v, align 4, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.s, ptr %i.w, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29
}

; Function Attrs: noreturn
declare void @_upb_DefBuilder_Errf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @upb_EnumDef_FullName(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_upb_DefBuilder_OomErr(ptr noundef) local_unnamed_addr #3

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"upb_EnumReservedRange", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !21, i64 56}
!11 = !{!"upb_DefBuilder", !12, i64 0, !14, i64 8, !17, i64 24, !18, i64 32, !19, i64 40, !20, i64 48, !21, i64 56, !21, i64 64, !13, i64 72, !22, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !5, i64 104}
!12 = !{!"p1 _ZTS11upb_DefPool", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"", !15, i64 0}
!15 = !{!"", !16, i64 0, !4, i64 8, !4, i64 12}
!16 = !{!"p1 _ZTS11_upb_tabent", !13, i64 0}
!17 = !{!"p1 _ZTS26google_protobuf_FeatureSet", !13, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS11upb_FileDef", !13, i64 0}
!21 = !{!"p1 _ZTS9upb_Arena", !13, i64 0}
!22 = !{!"p1 _ZTS17upb_MiniTableFile", !13, i64 0}
!23 = !{!24, !18, i64 0}
!24 = !{!"upb_Arena", !18, i64 0, !18, i64 8}
!25 = !{!24, !18, i64 8}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS53google_protobuf_EnumDescriptorProto_EnumReservedRange", !13, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
end_hunk_0
