Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-locale?download=true
inline.NumInlined: 1255
inline.NumDeleted: 604
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc:_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %2) #17
  %i.m = load ptr, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i32, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.p, ptr %4, align 8, !alias.scope !50
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !50
  store i8 0, ptr %i.p, align 8, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !50
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %3, align 8, !noalias !50
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.r, align 8, !noalias !50
  call void @_ZNK6icu_786Locale22getUnicodeKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  call void @_ZN6icu_788ByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !50
  %.pre = load i32, ptr %i.a, align 4
  %i.s = icmp eq i32 %.pre, 1
  br i1 %i.s, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit
  %i.t = load i64, ptr %i.q, align 8              ; 2 uses
  switch i64 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %bb.b
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

bb.b:                                             ; preds = %bb.a, %_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.v = load ptr, ptr %4, align 8                ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = xor i16 %i.w, 25977
  %i.y = getelementptr i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 115
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.pre2428 = load ptr, ptr %4, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 3, ptr noundef nonnull @.str.14, i64 noundef 4) ; 0 uses
  %.pr.pre = load i64, ptr %i.q, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c, %bb.a
  %i.ah = phi i64 [ %i.t, %bb.a ], [ %.pr.pre, %bb.c ]
  %i.ai = icmp eq i64 %i.ah, 4
  %.pre24 = load ptr, ptr %4, align 8             ; 6 uses
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aj = load i32, ptr %.pre24, align 1
  %i.ak = icmp ne i32 %i.aj, 1702195828
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %sub_0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

sub_0:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
  %i.an = load i8, ptr %2, align 1
  %.not = icmp eq i8 %i.an, 107
  br i1 %.not, label %sub_1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

sub_1:                                            ; preds = %sub_0
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %.not22 = icmp eq i8 %i.ap, 102
  br i1 %.not22, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread.tail, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread.tail: ; preds = %sub_1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread.tail
  %i.at = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.45, i64 0, i8 noundef zeroext 0) #17 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #18
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21: ; preds = %sub_1, %sub_0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread.tail, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
  %.pre2429 = phi ptr [ %.pre2428, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread ], [ %.pre24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.pre24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread.tail ], [ %.pre24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ %.pre24, %sub_0 ], [ %.pre24, %sub_1 ] ; 2 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre2429) #21
  %i.aw = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.pre2429, i64 %i.av, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !16

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #18
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21, %bb.d, %bb.b
  %.sroa.015.0 = phi ptr [ %i.u, %bb.b ], [ %i.at, %bb.d ], [ %i.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread21 ]
  %i.ay = load ptr, ptr %4, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.p
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  %i.ba = load i64, ptr %i.p, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal7Factory24NewStringFromStaticCharsILm1EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale9CaseFirstEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc(ptr noundef %0, ptr %1, ptr noundef nonnull @.str.11)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale9CollationEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc(ptr noundef %0, ptr %1, ptr noundef nonnull @.str.2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale14FirstDayOfWeekEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc(ptr noundef %0, ptr %1, ptr noundef nonnull @.str.12)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale9HourCycleEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc(ptr noundef %0, ptr %1, ptr noundef nonnull @.str.3)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale7NumericEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit:
  %2 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 23
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull @.str.13) #17
  %i.m = load ptr, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i32, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !alias.scope !53
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !53
  store i8 0, ptr %i.p, align 8, !alias.scope !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !noalias !53
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.r, align 8, !noalias !53
  call void @_ZNK6icu_786Locale22getUnicodeKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  call void @_ZN6icu_788ByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !53
  %.pr = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i64 %.pr, 4
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit
  %i.t = load i32, ptr %.pre, align 1
  %i.u = icmp ne i32 %i.t, 1702195828
  %i.v = zext i1 %i.u to i32
  %bcmp.i.fr = freeze i32 %i.v
  %i.w = icmp eq i32 %bcmp.i.fr, 0
  %spec.select19 = select i1 %i.w, i64 672, i64 680
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit
  %i.x = phi i64 [ 680, %_ZNK6icu_786Locale22getUnicodeKeywordValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_NS_11StringPieceER10UErrorCode.exit ], [ %spec.select19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.y = icmp eq ptr %.pre, %i.p
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %5 = icmp ult i64 %.pr, 16
  call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.z = load i64, ptr %i.p, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.aa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.sroa.04.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale15NumberingSystemEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119UnicodeKeywordValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSLocaleEEEPKc(ptr noundef %0, ptr %1, ptr noundef nonnull @.str.4)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::Maybe.518", align 8     ; 8 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2v88internal4Intl13ToLanguageTagB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.518") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #17
  %i.l = load i8, ptr %2, align 8, !range !14, !noalias !56, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #17, !noalias !56
  br label %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit

_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit
  store ptr %i.p, ptr %0, align 8
  %i.w = load i64, ptr %i.q, align 8
  store i64 %i.w, ptr %i.o, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8JSLocale8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::Maybe.518", align 8     ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.a = load i64, ptr %1, align 8, !noalias !61
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8, !noalias !61
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8, !noalias !61
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !61
  %i.k = load ptr, ptr %i.j, align 8, !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !61
  call void @_ZN2v88internal4Intl13ToLanguageTagB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.518") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #17, !noalias !61
  %i.l = load i8, ptr %2, align 8, !range !14, !noalias !62, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit.i, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #17, !noalias !62
  br label %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit.i

_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.o, ptr %3, align 8, !alias.scope !61
  %i.p = load ptr, ptr %i.n, align 8, !noalias !61 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !61 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNO2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit.i
  store ptr %i.p, ptr %3, align 8, !alias.scope !61
  %i.w = load i64, ptr %i.q, align 8, !noalias !61
  store i64 %i.w, ptr %i.o, align 8, !alias.scope !61
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !61
  br label %_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi ptr [ %i.o, %bb.c ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.y = phi i64 [ %i.t, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !61
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #21
  %i.ab = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.x, i64 %i.aa, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !16

bb.d:                                             ; preds = %_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal8JSLocale8ToStringB5cxx11ENS0_12DirectHandleIS1_EE.exit
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %i.af = load i64, ptr %i.o, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.ab
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN2v86String9Utf8ValueC1EPNS_7IsolateENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder14setLanguageTagENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32) local_unnamed_addr #3

declare i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v86String9Utf8ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15calendar_stringEv(ptr noundef nonnull align 1 dereferenceable(1)) #10 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16collation_stringEv(ptr noundef nonnull align 1 dereferenceable(1)) #10 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE21firstDayOfWeek_stringEv(ptr noundef nonnull align 1 dereferenceable(1)) #10 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16hourCycle_stringEv(ptr noundef nonnull align 1 dereferenceable(1)) #10 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16caseFirst_stringEv(ptr noundef nonnull align 1 dereferenceable(1)) #10 align 2
end_hunk_0
