inline.NumInlined: 320
inline.NumDeleted: 230
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [58 x i8] c"Proxy() called in function context instead of constructor\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"new Proxy target must be an Object\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"new Proxy handler must be an Object\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm16proxyConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.mask.i.i.i = and i64 %i.c, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 57, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !19
  store ptr @.str, ptr %3, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !21
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not14 = icmp eq i32 %i.j, 0
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !23, !noalias !24 ; 3 uses
  br i1 %.not14, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.pre.pre, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.l, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.m = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %4 = load i32, ptr %i.n, align 4
  %5 = add i32 %4, -436207616
  %i.o = icmp ult i32 %5, 855638016
  %spec.select.i = select i1 %i.o, ptr %i.k, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %.not18 = icmp eq i32 %i.j, 1
  br i1 %.not18, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.p = getelementptr inbounds i8, ptr %.pre.pre, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.p, align 8, !tbaa !27 ; 2 uses
  %i.q = icmp ugt i64 %.sroa.0.0.copyload.i5, -844424930131969
  br i1 %i.q, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i6, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i6: ; preds = %bb.d
  %i.r = and i64 %.sroa.0.0.copyload.i5, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr
  %6 = load i32, ptr %i.s, align 4
  %7 = add i32 %6, -436207616
  %i.t = icmp ult i32 %7, 855638016
  %spec.select.i7 = select i1 %i.t, ptr %i.p, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8: ; preds = %bb.b, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %bb.d, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i6
  %.sroa.03.0.i17 = phi ptr [ %.sroa.03.0.i, %bb.d ], [ %.sroa.03.0.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %.sroa.03.0.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i6 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ]
  %.sroa.03.0.i4 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.d ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %spec.select.i7, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i6 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ]
  %i.u = tail call fastcc ptr @_ZN6hermes2vm12_GLOBAL__N_111proxyCreateERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.03.0.i17, ptr %.sroa.03.0.i4, ptr %.pre.pre) ; 2 uses
  %.not15 = icmp eq ptr %i.u, inttoptr (i64 -1 to ptr)
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.u, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.013.1 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.e ], [ 0, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8 ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i9, %bb.e ], [ undef, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit8 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN6hermes2vm12_GLOBAL__N_111proxyCreateERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.b = icmp ugt i64 %i.a, -844424930131969
  %i.c = and i64 %i.a, 281474976710655            ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 34, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !19
  store ptr @.str.1, ptr %4, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !21
  %i.j = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit9

_ZN6hermes2vm11TwineChar16C2EPKc.exit9:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 35, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !19
  store ptr @.str.2, ptr %5, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !21
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = inttoptr i64 %i.c to ptr
  %6 = load i32, ptr %i.u, align 4
  %7 = add i32 %6, -1140850688
  %i.v = icmp ult i32 %7, 150994944
  br i1 %i.v, label %bb.d, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = tail call ptr @_ZN6hermes2vm15JSCallableProxy6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #3
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = or i64 %i.x, -281474976710656            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = icmp ult ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !31
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aa, i64 %i.y) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.011.0 = phi ptr [ %3, %bb.c ], [ %i.ac, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  tail call void @_ZN6hermes2vm7JSProxy19setTargetAndHandlerENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeES4_S4_(ptr %.sroa.011.0, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %2) #3
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.015.0 = phi ptr [ %.sroa.011.0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15JSCallableProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit9 ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm20proxyRevocationStepsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -48
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.b, align 8, !tbaa !27
  %i.c = and i64 %.sroa.0.0.copyload.i15, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i32, ptr %i.e, align 4, !tbaa !3
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = zext i32 %.val to i64
  %i.h = add i64 %i.g, %i.f
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.0.0.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !3 ; 3 uses
  %i.k = icmp eq i32 %.sroa.0.0.i.i.i.i, 15
  br i1 %i.k, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = and i64 %i.n, -4194304
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = icmp eq ptr %i.m, %i.p
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 15) #3
  br label %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %bb.b, %bb.c
  store i32 15, ptr %i.j, align 4, !tbaa !47
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i, 0
  %i.s = zext i32 %.sroa.0.0.i.i.i.i to i64
  %i.t = add i64 %i.s, %i.f
  %i.u = or i64 %i.t, -281474976710656
  %i.v = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !31
  store i64 %i.v, ptr %i.z, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.x, i64 %i.v) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.ae, %bb.e ]
  tail call void @_ZN6hermes2vm7JSProxy19setTargetAndHandlerENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeES4_S4_(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

declare void @_ZN6hermes2vm7JSProxy19setTargetAndHandlerENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeES4_S4_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14proxyRevocableEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !23, !noalias !49
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %3 = load i32, ptr %i.g, align 4
  %4 = add i32 %3, -436207616
  %i.h = icmp ult i32 %4, 855638016
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %.not51 = icmp eq i32 %i.b, 1
  br i1 %.not51, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.i = load ptr, ptr %2, align 8, !tbaa !23, !noalias !52
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.j, align 8, !tbaa !27 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.0.0.copyload.i21, -844424930131969
  br i1 %i.k, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i22, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i22: ; preds = %bb.c
  %i.l = and i64 %.sroa.0.0.copyload.i21, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %5 = load i32, ptr %i.m, align 4
  %6 = add i32 %5, -436207616
  %i.n = icmp ult i32 %6, 855638016
  %spec.select.i23 = select i1 %i.n, ptr %i.j, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24: ; preds = %bb.a, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i22
  %.sroa.03.0.i50 = phi ptr [ %.sroa.03.0.i, %bb.c ], [ %.sroa.03.0.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %.sroa.03.0.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i22 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ]
  %.sroa.03.0.i20 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %spec.select.i23, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i22 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ]
  %i.o = tail call ptr @_ZN6hermes2vm7JSProxy6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -281474976710656            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !31
  store i64 %i.q, ptr %i.u, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit24
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %i.q) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.z, %bb.e ]
  %i.aa = tail call fastcc ptr @_ZN6hermes2vm12_GLOBAL__N_111proxyCreateERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.03.0.i50, ptr %.sroa.03.0.i20, ptr %.0.i.i.i.i.i.i) ; 3 uses
  %.not44 = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not44, label %bb.x, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ac = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ab, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm20proxyRevocationStepsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 14, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 1) #3 ; 2 uses
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.aa, align 8, !tbaa !27 ; 9 uses
  %i.ad = ashr i64 %.sroa.0.0.copyload.i25, 47
  switch i64 %i.ad, label %bb.n [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.g
    i64 -11, label %bb.h
    i64 -10, label %bb.i
    i64 -9, label %bb.j
    i64 -6, label %bb.k
    i64 -5, label %bb.k
    i64 -4, label %bb.l
    i64 -3, label %bb.l
    i64 -2, label %bb.m
    i64 -1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = trunc i64 %.sroa.0.0.copyload.i25 to i1
  %i.af = select i1 %i.ae, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.j:                                             ; preds = %bb.f
  %i.ag = trunc i64 %.sroa.0.0.copyload.i25 to i32
  %i.ah = shl i32 %i.ag, 3
  %i.ai = or disjoint i32 %i.ah, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.f, %bb.f
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %.sroa.0.0.copyload.i25, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %.sroa.0.0.copyload.i25, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.ap, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = sub i64 %.sroa.0.0.copyload.i25, %i.ar
  %i.at = trunc i64 %i.as to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.n:                                             ; preds = %bb.f
  %i.au = bitcast i64 %.sroa.0.0.copyload.i25 to double
  %i.av = fptosi double %i.au to i32
  %i.aw = shl i32 %i.av, 3                        ; 2 uses
  %i.ax = ashr exact i32 %i.aw, 3
  %i.ay = sitofp i32 %i.ax to double
  %i.az = bitcast double %i.ay to i64
  %i.ba = icmp eq i64 %.sroa.0.0.copyload.i25, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.bb = or disjoint i32 %i.aw, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.be, %i.bg
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.r, !prof !58

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bi = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bh, i32 noundef 16) #3
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.r:                                             ; preds = %bb.p
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !55
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bj = phi ptr [ %i.bi, %bb.q ], [ %i.bd, %bb.r ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.sroa.0.0.copyload.i25, ptr %i.bk, align 8, !tbaa !59
  store i32 402653200, ptr %i.bj, align 8, !tbaa !20
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = or i32 %i.bo, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.f ], [ %i.at, %bb.m ], [ 14, %bb.g ], [ 15, %bb.h ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ %i.am, %bb.k ], [ %i.aq, %bb.l ], [ %i.bb, %bb.o ], [ %i.bp, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = zext i32 %.val to i64
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = and i64 %i.ca, -4194304
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = icmp eq ptr %i.bz, %i.cc
  br i1 %i.cd, label %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.s, !prof !41

bb.s:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, i32 %.sroa.04.0.i) #3
  br label %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit, %bb.s
  store i32 %.sroa.04.0.i, ptr %i.bx, align 4, !tbaa !47
  %i.cf = tail call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #3
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = or i64 %i.cg, -281474976710656          ; 2 uses
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !28  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !31 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40
  %i.cn = icmp ult ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.u, !prof !41

bb.t:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !31
  store i64 %i.ch, ptr %i.ck, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.u:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_121setRevocableProxySlotEPNS0_14NativeFunctionERNS0_7RuntimeENS0_13HermesValue32E.exit
  %i.cp = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ci, i64 %i.ch) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.t, %bb.u
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.ck, %bb.t ], [ %i.cp, %bb.u ] ; 5 uses
  %i.cq = tail call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 428, ptr nonnull %i.aa, ptr %.0.i.i.i.i.i.i26, i32 0) #3
  %.mask = and i32 %i.cq, 255
  %i.cr = icmp eq i32 %.mask, 0
  br i1 %i.cr, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.cs = tail call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 431, ptr nonnull %i.ac, ptr %.0.i.i.i.i.i.i26, i32 0) #3
  %.mask45 = and i32 %i.cs, 255
  %i.ct = icmp eq i32 %.mask45, 0
  br i1 %i.ct, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i28 = load i64, ptr %.0.i.i.i.i.i.i26, align 8, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.v, %bb.w, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSProxyEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
end_hunk_0
