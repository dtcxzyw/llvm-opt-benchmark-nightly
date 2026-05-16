inline.NumInlined: 494
inline.NumDeleted: 321
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.149", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.149" = type { %"class.llvh::SmallVectorImpl.150", %"struct.llvh::SmallVectorStorage.153" }
%"class.llvh::SmallVectorImpl.150" = type { %"class.llvh::SmallVectorTemplateBase.151" }
%"class.llvh::SmallVectorTemplateBase.151" = type { %"class.llvh::SmallVectorTemplateCommon.152" }
%"class.llvh::SmallVectorTemplateCommon.152" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.153" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.154"] }
%"struct.llvh::AlignedCharArrayUnion.154" = type { %"struct.llvh::AlignedCharArray.155" }
%"struct.llvh::AlignedCharArray.155" = type { [8 x i8] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"struct.hermes::vm::NamedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"struct.hermes::vm::PropertyDescriptor" = type { %union.anon.158, i32 }
%union.anon.158 = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [44 x i8] c"TextEncoder must be called as a constructor\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"TextEncoder.prototype.encoding called on non-TextEncoder object\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"TextEncoder.prototype.encode() called on non-TextEncoder object\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to convert from UTF-16 to UTF-8\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"TextEncoder.prototype.encodeInto() called on non-TextEncoder object\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"The second argument should be a Uint8Array\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"TextEncoder.prototype.encodeInto() called on a detached Uint8Array\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Illegal access to ArrayBuffer\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm28createTextEncoderConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.b = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 488) #7
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = or i64 %i.c, -844424930131968            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !11
  store i64 %i.d, ptr %i.h, align 8, !tbaa !23
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.d) #7
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 6 uses
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.n, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #7
  tail call void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.n, i32 493, i32 493, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm28textEncoderPrototypeEncodingEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #7
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.n, i32 489, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm26textEncoderPrototypeEncodeEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #7
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.n, i32 490, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm30textEncoderPrototypeEncodeIntoEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #7
  %i.o = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 488, ptr noundef nonnull @_ZN6hermes2vm22textEncoderConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.n, i32 noundef 0, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSObjectEEENS0_10CallResultINS0_12PseudoHandleIS3_EELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS3_EEPv, i32 noundef 26) #7 ; 2 uses
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.n, i32 59, ptr %i.o) #7
  ret ptr %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28textEncoderPrototypeEncodingEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 5 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !30
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = load ptr, ptr %2, align 8, !tbaa !31, !noalias !33
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %7 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %8 = add i8 %7, -26
  %i.p = icmp ult i8 %8, 51
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !36 ; 2 uses
  %.pre10 = and i64 %.pre, 281474976710655
  %i.q = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre10, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.q, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.r = icmp ne i64 %.pre-phi, 0
  %i.s = and i1 %.sroa.0.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 63, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !42
  store ptr @.str.1, ptr %4, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !44
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.y, align 4, !tbaa !45
  %i.z = inttoptr i64 %.pre-phi to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268435469, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #7
  %i.ag = and i64 %i.af, 4294967296
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, label %bb.c, !prof !47

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 63, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !42
  store ptr @.str.1, ptr %6, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !44
  %i.al = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.an = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 494) #7
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8
  %.sroa.09.0 = phi i32 [ 1, %bb.c ], [ %i.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  %.sroa.4.0 = phi i64 [ %i.ap, %bb.c ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.09.1 = phi i32 [ %.sroa.09.0, %bb.d ], [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.d ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26textEncoderPrototypeEncodeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 5 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !30
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = load ptr, ptr %2, align 8, !tbaa !31, !noalias !48
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %10 = add i8 %9, -26
  %i.p = icmp ult i8 %10, 51
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !36 ; 2 uses
  %.pre66 = and i64 %.pre, 281474976710655
  %i.q = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre66, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.q, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.r = icmp ne i64 %.pre-phi, 0
  %i.s = and i1 %.sroa.0.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 63, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !42
  store ptr @.str.2, ptr %4, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !44
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.ac

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.y, align 4, !tbaa !45
  %i.z = inttoptr i64 %.pre-phi to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268435469, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #7
  %i.ag = and i64 %i.af, 4294967296
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit21, label %bb.c, !prof !47

_ZN6hermes2vm11TwineChar16C2EPKc.exit21:          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 63, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !42
  store ptr @.str.2, ptr %6, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !44
  %i.al = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51
  %.not60 = icmp eq i32 %i.an, 0
  %i.ao = load ptr, ptr %2, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %.sroa.02.0.i = select i1 %.not60, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ap
  %i.aq = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #7 ; 2 uses
  %.not61 = icmp eq ptr %i.aq, inttoptr (i64 -1 to ptr)
  br i1 %.not61, label %bb.ab, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = or i64 %i.ar, -844424930131968          ; 3 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ay = icmp ult ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !11
  store i64 %i.as, ptr %i.av, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.at, i64 %i.as) #7 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.ba, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.as, %bb.e ], [ %.sroa.0.0.copyload.i.i.pre, %bb.f ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.ba, %bb.f ]
  %i.bb = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr               ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !53
  %i.bf = and i32 %i.be, 2147483647               ; 3 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.i, !prof !47

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bh = call ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0) #7 ; 2 uses
  %.not64 = icmp eq ptr %i.bh, inttoptr (i64 -1 to ptr)
  br i1 %.not64, label %bb.ab, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.bh, align 8, !tbaa !23
  br label %bb.ab

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bi = load i32, ptr %i.bc, align 4            ; 3 uses
  %i.bj = and i32 %i.bi, 16777216
  %i.bk = icmp eq i32 %i.bj, 0
  %11 = lshr i32 %i.bi, 24
  %12 = trunc nuw i32 %11 to i8
  br i1 %i.bk, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bl = call ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bf) #7 ; 3 uses
  %.not63 = icmp eq ptr %i.bl, inttoptr (i64 -1 to ptr)
  br i1 %.not63, label %bb.ab, label %bb.k, !prof !47

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i25 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  %i.bm = and i64 %.sroa.0.0.copyload.i.i25, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr               ; 6 uses
  %.shift.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %13 = load i8, ptr %.shift.i.i.i.i, align 1     ; 2 uses
  %i.bo = icmp ugt i8 %13, 8
  br i1 %i.bo, label %bb.l, label %bb.m, !prof !47

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.m:                                             ; preds = %bb.k
  switch i8 %13, label %bb.p [
    i8 8, label %bb.n
    i8 4, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.p:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i26 = load i64, ptr %i.bt, align 8, !tbaa !23
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i.i26, 281474976710655
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i.i.i = phi ptr [ %i.bq, %bb.l ], [ %i.br, %bb.n ], [ %i.bs, %bb.o ], [ %i.bx, %bb.p ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !61, !range !294, !noundef !295
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #8
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.cb = and i64 %.sroa.0.0.copyload.i.i27, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !53
  %i.cf = and i32 %i.ce, 2147483647
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.ci = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.cj = add i64 %i.ci, %i.ab
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !296
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.cp = xor i64 %i.co, %i.cm
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !298
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %.0.i.i.i, i64 %i.cg, i1 false)
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.bl, align 8, !tbaa !23
  br label %bb.ab

bb.r:                                             ; preds = %bb.i
  %i.cv = icmp ugt i32 %i.bi, 150994943
  br i1 %i.cv, label %bb.s, label %bb.t, !prof !47

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !307
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.t:                                             ; preds = %bb.r
  switch i8 %12, label %bb.w [
    i8 7, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.w:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i35 = load i64, ptr %i.da, align 8, !tbaa !23
  %i.db = and i64 %.sroa.0.0.copyload.i.i.i.i.i35, 281474976710655
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !307
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit: ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  %.0.i.i.i32 = phi ptr [ %i.cx, %bb.s ], [ %i.cy, %bb.u ], [ %i.cz, %bb.v ], [ %i.de, %bb.w ]
  %i.df = zext nneg i32 %i.bf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.dg, ptr %7, align 8, !tbaa !311
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.dh, align 8, !tbaa !312
  store i8 0, ptr %i.dg, align 8, !tbaa !43
  %i.di = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.0.i.i.i32, i64 %i.df, i64 noundef 0) #7
  br i1 %i.di, label %bb.x, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit37, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit37:          ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.dj, align 8, !tbaa !38
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 38, ptr %i.dk, align 8, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.dl, align 8, !tbaa !42
  store ptr @.str.3, ptr %8, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.dm, align 8, !tbaa !44
  %i.dn = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.aa

bb.x:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit
  %i.do = load i64, ptr %i.dh, align 8, !tbaa !312
  %i.dp = trunc i64 %i.do to i32
  %i.dq = call ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dp) #7 ; 3 uses
  %.not62 = icmp eq ptr %i.dq, inttoptr (i64 -1 to ptr)
  br i1 %.not62, label %bb.aa, label %bb.y, !prof !47

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !61, !range !294, !noundef !295
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit40, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #8
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit40: ; preds = %bb.y
  %.sroa.0.0.copyload.i.i38 = load i64, ptr %i.dq, align 8, !tbaa !23
  %i.du = and i64 %.sroa.0.0.copyload.i.i38, 281474976710655
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %.sroa.0.0.copyload.i.i.i39 = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dx = zext i32 %.sroa.0.0.copyload.i.i.i39 to i64
  %i.dy = add i64 %i.dx, %i.ab
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !296
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !23
  %i.ee = xor i64 %i.ed, %i.eb
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !298
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = load ptr, ptr %7, align 8, !tbaa !57
  %i.el = load i64, ptr %i.dh, align 8, !tbaa !312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ek, i64 %i.el, i1 false)
  %.sroa.0.0.copyload.i41 = load i64, ptr %i.dq, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit40, %bb.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit37
  %.sroa.059.3 = phi i32 [ %i.dn, %_ZN6hermes2vm11TwineChar16C2EPKc.exit37 ], [ 1, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit40 ], [ 0, %bb.x ]
  %.sroa.11.3 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit37 ], [ %.sroa.0.0.copyload.i41, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit40 ], [ undef, %bb.x ]
  %i.em = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dg
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.eo = load i64, ptr %i.dg, align 8, !tbaa !43
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, %bb.j, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit21
  %.sroa.059.6 = phi i32 [ %i.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit21 ], [ 0, %bb.c ], [ %.sroa.059.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.g ], [ 1, %bb.h ], [ 1, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit ], [ 0, %bb.j ]
  %.sroa.11.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit21 ], [ undef, %bb.c ], [ %.sroa.11.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ undef, %bb.g ], [ %.sroa.0.0.copyload.i22, %bb.h ], [ %.sroa.0.0.copyload.i29, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.059.7 = phi i32 [ %.sroa.059.6, %bb.ab ], [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.11.7 = phi i64 [ %.sroa.11.6, %bb.ab ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.11.7, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm30textEncoderPrototypeEncodeIntoEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 5 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !30
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = load ptr, ptr %2, align 8, !tbaa !31, !noalias !313
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %10 = add i8 %9, -26
  %i.p = icmp ult i8 %10, 51
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !36 ; 2 uses
  %.pre103.a = and i64 %.pre, 281474976710655
  %i.q = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre103.a, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.q, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.r = icmp ne i64 %.pre-phi, 0
  %i.s = and i1 %.sroa.0.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 67, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !42
  store ptr @.str.4, ptr %4, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !44
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.ai

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.y, align 4, !tbaa !45
  %i.z = inttoptr i64 %.pre-phi to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268435469, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #7
  %i.ag = and i64 %i.af, 4294967296
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit47, label %bb.c, !prof !47

_ZN6hermes2vm11TwineChar16C2EPKc.exit47:          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 67, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !42
  store ptr @.str.4, ptr %6, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !44
  %i.al = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51
  %.not97 = icmp eq i32 %i.an, 0
  %i.ao = load ptr, ptr %2, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %.sroa.02.0.i = select i1 %.not97, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ap
  %i.aq = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #7 ; 2 uses
  %.not98 = icmp eq ptr %i.aq, inttoptr (i64 -1 to ptr)
  br i1 %.not98, label %bb.ah, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = or i64 %i.ar, -844424930131968          ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ay = icmp ult ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !11
  store i64 %i.as, ptr %i.av, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.at, i64 %i.as) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.ba, %bb.f ]
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !51
  %i.bc = icmp ugt i32 %i.bb, 1
  br i1 %i.bc, label %bb.g, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bd = load ptr, ptr %2, align 8, !tbaa !31, !noalias !316
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bf = icmp ugt i64 %.sroa.0.0.copyload.i48, -844424930131969
  br i1 %i.bf, label %_ZN6hermes2vm5vmisaINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.g
  %i.bg = and i64 %.sroa.0.0.copyload.i48, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %.shift.i.i.i.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %11 = load i8, ptr %.shift.i.i.i.i.i.i.i.i49, align 1
  %i.bi = icmp eq i8 %11, 38
  %spec.select.i = select i1 %i.bi, ptr %i.be, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.g, %_ZN6hermes2vm5vmisaINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.g ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.bj = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !36 ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, -844424930131969
  %i.bl = and i64 %i.bj, 281474976710655          ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = and i1 %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit50, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit50:          ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 42, ptr %i.bp, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !42
  store ptr @.str.5, ptr %7, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.br, align 8, !tbaa !44
  %i.bs = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.ah

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEj.exit
  %i.bt = inttoptr i64 %i.bl to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !319 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !320

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.h
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add i64 %i.bw, %i.ab
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 37
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !321, !range !294, !noundef !295
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !323

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.h, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 66, ptr %i.cd, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.ce, align 8, !tbaa !42
  store ptr @.str.6, ptr %8, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.cf, align 8, !tbaa !44
  %i.cg = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.ah

bb.i:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.ch = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 2) #7
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = or i64 %i.ci, -281474976710656          ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !11 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !21
  %i.cp = icmp ult ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !11
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.cr = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ck, i64 %i.cj) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.cm, %bb.j ], [ %i.cr, %bb.k ] ; 3 uses
  %.sroa.0.0.copyload.i.i54 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  %i.cs = and i64 %.sroa.0.0.copyload.i.i54, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr               ; 10 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !53
  %i.cw = and i32 %i.cv, 2147483647               ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.aa, label %bb.l, !prof !47

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.cy = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cz = and i32 %i.cy, 16777216
  %i.da = icmp eq i32 %i.cz, 0
  %12 = lshr i32 %i.cy, 24
  %13 = trunc nuw i32 %12 to i8                   ; 2 uses
  %i.db = icmp ugt i32 %i.cy, 150994943           ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  br i1 %i.db, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.o:                                             ; preds = %bb.m
  switch i8 %13, label %bb.r [
    i8 8, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.q:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

bb.r:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i57 = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.dh = and i64 %.sroa.0.0.copyload.i.i.i.i.i57, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit

_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit: ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %.0.i.i.i = phi ptr [ %i.dd, %bb.n ], [ %i.de, %bb.p ], [ %i.df, %bb.q ], [ %i.dk, %bb.r ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !61, !range !294, !noundef !295
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #8
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit: ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIcEEN4llvh8ArrayRefIT_EEv.exit
  %.sroa.0.0.copyload.i.i59 = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !23
  %i.do = and i64 %.sroa.0.0.copyload.i.i59, 281474976710655
  %i.dp = inttoptr i64 %i.do to ptr               ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !324
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.cw) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.dt = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.du = add i64 %i.dt, %i.ab
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !296
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !23
  %i.ea = xor i64 %i.dz, %i.dx
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !298
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee
  %i.eg = zext nneg i32 %.sroa.speculated to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %.0.i.i.i, i64 %i.eg, i1 false)
  br label %bb.aa

bb.t:                                             ; preds = %bb.l
  br i1 %i.db, label %bb.u, label %bb.v, !prof !47

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !307
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.v:                                             ; preds = %bb.t
  switch i8 %13, label %bb.y [
    i8 7, label %bb.w
    i8 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.x:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

bb.y:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i66 = load i64, ptr %i.el, align 8, !tbaa !23
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i.i66, 281474976710655
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !307
  br label %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit

_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit: ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  %.0.i.i.i63 = phi ptr [ %i.ei, %bb.u ], [ %i.ej, %bb.w ], [ %i.ek, %bb.x ], [ %i.ep, %bb.y ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !61, !range !294, !noundef !295
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit69, label %bb.z

bb.z:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #8
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit69: ; preds = %_ZNK6hermes2vm15StringPrimitive12getStringRefIDsEEN4llvh8ArrayRefIT_EEv.exit
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !23
  %i.et = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr               ; 3 uses
  %i.ev = zext nneg i32 %i.cw to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %.sroa.0.0.copyload.i.i.i.i68 = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ex = zext i32 %.sroa.0.0.copyload.i.i.i.i68 to i64
  %i.ey = add i64 %i.ex, %i.ab
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !296
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !23
  %i.fe = xor i64 %i.fd, %i.fb
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 28
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !298
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !324
  %i.fm = zext i32 %i.fl to i64
  %i.fn = call i64 @_ZN6hermes40convertUTF16ToUTF8BufferWithReplacementsEN4llvh15MutableArrayRefIhEENS0_8ArrayRefIDsEE(ptr %i.fj, i64 %i.fm, ptr %.0.i.i.i63, i64 %i.ev) #7 ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i64 %i.fn to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.fn, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit69
  %.045 = phi i32 [ %.sroa.4.0.extract.trunc, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit69 ], [ %.sroa.speculated, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ]
  %.0 = phi i32 [ %.sroa.017.0.extract.trunc, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit69 ], [ %.sroa.speculated, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ]
  %i.fo = uitofp i32 %.0 to double                ; 2 uses
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !7   ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 192 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 200
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !21 ; 2 uses
  %i.fu = icmp ult ptr %i.fr, %i.ft
  br i1 %i.fu, label %bb.ab, label %bb.ac, !prof !22

bb.ab:                                            ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !11
  store double %i.fo, ptr %i.fr, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fw = bitcast double %i.fo to i64
  %i.fx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fp, i64 %i.fw) #7
  %.pre99 = load ptr, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre99, i64 192
  %.pre100 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %.pre99, i64 200
  %.pre102 = load ptr, ptr %.phi.trans.insert101, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.ab, %bb.ac
  %i.fy = phi ptr [ %i.ft, %bb.ab ], [ %.pre102, %bb.ac ]
  %i.fz = phi ptr [ %i.fv, %bb.ab ], [ %.pre100, %bb.ac ] ; 4 uses
  %i.ga = phi ptr [ %i.fp, %bb.ab ], [ %.pre99, %bb.ac ] ; 2 uses
  %.0.i.i.i.i.i.i73 = phi ptr [ %i.fr, %bb.ab ], [ %i.fx, %bb.ac ]
  %i.gb = uitofp i32 %.045 to double              ; 2 uses
  %i.gc = icmp ult ptr %i.fz, %i.fy
  br i1 %i.gc, label %bb.ad, label %bb.ae, !prof !22

bb.ad:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 192
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !11
  store double %i.gb, ptr %i.fz, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.gf = bitcast double %i.gb to i64
  %i.gg = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ga, i64 %i.gf) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75: ; preds = %bb.ad, %bb.ae
  %.0.i.i.i.i.i.i74 = phi ptr [ %i.fz, %bb.ad ], [ %i.gg, %bb.ae ]
  %i.gh = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 491, i16 14, ptr %.0.i.i.i.i.i.i73) #7
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ah, label %bb.af, !prof !47

bb.af:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75
  %i.gj = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 492, i16 14, ptr %.0.i.i.i.i.i.i74) #7
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ah, label %bb.ag, !prof !47

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.0.copyload.i76 = load i64, ptr %.0.i.i.i.i.i.i53, align 8, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.c, %bb.ag, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75, %bb.af, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit50, %_ZN6hermes2vm11TwineChar16C2EPKc.exit47
  %.sroa.096.3 = phi i32 [ %i.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit47 ], [ 0, %bb.c ], [ %i.bs, %_ZN6hermes2vm11TwineChar16C2EPKc.exit50 ], [ %i.cg, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 1, %bb.ag ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75 ], [ 0, %bb.af ]
  %.sroa.9.3 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit47 ], [ undef, %bb.c ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit50 ], [ undef, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ %.sroa.0.0.copyload.i76, %bb.ag ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit75 ], [ undef, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.096.4 = phi i32 [ %.sroa.096.3, %bb.ah ], [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.9.4 = phi i64 [ %.sroa.9.3, %bb.ah ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.096.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.4, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22textEncoderConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !30
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %.mask.i.i.i = and i64 %i.n, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b, !prof !47

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 43, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !42
  store ptr @.str, ptr %4, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !44
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %2, align 8, !tbaa !31, !noalias !326 ; 2 uses
  %i.u = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %i.t, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268435469, i16 14, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E) #7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.08.1 = phi i32 [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.c ], [ 0, %bb.b ]
end_hunk_0
