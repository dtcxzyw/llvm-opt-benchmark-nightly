inline.NumInlined: 115
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree9getParamsEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %switch.tableidx = add i32 %i.b, -4
  %i.c = icmp ult i32 %switch.tableidx, 5
  %. = select i1 %i.c, i64 80, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN6hermes6ESTree17getBlockStatementEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  switch i32 %i.b, label %bb.g [
    i32 4, label %bb.b
    i32 6, label %bb.c
    i32 5, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7
  %i.k = icmp eq i32 %i.j, 21
  %spec.select.i = select i1 %i.k, ptr %i.h, ptr null
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %spec.select.i, %bb.d ], [ %i.m, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN6hermes6ESTree9getObjectEPNS0_24MemberExpressionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !37
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !37
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree11getComputedEPNS0_24MemberExpressionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.in = load i8, ptr %.0.in.in, align 8, !tbaa !38, !range !39, !noundef !40
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN6hermes6ESTree9getCalleeEPNS0_22CallExpressionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !37
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %.0 = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %switch.tableidx.i = add i32 %i.b, -4
  %i.c = icmp ult i32 %switch.tableidx.i, 5
  %..i = select i1 %i.c, i64 80, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %..i ; 3 uses
  %.sroa.010.0.in13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.010.014 = load ptr, ptr %.sroa.010.0.in13, align 8, !tbaa !41 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.010.014, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.010.016 = phi ptr [ %.sroa.010.0, %.critedge ], [ %.sroa.010.014, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.016) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = add i32 %i.f, -94
  %i.h = icmp ult i32 %i.g, 4
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i32 %i.f, 221
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7
  %i.n = add i32 %i.m, -94
  %i.o = icmp ult i32 %i.n, 4
  br i1 %i.o, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  %.sroa.010.0.in = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.c, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ true, %.critedge ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree19hasParamExpressionsEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %switch.tableidx.i = add i32 %i.b, -4
  %i.c = icmp ult i32 %switch.tableidx.i, 5
  %..i = select i1 %i.c, i64 80, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %..i ; 3 uses
  %.sroa.010.0.in18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.010.019 = load ptr, ptr %.sroa.010.0.in18, align 8, !tbaa !41 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.010.019, %i.d
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.010.021 = phi ptr [ %.sroa.010.0, %bb.c ], [ %.sroa.010.019, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.021) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7
  switch i32 %i.f, label %bb.c [
    i32 97, label %._crit_edge
    i32 221, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7
  %i.k = icmp eq i32 %i.j, 97
  br i1 %i.k, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.010.0.in = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 8
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.c, %.lr.ph, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %.lr.ph ], [ false, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree11isGeneratorEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  switch i32 %i.b, label %bb.b [
    i32 4, label %.sink.split
    i32 6, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.e, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree7isAsyncEPNS0_16FunctionLikeNodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  switch i32 %i.b, label %bb.f [
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.d = load i8, ptr %i.c, align 1, !tbaa !42, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43, !range !39, !noundef !40
  %i.h = trunc nuw i8 %i.g to i1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.j = load i8, ptr %i.i, align 1, !tbaa !44, !range !39, !noundef !40
  %i.k = trunc nuw i8 %i.j to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i8, ptr %i.l, align 8, !tbaa !45, !range !39, !noundef !40
  %i.n = trunc nuw i8 %i.m to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.n, %bb.e ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!7 = !{!8, !14, i64 16}
!8 = !{!"_ZTSN6hermes6ESTree4NodeE", !9, i64 0, !14, i64 16, !4, i64 20, !15, i64 24, !16, i64 40}
!9 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes6ESTree4NodeEJEEE", !10, i64 0}
!10 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !11, i64 0}
!11 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !12, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!15 = !{!"_ZTSN4llvh7SMRangeE", !16, i64 0, !16, i64 8}
!16 = !{!"_ZTSN4llvh5SMLocE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!19, !26, i64 96}
!19 = !{!"_ZTSN6hermes6ESTree22FunctionExpressionNodeE", !20, i64 0, !26, i64 72, !27, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !25, i64 128, !25, i64 129}
!20 = !{!"_ZTSN6hermes6ESTree16FunctionLikeNodeE", !8, i64 0, !21, i64 48}
!21 = !{!"_ZTSN6hermes6ESTree22FunctionLikeDecorationE", !22, i64 0, !23, i64 8, !24, i64 12, !25, i64 16}
!22 = !{!"p1 _ZTSN6hermes3sem12FunctionInfoE", !13, i64 0}
!23 = !{!"_ZTSN6hermes6ESTree10StrictnessE", !5, i64 0}
!24 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"p1 _ZTSN6hermes6ESTree4NodeE", !13, i64 0}
!27 = !{!"_ZTSN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEE", !28, i64 0}
!28 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !10, i64 0}
!29 = !{!30, !26, i64 96}
!30 = !{!"_ZTSN6hermes6ESTree23FunctionDeclarationNodeE", !20, i64 0, !26, i64 72, !27, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !25, i64 128, !25, i64 129}
!31 = !{!32, !26, i64 96}
!32 = !{!"_ZTSN6hermes6ESTree27ArrowFunctionExpressionNodeE", !20, i64 0, !26, i64 72, !27, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !25, i64 128, !25, i64 129}
!33 = !{!34, !26, i64 96}
!34 = !{!"_ZTSN6hermes6ESTree24ComponentDeclarationNodeE", !20, i64 0, !26, i64 72, !27, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !25, i64 120}
!35 = !{!36, !26, i64 96}
!36 = !{!"_ZTSN6hermes6ESTree19HookDeclarationNodeE", !20, i64 0, !26, i64 72, !27, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !25, i64 120}
!37 = !{!26, !26, i64 0}
!38 = !{!25, !25, i64 0}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!11, !12, i64 8}
!42 = !{!19, !25, i64 129}
!43 = !{!32, !25, i64 129}
!44 = !{!30, !25, i64 129}
!45 = !{!36, !25, i64 120}
end_hunk_0
