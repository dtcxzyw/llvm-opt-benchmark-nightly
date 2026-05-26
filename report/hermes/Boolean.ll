inline.NumInlined: 88
inline.NumDeleted: 59
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [56 x i8] c"Boolean.prototype.valueOf() can only be used on Boolean\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm24createBooleanConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 275, ptr noundef nonnull @_ZN6hermes2vm18booleanConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSBooleanEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 54) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24booleanPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 35, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23booleanPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18booleanConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !13
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ -1688849860263936, %bb.a ]
  %i.e = tail call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0.0.i) #3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.h, -140737488355328
  %.not5 = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.i = load ptr, ptr %2, align 8, !tbaa !12, !noalias !21
  %.sroa.02.0.copyload = load i64, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.j = and i64 %.sroa.02.0.copyload, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = zext i1 %i.e to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i8 %i.l, ptr %i.m, align 4, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.n = zext i1 %i.e to i64
  %i.o = or disjoint i64 %i.n, -1407374883553280
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.3.0 = phi i64 [ %.sroa.02.0.copyload, %bb.c ], [ %i.o, %bb.d ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24booleanPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !12, !noalias !36
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %.mask.i = and i64 %i.b, -140737488355328
  %i.c = icmp eq i64 %.mask.i, -1407374883553280
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i1
  br i1 %i.d, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, -844424930131969
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.b, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.h, -16777216
  %i.i = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 905969664
  br i1 %i.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 55, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !43
  store ptr @.str, ptr %3, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !45
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !24, !range !46, !noundef !47
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.f
  %.sink15 = phi i32 [ 37, %bb.f ], [ 36, %bb.b ], [ 36, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.s = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.r, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sink15) #3
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = or i64 %i.t, -844424930131968
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.sroa.3.0 = phi i64 [ %i.u, %bb.g ], [ undef, %.thread ]
  %.sroa.0.1 = phi i32 [ 1, %bb.g ], [ %i.n, %.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23booleanPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !12, !noalias !48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %.mask.i = and i64 %i.b, -140737488355328
  %i.c = icmp eq i64 %.mask.i, -1407374883553280
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, -844424930131969
  br i1 %i.d, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.b, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 905969664
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 55, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !43
  store ptr @.str, ptr %3, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !45
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.d

_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.o = load i8, ptr %i.n, align 4, !tbaa !24, !range !46, !noundef !47
  %i.p = zext nneg i8 %i.o to i64
  %i.q = or disjoint i64 %i.p, -1407374883553280
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit
  %.sroa.4.0 = phi i64 [ %i.q, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.b, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit ], [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSBooleanEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!7 = !{!8, !4, i64 8}
!8 = !{!"_ZTSN6hermes2vm10NativeArgsE", !9, i64 0, !4, i64 8, !10, i64 16}
!9 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!15 = distinct !{!15, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!8, !10, i64 16}
!19 = !{!20, !17, i64 0}
!20 = !{!"_ZTSN6hermes2vm11HermesValueE", !17, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!23 = distinct !{!23, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!24 = !{!25, !35, i64 20}
!25 = !{!"_ZTSN6hermes2vm9JSBooleanE", !26, i64 0, !35, i64 20}
!26 = !{!"_ZTSN6hermes2vm8JSObjectE", !27, i64 0, !28, i64 4, !29, i64 8, !33, i64 12, !34, i64 16}
!27 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!28 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!29 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !30, i64 0}
!30 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !31, i64 0}
!31 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !32, i64 0}
!32 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!33 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !30, i64 0}
!34 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !30, i64 0}
!35 = !{!"bool", !5, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!38 = distinct !{!38, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!39 = !{!40, !41, i64 24}
!40 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !41, i64 8, !5, i64 16, !41, i64 24, !17, i64 32, !17, i64 40}
!41 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!42 = !{!40, !17, i64 32}
!43 = !{!40, !17, i64 40}
!44 = !{!5, !5, i64 0}
!45 = !{!40, !41, i64 8}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!50 = distinct !{!50, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_0
