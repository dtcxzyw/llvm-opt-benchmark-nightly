Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExpStringIterator?download=true
inline.NumInlined: 69
inline.NumDeleted: 60
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [79 x i8] c"RegExpStringIteratorPrototype.next requires 'this' is a RegExp String Iterator\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm37populateRegExpStringIteratorPrototypeERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 259, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm33regExpStringIteratorPrototypeNextEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 277) #3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !23
  store i64 %i.e, ptr %i.i, align 8, !tbaa !11
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #3
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33regExpStringIteratorPrototypeNextEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !28, !noalias !29 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.f = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1056964608
  br i1 %i.f, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_22JSRegExpStringIteratorEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre3 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_22JSRegExpStringIteratorEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_22JSRegExpStringIteratorEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i ], [ %.pre3, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_22JSRegExpStringIteratorEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !9

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_22JSRegExpStringIteratorEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 78, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !36
  store ptr @.str, ptr %3, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !38
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  %i.p = insertvalue { i32, i64 } poison, i32 %i.o, 0
  %i.q = insertvalue { i32, i64 } %i.p, i64 undef, 1
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_22JSRegExpStringIteratorEEENS0_6HandleIT_EEv.exit
  %i.r = tail call { i32, i64 } @_ZN6hermes2vm22JSRegExpStringIterator11nextElementENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.r, %bb.b ], [ %i.q, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22JSRegExpStringIterator11nextElementENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !7, i64 0}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"long", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !7, i64 0}
!13 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !12, i64 8}
!14 = !{!13, !12, i64 8}
!15 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !7, i64 0}
!16 = !{!"_ZTSN4llvh15SmallVectorBaseE", !7, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !16, i64 0}
!18 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !17, i64 0}
!19 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !18, i64 0}
!20 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !4, i64 0}
!21 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !19, i64 0, !20, i64 16}
!22 = !{!"_ZTSN6hermes2vm7GCScopeE", !15, i64 0, !12, i64 8, !4, i64 16, !21, i64 144, !8, i64 192, !8, i64 200, !5, i64 208}
!23 = !{!22, !8, i64 192}
!24 = !{!22, !8, i64 200}
!25 = distinct !{!25, i1 false, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!26 = distinct !{!26, !25, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!27 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !8, i64 0}
!28 = !{!27, !8, i64 0}
!29 = !{!26}
!30 = !{!"_ZTSN6hermes2vm11HermesValueE", !10, i64 0}
!31 = !{!30, !10, i64 0}
!32 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !4, i64 0}
!33 = !{!"_ZTSN6hermes2vm11TwineChar16E", !4, i64 0, !32, i64 8, !4, i64 16, !32, i64 24, !10, i64 32, !10, i64 40}
!34 = !{!33, !32, i64 24}
!35 = !{!33, !10, i64 32}
!36 = !{!33, !10, i64 40}
!37 = !{!4, !4, i64 0}
!38 = !{!33, !32, i64 8}
end_hunk_0
