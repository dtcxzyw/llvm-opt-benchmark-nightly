Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simplified-lowering?download=true
inline.NumInlined: 8420
inline.NumDeleted: 1146
begin_hunk_0_@_ZN2v88internal8compiler22RepresentationSelector31CanSpeculateAdditiveSafeIntegerEPNS1_4NodeE:bb.a
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.c, %bb.d
  %.sink.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i, align 8        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 16777215
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.x, label %bb.e, label %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit

_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ %.sroa.0.0.copyload.i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ] ; 2 uses
  store i64 %.sroa.0.0.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %.not.i.i, label %bb.f, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8

bb.f:                                             ; preds = %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8

_ZNK2v88internal8compiler4Node7InputAtEi.exit8:   ; preds = %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit, %bb.f
  %.sink.i.i7 = phi ptr [ %i.ac, %bb.f ], [ %i.j, %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 16777215
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %i.ak, align 8 ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.0.copyload.i.i9, 0
  br i1 %i.al, label %bb.g, label %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i.i.i11 = load i64, ptr %i.am, align 8
  br label %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12

_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8, %bb.g
  %i.an = phi i64 [ %.sroa.0.0.copyload.i.i.i11, %bb.g ], [ %.sroa.0.0.copyload.i.i9, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8 ] ; 2 uses
  store i64 %i.an, ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 416
  %.sroa.01.0.copyload = load i64, ptr %i.aq, align 8 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.i, %.sroa.01.0.copyload
  br i1 %i.ar, label %_ZNK2v88internal8compiler4Type2IsES2_.exit13, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12
  %i.as = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.01.0.copyload) #16
  br i1 %i.as, label %_ZNK2v88internal8compiler4Type2IsES2_.exit13, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.at = load ptr, ptr %i.ao, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 416
  %.sroa.0.0.copyload = load i64, ptr %i.au, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.an, %.sroa.0.0.copyload
  br i1 %i.av, label %_ZNK2v88internal8compiler4Type2IsES2_.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.0.0.copyload) #16
  br label %_ZNK2v88internal8compiler4Type2IsES2_.exit13

_ZNK2v88internal8compiler4Type2IsES2_.exit13:     ; preds = %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12, %bb.i, %bb.h, %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.ax = phi i1 [ true, %_ZNK2v88internal8compiler4Type2IsES2_.exit ], [ %i.aw, %bb.i ], [ true, %bb.h ], [ true, %_ZN2v88internal8compiler22RepresentationSelector6TypeOfEPNS1_4NodeE.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_ZNK2v88internal8compiler4Type2IsES2_.exit13
  %.0 = phi i1 [ false, %bb.a ], [ %i.ax, %_ZNK2v88internal8compiler4Type2IsES2_.exit13 ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK2v88internal8compiler4Type14AsHeapConstantEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef8IsBigIntEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK2v88internal8compiler9ObjectRef8AsBigIntEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZNK2v88internal8compiler9BigIntRef7AsInt64EPb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler23CheckBoundsParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN2v88internal8compiler10BitsetType11SignedSmallEv() local_unnamed_addr #3

declare ptr @_ZNK2v88internal8compiler16HeapConstantType5ValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler12FloatMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !guid !962 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double 0.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %cond.i5.i.i = icmp eq i16 %i.e, 59
  br i1 %cond.i5.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i
  %i.f = phi ptr [ %i.u, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ], [ %i.c, %bb.a ]
  %.06.i.i = phi ptr [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.26) #17
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %.06.i.i to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %.sink.i.i.i.i.i.i, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8              ; 2 uses
  %cond.i.i.i = icmp eq i16 %i.w, 59
  br i1 %cond.i.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i, !llvm.loop !3

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i, %bb.a
  %i.x = phi i16 [ %i.e, %bb.a ], [ %i.w, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ]
  %.0.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ]
  %i.y = icmp eq i16 %i.x, 23                     ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8
  br i1 %i.y, label %bb.e, label %_ZN2v88internal8compiler12ValueMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i
  %i.aa = load ptr, ptr %.0.lcssa.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load double, ptr %i.ab, align 8
  store double %i.ac, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler12ValueMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit

_ZN2v88internal8compiler12ValueMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i, %bb.e
  ret void
}

declare i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64, i64, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN2v88internal8compiler23FastApiCallParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal8compiler15FastApiCallNode21FastCallArgumentCountEPNS1_4NodeE(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal8compiler15FastApiCallNode21SlowCallArgumentCountEPNS1_4NodeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler7UseInfoELm10ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(264) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !guid !964 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = shl nsw i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.speculated, 288230376151711744
  br i1 %i.l, label %bb.b, label %bb.e, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %.sroa.speculated, 576460752303423488
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = shl nuw i64 24, %i.k
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 4 uses
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt18uninitialized_moveIPN2v88internal8compiler7UseInfoES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24
  %i.v = icmp eq ptr %i.t, %i.r
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal8compiler7UseInfoES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !963

_ZSt18uninitialized_moveIPN2v88internal8compiler7UseInfoES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.k
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler7UseInfoELm10ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr %i.p, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler7UseInfoELm10ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #5 comdat align 2 !guid !965 {
_ZSt9destroy_nIPN2v88internal8compiler7UseInfoElET_S5_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler7UseInfoElET_S5_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler7UseInfoElET_S5_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() local_unnamed_addr #3

declare noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056), i32) local_unnamed_addr #3

declare i64 @_ZN2v88internal8compiler14JSWasmCallNode21TypeForWasmReturnKindENS0_4wasm9ValueKindE(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler22RepresentationSelector18UpdateFeedbackTypeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !967 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 79 uses
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq i16 %i.f, 36
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.preheader

_ZNK2v88internal8compiler4Node7InputAtEi.exit.preheader: ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
  %wide.trip.count584 = zext nneg i32 %i.h to i64
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit.us: ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv581
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.0.0.copyload.i.us = load i64, ptr %i.ac, align 8
  %i.ad = icmp eq i64 %.sroa.0.0.copyload.i.us, 0
  br i1 %i.ad, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %.thread, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us, !llvm.loop !966

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit, !llvm.loop !966

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 16777215
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8
  %i.am = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.am, label %.loopexit, label %bb.d

.thread:                                          ; preds = %bb.d, %bb.c, %.preheader, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = and i32 %i.ao, 16777215
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.aq ; 33 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i369 = load i64, ptr %i.au, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.av, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.aw = and i32 %i.ao, 251658240                ; 2 uses
  %.not.i = icmp eq i32 %i.aw, 251658240          ; 4 uses
  br i1 %.not.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %.thread
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = add i64 %i.ax, 32
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.thread562, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit375

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %.thread
  %.not575 = icmp eq i32 %i.aw, 0
  br i1 %.not575, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit375.thread, label %.thread562

.thread562:                                       ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler22RepresentationSelector15VisitJSWasmCallILNS1_5PhaseE2EEEvPNS1_4NodeEPNS1_18SimplifiedLoweringE:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1309

._crit_edge87:                                    ; preds = %bb.k, %._crit_edge
  %i.bz = load ptr, ptr %1, align 8
  %i.ca = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.bz) #16 ; 0 uses
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cb) #16 ; 0 uses
  %i.cd = load i64, ptr %i.y, align 8
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit, label %bb.p

bb.k:                                             ; preds = %.lr.ph86, %bb.k
  %.084 = phi i32 [ %i.ax, %.lr.ph86 ], [ %i.cf, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 9, ptr %3, align 8
  store i24 262, ptr %.sroa.2.0..sroa_idx, align 1
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 4
  store ptr null, ptr %.sroa.449.0..sroa_idx, align 8
  store i32 -1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN2v88internal8compiler22RepresentationSelector12ConvertInputEPNS1_4NodeEiNS1_7UseInfoENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull %1, i32 noundef %.084, ptr noundef nonnull byval(%"class.v8::internal::compiler::UseInfo") align 8 %3, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cf = add nsw i32 %.084, 1                    ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.aw
  br i1 %i.cg, label %bb.k, label %._crit_edge87, !llvm.loop !1310

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit: ; preds = %._crit_edge87
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.ci, align 4 ; 4 uses
  %i.cj = and i32 %.sroa.0.0.copyload.i42, 3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.cl = and i32 %.sroa.0.0.copyload.i42, 268435440
  %i.cm = add nsw i32 %i.cl, -5648                ; 2 uses
  %i.cn = call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 24) ; 3 uses
  %i.co = icmp ult i32 %i.cn, 8
  br i1 %i.co, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #17
  unreachable

bb.n:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.cp = and i32 %.sroa.0.0.copyload.i42, 268435427
  switch i32 %i.cp, label %bb.o [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i43
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i43
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i43
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i44: ; preds = %bb.l
  %switch = icmp samesign ult i32 %i.cn, 4
  br i1 %switch, label %switch.lookup.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i43

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i43: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i44, %bb.n, %bb.n, %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #17
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cq = and i32 %.sroa.0.0.copyload.i42, 5
  %i.cr = icmp eq i32 %i.cq, 5
  %i.cs = select i1 %i.cr, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i44
  %switch.idx.cast.i = trunc nuw nsw i32 %i.cn to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.o, %switch.lookup.i
  %.0.i = phi i8 [ %i.cs, %bb.o ], [ %switch.offset.i, %switch.lookup.i ]
  %i.ct = call i64 @_ZN2v88internal8compiler14JSWasmCallNode21TypeForWasmReturnKindENS0_4wasm9ValueKindE(i8 noundef zeroext %.0.i) #16 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge87, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.cu = call i64 @_ZN2v88internal8compiler14NodeProperties12GetTypeOrAnyEPKNS1_4NodeE(ptr noundef nonnull %1) #16 ; 0 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler7UseInfoELm10ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(264) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10AssertTypeENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler22RepresentationSelector30DisconnectFromEffectAndControlEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1314 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #16
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.k) #16
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 251658240
  %.not.i.i.i = icmp eq i32 %i.r, 251658240
  %i.s = ptrtoint ptr %1 to i64
  %i.t = add i64 %i.s, 32
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 16
  %i.y = inttoptr i64 %i.x to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.u, %bb.c ]
  %i.z = zext i1 %i.j to i32
  %i.aa = zext i1 %i.l to i32
  %i.ab = add i32 %i.i, %i.z
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = add i32 %i.ac, %i.o
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.o, 0
  br i1 %i.ah, label %.thread, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.46) #17
  unreachable

.thread:                                          ; preds = %bb.b, %bb.e
  %.010 = phi ptr [ %i.ag, %bb.e ], [ null, %bb.b ]
  %i.ai = phi ptr [ %i.m, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ai) #16
  %i.am = load ptr, ptr %1, align 8
  %i.an = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.am) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 251658240
  %.not.i.i.i7 = icmp eq i32 %i.aq, 251658240
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = add i64 %i.ar, 32
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  br i1 %.not.i.i.i7, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %.thread
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %i.av, 16
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %.thread, %bb.g
  %.sink.i.i.i8 = phi ptr [ %i.ax, %bb.g ], [ %i.at, %.thread ]
  %i.ay = zext i1 %i.al to i32
  %i.az = zext i1 %i.an to i32
  %i.ba = add i32 %i.ak, %i.ay
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i8, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_124ReplaceEffectControlUsesEPNS1_4NodeES4_S4_(ptr noundef nonnull %1, ptr noundef %i.be, ptr noundef %.010)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !guid !1315 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !guid !1316 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.speculated, 576460752303423488
  br i1 %i.k, label %bb.b, label %bb.e, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.speculated, 1152921504606846976
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !guid !1317 {
_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  ret void
}

declare void @_ZN2v88internal8compiler4Node13NullAllInputsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4PlugEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21RepresentationChanger17Uint32OperatorForENS1_8IrOpcode5ValueE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21RepresentationChanger16Int32OperatorForENS1_8IrOpcode5ValueE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21RepresentationChanger18Float64OperatorForENS1_8IrOpcode5ValueE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #3

declare noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler22RepresentationSelector24InsertUnconditionalDeoptEPNS1_4NodeENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 !guid !1318 {
bb.a:
  %4 = alloca %"struct.std::array.1164", align 8  ; 5 uses
  %5 = alloca %"struct.std::array.1166", align 8  ; 6 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.46) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #16
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = zext i1 %i.g to i32
  %i.u = zext i1 %i.i to i32
  %i.v = add i32 %i.f, %i.t
  %i.w = add i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !37

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #17
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aa) #16
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ah) #16
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.j, align 4
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i11 = icmp eq i32 %i.an, 251658240
  br i1 %.not.i.i.i11, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i12 = phi ptr [ %i.ar, %bb.g ], [ %i.o, %bb.f ]
  %i.as = zext i1 %i.ag to i32
  %i.at = zext i1 %i.ai to i32
  %i.au = add i32 %i.af, %i.as
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i12, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 816
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder7CheckIfENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #16
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = tail call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.bf, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.bg, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.z, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.az, ptr %i.bi, align 8
  %i.bj = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bb, ptr noundef %i.be, i32 noundef 3, ptr noundef nonnull %5, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11UnreachableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.bj, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.az, ptr %i.bp, align 8
  %i.bq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef %i.bo, i32 noundef 2, ptr noundef nonnull %4, i1 noundef zeroext false) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN2v88internal8compiler14NodeProperties18ReplaceEffectInputEPNS1_4NodeES4_i(ptr noundef nonnull %1, ptr noundef %i.bq, i32 noundef 0) #16
  ret ptr %i.bq
}

end_hunk_1
