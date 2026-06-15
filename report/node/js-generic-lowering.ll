inline.NumInlined: 944
inline.NumDeleted: 220
begin_hunk_0_@_ZN2v88internal8compiler17JSGenericLowering20LowerJSCreateClosureEPNS1_4NodeE:bb.a
; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering31LowerJSCreateCollectionIteratorEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering30LowerJSCreateEmptyLiteralArrayEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN2v88internal8compiler19FeedbackParameterOfEPKNS1_8OperatorE(ptr noundef %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #11
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler12MachineGraph19TaggedIndexConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 noundef %i.h) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, i32 noundef 1, ptr noundef %i.i) #11
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 4) #11 ; 0 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.l = zext i1 %i.k to i32
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 800
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.o, i32 noundef 940) #11 ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  %i.s = load ptr, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.t, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.r, ptr %2, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = load i32, ptr %i.r, align 8
  %i.aa = sub nsw i32 %i.y, %i.z
  %i.ab = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aa, i32 %i.l, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ac, ptr %i.q) #11
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ag, i32 noundef 0, ptr noundef %i.ad) #11
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %i.ab) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ak) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering31LowerJSCreateEmptyLiteralObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.f, i32 noundef 943) #11 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 3 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.i, ptr %2, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i32, ptr %i.i, align 8
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.r, i32 %i.b, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.t, ptr %i.h) #11
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, i32 noundef 0, ptr noundef %i.u) #11
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.s) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering28LowerJSCreateGeneratorObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 4) #11 ; 0 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.c = zext i1 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.g, i32 noundef 395) #11 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 3 uses
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.l, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.j, ptr %2, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.j, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 %i.c, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.u, ptr %i.i) #11
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i32 noundef 0, ptr noundef %i.v) #11
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %i.t) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ac) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering29LowerJSCreateIterResultObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.f, i32 noundef 394) #11 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 3 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.i, ptr %2, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i32, ptr %i.i, align 8
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.r, i32 %i.b, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.t, ptr %i.h) #11
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, i32 noundef 0, ptr noundef %i.u) #11
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.s) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering26LowerJSCreateKeyValueArrayEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering25LowerJSCreateLiteralArrayEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler25CreateLiteralParametersOfEPKNS1_8OperatorE(ptr noundef %i.a) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = tail call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #11
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler12MachineGraph19TaggedIndexConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 noundef %i.i) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, i32 noundef 1, ptr noundef %i.j) #11
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.k, ptr %.sroa.0.0.copyload.i, ptr noundef %i.o) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.m, i32 noundef 2, ptr noundef %i.p) #11
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sitofp i32 %i.u to double
  %i.w = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph17ConstantMaybeHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.q, double noundef %i.v) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.s, i32 noundef 3, ptr noundef %i.w) #11
  %i.x = load i32, ptr %i.t, align 4
  %4 = and i32 %i.x, 1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 16376
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %5
  %.val.i = load ptr, ptr %1, align 8
  %9 = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %10 = zext i1 %9 to i32
  %11 = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 800
  %13 = load ptr, ptr %12, align 8
  %i.y = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %13, i32 noundef 939) #11 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 3 uses
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ac, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.aa, ptr %3, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = load i32, ptr %i.aa, align 8
  %i.aj = sub nsw i32 %i.ah, %i.ai
  %i.ak = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.aj, i32 %10, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.al, ptr %i.z) #11
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ap, i32 noundef 0, ptr noundef %i.am) #11
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.ak) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.at) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.d

bb.c:                                             ; preds = %5, %bb.a
  %.val.i13 = load ptr, ptr %1, align 8
  %14 = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i13) #11
  %15 = zext i1 %14 to i32
  %16 = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 800
  %18 = load ptr, ptr %17, align 8
  %i.au = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %18, i32 noundef 242) #11 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 3 uses
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %.sroa.0.0.copyload.i.i.i14 = load i8, ptr %i.ay, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.aw, ptr %2, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load i32, ptr %i.aw, align 8
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.bf, i32 %15, i8 %.sroa.0.0.copyload.i.i.i14, i32 noundef 0) #11
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bh, ptr %i.av) #11
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.bl, i32 noundef 0, ptr noundef %i.bi) #11
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef %i.bg) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.bp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering26LowerJSCreateLiteralObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler25CreateLiteralParametersOfEPKNS1_8OperatorE(ptr noundef %i.a) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = tail call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #11
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler12MachineGraph19TaggedIndexConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 noundef %i.i) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, i32 noundef 1, ptr noundef %i.j) #11
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.k, ptr %.sroa.0.0.copyload.i, ptr noundef %i.o) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.m, i32 noundef 2, ptr noundef %i.p) #11
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sitofp i32 %i.u to double
  %i.w = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph17ConstantMaybeHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.q, double noundef %i.v) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.s, i32 noundef 3, ptr noundef %i.w) #11
  %i.x = load i32, ptr %i.t, align 4
  %4 = and i32 %i.x, 1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 2731
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %5
  %.val.i = load ptr, ptr %1, align 8
  %9 = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %10 = zext i1 %9 to i32
  %11 = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 800
  %13 = load ptr, ptr %12, align 8
  %i.y = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %13, i32 noundef 941) #11 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 3 uses
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ac, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.aa, ptr %3, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = load i32, ptr %i.aa, align 8
  %i.aj = sub nsw i32 %i.ah, %i.ai
  %i.ak = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.aj, i32 %10, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.al, ptr %i.z) #11
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ap, i32 noundef 0, ptr noundef %i.am) #11
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.ak) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.at) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.d

bb.c:                                             ; preds = %5, %bb.a
  %.val.i13 = load ptr, ptr %1, align 8
  %14 = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i13) #11
  %15 = zext i1 %14 to i32
  %16 = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 800
  %18 = load ptr, ptr %17, align 8
  %i.au = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %18, i32 noundef 243) #11 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 3 uses
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %.sroa.0.0.copyload.i.i.i14 = load i8, ptr %i.ay, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.aw, ptr %2, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load i32, ptr %i.aw, align 8
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.bf, i32 %15, i8 %.sroa.0.0.copyload.i.i.i14, i32 noundef 0) #11
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bh, ptr %i.av) #11
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.bl, i32 noundef 0, ptr noundef %i.bi) #11
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef %i.bg) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.bp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering26LowerJSCreateLiteralRegExpEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler25CreateLiteralParametersOfEPKNS1_8OperatorE(ptr noundef %i.a) #11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = tail call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #11
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler12MachineGraph19TaggedIndexConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.d, i64 noundef %i.i) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, i32 noundef 1, ptr noundef %i.j) #11
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.k, ptr %.sroa.0.0.copyload.i, ptr noundef %i.o) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.m, i32 noundef 2, ptr noundef %i.p) #11
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sitofp i32 %i.u to double
  %i.w = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph17ConstantMaybeHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.q, double noundef %i.v) #11
  tail call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.s, i32 noundef 3, ptr noundef %i.w) #11
  %.val.i = load ptr, ptr %1, align 8
  %i.x = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.y = zext i1 %i.x to i32
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 800
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.ab, i32 noundef 938) #11 ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 3 uses
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ag, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.ae, ptr %2, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.ae, align 8
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.an, i32 %i.y, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ap, ptr %i.ad) #11
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.at, i32 noundef 0, ptr noundef %i.aq) #11
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef %i.ao) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ax) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering19LowerJSCreateObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.f, i32 noundef 1101) #11 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 3 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.i, ptr %2, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i32, ptr %i.i, align 8
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.r, i32 %i.b, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.t, ptr %i.h) #11
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, i32 noundef 0, ptr noundef %i.u) #11
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.s) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering26LowerJSCreateStringWrapperEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering20LowerJSCreatePromiseEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering27LowerJSCreateStringIteratorEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering23LowerJSCreateTypedArrayEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %.val.i = load ptr, ptr %1, align 8
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %.val.i) #11
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %i.f, i32 noundef 1238) #11 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 3 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.i, ptr %2, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i32, ptr %i.i, align 8
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.r, i32 %i.b, i8 %.sroa.0.0.copyload.i.i.i, i32 noundef 0) #11
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.t, ptr %i.h) #11
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, i32 noundef 0, ptr noundef %i.u) #11
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.s) #11
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17JSGenericLowering24LowerJSGetTemplateObjectEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler29GetTemplateObjectParametersOfEPKNS1_8OperatorE(ptr noundef %i.a) #11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.0.0.copyload.i14 = load ptr, ptr %i.b, align 8
end_hunk_0
