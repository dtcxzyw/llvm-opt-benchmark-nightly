inline.NumInlined: 495
inline.NumDeleted: 189
begin_hunk_0_@_ZN2v88internal8compiler14NodeProperties14GetJSCreateMapEPNS1_12JSHeapBrokerEPNS1_4NodeE:bb.a
bb.p:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i33
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #14
  unreachable

_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i37: ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ca = call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_10HeapObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %0, ptr %i.bw, i32 3) ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i39, label %bb.q, label %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit40, !prof !14

bb.q:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i37
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #14
  unreachable

_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit40: ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i37
  store ptr %i.ca, ptr %4, align 8
  %i.cb = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  store ptr %i.cb, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.cc = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #13
  store ptr %i.cc, ptr %5, align 8
  %i.cd = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18has_prototype_slotEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br i1 %i.cd, label %bb.r, label %.critedge3

bb.r:                                             ; preds = %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit40
  %i.ce = call noundef zeroext i1 @_ZNK2v88internal8compiler13JSFunctionRef15has_initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.ce, label %bb.s, label %.critedge19

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.cf = call ptr @_ZNK2v88internal8compiler13JSFunctionRef11initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #13
  store ptr %i.cf, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.cg = call ptr @_ZNK2v88internal8compiler6MapRef14GetConstructorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %0) #13
  store ptr %i.cg, ptr %7, align 8
  %i.ch = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef6equalsES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull %i.bz) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br i1 %i.ch, label %bb.t, label %.critedge17

bb.t:                                             ; preds = %bb.s
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.u

.critedge3:                                       ; preds = %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge19

.critedge17:                                      ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge17, %.critedge3, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.u

.critedge:                                        ; preds = %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit32.thread, %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.u

bb.u:                                             ; preds = %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit, %.critedge, %.critedge19, %bb.t
  %.sroa.046.0 = phi ptr [ %.sroa.0.0.copyload, %bb.t ], [ null, %.critedge19 ], [ null, %.critedge ], [ null, %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit ]
  ret ptr %.sroa.046.0
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler9ObjectRef12AsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18has_prototype_slotEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal8compiler13JSFunctionRef15has_initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef11initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler6MapRef14GetConstructorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef6equalsES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal8compiler14NodeProperties15InferMapsUnsafeEPNS1_12JSHeapBrokerEPNS1_4NodeENS1_6EffectEPNS0_14ZoneCompactSetINS1_6MapRefEEE(ptr noundef %0, ptr noundef %1, ptr %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 8 uses
  %10 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.c, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.d = phi ptr [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.a, %bb.a ]
  %.06.i.i.i = phi ptr [ %i.r, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.j, 251658240
  %i.k = ptrtoint ptr %.06.i.i.i to i64
  %i.l = add i64 %i.k, 32
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 16
  %i.q = inttoptr i64 %i.p to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.u, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !13

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %bb.a
  %i.v = phi ptr [ %i.a, %bb.a ], [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.w = phi i16 [ %i.c, %bb.a ], [ %i.u, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.x = icmp eq i16 %i.w, 25
  br i1 %i.x, label %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i, label %.outer.outer.preheader

_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ab = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_10HeapObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %0, ptr %i.aa, i32 3) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit, !prof !14

bb.e:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #14
  unreachable

_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit: ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i
  store ptr %i.ab, ptr %9, align 8
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef10IsJSObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit
  %i.ad = call ptr @_ZNK2v88internal8compiler9ObjectRef10AsJSObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %i.ae = call noundef zeroext i1 @_ZNK2v88internal8compiler12JSHeapBroker24IsArrayOrObjectPrototypeENS1_11JSObjectRefE(ptr noundef nonnull align 8 dereferenceable(8560) %0, ptr %i.ad) #13
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.af = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %0) #13
  store ptr %i.af, ptr %10, align 8
  %i.ag = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br i1 %i.ag, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  %i.ah = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ah, ptr %8, align 8
  %i.ai = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %.thread253

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %.outer.outer.preheader

.outer.outer.preheader:                           ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, %bb.h
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.preheader, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200
  %.sroa.0214.0.ph.ph = phi ptr [ %i.sn, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200 ], [ %2, %.outer.outer.preheader ]
  %.067.ph.ph = phi i32 [ %.572, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200 ], [ 1, %.outer.outer.preheader ]
  %.058.ph.ph = phi ptr [ %.159, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200 ], [ %1, %.outer.outer.preheader ] ; 22 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.cm
  %.sroa.0214.0.ph = phi ptr [ %i.qa, %bb.cm ], [ %.sroa.0214.0.ph.ph, %.outer.outer ]
  %.067.ph = phi i32 [ 2, %bb.cm ], [ %.067.ph.ph, %.outer.outer ] ; 17 uses
  br label %bb.i

bb.i:                                             ; preds = %.outer, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %.sroa.0214.0 = phi ptr [ %i.bl, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %.sroa.0214.0.ph, %.outer ] ; 28 uses
  %i.ak = load ptr, ptr %.sroa.0214.0, align 8    ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i16, ptr %i.al, align 8
  switch i16 %i.am, label %bb.cn [
    i16 59, label %bb.j
    i16 58, label %bb.n
    i16 281, label %bb.y
    i16 373, label %bb.aj
    i16 1085, label %.outer.i109
    i16 1104, label %.outer.i122
    i16 350, label %bb.bd
    i16 1153, label %.thread249
    i16 1155, label %.thread249
    i16 349, label %.thread249
    i16 354, label %.thread249
    i16 41, label %.outer.i166
    i16 37, label %bb.ce
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ak) #13
  %i.at = load ptr, ptr %.sroa.0214.0, align 8
  %i.au = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.at) #13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 251658240
  %.not.i.i.i = icmp eq i32 %i.ax, 251658240
  %i.ay = ptrtoint ptr %.sroa.0214.0 to i64
  %i.az = add i64 %i.ay, 32
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.bc, 16
  %i.be = inttoptr i64 %i.bd to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.l, %bb.m
  %.sink.i.i.i = phi ptr [ %i.be, %bb.m ], [ %i.ba, %bb.l ]
  %i.bf = zext i1 %i.as to i32
  %i.bg = zext i1 %i.au to i32
  %i.bh = add i32 %i.ar, %i.bf
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  br label %bb.i, !llvm.loop !15

bb.n:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 251658240
  %.not.i.i.i76 = icmp eq i32 %i.br, 251658240
  %i.bs = ptrtoint ptr %.sroa.0214.0 to i64
  %i.bt = add i64 %i.bs, 32
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  br i1 %.not.i.i.i76, label %bb.q, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = add i64 %i.bw, 16
  %i.by = inttoptr i64 %i.bx to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.p, %bb.q
  %.sink.i.i.i77 = phi ptr [ %i.by, %bb.q ], [ %i.bu, %bb.p ]
  %i.bz = load ptr, ptr %.sink.i.i.i77, align 8
  br label %.outer.i

.outer.i:                                         ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %.08.ph.i = phi ptr [ %i.ct, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ] ; 4 uses
  %i.ca = load ptr, ptr %.08.ph.i, align 8        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i16, ptr %i.cb, align 8
  switch i16 %i.cc, label %.outer.split.i [
    i16 278, label %.outer.split.us.i
    i16 59, label %.outer.split.us.i
  ]

.outer.split.us.i:                                ; preds = %.outer.i, %.outer.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.r, !prof !5

.outer.split.i:                                   ; preds = %.outer.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i
  %.0.i = phi ptr [ %i.dh, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i ], [ %i.bz, %.outer.i ] ; 4 uses
  %i.cg = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i16, ptr %i.ch, align 8
  switch i16 %i.ci, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit [
    i16 278, label %bb.u
    i16 59, label %bb.u
  ]

bb.r:                                             ; preds = %.outer.split.us.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.s:                                             ; preds = %.outer.split.us.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.ph.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.cl, 251658240
  %i.cm = ptrtoint ptr %.08.ph.i to i64
  %i.cn = add i64 %i.cm, 32
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, 16
  %i.cs = inttoptr i64 %i.cr to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i: ; preds = %bb.t, %bb.s
  %.sink.i.i.i.i = phi ptr [ %i.cs, %bb.t ], [ %i.co, %bb.s ]
  %i.ct = load ptr, ptr %.sink.i.i.i.i, align 8
  br label %.outer.i, !llvm.loop !12

bb.u:                                             ; preds = %.outer.split.i, %.outer.split.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cy, 251658240
  %.not.i.i.i9.i = icmp eq i32 %i.cz, 251658240
  %i.da = ptrtoint ptr %.0.i to i64
  %i.db = add i64 %i.da, 32
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  br i1 %.not.i.i.i9.i, label %bb.x, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = add i64 %i.de, 16
  %i.dg = inttoptr i64 %i.df to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i: ; preds = %bb.x, %bb.w
  %.sink.i.i.i10.i = phi ptr [ %i.dg, %bb.x ], [ %i.dc, %bb.w ]
  %i.dh = load ptr, ptr %.sink.i.i.i10.i, align 8
  br label %.outer.split.i, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit: ; preds = %.outer.split.i
  %i.di = icmp eq ptr %.08.ph.i, %.0.i
  br i1 %i.di, label %.thread, label %.thread249

.thread:                                          ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler14MapGuardMapsOfEPKNS1_8OperatorE(ptr noundef %i.ak) #13
  %i.dk = load i64, ptr %i.dj, align 8
  store i64 %i.dk, ptr %3, align 8
  br label %.thread253

bb.y:                                             ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.aa, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler14NodeProperties15InferMapsUnsafeEPNS1_12JSHeapBrokerEPNS1_4NodeENS1_6EffectEPNS0_14ZoneCompactSetINS1_6MapRefEEE:bb.a
  %i.gy = and i32 %i.gx, 251658240
  %.not.i.i.i9.i104 = icmp eq i32 %i.gy, 251658240
  %i.gz = ptrtoint ptr %.0.i103 to i64
  %i.ha = add i64 %i.gz, 32
  %i.hb = inttoptr i64 %i.ha to ptr               ; 2 uses
  br i1 %.not.i.i.i9.i104, label %bb.at, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i105

bb.at:                                            ; preds = %bb.as
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = add i64 %i.hd, 16
  %i.hf = inttoptr i64 %i.he to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i105

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i105: ; preds = %bb.at, %bb.as
  %.sink.i.i.i10.i106 = phi ptr [ %i.hf, %bb.at ], [ %i.hb, %bb.as ]
  %i.hg = load ptr, ptr %.sink.i.i.i10.i106, align 8
  br label %.outer.split.i102, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit107: ; preds = %.outer.split.i102
  %i.hh = icmp eq ptr %.08.ph.i97, %.0.i103
  br i1 %i.hh, label %.thread240, label %.thread249

.thread240:                                       ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit107
  %i.hi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler39ElementsTransitionWithMultipleSourcesOfEPKNS1_8OperatorE(ptr noundef %i.ak) #13
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.0.0.copyload.i108 = load ptr, ptr %i.hj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0.0.copyload.i108, ptr %7, align 8
  %i.hk = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.hl = ptrtoint ptr %i.hk to i64
  store i64 %i.hl, ptr %3, align 8
  br label %.thread253

.outer.i109:                                      ; preds = %bb.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i113
  %.08.ph.i110 = phi ptr [ %i.ic, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i113 ], [ %.058.ph.ph, %bb.i ] ; 4 uses
  %i.hm = load ptr, ptr %.08.ph.i110, align 8     ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load i16, ptr %i.hn, align 8
  switch i16 %i.ho, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120 [
    i16 278, label %.outer.split.us.i111
    i16 59, label %.outer.split.us.i111
  ]

.outer.split.us.i111:                             ; preds = %.outer.i109, %.outer.i109
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.av, label %bb.au, !prof !5

bb.au:                                            ; preds = %.outer.split.us.i111
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.av:                                            ; preds = %.outer.split.us.i111
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.ph.i110, i64 20
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 251658240
  %.not.i.i.i.i112 = icmp eq i32 %i.hu, 251658240
  %i.hv = ptrtoint ptr %.08.ph.i110 to i64
  %i.hw = add i64 %i.hv, 32
  %i.hx = inttoptr i64 %i.hw to ptr               ; 2 uses
  br i1 %.not.i.i.i.i112, label %bb.aw, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i113

bb.aw:                                            ; preds = %bb.av
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = add i64 %i.hz, 16
  %i.ib = inttoptr i64 %i.ia to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i113

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i113: ; preds = %bb.aw, %bb.av
  %.sink.i.i.i.i114 = phi ptr [ %i.ib, %bb.aw ], [ %i.hx, %bb.av ]
  %i.ic = load ptr, ptr %.sink.i.i.i.i114, align 8
  br label %.outer.i109, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120: ; preds = %.outer.i109
  %i.id = icmp eq ptr %.08.ph.i110, %.sroa.0214.0
  br i1 %i.id, label %bb.ax, label %.thread249

bb.ax:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120
  %i.ie = call ptr @_ZN2v88internal8compiler14NodeProperties14GetJSCreateMapEPNS1_12JSHeapBrokerEPNS1_4NodeE(ptr noundef %0, ptr noundef %.058.ph.ph) ; 2 uses
  %.not257 = icmp eq ptr %i.ie, null
  br i1 %.not257, label %.thread253, label %_ZNK2v88internal8compiler11OptionalRefINS1_6MapRefEE5valueEv.exit

_ZNK2v88internal8compiler11OptionalRefINS1_6MapRefEE5valueEv.exit: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.ie, ptr %6, align 8
  %i.if = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ig = ptrtoint ptr %i.if to i64
  store i64 %i.ig, ptr %3, align 8
  br label %.thread253

.outer.i122:                                      ; preds = %bb.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i126
  %.08.ph.i123 = phi ptr [ %i.ix, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i126 ], [ %.058.ph.ph, %bb.i ] ; 4 uses
  %i.ih = load ptr, ptr %.08.ph.i123, align 8     ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load i16, ptr %i.ii, align 8
  switch i16 %i.ij, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133 [
    i16 278, label %.outer.split.us.i124
    i16 59, label %.outer.split.us.i124
  ]

.outer.split.us.i124:                             ; preds = %.outer.i122, %.outer.i122
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %bb.az, label %bb.ay, !prof !5

bb.ay:                                            ; preds = %.outer.split.us.i124
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.az:                                            ; preds = %.outer.split.us.i124
  %i.in = getelementptr inbounds nuw i8, ptr %.08.ph.i123, i64 20
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = and i32 %i.io, 251658240
  %.not.i.i.i.i125 = icmp eq i32 %i.ip, 251658240
  %i.iq = ptrtoint ptr %.08.ph.i123 to i64
  %i.ir = add i64 %i.iq, 32
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  br i1 %.not.i.i.i.i125, label %bb.ba, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i126

bb.ba:                                            ; preds = %bb.az
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = add i64 %i.iu, 16
  %i.iw = inttoptr i64 %i.iv to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i126

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i126: ; preds = %bb.ba, %bb.az
  %.sink.i.i.i.i127 = phi ptr [ %i.iw, %bb.ba ], [ %i.is, %bb.az ]
  %i.ix = load ptr, ptr %.sink.i.i.i.i127, align 8
  br label %.outer.i122, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133: ; preds = %.outer.i122
  %i.iy = icmp eq ptr %.08.ph.i123, %.sroa.0214.0
  br i1 %i.iy, label %bb.bb, label %.thread249

bb.bb:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bc, label %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit, !prof !14

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #14
  unreachable

_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit: ; preds = %bb.bb
  store ptr %i.ja, ptr %12, align 8
  %i.jb = call ptr @_ZNK2v88internal8compiler16NativeContextRef16promise_functionEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %0) #13
  store ptr %i.jb, ptr %11, align 8
  %i.jc = call ptr @_ZNK2v88internal8compiler13JSFunctionRef11initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.jc, ptr %5, align 8
  %i.jd = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.je = ptrtoint ptr %i.jd to i64
  store i64 %i.je, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %.thread253

bb.bd:                                            ; preds = %bb.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %bb.bf, label %bb.be, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = and i32 %i.jj, 251658240
  %.not.i.i.i134 = icmp eq i32 %i.jk, 251658240
  %i.jl = ptrtoint ptr %.sroa.0214.0 to i64
  %i.jm = add i64 %i.jl, 32
  %i.jn = inttoptr i64 %i.jm to ptr               ; 4 uses
  br i1 %.not.i.i.i134, label %bb.bg, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136

bb.bg:                                            ; preds = %bb.bf
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = add i64 %i.jp, 16
  %i.jr = inttoptr i64 %i.jq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136: ; preds = %bb.bf, %bb.bg
  %.sink.i.i.i135 = phi ptr [ %i.jr, %bb.bg ], [ %i.jn, %bb.bf ]
  %i.js = load ptr, ptr %.sink.i.i.i135, align 8
  %i.jt = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.ak) #13 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8
  %14 = icmp eq i8 %i.ju, 1
  %15 = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %16 = load i32, ptr %15, align 4
  %i.jv = icmp eq i32 %16, 0
  %or.cond = select i1 %14, i1 %i.jv, i1 false
  br i1 %or.cond, label %.outer.i137, label %.thread249

.outer.i137:                                      ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i141
  %.08.ph.i138 = phi ptr [ %i.kp, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i141 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136 ] ; 4 uses
  %i.jw = load ptr, ptr %.08.ph.i138, align 8     ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load i16, ptr %i.jx, align 8
  switch i16 %i.jy, label %.outer.split.i143 [
    i16 278, label %.outer.split.us.i139
    i16 59, label %.outer.split.us.i139
  ]

.outer.split.us.i139:                             ; preds = %.outer.i137, %.outer.i137
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %bb.bi, label %bb.bh, !prof !5

.outer.split.i143:                                ; preds = %.outer.i137, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i146
  %.0.i144 = phi ptr [ %i.ld, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i146 ], [ %i.js, %.outer.i137 ] ; 4 uses
  %i.kc = load ptr, ptr %.0.i144, align 8         ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i16, ptr %i.kd, align 8
  switch i16 %i.ke, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148 [
    i16 278, label %bb.bk
    i16 59, label %bb.bk
  ]

bb.bh:                                            ; preds = %.outer.split.us.i139
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.bi:                                            ; preds = %.outer.split.us.i139
  %i.kf = getelementptr inbounds nuw i8, ptr %.08.ph.i138, i64 20
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, 251658240
  %.not.i.i.i.i140 = icmp eq i32 %i.kh, 251658240
  %i.ki = ptrtoint ptr %.08.ph.i138 to i64
  %i.kj = add i64 %i.ki, 32
  %i.kk = inttoptr i64 %i.kj to ptr               ; 2 uses
  br i1 %.not.i.i.i.i140, label %bb.bj, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i141

bb.bj:                                            ; preds = %bb.bi
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = add i64 %i.km, 16
  %i.ko = inttoptr i64 %i.kn to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i141

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i141: ; preds = %bb.bj, %bb.bi
  %.sink.i.i.i.i142 = phi ptr [ %i.ko, %bb.bj ], [ %i.kk, %bb.bi ]
  %i.kp = load ptr, ptr %.sink.i.i.i.i142, align 8
  br label %.outer.i137, !llvm.loop !12

bb.bk:                                            ; preds = %.outer.split.i143, %.outer.split.i143
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %bb.bm, label %bb.bl, !prof !5

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i144, i64 20
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = and i32 %i.ku, 251658240
  %.not.i.i.i9.i145 = icmp eq i32 %i.kv, 251658240
  %i.kw = ptrtoint ptr %.0.i144 to i64
  %i.kx = add i64 %i.kw, 32
  %i.ky = inttoptr i64 %i.kx to ptr               ; 2 uses
  br i1 %.not.i.i.i9.i145, label %bb.bn, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i146

bb.bn:                                            ; preds = %bb.bm
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = add i64 %i.la, 16
  %i.lc = inttoptr i64 %i.lb to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i146

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i146: ; preds = %bb.bn, %bb.bm
  %.sink.i.i.i10.i147 = phi ptr [ %i.lc, %bb.bn ], [ %i.ky, %bb.bm ]
  %i.ld = load ptr, ptr %.sink.i.i.i10.i147, align 8
  br label %.outer.split.i143, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148: ; preds = %.outer.split.i143
  %i.le = icmp eq ptr %.08.ph.i138, %.0.i144
  br i1 %i.le, label %bb.bo, label %.thread249

bb.bo:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148
  %i.lf = load ptr, ptr %.sroa.0214.0, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 20
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.bq, label %bb.bp, !prof !5

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.lj = load i32, ptr %i.ji, align 4
  %i.lk = and i32 %i.lj, 251658240
  %.not.i.i.i149 = icmp eq i32 %i.lk, 251658240
  br i1 %.not.i.i.i149, label %bb.br, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151

bb.br:                                            ; preds = %bb.bq
  %i.ll = load ptr, ptr %i.jn, align 8
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = add i64 %i.lm, 16
  %i.lo = inttoptr i64 %i.ln to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151: ; preds = %bb.bq, %bb.br
  %.sink.i.i.i150 = phi ptr [ %i.lo, %bb.br ], [ %i.jn, %bb.bq ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.sink.i.i.i150, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8            ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load i16, ptr %i.ls, align 8            ; 2 uses
  %cond.i5.i.i.i152 = icmp eq i16 %i.lt, 59
  br i1 %cond.i5.i.i.i152, label %.lr.ph.i.i.i155, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153

.lr.ph.i.i.i155:                                  ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158
  %i.lu = phi ptr [ %i.mj, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158 ], [ %i.lr, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151 ]
  %.06.i.i.i156 = phi ptr [ %i.mi, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158 ], [ %i.lq, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %i.lw = load i32, ptr %i.lv, align 4
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %bb.bt, label %bb.bs, !prof !5

bb.bs:                                            ; preds = %.lr.ph.i.i.i155
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.bt:                                            ; preds = %.lr.ph.i.i.i155
  %i.ly = getelementptr inbounds nuw i8, ptr %.06.i.i.i156, i64 20
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = and i32 %i.lz, 251658240
  %.not.i.i.i.i.i.i.i157 = icmp eq i32 %i.ma, 251658240
  %i.mb = ptrtoint ptr %.06.i.i.i156 to i64
  %i.mc = add i64 %i.mb, 32
  %i.md = inttoptr i64 %i.mc to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i157, label %bb.bu, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158

bb.bu:                                            ; preds = %bb.bt
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = add i64 %i.mf, 16
  %i.mh = inttoptr i64 %i.mg to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158: ; preds = %bb.bu, %bb.bt
  %.sink.i.i.i.i.i.i.i159 = phi ptr [ %i.mh, %bb.bu ], [ %i.md, %bb.bt ]
  %i.mi = load ptr, ptr %.sink.i.i.i.i.i.i.i159, align 8 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8            ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load i16, ptr %i.mk, align 8            ; 2 uses
  %cond.i.i.i.i160 = icmp eq i16 %i.ml, 59
  br i1 %cond.i.i.i.i160, label %.lr.ph.i.i.i155, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153, !llvm.loop !13

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151
  %i.mm = phi ptr [ %i.lr, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151 ], [ %i.mj, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158 ]
  %i.mn = phi i16 [ %i.lt, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit151 ], [ %i.ml, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i158 ]
  %i.mo = icmp eq i16 %i.mn, 25
  br i1 %i.mo, label %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i162, label %.thread249

_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i162: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = inttoptr i64 %i.mq to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.ms = call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_10HeapObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %0, ptr %i.mr, i32 3) ; 2 uses
  %.not.i.i.i.i.i164 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i164, label %bb.bv, label %bb.bw, !prof !14

bb.bv:                                            ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i162
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #14
  unreachable

bb.bw:                                            ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit.i162
  store ptr %i.ms, ptr %13, align 8
  %i.mt = call ptr @_ZNK2v88internal8compiler9ObjectRef5AsMapEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.mt, ptr %4, align 8
  %i.mu = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.mv = ptrtoint ptr %i.mu to i64
  store i64 %i.mv, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %.thread253

.outer.i166:                                      ; preds = %bb.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i170
  %.08.ph.i167 = phi ptr [ %i.nm, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i170 ], [ %.058.ph.ph, %bb.i ] ; 4 uses
  %i.mw = load ptr, ptr %.08.ph.i167, align 8     ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load i16, ptr %i.mx, align 8
  switch i16 %i.my, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177 [
    i16 278, label %.outer.split.us.i168
    i16 59, label %.outer.split.us.i168
  ]

.outer.split.us.i168:                             ; preds = %.outer.i166, %.outer.i166
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.by, label %bb.bx, !prof !5

bb.bx:                                            ; preds = %.outer.split.us.i168
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.by:                                            ; preds = %.outer.split.us.i168
  %i.nc = getelementptr inbounds nuw i8, ptr %.08.ph.i167, i64 20
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = and i32 %i.nd, 251658240
  %.not.i.i.i.i169 = icmp eq i32 %i.ne, 251658240
  %i.nf = ptrtoint ptr %.08.ph.i167 to i64
  %i.ng = add i64 %i.nf, 32
  %i.nh = inttoptr i64 %i.ng to ptr               ; 2 uses
  br i1 %.not.i.i.i.i169, label %bb.bz, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i170

bb.bz:                                            ; preds = %bb.by
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = add i64 %i.nj, 16
  %i.nl = inttoptr i64 %i.nk to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i170

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i170: ; preds = %bb.bz, %bb.by
  %.sink.i.i.i.i171 = phi ptr [ %i.nl, %bb.bz ], [ %i.nh, %bb.by ]
  %i.nm = load ptr, ptr %.sink.i.i.i.i171, align 8
  br label %.outer.i166, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177: ; preds = %.outer.i166
  %i.nn = icmp eq ptr %.08.ph.i167, %.sroa.0214.0
  br i1 %i.nn, label %bb.ca, label %.thread249

bb.ca:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177
  %i.no = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %bb.cc, label %bb.cb, !prof !5

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = and i32 %i.ns, 251658240
  %.not.i.i.i178 = icmp eq i32 %i.nt, 251658240
  %i.nu = ptrtoint ptr %.sroa.0214.0 to i64
  %i.nv = add i64 %i.nu, 32
  %i.nw = inttoptr i64 %i.nv to ptr               ; 2 uses
  br i1 %.not.i.i.i178, label %bb.cd, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180

bb.cd:                                            ; preds = %bb.cc
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = add i64 %i.ny, 16
  %i.oa = inttoptr i64 %i.nz to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180: ; preds = %bb.cc, %bb.cd
  %.sink.i.i.i179 = phi ptr [ %i.oa, %bb.cd ], [ %i.nw, %bb.cc ]
  %i.ob = load ptr, ptr %.sink.i.i.i179, align 8
  br label %.thread249

bb.ce:                                            ; preds = %bb.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %bb.cg, label %bb.cf, !prof !5

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.of = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.og = load i32, ptr %i.of, align 4
  %i.oh = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ak) #13
  %i.oi = load ptr, ptr %.sroa.0214.0, align 8
  %i.oj = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.oi) #13
  %i.ok = load ptr, ptr %.sroa.0214.0, align 8    ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load i32, ptr %i.ol, align 8            ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = and i32 %i.oo, 251658240
  %.not.i.i.i181 = icmp eq i32 %i.op, 251658240
  %i.oq = ptrtoint ptr %.sroa.0214.0 to i64
  %i.or = add i64 %i.oq, 32
  %i.os = inttoptr i64 %i.or to ptr               ; 4 uses
  br i1 %.not.i.i.i181, label %bb.ch, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.ch:                                            ; preds = %bb.cg
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = add i64 %i.ou, 16
  %i.ow = inttoptr i64 %i.ov to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.cg, %bb.ch
  %.sink.i.i.i182 = phi ptr [ %i.ow, %bb.ch ], [ %i.os, %bb.cg ]
  %i.ox = zext i1 %i.oh to i32
  %i.oy = zext i1 %i.oj to i32
  %i.oz = add i32 %i.og, %i.ox
  %i.pa = add i32 %i.oz, %i.oy
  %i.pb = add i32 %i.pa, %i.om
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i182, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load i16, ptr %i.pg, align 8
  %.not = icmp eq i16 %i.ph, 1
  br i1 %.not, label %bb.ci, label %.thread253

bb.ci:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.pi = icmp sgt i32 %i.om, 0
  br i1 %i.pi, label %bb.ck, label %bb.cj, !prof !5

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ok) #13
  %i.pm = load ptr, ptr %.sroa.0214.0, align 8
  %i.pn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.pm) #13
  %i.po = load i32, ptr %i.on, align 4
  %i.pp = and i32 %i.po, 251658240
  %.not.i.i.i183 = icmp eq i32 %i.pp, 251658240
  br i1 %.not.i.i.i183, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pq = load ptr, ptr %i.os, align 8
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = add i64 %i.pr, 16
  %i.pt = inttoptr i64 %i.ps to ptr
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sink.i.i.i184 = phi ptr [ %i.pt, %bb.cl ], [ %i.os, %bb.ck ]
  %i.pu = zext i1 %i.pl to i32
  %i.pv = zext i1 %i.pn to i32
  %i.pw = add i32 %i.pk, %i.pu
  %i.px = add i32 %i.pw, %i.pv
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i184, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8
  br label %.outer

bb.cn:                                            ; preds = %bb.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.qc = load i32, ptr %i.qb, align 8
  %.not73 = icmp eq i32 %i.qc, 1
  br i1 %.not73, label %bb.co, label %.thread253

bb.co:                                            ; preds = %bb.cn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.qd, align 2
  %i.qe = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not258 = icmp eq i8 %i.qe, 0
  %spec.select = select i1 %.not258, i32 2, i32 %.067.ph
  br label %.thread249

.thread249:                                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit107, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit92, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit, %bb.co, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133
  %.572 = phi i32 [ %spec.select, %bb.co ], [ 2, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120 ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180 ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit92 ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177 ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133 ], [ 2, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153 ], [ %.067.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136 ], [ 2, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit107 ], [ 2, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148 ], [ %.067.ph, %bb.i ], [ %.067.ph, %bb.i ], [ %.067.ph, %bb.i ], [ %.067.ph, %bb.i ]
  %.159 = phi ptr [ %.058.ph.ph, %bb.co ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit120 ], [ %i.ob, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit180 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit92 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit177 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit133 ], [ %.058.ph.ph, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i153 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit136 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit107 ], [ %.058.ph.ph, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit148 ], [ %.058.ph.ph, %bb.i ], [ %.058.ph.ph, %bb.i ], [ %.058.ph.ph, %bb.i ], [ %.058.ph.ph, %bb.i ] ; 2 uses
  br label %.outer.i186

.outer.i186:                                      ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i190, %.thread249
  %.08.ph.i187 = phi ptr [ %i.qy, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i190 ], [ %.159, %.thread249 ] ; 4 uses
  %i.qf = load ptr, ptr %.08.ph.i187, align 8     ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load i16, ptr %i.qg, align 8
  switch i16 %i.qh, label %.outer.split.i192 [
    i16 278, label %.outer.split.us.i188
    i16 59, label %.outer.split.us.i188
  ]

.outer.split.us.i188:                             ; preds = %.outer.i186, %.outer.i186
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 20
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %bb.cq, label %bb.cp, !prof !5

.outer.split.i192:                                ; preds = %.outer.i186, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i195
  %.0.i193 = phi ptr [ %i.rm, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i195 ], [ %.sroa.0214.0, %.outer.i186 ] ; 4 uses
  %i.ql = load ptr, ptr %.0.i193, align 8         ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load i16, ptr %i.qm, align 8
  switch i16 %i.qn, label %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit197 [
    i16 278, label %bb.cs
    i16 59, label %bb.cs
  ]

bb.cp:                                            ; preds = %.outer.split.us.i188
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.cq:                                            ; preds = %.outer.split.us.i188
  %i.qo = getelementptr inbounds nuw i8, ptr %.08.ph.i187, i64 20
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = and i32 %i.qp, 251658240
  %.not.i.i.i.i189 = icmp eq i32 %i.qq, 251658240
  %i.qr = ptrtoint ptr %.08.ph.i187 to i64
  %i.qs = add i64 %i.qr, 32
  %i.qt = inttoptr i64 %i.qs to ptr               ; 2 uses
  br i1 %.not.i.i.i.i189, label %bb.cr, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i190

bb.cr:                                            ; preds = %bb.cq
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = add i64 %i.qv, 16
  %i.qx = inttoptr i64 %i.qw to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i190

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i190: ; preds = %bb.cr, %bb.cq
  %.sink.i.i.i.i191 = phi ptr [ %i.qx, %bb.cr ], [ %i.qt, %bb.cq ]
  %i.qy = load ptr, ptr %.sink.i.i.i.i191, align 8
  br label %.outer.i186, !llvm.loop !12

bb.cs:                                            ; preds = %.outer.split.i192, %.outer.split.i192
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ql, i64 20
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %bb.cu, label %bb.ct, !prof !5

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i193, i64 20
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = and i32 %i.rd, 251658240
  %.not.i.i.i9.i194 = icmp eq i32 %i.re, 251658240
  %i.rf = ptrtoint ptr %.0.i193 to i64
  %i.rg = add i64 %i.rf, 32
  %i.rh = inttoptr i64 %i.rg to ptr               ; 2 uses
  br i1 %.not.i.i.i9.i194, label %bb.cv, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i195

bb.cv:                                            ; preds = %bb.cu
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = add i64 %i.rj, 16
  %i.rl = inttoptr i64 %i.rk to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i195

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit11.i195: ; preds = %bb.cv, %bb.cu
  %.sink.i.i.i10.i196 = phi ptr [ %i.rl, %bb.cv ], [ %i.rh, %bb.cu ]
  %i.rm = load ptr, ptr %.sink.i.i.i10.i196, align 8
  br label %.outer.split.i192, !llvm.loop !12

_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit197: ; preds = %.outer.split.i192
  %i.rn = icmp eq ptr %.08.ph.i187, %.0.i193
  br i1 %i.rn, label %.thread253, label %bb.cw

bb.cw:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit197
  %i.ro = load ptr, ptr %.sroa.0214.0, align 8    ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load i32, ptr %i.rp, align 8
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %bb.cy, label %bb.cx, !prof !5

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ro) #13
  %i.rv = load ptr, ptr %.sroa.0214.0, align 8
  %i.rw = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.rv) #13
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0, i64 20
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = and i32 %i.ry, 251658240
  %.not.i.i.i198 = icmp eq i32 %i.rz, 251658240
  %i.sa = ptrtoint ptr %.sroa.0214.0 to i64
  %i.sb = add i64 %i.sa, 32
  %i.sc = inttoptr i64 %i.sb to ptr               ; 2 uses
  br i1 %.not.i.i.i198, label %bb.cz, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200

bb.cz:                                            ; preds = %bb.cy
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = add i64 %i.se, 16
  %i.sg = inttoptr i64 %i.sf to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit200: ; preds = %bb.cy, %bb.cz
  %.sink.i.i.i199 = phi ptr [ %i.sg, %bb.cz ], [ %i.sc, %bb.cy ]
  %i.sh = zext i1 %i.ru to i32
  %i.si = zext i1 %i.rw to i32
  %i.sj = add i32 %i.rt, %i.sh
  %i.sk = add i32 %i.sj, %i.si
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i199, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8
  br label %.outer.outer, !llvm.loop !15

.thread253:                                       ; preds = %bb.cn, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit197, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %bb.bw, %_ZNK2v88internal8compiler11OptionalRefINS1_6MapRefEE5valueEv.exit, %bb.ax, %.thread240, %.thread238, %.thread, %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit, %.critedge
  %.14 = phi i32 [ 2, %.critedge ], [ 0, %bb.ax ], [ %.067.ph, %bb.bw ], [ %.067.ph, %.thread ], [ %.067.ph, %.thread238 ], [ %.067.ph, %.thread240 ], [ %.067.ph, %_ZNK2v88internal8compiler11OptionalRefINS1_6MapRefEE5valueEv.exit ], [ %.067.ph, %_ZNK2v88internal8compiler12JSHeapBroker21target_native_contextEv.exit ], [ 0, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ], [ 0, %_ZN2v88internal8compiler14NodeProperties6IsSameEPNS1_4NodeES4_.exit197 ], [ 0, %bb.cn ]
  ret i32 %.14
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef10IsJSObjectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal8compiler12JSHeapBroker24IsArrayOrObjectPrototypeENS1_11JSObjectRefE(ptr noundef nonnull align 8 dereferenceable(8560), ptr) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler9ObjectRef10AsJSObjectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler14MapGuardMapsOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler21CheckMapsParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler39ElementsTransitionWithMultipleSourcesOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler16NativeContextRef16promise_functionEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK2v88internal8compiler9ObjectRef5AsMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties29NoObservableSideEffectBetweenEPNS1_4NodeES4_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not9 = icmp eq ptr %0, %1
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %.0610 = phi ptr [ %i.ab, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.0610, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.sroa.0.0.copyload.i = load i8, ptr %i.e, align 2
  %i.f = and i8 %.sroa.0.0.copyload.i, 16
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #13
  %i.j = load ptr, ptr %.0610, align 8
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.j) #13
  %i.l = getelementptr inbounds nuw i8, ptr %.0610, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 251658240
  %.not.i.i.i = icmp eq i32 %i.n, 251658240
  %i.o = ptrtoint ptr %.0610 to i64
  %i.p = add i64 %i.o, 32
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
end_hunk_1
