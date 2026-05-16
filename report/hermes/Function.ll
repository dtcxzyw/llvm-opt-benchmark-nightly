inline.NumInlined: 464
inline.NumDeleted: 291
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.202" = type { [79 x ptr] }
%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::NativeArgs" = type { %"class.std::reverse_iterator", i32, ptr }
%"class.std::reverse_iterator" = type { ptr }
%"class.std::__cxx11::basic_string.197" = type { %"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider", i64, %union.anon.201 }
%"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider" = type { ptr }
%union.anon.201 = type { i64, [8 x i8] }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.148", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.148" = type { %"class.llvh::SmallVectorImpl.149", %"struct.llvh::SmallVectorStorage.152" }
%"class.llvh::SmallVectorImpl.149" = type { %"class.llvh::SmallVectorTemplateBase.150" }
%"class.llvh::SmallVectorTemplateBase.150" = type { %"class.llvh::SmallVectorTemplateCommon.151" }
%"class.llvh::SmallVectorTemplateCommon.151" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.152" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.153"] }
%"struct.llvh::AlignedCharArrayUnion.153" = type { %"struct.llvh::AlignedCharArray.154" }
%"struct.llvh::AlignedCharArray.154" = type { [8 x i8] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::SmallXString" = type { %"class.llvh::SmallVector.182" }
%"class.llvh::SmallVector.182" = type { %"class.llvh::SmallVectorImpl.183", %"struct.llvh::SmallVectorStorage.186" }
%"class.llvh::SmallVectorImpl.183" = type { %"class.llvh::SmallVectorTemplateBase.184" }
%"class.llvh::SmallVectorTemplateBase.184" = type { %"class.llvh::SmallVectorTemplateCommon.185" }
%"class.llvh::SmallVectorTemplateCommon.185" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.186" = type { [64 x %"struct.llvh::AlignedCharArrayUnion.187"] }
%"struct.llvh::AlignedCharArrayUnion.187" = type { %"struct.llvh::AlignedCharArray.188" }
%"struct.llvh::AlignedCharArray.188" = type { [2 x i8] }

$_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

@.str = private unnamed_addr constant [57 x i8] c"Can't call Function.prototype.toString() on non-callable\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"a%u\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't apply() to non-callable\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Can't apply() with non-object arguments list\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Can't call() non-callable\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Can't bind() a non-callable\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.202", align 8
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm25createFunctionConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 131, ptr noundef nonnull @_ZN6hermes2vm19functionConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_10JSFunctionEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 76) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 136, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 135, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 137, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #13
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436016, i32 479, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1, i32 312) #13 ; 0 uses
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19functionConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = call { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull dead_on_return %3, i32 noundef 0) #13
  ret { i32, i64 } %i.d
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.197", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.197", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %8 = alloca %"class.hermes::vm::SmallXString", align 8 ; 23 uses
  %i.a = alloca [16 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !25
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %i.f, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.e, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !29
  store ptr %5, ptr %i.c, align 8, !tbaa !13
  %i.m = load ptr, ptr %2, align 8, !tbaa !7, !noalias !30 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.o = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %10 = add i8 %9, -68
  %i.q = icmp ult i8 %10, 9
  br i1 %i.q, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre167 = and i64 %.pre, 281474976710655
  %i.r = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.o, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre167, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.s = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %i.r, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.m, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 7 uses
  %i.t = icmp ne i64 %.pre-phi, 0
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 56, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store ptr @.str, ptr %6, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.y, align 8, !tbaa !43
  %i.z = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ak

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.aa = inttoptr i64 %.pre-phi to ptr           ; 3 uses
  %.shift.i.i.i.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %11 = load i8, ptr %.shift.i.i.i.i.i.i.i.i31, align 1
  %12 = add i8 %11, -77
  %i.ab = icmp ult i8 %12, -4
  br i1 %i.ab, label %.critedge27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.ag = xor i64 %i.af, %i.ad
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = call i64 @_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #13 ; 2 uses
  %i.aj = and i64 %i.ai, 4294967296
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %..critedge27_crit_edge, label %bb.d

..critedge27_crit_edge:                           ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i41.pre = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %.pre168.a = and i64 %.sroa.0.0.copyload.i.i.i41.pre, 281474976710655
  %.pre170 = inttoptr i64 %.pre168.a to ptr
  br label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.am = xor i64 %i.al, %i.ak
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %.sroa.0146.0.extract.trunc = trunc i64 %i.ai to i32
  %i.ap = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.ao, i32 noundef %.sroa.0146.0.extract.trunc) #13 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = and i32 %i.ar, 2147483647
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, label %bb.o

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 64, ptr %i.aw, align 4, !tbaa !25
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.au, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 32, ptr %i.ax, align 8, !tbaa !55
  store i32 9, ptr %i.av, align 8, !tbaa !26
  %i.ay = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #13 ; 2 uses
  %i.az = extractvalue { i32, i64 } %i.ay, 0
  %i.ba = extractvalue { i32, i64 } %i.ay, 1      ; 3 uses
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %bb.m, label %bb.e, !prof !57

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.mask.i.i = and i64 %i.ba, -140737488355328
  %i.bc = icmp eq i64 %.mask.i.i, -1688849860263936
  br i1 %i.bc, label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.h, !prof !58

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !27
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !33
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.ba) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.g ], [ %i.bk, %bb.h ]
  %i.bl = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i.i) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %bb.m, label %bb.i, !prof !57

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(144) %7) #13
  br label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit"

"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit": ; preds = %bb.i, %bb.e
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i32, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = sub nsw i64 %i.bn, %i.bp
  %i.br = icmp ult i64 %i.bq, 20
  br i1 %i.br, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32

bb.j:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit"
  %i.bs = add nuw nsw i64 %i.bp, 20
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull %i.au, i64 noundef %i.bs, i64 noundef 2) #13
  %.pre.i.i37 = load i32, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i38 = zext i32 %.pre.i.i37 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32:           ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit", %bb.j
  %.pre-phi.i.i31 = phi i64 [ %.pre7.i.i38, %bb.j ], [ %i.bp, %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit" ]
  %i.bt = phi i32 [ %.pre.i.i37, %bb.j ], [ %i.bo, %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit" ]
  %i.bu = load ptr, ptr %7, align 8, !tbaa !24    ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %.pre-phi.i.i31 ; 3 uses
  store <8 x i16> <i16 40, i16 41, i16 32, i16 123, i16 32, i16 91, i16 110, i16 97>, ptr %i.bv, align 2, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <8 x i16> <i16 116, i16 105, i16 118, i16 101, i16 32, i16 99, i16 111, i16 100>, ptr %i.bw, align 2, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store <4 x i16> <i16 101, i16 93, i16 32, i16 125>, ptr %i.bx, align 2, !tbaa !55
  %i.by = add i32 %i.bt, 20                       ; 3 uses
  store i32 %i.by, ptr %i.av, align 8, !tbaa !26
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %.not.i40 = icmp ult i32 %i.by, 65536
  br i1 %.not.i40, label %bb.k, label %bb.l, !prof !58

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32
  %i.ca = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.bu, i64 %i.bz) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.197") align 8 %4, ptr nonnull %i.bu, i64 %i.bz)
  %i.cb = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %i.cc = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.cg = shl i64 %i.cf, 1
  %i.ch = add i64 %i.cg, 2
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.ch) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.ca, %bb.k ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.ci = extractvalue { i32, i64 } %.pn.i, 0
  %i.cj = extractvalue { i32, i64 } %.pn.i, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0148.0 = phi i32 [ %i.ci, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ]
  %.sroa.8.0 = phi i64 [ %i.cj, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ undef, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ]
  %i.ck = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.au
  br i1 %i.cl, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.ck) #13
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ak

bb.o:                                             ; preds = %bb.d
  %i.cm = ptrtoint ptr %i.ap to i64
  %i.cn = or i64 %i.cm, -844424930131968
  br label %bb.ak

.critedge27:                                      ; preds = %..critedge27_crit_edge, %bb.b
  %.pre-phi171 = phi ptr [ %.pre170, %..critedge27_crit_edge ], [ %i.aa, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.co, ptr %8, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 17 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 6 uses
  store i32 64, ptr %i.cq, align 4, !tbaa !25
  %.shift.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre-phi171, i64 3
  %13 = load i8, ptr %.shift.i.i.i.i.i.i.i, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  switch i8 %13, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63 [
    i8 75, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43
    i8 73, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54
  ]

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43:           ; preds = %.critedge27
  store <8 x i16> <i16 97, i16 115, i16 121, i16 110, i16 99, i16 32, i16 102, i16 117>, ptr %i.co, align 8, !tbaa !55
  store <4 x i16> <i16 110, i16 99, i16 116, i16 105>, ptr %i.cr, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i16 111, ptr %i.cs, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 42
  store i16 110, ptr %i.ct, align 2, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i16 32, ptr %i.cu, align 4, !tbaa !55
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54:           ; preds = %.critedge27
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.co, align 8, !tbaa !55
  store i16 32, ptr %i.cr, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 34
  store i16 42, ptr %i.cv, align 2, !tbaa !55
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63:           ; preds = %.critedge27
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.co, align 8, !tbaa !55
  store i16 32, ptr %i.cr, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43
  %.sink = phi i32 [ 10, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54 ], [ 9, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63 ], [ 15, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43 ]
  store i32 %.sink, ptr %i.cp, align 8, !tbaa !26
  %i.cw = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #13 ; 2 uses
  %i.cx = extractvalue { i32, i64 } %i.cw, 0
  %i.cy = extractvalue { i32, i64 } %i.cw, 1      ; 3 uses
  %i.cz = icmp eq i32 %i.cx, 0
  br i1 %i.cz, label %.thread, label %bb.q, !prof !57

bb.q:                                             ; preds = %bb.p
  %.mask.i.i71 = and i64 %i.cy, -140737488355328
  %i.da = icmp eq i64 %.mask.i.i71, -1688849860263936
  br i1 %i.da, label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 192 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 200
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !28
  %i.dg = icmp ult ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.s, label %bb.t, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !27
  store i64 %i.cy, ptr %i.dd, align 8, !tbaa !33
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72

bb.t:                                             ; preds = %bb.r
  %i.di = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.db, i64 %i.cy) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i73 = phi ptr [ %i.dd, %bb.s ], [ %i.di, %bb.t ]
  %i.dj = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i.i73) #13 ; 2 uses
  %.not.i74 = icmp eq ptr %i.dj, inttoptr (i64 -1 to ptr)
  br i1 %.not.i74, label %.thread, label %bb.u, !prof !57

bb.u:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(144) %8) #13
  br label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76"

"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76": ; preds = %bb.u, %bb.q
  %.sroa.0.0.copyload.i.i.i77 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i77, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr
  %.shift.i.i.i.i.i.i.i79 = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %14 = load i8, ptr %.shift.i.i.i.i.i.i.i79, align 1
  %15 = add i8 %14, -69
  %i.dm = icmp ult i8 %15, 4
  br i1 %i.dm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76"
  %i.dn = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.do = zext i32 %i.dn to i64
  %i.dp = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = sub nsw i64 %i.do, %i.dq
  %i.ds = icmp ult i64 %i.dr, 20
  br i1 %i.ds, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79

bb.w:                                             ; preds = %bb.v
  %i.dt = add nuw nsw i64 %i.dq, 20
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.co, i64 noundef %i.dt, i64 noundef 2) #13
  %.pre.i.i84 = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i85 = zext i32 %.pre.i.i84 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79:           ; preds = %bb.v, %bb.w
  %.pre-phi.i.i78 = phi i64 [ %.pre7.i.i85, %bb.w ], [ %i.dq, %bb.v ]
  %i.du = phi i32 [ %.pre.i.i84, %bb.w ], [ %i.dp, %bb.v ]
  %i.dv = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %.pre-phi.i.i78 ; 3 uses
  store <8 x i16> <i16 40, i16 41, i16 32, i16 123, i16 32, i16 91, i16 110, i16 97>, ptr %i.dw, align 2, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <8 x i16> <i16 116, i16 105, i16 118, i16 101, i16 32, i16 99, i16 111, i16 100>, ptr %i.dx, align 2, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store <4 x i16> <i16 101, i16 93, i16 32, i16 125>, ptr %i.dy, align 2, !tbaa !55
  %i.dz = add i32 %i.du, 20
  br label %bb.ag

bb.x:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76"
  %i.ea = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.eb = load i32, ptr %i.cq, align 4, !tbaa !25
  %.not.i.i = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit, label %bb.y, !prof !58

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.co, i64 noundef 0, i64 noundef 2) #13
  %.pre.i.i87 = load i32, ptr %i.cp, align 8, !tbaa !26
  br label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit

_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit: ; preds = %bb.x, %bb.y
  %i.ec = phi i32 [ %.pre.i.i87, %bb.y ], [ %i.ea, %bb.x ]
  %i.ed = load ptr, ptr %8, align 8, !tbaa !24
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee
  store i16 40, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.cp, align 8, !tbaa !26
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.cp, align 8, !tbaa !26
  %i.ei = call { i32, double } @_ZN6hermes2vm8Callable28extractOwnLengthProperty_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %i.ej = extractvalue { i32, double } %i.ei, 0
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit
  %i.el = extractvalue { i32, double } %i.ei, 1   ; 2 uses
  %i.em = fcmp ogt double %i.el, 0.000000e+00
  %.sroa.speculated131 = select i1 %i.em, double %i.el, double 0.000000e+00 ; 2 uses
  %i.en = fcmp olt double %.sroa.speculated131, 6.553500e+04
  %.sroa.speculated = select i1 %i.en, double %.sroa.speculated131, double 6.553500e+04
  %i.eo = fptoui double %.sroa.speculated to i32  ; 2 uses
  %.not160 = icmp eq i32 %i.eo, 0
  br i1 %.not160, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.z
  %.pre166 = load i32, ptr %i.cp, align 8, !tbaa !26
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.z
  %scevgep = getelementptr i8, ptr %i.a, i64 -1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, %.._crit_edge_crit_edge
  %i.ep = phi i32 [ %.pre166, %.._crit_edge_crit_edge ], [ %i.gu, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115 ] ; 2 uses
  %i.eq = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.er = zext i32 %i.eq to i64
  %i.es = zext i32 %i.ep to i64                   ; 3 uses
  %i.et = sub nsw i64 %i.er, %i.es
  %i.eu = icmp ult i64 %i.et, 16
  br i1 %i.eu, label %bb.aa, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = add nuw nsw i64 %i.es, 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.co, i64 noundef %i.ev, i64 noundef 2) #13
  %.pre.i.i95 = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i96 = zext i32 %.pre.i.i95 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90:           ; preds = %._crit_edge, %bb.aa
  %.pre-phi.i.i89 = phi i64 [ %.pre7.i.i96, %bb.aa ], [ %i.es, %._crit_edge ]
  %i.ew = phi i32 [ %.pre.i.i95, %bb.aa ], [ %i.ep, %._crit_edge ]
  %i.ex = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %.pre-phi.i.i89 ; 2 uses
  store <8 x i16> <i16 41, i16 32, i16 123, i16 32, i16 91, i16 98, i16 121, i16 116>, ptr %i.ey, align 2, !tbaa !55
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <8 x i16> <i16 101, i16 99, i16 111, i16 100, i16 101, i16 93, i16 32, i16 125>, ptr %i.ez, align 2, !tbaa !55
  %i.fa = add i32 %i.ew, 16
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115
  %.0159 = phi i32 [ %i.gv, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.not25 = icmp eq i32 %.0159, 0
  br i1 %.not25, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.fb = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.fc = zext i32 %i.fb to i64
  %i.fd = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.fe = zext i32 %i.fd to i64                   ; 3 uses
  %i.ff = sub nsw i64 %i.fc, %i.fe
  %i.fg = icmp ult i64 %i.ff, 2
  br i1 %i.fg, label %bb.ac, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99

bb.ac:                                            ; preds = %bb.ab
  %i.fh = add nuw nsw i64 %i.fe, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.co, i64 noundef %i.fh, i64 noundef 2) #13
  %.pre.i.i104 = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i105 = zext i32 %.pre.i.i104 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99:           ; preds = %bb.ab, %bb.ac
  %.pre-phi.i.i98 = phi i64 [ %.pre7.i.i105, %bb.ac ], [ %i.fe, %bb.ab ]
  %i.fi = phi i32 [ %.pre.i.i104, %bb.ac ], [ %i.fd, %bb.ab ]
  %i.fj = load ptr, ptr %8, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %.pre-phi.i.i98 ; 2 uses
  store i16 44, ptr %i.fk, align 2, !tbaa !55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i16 32, ptr %i.fl, align 2, !tbaa !55
  %i.fm = add i32 %i.fi, 2
  store i32 %i.fm, ptr %i.cp, align 8, !tbaa !26
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %.0159) #13 ; 0 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 12 uses
  %i.fp = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.fq = zext i32 %i.fp to i64
  %i.fr = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 3 uses
  %i.ft = sub nsw i64 %i.fq, %i.fs
  %i.fu = icmp ugt i64 %i.fo, %i.ft
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fv = add i64 %i.fo, %i.fs
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.co, i64 noundef %i.fv, i64 noundef 2) #13
  %.pre.i.i113 = load i32, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i114 = zext i32 %.pre.i.i113 to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i107 = phi i64 [ %.pre7.i.i114, %bb.ae ], [ %i.fs, %bb.ad ]
  %i.fw = phi i32 [ %.pre.i.i113, %bb.ae ], [ %i.fr, %bb.ad ]
  %i.fx = icmp sgt i64 %i.fo, 0
  br i1 %i.fx, label %iter.check, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115

iter.check:                                       ; preds = %bb.af
  %i.fy = load ptr, ptr %8, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %.pre-phi.i.i107 ; 5 uses
  %scevgep161 = getelementptr i8, ptr %scevgep, i64 %i.fo
  %min.iters.check = icmp ult i64 %i.fo, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i64 %i.fo, 16
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fo, 12
  %n.vec = and i64 %i.fo, 9223372036854775792     ; 5 uses
  %i.ga = shl nuw i64 %n.vec, 1
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.fz, i64 %i.gd ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep187, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep187, align 16, !tbaa !42
  %wide.load188 = load <8 x i8>, ptr %i.ge, align 8, !tbaa !42
  %i.gf = zext <8 x i8> %wide.load to <8 x i16>
  %i.gg = zext <8 x i8> %wide.load188 to <8 x i16>
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.gf, ptr %next.gep, align 2, !tbaa !55
  store <8 x i16> %i.gg, ptr %i.gh, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.fo, 9223372036854775804  ; 4 uses
  %i.gj = shl nuw i64 %n.vec191, 1
  %i.gk = getelementptr i8, ptr %i.fz, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.a, i64 %n.vec191
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next196, %vec.epilog.vector.body ] ; 3 uses
  %i.gm = shl i64 %index192, 1
  %next.gep193 = getelementptr i8, ptr %i.fz, i64 %i.gm
  %next.gep194 = getelementptr i8, ptr %i.a, i64 %index192
  %wide.load195 = load <4 x i8>, ptr %next.gep194, align 4, !tbaa !42
  %i.gn = zext <4 x i8> %wide.load195 to <4 x i16>
  store <4 x i16> %i.gn, ptr %next.gep193, align 2, !tbaa !55
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.go, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n197 = icmp eq i64 %i.fo, %n.vec191
  br i1 %cmp.n197, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader:          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0811.i.i.i.i.i.i.i.i.i.i111.ph = phi ptr [ %i.fz, %iter.check ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.i112.ph = phi ptr [ %i.a, %iter.check ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i.i.i.i109:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i109
  %.0811.i.i.i.i.i.i.i.i.i.i111 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i.i.i109 ], [ %.0811.i.i.i.i.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i112 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i.i.i109 ], [ %.0910.i.i.i.i.i.i.i.i.i.i112.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader ] ; 3 uses
  %i.gp = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i112, align 1, !tbaa !42
  %i.gq = zext i8 %i.gp to i16
  store i16 %i.gq, ptr %.0811.i.i.i.i.i.i.i.i.i.i111, align 2, !tbaa !55
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i112, i64 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i111, i64 2
  %exitcond.not = icmp eq ptr %.0910.i.i.i.i.i.i.i.i.i.i112, %scevgep161
  br i1 %exitcond.not, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109, !llvm.loop !69

_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i109, %middle.block, %vec.epilog.middle.block, %bb.af
  %i.gt = trunc i64 %i.fo to i32
  %i.gu = add i32 %i.fw, %i.gt                    ; 2 uses
  store i32 %i.gu, ptr %i.cp, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.gv = add nuw i32 %.0159, 1                   ; 2 uses
  %exitcond162.not = icmp eq i32 %i.gv, %i.eo
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79
  %i.gw = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79 ] ; 2 uses
  %storemerge = phi i32 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79 ] ; 3 uses
  store i32 %storemerge, ptr %i.cp, align 8, !tbaa !26
  %i.gx = zext i32 %storemerge to i64             ; 2 uses
  %.not.i116 = icmp ult i32 %storemerge, 65536
  br i1 %.not.i116, label %bb.ah, label %bb.ai, !prof !58

bb.ah:                                            ; preds = %bb.ag
  %i.gy = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.gw, i64 %i.gx) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.197") align 8 %3, ptr nonnull %i.gw, i64 %i.gx)
  %i.gz = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %i.ha = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117: ; preds = %bb.ai
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !42
  %i.he = shl i64 %i.hd, 1
  %i.hf = add i64 %i.he, 2
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hf) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118
  %.pn.i119 = phi { i32, i64 } [ %i.gy, %bb.ah ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118 ] ; 2 uses
  %i.hg = extractvalue { i32, i64 } %.pn.i119, 0
  %i.hh = extractvalue { i32, i64 } %.pn.i119, 1
  br label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72, %bb.p, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121
  %.sroa.0148.4 = phi i32 [ 0, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit ], [ %i.hg, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121 ], [ 0, %bb.p ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72 ]
  %.sroa.8.3 = phi i64 [ undef, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit ], [ %i.hh, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121 ], [ undef, %bb.p ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72 ]
  %i.hi = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.co
  br i1 %i.hj, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122, label %bb.aj

bb.aj:                                            ; preds = %.thread
  call void @free(ptr noundef %i.hi) #13
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122:       ; preds = %.thread, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, %bb.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0148.6 = phi i32 [ %i.z, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0148.4, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122 ], [ %.sroa.0148.0, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit ], [ 1, %bb.o ]
  %.sroa.8.5 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.8.3, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122 ], [ %.sroa.8.0, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit ], [ %i.cn, %bb.o ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0148.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  store ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !25
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !29
  store ptr %3, ptr %i.b, align 8, !tbaa !13
  %i.l = load ptr, ptr %2, align 8, !tbaa !7, !noalias !71 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !33 ; 3 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %7 = add i8 %6, -68
  %i.p = icmp ult i8 %7, 9
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre47 = and i64 %.pre, 281474976710655
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre47, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.q = phi i64 [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.l, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 3 uses
  %i.r = icmp ugt i64 %i.q, -844424930131969
  %i.s = icmp ne i64 %.pre-phi, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !41
  store ptr @.str.8, ptr %4, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !43
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.z = insertvalue { i32, i64 } poison, i32 %i.y, 0
  %i.aa = insertvalue { i32, i64 } %i.z, i64 undef, 1
  br label %bb.h

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 1
  br i1 %i.ad, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %.critedge

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.ae, align 8, !tbaa !33 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i12, -140737488355328
  switch i64 %.mask.i, label %bb.f [
    i64 -1548112371908608, label %.critedge.thread
    i64 -1688849860263936, label %.critedge.thread
  ]

.critedge:                                        ; preds = %bb.b
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %.critedge
  %i.af = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.af, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19

_ZNK6hermes2vm10NativeArgs6getArgEj.exit19:       ; preds = %.critedge, %.critedge.thread
  %.sroa.0.0.i17 = phi i64 [ %.sroa.0.0.copyload.i18, %.critedge.thread ], [ -1688849860263936, %.critedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !310
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !310
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !311
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = and i64 %i.ap, 34359738360
  %i.ar = icmp samesign ult i64 %i.aq, 312
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp ugt i64 %i.ak, %i.at
  %.not31.i.i = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %.not31.i.i, label %bb.c, label %bb.d, !prof !57

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19
  %i.av = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %i.aw = insertvalue { i32, i64 } poison, i32 %i.av, 0
  %i.ax = insertvalue { i32, i64 } %i.aw, i64 undef, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19
  %i.ay = or i64 %i.q, -281474976710656
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.az, ptr %i.ag, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ba, align 8, !tbaa !312
  %i.bb = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i64 -1125899906842624, ptr %i.be, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 -1688849860263936, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ay, ptr %i.bg, align 8, !tbaa !35
  store i64 %.sroa.0.0.i17, ptr %i.ah, align 8, !tbaa !35
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i20, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr
  %.shift.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %8 = load i8, ptr %.shift.i.i.i.i, align 1
  %i.bj = zext i8 %8 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !313
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !315
  %i.bo = call { i32, i64 } %i.bn(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.merged = phi { i32, i64 } [ %i.ax, %bb.c ], [ %i.bo, %bb.d ]
  %i.bp = load i64, ptr %i.ai, align 8, !tbaa !310
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.ai, align 8, !tbaa !310
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !76
  br label %bb.h

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.br = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.bs = icmp ugt i64 %.sroa.0.0.copyload.i12, -844424930131969
  br i1 %i.bs, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.f
  %i.bt = and i64 %.sroa.0.0.copyload.i12, 281474976710655
  %i.bu = inttoptr i64 %i.bt to ptr
  %.shift.i.i.i.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i23, align 1
  %10 = add i8 %9, -26
  %i.bv = icmp ult i8 %10, 51
  %spec.select.i = select i1 %i.bv, ptr %i.ae, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.f, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i22 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.f ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.bw = load i64, ptr %.sroa.0.0.i22, align 8, !tbaa !35 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, -844424930131969
  %i.by = and i64 %i.bw, 281474976710655
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = and i1 %i.bx, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit24:          ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 44, ptr %i.cc, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cd, align 8, !tbaa !41
  store ptr @.str.9, ptr %5, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ce, align 8, !tbaa !43
  %i.cf = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cg = insertvalue { i32, i64 } poison, i32 %i.cf, 0
  %i.ch = insertvalue { i32, i64 } %i.cg, i64 undef, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ci = call { i32, i64 } @_ZN6hermes2vm8Callable11executeCallENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_NS2_INS0_8JSObjectEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr nonnull %i.br, ptr nonnull %.sroa.0.0.i22) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %.merged, %bb.e ], [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ci, %bb.g ], [ %i.ch, %_ZN6hermes2vm11TwineChar16C2EPKc.exit24 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !321 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %5 = add i8 %4, -68
  %i.e = icmp ult i8 %5, 9
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre31 = and i64 %.pre, 281474976710655
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre31, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.f = phi i64 [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = icmp ugt i64 %i.f, -844424930131969
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 25, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store ptr @.str.10, ptr %3, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !43
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74   ; 5 uses
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 1) ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.r, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i12, %bb.c ], [ -1688849860263936, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !310
  %i.w = add i64 %i.v, 1                          ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !310
  %i.x = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.q, i32 7)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !311
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = zext i32 %i.x to i64                    ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 32
  %i.ah = icmp samesign ugt i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ugt i64 %i.w, %i.aj
  %.not31.i.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %.not31.i.i, label %bb.d, label %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit, !prof !57

_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.al = or i64 %i.f, -281474976710656
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af ; 10 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.an, align 8, !tbaa !312
  %i.ao = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -24
  %i.ar = zext i32 %i.q to i64
  %i.as = or disjoint i64 %i.ar, -1125899906842624
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store i64 %i.as, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -40
  store i64 -1688849860263936, ptr %i.au, align 8, !tbaa !35
  %i.av = getelementptr inbounds i8, ptr %i.am, i64 -48
  store i64 %i.al, ptr %i.av, align 8, !tbaa !35
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 -56
  store i64 %.sroa.0.0.i, ptr %i.aw, align 8, !tbaa !35
  %i.ax = icmp ugt i32 %i.p, 1
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !74  ; 3 uses
  %i.az = add i32 %i.p, -1                        ; 3 uses
  %xtraiter = and i32 %i.az, 1
  %i.ba = icmp eq i32 %i.p, 2
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.az, -2
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bb = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.030.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.cu, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.bc = icmp ult i32 %.030.epil.init, %i.ay
  br i1 %i.bc, label %bb.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

bb.e:                                             ; preds = %.epil.preheader
  %i.bd = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.be = zext i32 %.030.epil.init to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %.sroa.0.0.copyload.i15.epil = load i64, ptr %i.bh, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil:  ; preds = %bb.e, %.epil.preheader
  %.sroa.0.0.i14.epil = phi i64 [ %.sroa.0.0.copyload.i15.epil, %bb.e ], [ -1688849860263936, %.epil.preheader ]
  %i.bi = add i32 %.030.epil.init, -1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr [8 x i8], ptr %i.am, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -64
  store i64 %.sroa.0.0.i14.epil, ptr %i.bm, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil, %._crit_edge.loopexit.unr-lcssa, %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i13 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i13, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr
  %.shift.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i, align 1
  %i.bp = zext i8 %6 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !313
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !315
  %i.bu = tail call { i32, i64 } %i.bt(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320 ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 0
  %i.bw = extractvalue { i32, i64 } %i.bu, 1
  %i.bx = icmp ne i32 %i.bv, 0                    ; 2 uses
  %spec.select = zext i1 %i.bx to i32
  %spec.select29 = select i1 %i.bx, i64 %i.bw, i64 undef, !prof !58
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1, %.lr.ph.new
  %.030 = phi i32 [ 1, %.lr.ph.new ], [ %i.cu, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ]
  %i.by = icmp ult i32 %.030, %i.ay
  br i1 %i.by, label %bb.g, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.ca = zext i32 %.030 to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.cd, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16:       ; preds = %bb.f, %bb.g
  %.sroa.0.0.i14 = phi i64 [ %.sroa.0.0.copyload.i15, %bb.g ], [ -1688849860263936, %bb.f ]
  %i.ce = add nsw i32 %.030, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr [8 x i8], ptr %i.am, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -64
  store i64 %.sroa.0.0.i14, ptr %i.ci, align 8, !tbaa !35
  %i.cj = add nuw i32 %.030, 1                    ; 2 uses
  %i.ck = icmp ult i32 %i.cj, %i.ay
  br i1 %i.ck, label %bb.h, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %i.cl = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.cm = zext i32 %i.cj to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.sroa.0.0.copyload.i15.1 = load i64, ptr %i.cp, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1:     ; preds = %bb.h, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %.sroa.0.0.i14.1 = phi i64 [ %.sroa.0.0.copyload.i15.1, %bb.h ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16 ]
  %i.cq = sext i32 %.030 to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr [8 x i8], ptr %i.am, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -64
  store i64 %.sroa.0.0.i14.1, ptr %i.ct, align 8, !tbaa !35
  %i.cu = add nuw i32 %.030, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !327

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.027.1 = phi i32 [ %i.bb, %bb.d ], [ %spec.select, %._crit_edge ]
  %.sroa.5.1 = phi i64 [ undef, %bb.d ], [ %spec.select29, %._crit_edge ]
  %i.cv = load i64, ptr %i.u, align 8, !tbaa !310
  %i.cw = add i64 %i.cv, -1
  store i64 %i.cw, ptr %i.u, align 8, !tbaa !310
  store ptr %i.t, ptr %i.s, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.027.2 = phi i32 [ %.sroa.027.1, %bb.i ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.1, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.027.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !328 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %6 = add i8 %5, -68
  %i.e = icmp ult i8 %6, 9
  %spec.select.i = select i1 %i.e, ptr %i.a, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.f = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !35 ; 2 uses
  %i.g = icmp ugt i64 %i.f, -844424930131969
  %i.h = and i64 %i.f, 281474976710655
  %i.i = icmp ne i64 %i.h, 0
  %i.j = and i1 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.l, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !41
  store ptr @.str.11, ptr %3, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !43
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.p = insertvalue { i32, i64 } poison, i32 %i.o, 0
  %i.q = insertvalue { i32, i64 } %i.p, i64 undef, 1
  br label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !74
  store ptr %i.a, ptr %4, align 8, !tbaa !7, !alias.scope !331
  %i.t = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.0.0.i, i32 noundef %i.s, ptr noundef nonnull dead_on_return %4) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.t, %bb.b ], [ %i.q, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !334 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %.mask = and i32 %i.e, 255
  %i.f = icmp ne i32 %.mask, 0                    ; 2 uses
  %i.g = lshr i32 %i.e, 8
  %.lobit = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit to i64
  %i.i = or disjoint i64 %i.h, -1407374883553280
  %.sroa.05.0 = zext i1 %i.f to i32
  %.sroa.3.0 = select i1 %i.f, i64 %i.i, i64 undef, !prof !58
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i64 @_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare { i32, double } @_ZN6hermes2vm8Callable28extractOwnLengthProperty_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable11executeCallENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_NS2_INS0_8JSObjectEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, ptr noundef dead_on_return) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.197") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !337
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !338
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  store i64 %2, ptr %i.a, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !55
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !338
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !55
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_10JSFunctionEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
