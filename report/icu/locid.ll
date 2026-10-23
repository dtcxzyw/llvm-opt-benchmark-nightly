Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locid?download=true
inline.NumInlined: 868
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_786LocaleaSEOS0_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.m = load i32, ptr %i.l, align 1
  store i32 %i.m, ptr %i.k, align 1
  br label %_ZN6icu_786Locale7PayloadaSEOS1_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @abort() #26
  unreachable

_ZN6icu_786Locale7PayloadaSEOS1_.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_786Locale5cloneEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #25 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZNK6icu_786LocaleeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  switch i8 %i.b, label %bb.d [
    i8 0, label %_ZNK6icu_786Locale7getNameEv.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %spec.select.i.i.i.i.i.i.i = select i1 %i.h, ptr @.str, ptr %i.g
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.d:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

_ZNK6icu_786Locale7getNameEv.exit:                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.c ], [ %i.c, %bb.b ], [ @.str, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !20
  switch i8 %i.j, label %bb.g [
    i8 0, label %_ZNK6icu_786Locale7getNameEv.exit4
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23
  br label %_ZNK6icu_786Locale7getNameEv.exit4

bb.f:                                             ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %spec.select.i.i.i.i.i.i.i2 = select i1 %i.p, ptr @.str, ptr %i.o
  br label %_ZNK6icu_786Locale7getNameEv.exit4

bb.g:                                             ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  tail call void @abort() #26
  unreachable

_ZNK6icu_786Locale7getNameEv.exit4:               ; preds = %_ZNK6icu_786Locale7getNameEv.exit, %bb.e, %bb.f
  %.0.i.i.i3 = phi ptr [ %spec.select.i.i.i.i.i.i.i2, %bb.f ], [ %i.k, %bb.e ], [ @.str, %_ZNK6icu_786Locale7getNameEv.exit ]
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %.0.i.i.i3) #27
  %i.r = icmp eq i32 %i.q, 0
  ret i1 %i.r
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_Z45ulocimp_getKnownCanonicalizedLocaleForTest_78Ri(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) local_unnamed_addr #14 {
bb.a:
  store i32 178, ptr %0, align 4, !tbaa !47
  ret ptr @_ZN6icu_7812_GLOBAL__N_119KNOWN_CANONICALIZEDE
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z39ulocimp_isCanonicalizedLocaleForTest_78PKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::(anonymous namespace)::AliasReplacer", align 8 ; 7 uses
  %2 = alloca %"class.icu_78::Locale", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 32, i1 false)
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef null, ptr noundef nonnull @_ZZN6icu_7812_GLOBAL__N_113AliasReplacerC1ER10UErrorCodeENUl8UElementS4_E_8__invokeES4_S4_, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.f, !inline_history !0

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !53
  %i.h = invoke fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.b, !inline_history !0

bb.b:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.f) #25, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.body

bb.c:                                             ; preds = %.noexc
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.f) #25, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.j = load i32, ptr %i.a, align 4
  %i.k = load i8, ptr %i.d, align 4, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  invoke void @uprv_free_78(ptr noundef %i.l)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.c, %bb.d
  %i.o = icmp slt i32 %i.j, 1
  %not. = xor i1 %i.h, true
  %i.p = select i1 %not., i1 %i.o, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %i.p

bb.f:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.i, %bb.b ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale4initENS_11StringPieceEa(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr %1, i32 %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::(anonymous namespace)::AliasReplacer", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::CheckedArrayByteSink", align 8 ; 10 uses
  %6 = alloca %"class.icu_78::CheckedArrayByteSink", align 8 ; 10 uses
  %i.a = alloca [5 x ptr], align 16               ; 11 uses
  %i.b = alloca [5 x i32], align 16               ; 12 uses
  %i.c = alloca i32, align 4                      ; 27 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  tail call void @_ZN6icu_786Locale7PayloadD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #25
  store i8 1, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.e, i8 0, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.g = sext i32 %2 to i64                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29) %6, ptr noundef nonnull %i.f, i32 noundef range(i32 -2147483647, -2147483648) 17)
  %.not.i.i.i = icmp eq i8 %3, 0                  ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_Z23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEERN6icu_788ByteSinkER10UErrorCode(i64 %i.g, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_Z18ulocimp_getName_78St17basic_string_viewIcSt11char_traitsIcEERN6icu_788ByteSinkER10UErrorCode(i64 %i.g, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i" unwind label %bb.f

"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i": ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr %i.c, align 4, !tbaa !11
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit"

bb.d:                                             ; preds = %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !110  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.m = load i8, ptr %i.l, align 4, !tbaa !111
  %.not17.i.i = icmp eq i8 %i.m, 0
  br i1 %.not17.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 15, ptr %i.c, align 4, !tbaa !11
  br label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit"

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %i.o = invoke i32 @u_terminateChars_78(ptr noundef nonnull %i.f, i32 noundef range(i32 -2147483647, -2147483648) 17, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit" unwind label %bb.f

"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit": ; preds = %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i", %bb.e, %bb.g
  %.1.i.i = phi i32 [ 0, %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i" ], [ %i.k, %bb.e ], [ %i.o, %bb.g ] ; 3 uses
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.p = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.q = icmp eq i32 %i.p, 15
  %i.r = icmp sgt i32 %.1.i.i, 16
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.h, label %bb.q

bb.h:                                             ; preds = %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit"
  %i.s = add nsw i32 %.1.i.i, 1                   ; 3 uses
  %i.t = sext i32 %i.s to i64
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef null) #25
  %i.u = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.t) #25 ; 7 uses
  %.not245 = icmp eq ptr %i.u, null
  br i1 %.not245, label %.critedge138, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29) %5, ptr noundef nonnull %i.u, i32 noundef range(i32 -2147483647, -2147483648) %i.s)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.j
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  invoke void @_Z23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEERN6icu_788ByteSinkER10UErrorCode(i64 %i.g, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145" unwind label %bb.o

bb.l:                                             ; preds = %.noexc
  invoke void @_Z18ulocimp_getName_78St17basic_string_viewIcSt11char_traitsIcEERN6icu_788ByteSinkER10UErrorCode(i64 %i.g, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145" unwind label %bb.o

"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145": ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.c, align 4, !tbaa !11
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148"

bb.m:                                             ; preds = %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145"
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !110  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !111
  %.not17.i.i147 = icmp eq i8 %i.ab, 0
  br i1 %.not17.i.i147, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 15, ptr %i.c, align 4, !tbaa !11
  br label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148"

bb.o:                                             ; preds = %bb.p, %bb.l, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

bb.p:                                             ; preds = %bb.m
  %i.ad = invoke i32 @u_terminateChars_78(ptr noundef nonnull %i.u, i32 noundef range(i32 -2147483647, -2147483648) %i.s, i32 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148" unwind label %bb.o

"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148": ; preds = %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145", %bb.n, %bb.p
  %.1.i.i146 = phi i32 [ 0, %"_ZZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCodeENKUlRNS_8ByteSinkES9_E_clESB_S9_.exit.i.i145" ], [ %i.z, %bb.n ], [ %i.ad, %bb.p ]
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load i32, ptr %i.c, align 4, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148", %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit"
  %i.ae = phi i32 [ %.pre, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148" ], [ %i.p, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit" ] ; 2 uses
  %.sroa.0194.0 = phi ptr [ %i.u, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148" ], [ null, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit" ] ; 10 uses
  %.0105 = phi ptr [ %i.u, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148" ], [ %i.f, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit" ] ; 15 uses
  %.0104 = phi i32 [ %.1.i.i146, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit148" ], [ %.1.i.i, %"_ZZN6icu_786Locale4initENS_11StringPieceEaENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEEPciR10UErrorCode.exit" ] ; 5 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = icmp eq i32 %i.ae, -124
  %or.cond6 = or i1 %i.af, %i.ag
  br i1 %or.cond6, label %.critedge138, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %.0105, ptr %i.a, align 16, !tbaa !36
  %i.ah = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0105, i32 noundef 64) #27 ; 7 uses
  %i.ai = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0105, i32 noundef 95) #27 ; 3 uses
  %.not255 = icmp eq ptr %i.ai, null
  br i1 %.not255, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.lr.ph.split.us ], [ 1, %.lr.ph ] ; 5 uses
  %i.ak = phi ptr [ %i.au, %.lr.ph.split.us ], [ %i.ai, %.lr.ph ] ; 2 uses
  %i.al = phi ptr [ %i.an, %.lr.ph.split.us ], [ %.0105, %.lr.ph ]
  %i.am = phi i64 [ %indvars.iv260, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv260
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !36
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.am
  store i32 %i.as, ptr %i.at, align 4, !tbaa !47
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1
  %i.au = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.an, i32 noundef 95) #27 ; 2 uses
  %i.av = icmp ne ptr %i.au, null
  %i.aw = icmp samesign ult i64 %indvars.iv260, 3
  %or.cond8.us = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond8.us, label %.lr.ph.split.us, label %.critedge, !llvm.loop !107

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 1, %.lr.ph ] ; 5 uses
  %i.ax = phi ptr [ %i.bi, %bb.s ], [ %i.ai, %.lr.ph ] ; 3 uses
  %i.ay = phi ptr [ %i.bb, %bb.s ], [ %.0105, %.lr.ph ] ; 2 uses
  %i.az = phi i64 [ %indvars.iv, %bb.s ], [ 0, %.lr.ph ] ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.ah
  br i1 %i.ba, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph.split
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !36
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bi = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bb, i32 noundef 95) #27 ; 2 uses
  %i.bj = icmp ne ptr %i.bi, null
  %i.bk = icmp samesign ult i64 %indvars.iv, 3
  %or.cond8 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond8, label %.lr.ph.split, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %.lr.ph.split, %bb.s, %.lr.ph.split.us, %bb.r
  %.lcssa248 = phi i64 [ 0, %bb.r ], [ %indvars.iv260, %.lr.ph.split.us ], [ %i.az, %.lr.ph.split ], [ %indvars.iv, %bb.s ]
  %.lcssa = phi ptr [ %.0105, %bb.r ], [ %i.an, %.lr.ph.split.us ], [ %i.ay, %.lr.ph.split ], [ %i.bb, %bb.s ] ; 4 uses
  %i.bl = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa, i32 noundef 64) #27 ; 3 uses
  %i.bm = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa, i32 noundef 46) #27 ; 3 uses
  %i.bn = icmp ne ptr %i.bl, null                 ; 2 uses
  %i.bo = icmp ne ptr %i.bm, null                 ; 2 uses
  %or.cond10 = or i1 %i.bn, %i.bo
  br i1 %or.cond10, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge
  %.not263 = xor i1 %i.bn, true
  %i.bp = icmp ugt ptr %i.bl, %i.bm
  %or.cond134 = and i1 %i.bo, %i.bp
  %or.cond139 = or i1 %or.cond134, %.not263
  %.0100 = select i1 %or.cond139, ptr %i.bm, ptr %i.bl
  %i.bq = ptrtoint ptr %.0100 to i64
  %i.br = ptrtoint ptr %.lcssa to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  %i.bu = ptrtoint ptr %.lcssa to i64
  %i.bv = ptrtoint ptr %.0105 to i64
  %.neg = sub i64 %i.bv, %i.bu
  %.neg122 = trunc i64 %.neg to i32
  %i.bw = add i32 %.0104, %.neg122
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi i32 [ %i.bt, %bb.t ], [ %i.bw, %bb.u ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.lcssa248
  store i32 %.sink, ptr %i.bx, align 4, !tbaa !47
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bz = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 61) #27
  %i.ca = icmp ne ptr %i.bz, null
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = phi i1 [ false, %bb.v ], [ %i.ca, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %i.b, align 16, !tbaa !47 ; 6 uses
  %i.cd = icmp sgt i32 %i.cc, 11
  br i1 %i.cd, label %.critedge138.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp sgt i32 %i.cc, 0
  %spec.select = select i1 %i.ce, ptr %.0105, ptr null
  %narrow = call i32 @llvm.smax.i32(i32 %i.cc, i32 0)
  %spec.select241 = zext nneg i32 %narrow to i64  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = icmp eq i32 %i.cg, 4
  br i1 %i.ch, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36 ; 5 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %i.cl = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.ck)
          to label %bb.aa unwind label %bb.ba

bb.aa:                                            ; preds = %bb.z
  %.not123 = icmp eq i8 %i.cl, 0
  br i1 %.not123, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %i.co = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.cn)
          to label %bb.ac unwind label %bb.ba

bb.ac:                                            ; preds = %bb.ab
  %.not124 = icmp eq i8 %i.co, 0
  br i1 %.not124, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cr = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.cq)
          to label %bb.ae unwind label %bb.ba

bb.ae:                                            ; preds = %bb.ad
  %.not125 = icmp eq i8 %i.cr, 0
  br i1 %.not125, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !20
  %i.cu = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.ct)
          to label %bb.ag unwind label %bb.ba

bb.ag:                                            ; preds = %bb.af
  %.not126 = icmp eq i8 %i.cu, 0
  br i1 %.not126, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.sroa.11.0 = phi ptr [ null, %bb.aa ], [ null, %bb.ac ], [ null, %bb.ae ], [ null, %bb.ag ], [ %i.cj, %bb.ah ], [ null, %bb.y ] ; 4 uses
  %i.cv = phi i1 [ true, %bb.aa ], [ true, %bb.ac ], [ true, %bb.ae ], [ true, %bb.ag ], [ false, %bb.ah ], [ true, %bb.y ] ; 2 uses
  %.sroa.0181.0 = phi i64 [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 4, %bb.ah ], [ 0, %bb.y ] ; 3 uses
  %.0102 = phi i32 [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 2, %bb.ah ], [ 1, %bb.y ] ; 4 uses
  %i.cw = zext nneg i32 %.0102 to i64             ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !47 ; 2 uses
  switch i32 %i.cy, label %bb.al [
    i32 2, label %bb.aj
    i32 3, label %bb.aj
    i32 0, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !36 ; 2 uses
  %i.db = zext nneg i32 %i.cy to i64              ; 2 uses
  store i64 %i.db, ptr %7, align 8, !tbaa !35
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.da, ptr %.sroa.4175.0..sroa_idx, align 8, !tbaa !36
  %i.dc = add nuw nsw i32 %.0102, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dd = add nuw nsw i32 %.0102, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.de = phi ptr [ %i.da, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ai ] ; 2 uses
  %i.df = phi i64 [ %i.db, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.ai ] ; 5 uses
  %.1103 = phi i32 [ %i.dc, %bb.aj ], [ %i.dd, %bb.ak ], [ %.0102, %bb.ai ]
  %i.dg = zext nneg i32 %.1103 to i64             ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !47
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.cb, label %.thread, label %.critedge136

.thread:                                          ; preds = %bb.am
  %i.dk = ptrtoint ptr %i.ah to i64
  %i.dl = ptrtoint ptr %.0105 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %.0105 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.cb, label %bb.as, label %.critedge136

.critedge136:                                     ; preds = %bb.am, %bb.an
  %.1 = phi i32 [ %i.dt, %bb.an ], [ %.0104, %bb.am ] ; 2 uses
  %i.du = icmp slt i32 %.0104, 17
  %i.dv = icmp slt i32 %i.cc, 4
  %or.cond.i = and i1 %i.du, %i.dv
  br i1 %or.cond.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.critedge136
  %i.dw = trunc i32 %.1 to i8
  %i.dx = icmp slt i32 %i.cc, 1
  br i1 %i.dx, label %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest8languageEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %.0105, i64 %spec.select241, i1 false)
  br label %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest8languageEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i

_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest8languageEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i: ; preds = %bb.ap, %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 %spec.select241
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  br i1 %i.cv, label %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest6scriptEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest8languageEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr readonly align 1 %.sroa.11.0, i64 %.sroa.0181.0, i1 false)
  br label %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest6scriptEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i

_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest6scriptEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i: ; preds = %bb.aq, %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest8languageEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0181.0
  store i8 0, ptr %i.ea, align 1, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ec = icmp eq i64 %i.df, 0
  br i1 %i.ec, label %_ZN6icu_786Locale4Nest4initESt17basic_string_viewIcSt11char_traitsIcEES5_S5_h.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest6scriptEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.eb, ptr readonly align 1 %i.de, i64 %i.df, i1 false)
  br label %_ZN6icu_786Locale4Nest4initESt17basic_string_viewIcSt11char_traitsIcEES5_S5_h.exit

_ZN6icu_786Locale4Nest4initESt17basic_string_viewIcSt11char_traitsIcEES5_S5_h.exit: ; preds = %_ZN12_GLOBAL__N_111copyToArrayITnDaXadL_ZN6icu_786Locale4Nest6scriptEEES3_EEvSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.i, %bb.ar
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.df
  store i8 0, ptr %i.ed, align 1, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.dw, ptr %i.ee, align 2, !tbaa !38
  br label %.thread225

bb.as:                                            ; preds = %.thread, %.critedge136, %bb.an
  %.2 = phi i32 [ %i.dt, %bb.an ], [ %.1, %.critedge136 ], [ %i.dn, %.thread ]
  %i.ef = icmp eq ptr %.0105, %i.f
  br i1 %i.ef, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.eg = sext i32 %.0104 to i64                  ; 3 uses
  %i.eh = icmp eq i32 %.0104, 0
  br i1 %i.eh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %.sroa.0194.0) #25
  br label %.critedge138.sink.split

bb.av:                                            ; preds = %bb.at
  %i.ei = add nsw i64 %i.eg, 1
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %.sroa.0194.0) #25
  %i.ej = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.ei) #25 ; 8 uses
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %.critedge138.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull align 1 %.0105, i64 %i.eg, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg
  store i8 0, ptr %i.ek, align 1, !tbaa !20
  %i.el = icmp slt i32 %i.cc, 1
  %spec.select242 = select i1 %i.el, ptr null, ptr %i.ej ; 2 uses
  %i.em = ptrtoint ptr %.sroa.11.0 to i64
  %i.en = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 %i.eo
  %.sroa.11.1 = select i1 %i.cv, ptr %.sroa.11.0, ptr %i.ep ; 2 uses
  %i.eq = icmp eq i64 %i.df, 0
  br i1 %i.eq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = ptrtoint ptr %i.de to i64
  %i.es = sub i64 %i.er, %i.en
  %9 = getelementptr inbounds i8, ptr %i.ej, i64 %i.es
  store i64 %i.df, ptr %7, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %i.et, align 8, !tbaa !36
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.as
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %bb.aw ], [ %.sroa.11.1, %bb.ax ], [ %.sroa.11.0, %bb.as ]
  %.sroa.11189.2 = phi ptr [ %spec.select242, %bb.aw ], [ %spec.select242, %bb.ax ], [ %spec.select, %bb.as ]
  %.sroa.0194.1 = phi ptr [ %i.ej, %bb.aw ], [ %i.ej, %bb.ax ], [ %.sroa.0194.0, %bb.as ] ; 3 uses
  invoke void @_ZN6icu_786Locale4HeapC1ESt17basic_string_viewIcSt11char_traitsIcEES5_S5_i(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 %spec.select241, ptr %.sroa.11189.2, i64 %.sroa.0181.0, ptr %.sroa.11.2, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7, i32 noundef %.2)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eu = load i8, ptr %i.d, align 8, !tbaa !20
  %.not246 = icmp eq i8 %i.eu, 0
  br i1 %.not246, label %.critedge138.sink.split, label %bb.bb

bb.ba:                                            ; preds = %bb.bm, %.noexc157, %bb.bk, %bb.bj, %bb.ay, %bb.z, %bb.ab, %bb.ad, %bb.af
  %.sroa.0194.2 = phi ptr [ %.sroa.0194.4, %bb.bm ], [ %.sroa.0194.4, %.noexc157 ], [ %.sroa.0194.4, %bb.bk ], [ %.sroa.0194.4, %bb.bj ], [ %.sroa.0194.1, %bb.ay ], [ %.sroa.0194.0, %bb.af ], [ %.sroa.0194.0, %bb.ad ], [ %.sroa.0194.0, %bb.ab ], [ %.sroa.0194.0, %bb.z ]
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bb:                                            ; preds = %bb.az
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !29
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.ez) #25
  store ptr %.sroa.0194.1, ptr %i.ey, align 8, !tbaa !29
  %.not128 = icmp ne ptr %i.ah, %.0105
  %or.cond244.not = and i1 %.not128, %i.cb
  br i1 %or.cond244.not, label %bb.bc, label %.thread225

bb.bc:                                            ; preds = %bb.bb
  %i.fa = ptrtoint ptr %.0105 to i64
  %i.fb = ptrtoint ptr %i.ah to i64
  %i.fc = sub i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = load ptr, ptr %i.ew, align 8, !tbaa !27 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !29 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  %i.fh = add i64 %i.fc, 1
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !29
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.fi) #25
  %i.fj = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.fh) #25 ; 3 uses
  store ptr %i.fj, ptr %i.fg, align 8, !tbaa !29
  %.not.i283 = icmp eq ptr %i.fj, null
  br i1 %.not.i283, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = icmp eq ptr %i.ff, null
  %spec.select.i155 = select i1 %i.fk, ptr @.str, ptr %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %spec.select.i155, i64 %i.fc, i1 false)
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fc
  store i8 0, ptr %i.fm, align 1, !tbaa !20
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.bc, %bb.bd
  %i.fn = load ptr, ptr %i.ew, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !29
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %.critedge138.sink.split, label %.thread225

.thread225:                                       ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.bb, %_ZN6icu_786Locale4Nest4initESt17basic_string_viewIcSt11char_traitsIcEES5_S5_h.exit
  %.sroa.0194.4 = phi ptr [ %.sroa.0194.0, %_ZN6icu_786Locale4Nest4initESt17basic_string_viewIcSt11char_traitsIcEES5_S5_h.exit ], [ null, %bb.bb ], [ null, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 8 uses
  br i1 %.not.i.i.i, label %.thread238, label %bb.be

bb.be:                                            ; preds = %.thread225
  %i.fr = load i8, ptr %i.d, align 8, !tbaa !20
  switch i8 %i.fr, label %bb.bh [
    i8 0, label %_ZNK6icu_786Locale7getNameEv.exit
    i8 1, label %bb.bf
    i8 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.bg:                                            ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !29 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  %spec.select.i.i.i.i.i.i.i = select i1 %i.fw, ptr @.str, ptr %i.fv
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.bh:                                            ; preds = %bb.be
  call void @abort() #26
  unreachable

_ZNK6icu_786Locale7getNameEv.exit:                ; preds = %bb.bg, %bb.bf, %bb.be
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.bg ], [ %i.f, %bb.bf ], [ @.str, %bb.be ] ; 6 uses
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !11
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %sub_0.i, label %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231.thread

sub_0.i:                                          ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  %i.fz = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.fz, label %.tail9.thread.i [
    i8 99, label %.tail.i
    i8 101, label %sub_111.i
  ]

.tail.i:                                          ; preds = %sub_0.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %.thread238, label %.tail9.thread.i

sub_111.i:                                        ; preds = %sub_0.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  %i.ge = load i8, ptr %i.gd, align 1
  %.not14.i = icmp eq i8 %i.ge, 110
  br i1 %.not14.i, label %.tail9.i, label %.tail9.thread.i

.tail9.i:                                         ; preds = %sub_111.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %.thread238, label %.tail9.thread.i

.tail9.thread.i:                                  ; preds = %.tail9.i, %sub_111.i, %.tail.i, %sub_0.i
  %i.gi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.34) #27
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.thread238, label %bb.bi

bb.bi:                                            ; preds = %.tail9.thread.i
  %i.gk = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_127gKnownCanonicalizedInitOnceE acquire, align 4
  %.not11.i.i = icmp eq i32 %i.gk, 2
  br i1 %.not11.i.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gl = invoke noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_127gKnownCanonicalizedInitOnceE)
          to label %.noexc156 unwind label %bb.ba

.noexc156:                                        ; preds = %bb.bj
  %.not12.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not12.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc156
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_122loadKnownCanonicalizedER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc157 unwind label %bb.ba

.noexc157:                                        ; preds = %bb.bk
  %i.gm = load i32, ptr %i.c, align 4, !tbaa !11
  store i32 %i.gm, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_127gKnownCanonicalizedInitOnceE, i64 4), align 4, !tbaa !57
  invoke void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_127gKnownCanonicalizedInitOnceE)
          to label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.i unwind label %bb.ba

bb.bl:                                            ; preds = %.noexc156, %bb.bi
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_127gKnownCanonicalizedInitOnceE, i64 4), align 4, !tbaa !57 ; 2 uses
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread.i

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread.i: ; preds = %bb.bl
  store i32 %i.gn, ptr %i.c, align 4, !tbaa !11
  br label %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231.thread

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.i: ; preds = %.noexc157, %bb.bl
  %.pr.i = load i32, ptr %i.c, align 4, !tbaa !11
  %i.gp = icmp slt i32 %.pr.i, 1
  br i1 %i.gp, label %bb.bm, label %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231.thread

bb.bm:                                            ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.i
  %i.gq = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_119gKnownCanonicalizedE, align 8, !tbaa !16
  %i.gr = invoke i32 @uhash_geti_78(ptr noundef %i.gq, ptr noundef nonnull %.0.i.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit unwind label %bb.ba

_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit: ; preds = %bb.bm
  %.not247 = icmp eq i32 %i.gr, 0
  br i1 %.not247, label %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231, label %.thread238

_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231.thread: ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.i, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread.i, %_ZNK6icu_786Locale7getNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  br label %_ZN6icu_7812_GLOBAL__N_118canonicalizeLocaleERKNS_6LocaleERNS_10CharStringER10UErrorCode.exit.thread.thread

_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231: ; preds = %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit
  %.pre266 = load i32, ptr %i.c, align 4, !tbaa !11
  %i.gs = icmp slt i32 %.pre266, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 2 uses
  store ptr %i.gt, ptr %8, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 40, ptr %i.gu, align 8, !tbaa !43
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.gv, align 4, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 0, ptr %i.gw, align 8, !tbaa !45
  store i8 0, ptr %i.gt, align 1, !tbaa !20
  br i1 %i.gs, label %bb.bn, label %_ZN6icu_7812_GLOBAL__N_118canonicalizeLocaleERKNS_6LocaleERNS_10CharStringER10UErrorCode.exit.thread.thread

bb.bn:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_126isKnownCanonicalizedLocaleEPKcR10UErrorCode.exit.thread231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 32, i1 false)
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, ptr noundef null, ptr noundef nonnull @_ZZN6icu_7812_GLOBAL__N_113AliasReplacerC1ER10UErrorCodeENUl8UElementS4_E_8__invokeES4_S4_, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc162 unwind label %bb.bq

.noexc162:                                        ; preds = %bb.bn
end_hunk_0
