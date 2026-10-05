Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRDLSymbols?download=true
inline.NumInlined: 50
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4irdl23lookupSymbolNearDialectERNS_21SymbolTableCollectionEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr %2) local_unnamed_addr #0 {
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not7.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %.not7.i, label %.lr.ph.split.us.i, label %bb.a

bb.a:                                             ; preds = %3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i3 = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %i.d, label %_ZL15lookupDialectOpPN4mlir9OperationE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

.lr.ph.split.us.i:                                ; preds = %3, %.lr.ph.split.us.i
  %storemerge4.us.i = phi ptr [ %6, %.lr.ph.split.us.i ], [ %1, %3 ]
  %4 = getelementptr inbounds nuw i8, ptr %storemerge4.us.i, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !30, !nonnull !31, !noundef !31
  %6 = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  br label %.lr.ph.split.us.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit.i
  %.sink.i4 = phi ptr [ %i.g, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sink.i4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30, !nonnull !31, !noundef !31
  %i.g = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #3 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %i.k, label %_ZL15lookupDialectOpPN4mlir9OperationE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZL15lookupDialectOpPN4mlir9OperationE.exit:      ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.a
  %.sink.i.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %_ZN4mlir9Operation11getParentOpEv.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sink.i.lcssa, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL15lookupDialectOpPN4mlir9OperationE.exit
  %i.n = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m) #3
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %_ZL15lookupDialectOpPN4mlir9OperationE.exit, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ null, %_ZL15lookupDialectOpPN4mlir9OperationE.exit ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.o, ptr %2) #3
  ret ptr %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4irdl23lookupSymbolNearDialectEPNS_9OperationENS_13SymbolRefAttrE(ptr nofree noundef readonly captures(none) %0, ptr %1) local_unnamed_addr #0 {
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %.not7.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %.not7.i, label %.lr.ph.split.us.i, label %bb.a

bb.a:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i2 = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %i.d, label %_ZL15lookupDialectOpPN4mlir9OperationE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

.lr.ph.split.us.i:                                ; preds = %2, %.lr.ph.split.us.i
  %storemerge4.us.i = phi ptr [ %5, %.lr.ph.split.us.i ], [ %0, %2 ]
  %3 = getelementptr inbounds nuw i8, ptr %storemerge4.us.i, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !30, !nonnull !31, !noundef !31
  %5 = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  br label %.lr.ph.split.us.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit.i
  %.sink.i3 = phi ptr [ %i.g, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ %0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sink.i3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30, !nonnull !31, !noundef !31
  %i.g = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #3 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_4irdl9DialectOpEvE2idE
  br i1 %i.k, label %_ZL15lookupDialectOpPN4mlir9OperationE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZL15lookupDialectOpPN4mlir9OperationE.exit:      ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.a
  %.sink.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZN4mlir9Operation11getParentOpEv.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sink.i.lcssa, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL15lookupDialectOpPN4mlir9OperationE.exit
  %i.n = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m) #3
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %_ZL15lookupDialectOpPN4mlir9OperationE.exit, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ null, %_ZL15lookupDialectOpPN4mlir9OperationE.exit ]
  %i.p = tail call noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.o, ptr %1) #3
  ret ptr %i.p
}

declare noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !8, i64 0}
!12 = !{!"_ZTSN4mlir6TypeIDE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !8, i64 0}
!15 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !14, i64 0, !14, i64 8}
!16 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !15, i64 0}
!17 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !16, i64 0}
!18 = !{!"_ZTSN4llvm10ilist_nodeIN4mlir9OperationEJEEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm22ilist_node_with_parentIN4mlir9OperationENS1_5BlockEJEEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4mlir5BlockE", !8, i64 0}
!21 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !8, i64 0}
!22 = !{!"_ZTSN4mlir9AttributeE", !21, i64 0}
!23 = !{!"_ZTSN4mlir12LocationAttrE", !22, i64 0}
!24 = !{!"_ZTSN4mlir8LocationE", !23, i64 0}
!25 = !{!"bool", !4, i64 0}
!26 = !{!"_ZTSN4mlir13OperationNameE", !9, i64 0}
!27 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_14DictionaryAttrENS_9AttributeENS0_21DictionaryAttrStorageENS0_16AttributeUniquerEJEEE", !22, i64 0}
!28 = !{!"_ZTSN4mlir14DictionaryAttrE", !27, i64 0}
!29 = !{!"_ZTSN4mlir9OperationE", !19, i64 0, !20, i64 16, !24, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !25, i64 46, !4, i64 47, !26, i64 48, !28, i64 56}
!30 = !{!29, !20, i64 16}
!31 = !{}
!32 = !{!"vtable pointer", !3, i64 0}
!33 = !{!32, !32, i64 0}
end_hunk_0
