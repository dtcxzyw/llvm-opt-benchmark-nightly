inline.NumInlined: 4175
inline.NumDeleted: 1528
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116ValidateResourceEN6icu_786LocaleEPKcS5_:bb.a
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %bb.ae, label %._crit_edge.i.i27

bb.ae:                                            ; preds = %bb.ad
  %i.bs = icmp slt i64 %i.bq, 0
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #27
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.bt = add nuw i64 %i.bq, 1                    ; 2 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28, !prof !35

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28: ; preds = %bb.ag
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #29 ; 2 uses
  store ptr %i.bv, ptr %5, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  br label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28, %bb.ad
  %i.bw = phi ptr [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28 ], [ %i.bo, %bb.ad ] ; 3 uses
  switch i64 %i.bq, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i27
  %i.bx = load i8, ptr %i.bn, align 1
  store i8 %i.bx, ptr %i.bw, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29

bb.aj:                                            ; preds = %._crit_edge.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29: ; preds = %._crit_edge.i.i27, %bb.ai, %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bq, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bq
  store i8 0, ptr %i.bz, align 1
  %i.ca = load ptr, ptr %5, align 8
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.ca, ptr noundef null, ptr noundef null, ptr noundef null) #25
  %i.cb = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116ValidateResourceEN6icu_786LocaleEPKcS5_(ptr noundef %6, ptr noundef %1, ptr noundef %2)
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #25
  %i.cc = load ptr, ptr %5, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bo
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29
  %i.ce = load i64, ptr %i.bo, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.ak:                                            ; preds = %.thread, %bb.c, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.aa ], [ true, %bb.c ], [ true, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.0
}

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Intl13ToLanguageTagB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind noalias writable sret(%"class.v8::Maybe") align 8 initializes((0, 1)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
_ZNK6icu_786Locale13toLanguageTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_R10UErrorCode.exit:
  %2 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !alias.scope !182
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !182
  store i8 0, ptr %i.b, align 8, !alias.scope !182
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !182
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !noalias !182
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.d, align 8, !noalias !182
  call void @_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  call void @_ZN6icu_788ByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !182
  %i.e = load i32, ptr %i.a, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNK6icu_786Locale13toLanguageTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_R10UErrorCode.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !alias.scope !185
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !185
  %.pre = load ptr, ptr %3, align 8
  br label %bb.i

bb.b:                                             ; preds = %_ZNK6icu_786Locale13toLanguageTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_R10UErrorCode.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  store i8 1, ptr %0, align 8, !alias.scope !188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !alias.scope !188
  %i.k = load ptr, ptr %3, align 8, !noalias !188 ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !noalias !188 ; 8 uses
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !35

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !alias.scope !188
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !188
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  switch i64 %i.l, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %i.k, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit

_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.t, align 8, !alias.scope !188
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.u, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit, %bb.a
  %i.v = phi ptr [ %i.k, %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.b, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4Intl20LegacyUnwrapReceiverEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_10JSFunctionEEEb(ptr noundef %0, ptr %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call ptr @_ZN2v88internal6Object19OrdinaryHasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef %0, ptr %2, ptr %1) #25 ; 2 uses
  %.not37 = icmp eq ptr %i.a, null
  br i1 %.not37, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.b, ptr noundef %0) #25
  %.not = xor i1 %3, true
  %or.cond = and i1 %i.c, %.not
  br i1 %or.cond, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8168 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.pre.pre.i = load i64, ptr %i.d, align 8
  %i.e = add i64 %.pre.pre.i, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 128
  br i1 %i.k, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.o = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.o, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = ptrtoint ptr %1 to i64
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  %i.ab = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = and i16 %i.ae, -96
  %.not.i21.i.i.i = icmp eq i16 %i.af, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.aj = load i8, ptr %i.ai, align 8, !range !12
  %i.ak = trunc nuw i8 %i.aj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ah, true
  %i.al = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ak
  br i1 %i.al, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.an = load i8, ptr %i.am, align 8, !range !12, !noundef !13
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ar = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.as = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.d) #25
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.as, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.d, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.u, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #25
  %i.at = load i32, ptr %i.p, align 4
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = load ptr, ptr %i.t, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 648
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.aw = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #25
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.023.1.ph = phi ptr [ %i.av, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.aw, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split, %bb.b, %bb.a
  %.sroa.023.1 = phi ptr [ null, %bb.a ], [ %1, %bb.b ], [ %.sroa.023.1.ph, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split ]
  ret ptr %.sroa.023.1
}

declare ptr @_ZN2v88internal6Object19OrdinaryHasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Intl38ValidateAndCanonicalizeUnicodeLocaleIdB5cxx11EPNS0_7IsolateESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.v8::Maybe") align 8 %0, ptr noundef %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 9 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %11 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %12 = alloca %"class.icu_78::LocaleBuilder", align 8 ; 5 uses
  %13 = alloca %"class.v8::Maybe", align 8        ; 11 uses
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal8JSLocale27StartsWithUnicodeLanguageIdESt17basic_string_viewIcSt11char_traitsIcEE(i64 %2, ptr %3) #25
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %3, i64 %2, i8 noundef zeroext 0) #25 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit, !prof !35

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.138) #27
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.c, ptr %7, align 8
  %i.e = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 248, ptr nonnull %7, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.f, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.k, ptr %8, align 8
  %i.l = icmp eq ptr %3, null
  %i.m = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %2, 15
  br i1 %i.n, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.o = icmp slt i64 %2, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = add nuw i64 %2, 1                        ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !35

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 2 uses
  store ptr %i.r, ptr %8, align 8
  store i64 %2, ptr %i.k, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.f
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.k, %bb.f ] ; 3 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %3, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  store i8 0, ptr %i.v, align 1
  %i.w = load ptr, ptr %8, align 8                ; 21 uses
  %i.x = load i64, ptr %i.u, align 8              ; 12 uses
  switch i64 %i.x, label %iter.check [
    i64 2, label %bb.m
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 0, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit
  ]

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.y = load i8, ptr %i.w, align 1
  %i.z = add i8 %i.y, -97
  %i.aa = icmp ult i8 %i.z, 26
  br i1 %i.aa, label %_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %iter.check

_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN2v88internal4Intl20NumberToLocaleStringEPNS0_7IsolateENS0_6HandleINS0_6ObjectEEENS0_12DirectHandleIS5_EES8_PKc:bb.a
  %i.ak = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i36 = load i64, ptr %i.al, align 8
  %i.am = add i64 %.sroa.0.0.copyload.i36, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 31
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, 815
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.e, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !35

bb.e:                                             ; preds = %.critedge
  %i.ba = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.critedge, %bb.e
  %.0.i = phi ptr [ %i.ba, %bb.e ], [ %i.aw, %.critedge ] ; 4 uses
  %i.bb = ptrtoint ptr %.0.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.av, align 8
  store i64 %i.au, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %0, ptr %5, align 8
  %i.be = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 16384) #25
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bf = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #25 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bg = call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %0, ptr nonnull %.0.i, ptr nonnull %.0.i) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread, label %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit

_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit: ; preds = %bb.g
  %i.bh = call ptr @_ZN2v88internal14JSNumberFormat3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc(ptr noundef nonnull %0, ptr nonnull %i.bg, ptr nonnull %2, ptr %3, ptr noundef %4) #25 ; 3 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit
  br i1 %i.ak, label %bb.i, label %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bi, 31
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, 7
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !301 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 288
  %spec.select.i = select i1 %i.bt, ptr null, ptr %i.bu
  store ptr %spec.select.i, ptr %6, align 8, !alias.scope !301
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !301 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !alias.scope !301
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !noalias !301
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.by, align 4, !noalias !301
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !noalias !301
  br label %_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit

bb.l:                                             ; preds = %bb.j
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4, !noalias !301 ; 0 uses
  br label %_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit

_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.i, %bb.k, %bb.l
  call void @_ZN2v88internal7Isolate23set_icu_object_in_cacheENS1_18ICUObjectCacheTypeENS0_12DirectHandleINS0_6ObjectEEESt10shared_ptrIN6icu_787UMemoryEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i32 noundef 1, ptr nonnull %2, ptr noundef nonnull %6) #25
  %i.cd = load ptr, ptr %i.bv, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ce, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %i.cd, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25, !inline_history !232
  %i.cm = load ptr, ptr %i.cd, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25, !inline_history !232
  br label %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.p ], [ %i.cr, %bb.q ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.r, label %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #25
  br label %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n, %_ZSt19static_pointer_castIN6icu_787UMemoryENS0_6number24LocalizedNumberFormatterEESt10shared_ptrIT_ERKS4_IT0_E.exit, %bb.h
  %i.ct = load i64, ptr %i.bh, align 8
  %i.cu = add i64 %i.ct, 31
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add i64 %i.cw, 7
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call ptr @_ZN2v88internal14JSNumberFormat13FormatNumericEPNS0_7IsolateERKN6icu_786number24LocalizedNumberFormatterENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(312) %i.dd, ptr nonnull %.sroa.09.0.i105111) #25
  br label %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread

_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread: ; preds = %bb.g, %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit, %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %.sroa.062.0 = phi ptr [ null, %bb.f ], [ %i.de, %_ZNSt12__shared_ptrIN6icu_787UMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal6Object9ToNumericIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.d, %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread
  %.sroa.062.1 = phi ptr [ %.sroa.062.0, %_ZN2v88internal12_GLOBAL__N_13NewINS0_14JSNumberFormatEEENS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS9_INS0_6ObjectEEESD_PKc.exit.thread ], [ %i.aj, %bb.d ], [ null, %_ZN2v88internal6Object9ToNumericIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret ptr %.sroa.062.1
}

declare ptr @_ZN2v88internal14JSNumberFormat13FormatNumericEPNS0_7IsolateERKN6icu_786number24LocalizedNumberFormatterENS0_6HandleINS0_6ObjectEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(312), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Intl27SetNumberFormatDigitOptionsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiibPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::Maybe.673") align 4 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %11 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %12 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %13 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %14 = alloca %"struct.std::array", align 8      ; 12 uses
  %15 = alloca %"struct.std::array.700", align 8  ; 6 uses
  %16 = alloca %"struct.std::array.701", align 4  ; 6 uses
  %17 = alloca %"struct.std::array.713", align 8  ; 5 uses
  %18 = alloca %"struct.std::array.714", align 4  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2800
  %i.b = tail call i64 @_ZN2v88internal15GetNumberOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEiii(ptr noundef nonnull %1, ptr %2, ptr nonnull %i.a, i32 noundef 1, i32 noundef 21, i32 noundef 1) #25 ; 2 uses
  %.sroa.5309.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.5309.0.extract.trunc = trunc nuw i64 %.sroa.5309.0.extract.shift to i32
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK2v85MaybeIiE2ToEPi.exit129, !prof !36

_ZNK2v85MaybeIiE2ToEPi.exit129:                   ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !304
  br label %.critedge124

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2792 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %.pre.pre.i = load i64, ptr %i.d, align 8
  %i.e = add i64 %.pre.pre.i, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 128
  br i1 %i.k, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.b
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.o = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.o, ptr %13, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.z = ptrtoint ptr %2 to i64                   ; 4 uses
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  %i.ab = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = and i16 %i.ae, -96
  %.not.i21.i.i.i = icmp eq i16 %i.af, 32
  br i1 %.not.i21.i.i.i, label %bb.c, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.aj = load i8, ptr %i.ai, align 8, !range !12
  %i.ak = trunc nuw i8 %i.aj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ah, true
  %i.al = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ak
  br i1 %i.al, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.an = load i8, ptr %i.am, align 8, !range !12, !noundef !13
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.c
  %.pn.i.i26.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.c ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ar = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.as = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.d) #25
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.as, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.d, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.u, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %13) #25
  %i.at = load i32, ptr %i.p, align 4
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = load ptr, ptr %i.t, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.f

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.aw = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %13, i1 noundef zeroext false) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not440 = icmp eq ptr %i.aw, null
  br i1 %.not440, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.f

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  store i8 0, ptr %0, align 4
  br label %.critedge124

bb.f:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i385 = phi ptr [ %i.av, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.aw, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2744 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %.pre.pre.i135 = load i64, ptr %i.ax, align 8
  %i.ay = add i64 %.pre.pre.i135, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = icmp eq i16 %i.bd, 128
  br i1 %i.be, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i148, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i136

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i148: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i136

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i136: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i148, %bb.f
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i136, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i148
  %i.bi = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i136 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i148 ]
  store i32 %i.bi, ptr %12, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %2, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 %i.z, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 -1, i64 16, i1 false)
  %i.bu = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = and i16 %i.bx, -96
  %.not.i21.i.i.i138 = icmp eq i16 %i.by, 32
  br i1 %.not.i21.i.i.i138, label %bb.g, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i139

bb.g:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cc = load i8, ptr %i.cb, align 8, !range !12
  %i.cd = trunc nuw i8 %i.cc to i1
  %not..i.i.i23.i.i.i143 = xor i1 %i.ca, true
  %i.ce = select i1 %not..i.i.i23.i.i.i143, i1 true, i1 %i.cd
  br i1 %i.ce, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i145, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.cg = load i8, ptr %i.cf, align 8, !range !12, !noundef !13
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i144, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i144: ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i145

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i145: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i144, %bb.g
  %.pn.i.i26.i.i.i146 = phi ptr [ %i.cj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i144 ], [ %1, %bb.g ]
  %.in.i.i27.i.i.i147 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i146, i64 58464
  %i.ck = load ptr, ptr %.in.i.i27.i.i.i147, align 8
  %i.cl = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.ax) #25
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i139

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i139: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i145, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137
  %.sroa.05.0.i22.i.i.i140 = phi ptr [ %i.cl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i145 ], [ %i.ax, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i137 ]
  store ptr %.sroa.05.0.i22.i.i.i140, ptr %i.bo, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %12) #25
  %i.cm = load i32, ptr %i.bj, align 4
  %.not.i141 = icmp eq i32 %i.cm, 0
  br i1 %.not.i141, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i139
  %i.cn = load ptr, ptr %i.bn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.j

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i139
  %i.cp = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %12, i1 noundef zeroext false) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %.not441 = icmp eq ptr %i.cp, null
  br i1 %.not441, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit130, label %bb.j

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit130: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149
  store i8 0, ptr %0, align 4
  br label %.critedge124

bb.j:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149.thread
  %.sroa.07.0.i142389 = phi ptr [ %i.co, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149.thread ], [ %i.cp, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit149 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 2808 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %.pre.pre.i150 = load i64, ptr %i.cq, align 8
  %i.cr = add i64 %.pre.pre.i150, -1
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.cu = add i64 %i.ct, 11
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i16, ptr %i.cv monotonic, align 2
  %i.cx = icmp eq i16 %i.cw, 128
  br i1 %i.cx, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i163, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i151

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i163: ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = trunc i32 %i.cz to i1
  br i1 %i.da, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i151

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i151: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i163, %bb.j
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i151, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i163
  %i.db = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i151 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i163 ]
  store i32 %i.db, ptr %11, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %1, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %2, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 %i.z, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 -1, i64 16, i1 false)
  %i.dn = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.do = add i64 %i.dn, 11
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load atomic volatile i16, ptr %i.dp monotonic, align 2
  %i.dr = and i16 %i.dq, -96
  %.not.i21.i.i.i153 = icmp eq i16 %i.dr, 32
  br i1 %.not.i21.i.i.i153, label %bb.k, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i154

bb.k:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.dv = load i8, ptr %i.du, align 8, !range !12
  %i.dw = trunc nuw i8 %i.dv to i1
  %not..i.i.i23.i.i.i158 = xor i1 %i.dt, true
  %i.dx = select i1 %not..i.i.i23.i.i.i158, i1 true, i1 %i.dw
  br i1 %i.dx, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i160, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.dz = load i8, ptr %i.dy, align 8, !range !12, !noundef !13
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i159, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i159: ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.ec = load ptr, ptr %i.eb, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i160

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i160: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i159, %bb.k
  %.pn.i.i26.i.i.i161 = phi ptr [ %i.ec, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i159 ], [ %1, %bb.k ]
  %.in.i.i27.i.i.i162 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i161, i64 58464
  %i.ed = load ptr, ptr %.in.i.i27.i.i.i162, align 8
  %i.ee = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.cq) #25
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i154

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i154: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i160, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152
  %.sroa.05.0.i22.i.i.i155 = phi ptr [ %i.ee, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i160 ], [ %i.cq, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i152 ]
  store ptr %.sroa.05.0.i22.i.i.i155, ptr %i.dh, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %11) #25
  %i.ef = load i32, ptr %i.dc, align 4
  %.not.i156 = icmp eq i32 %i.ef, 0
  br i1 %.not.i156, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i154
  %i.eg = load ptr, ptr %i.dg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.n

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i154
  %i.ei = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %11, i1 noundef zeroext false) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.not442 = icmp eq ptr %i.ei, null
  br i1 %.not442, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit131, label %bb.n

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit131: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164
  store i8 0, ptr %0, align 4
  br label %.critedge124

bb.n:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164.thread
  %.sroa.07.0.i157393 = phi ptr [ %i.eh, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164.thread ], [ %i.ei, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit164 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 2752 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %.pre.pre.i165 = load i64, ptr %i.ej, align 8
  %i.ek = add i64 %.pre.pre.i165, -1
  %i.el = inttoptr i64 %i.ek to ptr               ; 3 uses
  %i.em = load atomic volatile i64, ptr %i.el monotonic, align 8
  %i.en = add i64 %i.em, 11
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load atomic volatile i16, ptr %i.eo monotonic, align 2
  %i.eq = icmp eq i16 %i.ep, 128
  br i1 %i.eq, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i178, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i166

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i178: ; preds = %bb.n
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.es = load i32, ptr %i.er, align 4
  %i.et = trunc i32 %i.es to i1
  br i1 %i.et, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i166

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i166: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i178, %bb.n
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i166, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i178
  %i.eu = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i166 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i178 ]
  store i32 %i.eu, ptr %10, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr null, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %2, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 %i.z, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 -1, i64 16, i1 false)
  %i.fg = load atomic volatile i64, ptr %i.el monotonic, align 8
  %i.fh = add i64 %i.fg, 11
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load atomic volatile i16, ptr %i.fi monotonic, align 2
  %i.fk = and i16 %i.fj, -96
  %.not.i21.i.i.i168 = icmp eq i16 %i.fk, 32
  br i1 %.not.i21.i.i.i168, label %bb.o, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i169

bb.o:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167
  %i.fl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.fo = load i8, ptr %i.fn, align 8, !range !12
  %i.fp = trunc nuw i8 %i.fo to i1
  %not..i.i.i23.i.i.i173 = xor i1 %i.fm, true
  %i.fq = select i1 %not..i.i.i23.i.i.i173, i1 true, i1 %i.fp
  br i1 %i.fq, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i175, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.fs = load i8, ptr %i.fr, align 8, !range !12, !noundef !13
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i174, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i174: ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.fv = load ptr, ptr %i.fu, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i175

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i175: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i174, %bb.o
  %.pn.i.i26.i.i.i176 = phi ptr [ %i.fv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i174 ], [ %1, %bb.o ]
  %.in.i.i27.i.i.i177 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i176, i64 58464
  %i.fw = load ptr, ptr %.in.i.i27.i.i.i177, align 8
  %i.fx = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.ej) #25
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i169

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i169: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i175, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167
  %.sroa.05.0.i22.i.i.i170 = phi ptr [ %i.fx, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i175 ], [ %i.ej, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i167 ]
  store ptr %.sroa.05.0.i22.i.i.i170, ptr %i.fa, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %10) #25
  %i.fy = load i32, ptr %i.ev, align 4
  %.not.i171 = icmp eq i32 %i.fy, 0
  br i1 %.not.i171, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i169
  %i.fz = load ptr, ptr %i.ez, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNK2v85MaybeIiE2ToEPi.exit128

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i169
  %i.gb = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %10, i1 noundef zeroext false) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.not443 = icmp eq ptr %i.gb, null
  br i1 %.not443, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit132, label %_ZNK2v85MaybeIiE2ToEPi.exit128

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit132: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179
  store i8 0, ptr %0, align 4
  br label %.critedge124

_ZNK2v85MaybeIiE2ToEPi.exit128:                   ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179.thread
  %.sroa.07.0.i172397 = phi ptr [ %i.ga, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179.thread ], [ %i.gb, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit179 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 7200 ; 2 uses
  %i.gd = call i64 @_ZN2v88internal15GetNumberOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEiii(ptr noundef nonnull %1, ptr %2, ptr nonnull %i.gc, i32 noundef 1, i32 noundef 5000, i32 noundef 1) #25 ; 2 uses
  %.sroa.5284.0.extract.shift = lshr i64 %i.gd, 32 ; 3 uses
  %.sroa.5284.0.extract.trunc = trunc nuw i64 %.sroa.5284.0.extract.shift to i32 ; 2 uses
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK2v85MaybeIiE2ToEPi.exit128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !307
  br label %.critedge124

bb.s:                                             ; preds = %_ZNK2v85MaybeIiE2ToEPi.exit128
  switch i32 %.sroa.5284.0.extract.trunc, label %_ZN2v88internal12_GLOBAL__N_124IsValidRoundingIncrementEi.exit [
    i32 1, label %bb.t
    i32 2, label %bb.t
    i32 5, label %bb.t
    i32 10, label %bb.t
    i32 20, label %bb.t
    i32 25, label %bb.t
    i32 50, label %bb.t
    i32 100, label %bb.t
    i32 200, label %bb.t
    i32 250, label %bb.t
    i32 500, label %bb.t
    i32 1000, label %bb.t
    i32 2000, label %bb.t
    i32 2500, label %bb.t
    i32 5000, label %bb.t
  ]

_ZN2v88internal12_GLOBAL__N_124IsValidRoundingIncrementEi.exit: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.gc, ptr %9, align 8
  %i.gf = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 267, ptr nonnull %9, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.gg, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 4
  br label %.critedge124

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 7208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(144) @constinit, i64 16, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 16), i64 16, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 32), i64 16, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 48), i64 16, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 64), i64 16, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 80), i64 16, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 96), i64 16, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 112), i64 16, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 128), i64 16, i1 false)
  %i.gr = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_4Intl12RoundingModeEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %1, ptr %2, ptr nonnull %i.gi, ptr noundef %6, ptr nonnull %14, i64 9, ptr nonnull @constinit.42, i64 4294967302) ; 2 uses
  %.sroa.5275.0.extract.shift = lshr i64 %i.gr, 32
  %.sroa.5275.0.extract.trunc = trunc nuw i64 %.sroa.5275.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.gs = trunc i64 %i.gr to i1
  br i1 %i.gs, label %_ZNKR2v85MaybeINS_8internal4Intl12RoundingModeEE8FromJustEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !310
  br label %.critedge124

_ZNKR2v85MaybeINS_8internal4Intl12RoundingModeEE8FromJustEv.exit: ; preds = %bb.t
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 2992
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(48) @constinit.46, i64 16, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.46, i64 16), i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.46, i64 32), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i32 0, ptr %16, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 2, ptr %i.gx, align 4
  %i.gy = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_4Intl16RoundingPriorityEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %1, ptr %2, ptr nonnull %i.gt, ptr noundef %6, ptr nonnull %15, i64 3, ptr nonnull %16, i64 4294967296) ; 2 uses
  %.sroa.5256.0.extract.shift = lshr i64 %i.gy, 32 ; 2 uses
  %.sroa.5256.0.extract.trunc = trunc nuw i64 %.sroa.5256.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.gz = trunc i64 %i.gy to i1
  br i1 %i.gz, label %_ZNKR2v85MaybeINS_8internal4Intl16RoundingPriorityEE8FromJustEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNKR2v85MaybeINS_8internal4Intl12RoundingModeEE8FromJustEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !313
  br label %.critedge124

_ZNKR2v85MaybeINS_8internal4Intl16RoundingPriorityEE8FromJustEv.exit: ; preds = %_ZNKR2v85MaybeINS_8internal4Intl12RoundingModeEE8FromJustEv.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 3152
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(32) @constinit.48, i64 16, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.48, i64 16), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store i32 0, ptr %18, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 1, ptr %i.hc, align 4
  %i.hd = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_4Intl19TrailingZeroDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %1, ptr %2, ptr nonnull %i.ha, ptr noundef %6, ptr nonnull %17, i64 2, ptr nonnull %18, i64 4294967296) ; 2 uses
  %.sroa.5237.0.extract.shift = lshr i64 %i.hd, 32
  %.sroa.5237.0.extract.trunc = trunc nuw i64 %.sroa.5237.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.he = trunc i64 %i.hd to i1
  br i1 %i.he, label %_ZNKR2v85MaybeINS_8internal4Intl19TrailingZeroDisplayEE8FromJustEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKR2v85MaybeINS_8internal4Intl16RoundingPriorityEE8FromJustEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !316
  br label %.critedge124

_ZNKR2v85MaybeINS_8internal4Intl19TrailingZeroDisplayEE8FromJustEv.exit: ; preds = %_ZNKR2v85MaybeINS_8internal4Intl16RoundingPriorityEE8FromJustEv.exit
  %i.hf = load i64, ptr %.sroa.07.0.i157393, align 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8            ; 3 uses
  %i.hi = icmp eq i64 %i.hf, %i.hh
end_hunk_1
