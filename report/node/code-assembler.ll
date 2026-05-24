inline.NumInlined: 4331
inline.NumDeleted: 1686
begin_hunk_0_@_ZN2v88internal8compiler13CodeAssembler19TryToIntPtrConstantENS0_5TNodeINS0_9IntegralTEEEPl:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler13CodeAssembler19IsUndefinedConstantENS0_5TNodeINS0_6ObjectEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.d, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.e = phi ptr [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.b, %bb.a ]
  %.06.i.i.i = phi ptr [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b, !prof !85

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #26
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.k, 251658240
  %i.l = ptrtoint ptr %.06.i.i.i to i64
  %i.m = add i64 %i.l, 32
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, 16
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.v, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !245

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %bb.a
  %i.w = phi ptr [ %i.b, %bb.a ], [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.x = phi i16 [ %i.d, %bb.a ], [ %i.v, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.y = icmp eq i16 %i.x, 25                     ; 2 uses
  br i1 %i.y, label %bb.e, label %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, %bb.e
  %.sroa.3.0 = phi ptr [ %i.ab, %bb.e ], [ null, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i ]
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 648
  %i.ag = icmp eq ptr %.sroa.3.0, %i.af
  %i.ah = select i1 %i.y, i1 %i.ag, i1 false
  ret i1 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler13CodeAssembler14IsNullConstantENS0_5TNodeINS0_6ObjectEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.d, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.e = phi ptr [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.b, %bb.a ]
  %.06.i.i.i = phi ptr [ %i.s, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b, !prof !85

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #26
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.k, 251658240
  %i.l = ptrtoint ptr %.06.i.i.i to i64
  %i.m = add i64 %i.l, 32
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, 16
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.v, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !245

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %bb.a
  %i.w = phi ptr [ %i.b, %bb.a ], [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.x = phi i16 [ %i.d, %bb.a ], [ %i.v, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.y = icmp eq i16 %i.x, 25                     ; 2 uses
  br i1 %i.y, label %bb.e, label %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, %bb.e
  %.sroa.3.0 = phi ptr [ %i.ab, %bb.e ], [ null, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i ]
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 664
  %i.ag = icmp eq ptr %.sroa.3.0, %i.af
  %i.ah = select i1 %i.y, i1 %i.ag, i1 false
  ret i1 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  %i.b = load ptr, ptr %0, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler15TargetParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.c) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler9ParameterEm(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 noundef %i.e) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler15TargetParameterEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler9ParameterEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler13CodeAssembler16IsJSFunctionCallEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 1
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler21GetJSContextParameterEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.689") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = add nsw i32 %i.g, 2
  tail call void @_ZN2v88internal8compiler13CodeAssembler9ParameterINS0_7ContextEEENS0_5TNodeIT_EEiNS_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.689") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.h, ptr nonnull @.constant)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13CodeAssembler9ParameterINS0_7ContextEEENS0_5TNodeIT_EEiNS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.689") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 33 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %4, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #25
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %4, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %4, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %4, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %4, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #25
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.27, i64 noundef 10) #25 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %2) #25 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge, label %_ZNK2v814SourceLocation8FileNameEv.exit

_ZNK2v814SourceLocation8FileNameEv.exit:          ; preds = %bb.a
  %i.ar = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.c, label %_ZNK2v814SourceLocation8FileNameEv.exit.thread

_ZNK2v814SourceLocation8FileNameEv.exit.thread:   ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.28, i64 noundef 4) #25 ; 0 uses
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread
  %i.au = load ptr, ptr %i.p, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.p, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = or i32 %i.az, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, i32 noundef %i.ba) #25
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.29, i64 noundef 1) #25 ; 0 uses
  br label %bb.b

_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge: ; preds = %bb.a
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.28, i64 noundef 4) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge
  %i.bd = phi ptr [ %i.at, %_ZNK2v814SourceLocation8FileNameEv.exit.thread ], [ @.str.10, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge ] ; 2 uses
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #25
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.bd, i64 noundef %i.be) #25 ; 0 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.29, i64 noundef 1) #25 ; 0 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation4LineEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  br label %_ZNK2v814SourceLocation4LineEv.exit

_ZNK2v814SourceLocation4LineEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.bk = phi i64 [ %i.bj, %bb.b ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.bk) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v814SourceLocation4LineEv.exit, %_ZNK2v814SourceLocation8FileNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bm, ptr %5, align 8, !alias.scope !252
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !alias.scope !252
  store i8 0, ptr %i.bm, align 8, !alias.scope !252
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !noalias !252   ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !252 ; 2 uses
  %9 = icmp ugt ptr %8, %i.bp
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.bp    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i9 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !252 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.bw = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  %i.by = load ptr, ptr %5, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bm
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bm, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i10 = icmp eq i64 %i.bx, -1
  br i1 %.not.i10, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #26
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = and i64 %i.bw, -8
  %i.cj = add i64 %i.ci, 8                        ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = sub i64 %i.cl, %i.cn
  %i.cp = icmp ugt i64 %i.cj, %i.co
  br i1 %i.cp, label %bb.h, label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit, !prof !86

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, i64 noundef %i.cj) #25
  %.pre.i.i = load i64, ptr %i.cm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit: ; preds = %bb.g, %bb.h
  %i.cq = phi i64 [ %.pre.i.i, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = add i64 %i.cq, %i.cj
  store i64 %i.cs, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ct, ptr %6, align 8, !alias.scope !259
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cu, align 8, !alias.scope !259
  store i8 0, ptr %i.ct, align 8, !alias.scope !259
  %10 = load ptr, ptr %7, align 8, !noalias !259  ; 3 uses
  %.not.i.not.i.i11 = icmp eq ptr %10, null
  %i.cv = load ptr, ptr %i.bo, align 8, !noalias !259 ; 2 uses
  %11 = icmp ugt ptr %10, %i.cv
  %.08.i.i.i12 = select i1 %11, ptr %10, ptr %i.cv ; 2 uses
  %.not4.i.i13 = icmp eq ptr %.08.i.i.i12, null
  %.not.i.i14 = select i1 %.not.i.not.i.i11, i1 true, i1 %.not4.i.i13
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !259 ; 2 uses
  %i.cy = ptrtoint ptr %.08.i.i.i12 to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.da) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

bb.j:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15: ; preds = %bb.i, %bb.j
  %i.dc = load ptr, ptr %6, align 8
  %i.dd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.cr, i64 noundef %i.bx, ptr noundef nonnull @.str.30, ptr noundef %i.dc) #25 ; 0 uses
  %i.de = load ptr, ptr %6, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ct
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15
  %i.dg = load i64, ptr %i.ct, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.di = icmp eq i32 %2, -1
  %i.dj = load ptr, ptr %1, align 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.dl = call noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler15TargetParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dk) #25
  br label %_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.dm = sext i32 %2 to i64
  %i.dn = call noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler9ParameterEm(ptr noundef nonnull align 8 dereferenceable(168) %i.dk, i64 noundef %i.dm) #25
  br label %_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi.exit

_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.dl, %bb.k ], [ %i.dn, %bb.l ]
  store ptr %.0.i, ptr %0, align 8, !alias.scope !260
  %i.do = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.do, ptr %4, align 8
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %4, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dt, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.du = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.aj
  br i1 %i.dv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi.exit
  %i.dw = load i64, ptr %i.aj, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #25
  store ptr %i.f, ptr %4, align 8
  %i.dy = load i64, ptr %i.h, align 8
  %i.dz = getelementptr inbounds i8, ptr %4, i64 %i.dy
  store ptr %i.g, ptr %i.dz, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler13CodeAssembler26HasDynamicJSParameterCountEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler23DynamicJSParameterCountEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::internal::TNode.690") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %0, align 8, !alias.scope !265
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler26SetDynamicJSParameterCountENS0_5TNodeINS0_7Uint16TEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_6ObjectEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

declare void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_6ObjectEEES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = load ptr, ptr %2, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c, ptr noundef %i.d) #25
  ret void
}

declare void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_6ObjectEEES5_S5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1, ptr noundef readonly captures(none) dead_on_return %2, ptr noundef readonly captures(none) dead_on_return %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = load ptr, ptr %2, align 8
  %i.e = load ptr, ptr %3, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #25
  ret void
}

declare void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_6Int32TEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_7Uint32TEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_5WordTEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_8Float32TEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_8Float64TEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal8compiler19RawMachineAssembler6ReturnEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.c) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler6ReturnENS0_5TNodeINS0_5WordTEEES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
end_hunk_0
