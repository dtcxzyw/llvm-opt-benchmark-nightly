inline.NumInlined: 924
inline.NumDeleted: 261
begin_hunk_0_@_ZN2v88internal8compiler17TypedOptimization35ReduceCheckEqualsInternalizedStringEPNS1_4NodeE:bb.a
_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %bb.e
  %.pn.in = phi ptr [ %i.n, %bb.e ], [ %i.j, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread ] ; 2 uses
  %.pn = load ptr, ptr %.pn.in, align 8
  %.sroa.0.0.copyload.i.i1618.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0.0.copyload.i.i1618 = load i64, ptr %.sroa.0.0.copyload.i.i1618.in, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn.in, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i11 = load i64, ptr %i.q, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i11, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #15
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10
  %i.u = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #14
  %i.v = load ptr, ptr %1, align 8
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.v) #14
  %i.x = load i32, ptr %i.e, align 4
  %i.y = and i32 %i.x, 251658240
  %.not.i.i.i12 = icmp eq i32 %i.y, 251658240
  br i1 %.not.i.i.i12, label %bb.h, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i13 = phi ptr [ %i.ac, %bb.h ], [ %i.j, %bb.g ]
  %i.ad = zext i1 %i.u to i32
  %i.ae = zext i1 %i.w to i32
  %i.af = add nuw i32 %i.c, %i.ad
  %i.ag = add nuw i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i13, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i11, %.sroa.0.0.copyload.i.i1618
  br i1 %i.ak, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.al = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.0.0.copyload.i.i1618) #14
  %spec.select = select i1 %i.al, ptr %i.aj, ptr null
  br label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %.sroa.07.0 = phi ptr [ %i.aj, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %spec.select, %_ZNK2v88internal8compiler4Type2IsES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler17TypedOptimization23ReduceCheckEqualsSymbolEPNS1_4NodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %.not19 = icmp eq i32 %i.c, 1                   ; 2 uses
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c
  br i1 %.not19, label %bb.d, label %bb.e, !prof !14

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread: ; preds = %bb.c
  br i1 %.not19, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10, !prof !14

bb.d:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %bb.e
  %.pn.in = phi ptr [ %i.n, %bb.e ], [ %i.j, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread ] ; 2 uses
  %.pn = load ptr, ptr %.pn.in, align 8
  %.sroa.0.0.copyload.i.i1618.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0.0.copyload.i.i1618 = load i64, ptr %.sroa.0.0.copyload.i.i1618.in, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn.in, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i11 = load i64, ptr %i.q, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i11, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #15
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit10
  %i.u = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #14
  %i.v = load ptr, ptr %1, align 8
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.v) #14
  %i.x = load i32, ptr %i.e, align 4
  %i.y = and i32 %i.x, 251658240
  %.not.i.i.i12 = icmp eq i32 %i.y, 251658240
  br i1 %.not.i.i.i12, label %bb.h, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i13 = phi ptr [ %i.ac, %bb.h ], [ %i.j, %bb.g ]
  %i.ad = zext i1 %i.u to i32
  %i.ae = zext i1 %i.w to i32
  %i.af = add nuw i32 %i.c, %i.ad
  %i.ag = add nuw i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i13, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i11, %.sroa.0.0.copyload.i.i1618
  br i1 %i.ak, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.al = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.0.0.copyload.i.i1618) #14
  %spec.select = select i1 %i.al, ptr %i.aj, ptr null
  br label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %.sroa.07.0 = phi ptr [ %i.aj, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %spec.select, %_ZNK2v88internal8compiler4Type2IsES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler17TypedOptimization15ReduceLoadFieldEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8 ; 3 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %5 = icmp eq i8 %i.r, 1
  %6 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %7 = load i32, ptr %6, align 4
  %i.s = icmp eq i32 %7, 0
  %or.cond = select i1 %5, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.v = trunc i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.v, label %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.i

_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.i: ; preds = %bb.e
  %i.w = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.thread.sink.split.i, label %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread

_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.thread.sink.split.i: ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.z = call noundef ptr @_ZNK2v88internal8compiler4Type14AsHeapConstantEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.aa, align 8
  store ptr %.sroa.0.0.copyload.i.i14, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ab = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.u) #14
  store ptr %i.ab, ptr %4, align 8
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.ac, label %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit, label %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread: ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.i, %bb.e, %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread

_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit: ; preds = %_ZNK2v88internal8compiler4Type14IsHeapConstantEv.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr nonnull %.sroa.0.0.copyload.i) #14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ag, ptr nonnull %.sroa.0.0.copyload.i, ptr noundef %i.ah) #14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %1, ptr noundef %i.ai, ptr noundef null, ptr noundef null) #14, !inline_history !16
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread, %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, %bb.f
  %.sroa.013.1 = phi ptr [ %i.ai, %bb.f ], [ null, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ null, %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit ], [ null, %_ZN2v88internal8compiler12_GLOBAL__N_126GetStableMapFromObjectTypeEPNS1_12JSHeapBrokerENS1_4TypeE.exit.thread ]
  ret ptr %.sroa.013.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler17TypedOptimization19ReduceNumberRoundopEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i.i, align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload
  br i1 %i.t, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.u = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.0.0.copyload) #14
  %spec.select = select i1 %i.u, ptr %i.o, ptr null
  br label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %.sroa.04.0 = phi ptr [ %i.o, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ %spec.select, %_ZNK2v88internal8compiler4Type2IsES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler17TypedOptimization17ReduceNumberFloorEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.637", align 8   ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i.i, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %.sroa.06.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.06.0.copyload
  br i1 %i.t, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.u = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.06.0.copyload) #14
  br i1 %i.u, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.v = load i64, ptr %3, align 8
  %i.w = icmp eq i64 %i.v, 1119
  br i1 %i.w, label %_ZNK2v88internal8compiler4Type2IsES2_.exit17.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit17

_ZNK2v88internal8compiler4Type2IsES2_.exit17:     ; preds = %bb.e
  %i.x = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 1119) #14
  br i1 %i.x, label %_ZNK2v88internal8compiler4Type2IsES2_.exit17.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread

_ZNK2v88internal8compiler4Type2IsES2_.exit17.thread: ; preds = %bb.e, %_ZNK2v88internal8compiler4Type2IsES2_.exit17
  %i.y = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i16, ptr %i.z, align 8
  switch i16 %i.aa, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread [
    i16 155, label %bb.f
    i16 182, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit17.thread, %_ZNK2v88internal8compiler4Type2IsES2_.exit17.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 251658240
  %.not.i.i.i18 = icmp eq i32 %i.ag, 251658240
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = add i64 %i.ah, 32
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  br i1 %.not.i.i.i18, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20: ; preds = %bb.h
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 16
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.ap, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i21, ptr %4, align 8
  %.not36 = icmp eq i32 %i.ac, 1
  br i1 %.not36, label %bb.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit24, !prof !14

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0.0.copyload.i.i2129 = load i64, ptr %i.aq, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i2129, ptr %4, align 8
  %.not = icmp eq i32 %i.ac, 1
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit24, !prof !14

bb.i:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit24: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread
  %i.ar = phi ptr [ %i.ak, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread ], [ %i.ao, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20 ]
  %.sroa.0.0.copyload.i.i213032 = phi i64 [ %.sroa.0.0.copyload.i.i2129, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread ], [ %.sroa.0.0.copyload.i.i21, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20 ] ; 2 uses
  %.sink.i.i.i23 = phi ptr [ %i.aj, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20.thread ], [ %i.an, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit20 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink.i.i.i23, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i25 = load i64, ptr %i.au, align 8 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i25, ptr %5, align 8
  %i.av = icmp eq i64 %.sroa.0.0.copyload.i.i213032, 1
  %i.aw = icmp eq i64 %.sroa.0.0.copyload.i.i25, 1
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit24
  %i.ax = icmp eq i64 %.sroa.0.0.copyload.i.i213032, 1031
  br i1 %i.ax, label %_ZNK2v88internal8compiler4Type2IsES2_.exit26.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit26

_ZNK2v88internal8compiler4Type2IsES2_.exit26:     ; preds = %bb.j
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 1031) #14
  br i1 %i.ay, label %_ZNK2v88internal8compiler4Type2IsES2_.exit26.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread.sink.split

_ZNK2v88internal8compiler4Type2IsES2_.exit26.thread: ; preds = %bb.j, %_ZNK2v88internal8compiler4Type2IsES2_.exit26
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i.i25, 1031
  br i1 %i.az, label %_ZNK2v88internal8compiler4Type2IsES2_.exit27.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit27
end_hunk_0
