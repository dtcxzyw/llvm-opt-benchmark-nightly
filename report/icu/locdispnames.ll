Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locdispnames?download=true
inline.NumInlined: 110
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uloc_getDisplayVariant_78:bb.a
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @uloc_getDefault_78()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i = phi ptr [ %i.h, %bb.f ], [ %0, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i) #9
  call void @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.024.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !callees !12, !inline_history !0
  %i.j = load i32, ptr %i.a, align 4, !tbaa !10
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.m

bb.i:                                             ; preds = %bb.l, %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %i.l

bb.j:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = invoke i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.m unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.q = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kVariantsE, ptr noundef null, ptr noundef %i.p, ptr noundef %i.p, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.o, %bb.k ], [ %i.q, %bb.l ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.t)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %.0.i, %_ZN6icu_7810CharStringD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.a, %bb.p
  %.2.i = phi i32 [ %.1.i, %bb.p ], [ 0, %bb.a ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 157) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = trunc i16 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp slt i16 %i.e, 0
  %i.h = ashr i16 %i.e, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i16 %i.e, 30
  store i16 %i.m, ptr %i.d, align 8, !tbaa !11
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !11
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayName_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !10
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y)
  %i.z = load i32, ptr %i.a, align 4, !tbaa !10
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8, !tbaa !11  ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.j:                                             ; preds = %bb.h
  %i.af = icmp slt i16 %i.ad, 0
  %i.ag = ashr i16 %i.ad, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = and i16 %i.ad, 30
  store i16 %i.al, ptr %i.p, align 8, !tbaa !11
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ao = load i16, ptr %i.p, align 8, !tbaa !11
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayName_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !10
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av)
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define i32 @uloc_getDisplayName_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer.1", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.cp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4, !tbaa !10
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.cp

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %3, 0
  %i.l = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.m = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.e) ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.n = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.m, ptr noundef nonnull @_ZN12_GLOBAL__N_122_kLocaleDisplayPatternE, ptr noundef null, ptr noundef nonnull %i.e)
          to label %bb.g unwind label %bb.n       ; 5 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %7, align 8, !tbaa !23
  %i.o = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kSeparatorE, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.p = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kPatternE, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
          to label %bb.i unwind label %bb.o       ; 7 uses

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @ures_close_78(ptr noundef nonnull %i.n)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %.not.i337 = icmp eq ptr %i.m, null
  br i1 %.not.i337, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  invoke void @ures_close_78(ptr noundef nonnull %i.m)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.u = load i32, ptr %i.c, align 4, !tbaa !20
  %i.v = icmp eq i32 %i.u, 0
  %spec.select = select i1 %i.v, ptr @_ZZ22uloc_getDisplayName_78E16defaultSeparator, ptr %i.o ; 2 uses
  %i.w = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) ; 3 uses
  %i.z = icmp eq ptr %i.w, null
  %i.aa = icmp eq ptr %i.y, null
  %or.cond4 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = icmp ult ptr %i.y, %i.w
  %or.cond336 = select i1 %or.cond4, i1 true, i1 %i.ab
  br i1 %or.cond336, label %bb.q, label %bb.r

bb.n:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.ac, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.cq

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

bb.r:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 12 uses
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !20
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !20
  switch i32 %i.ak, label %bb.u [
    i32 0, label %bb.t
    i32 9, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.al = call i32 @u_strncmp_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E14defaultPattern, i32 noundef 9)
  %.not313 = icmp eq i32 %i.al, 0
  br i1 %.not313, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.s
  store i32 9, ptr %i.d, align 4, !tbaa !20
  br label %.thread347

bb.u:                                             ; preds = %bb.r, %bb.s
  %i.am = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) ; 2 uses
  %i.an = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) ; 2 uses
  %i.ao = icmp ne ptr %i.am, null
  %i.ap = icmp ne ptr %i.an, null
  %or.cond6.not = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond6.not, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 1
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.av, %i.ar
  %i.ax = lshr exact i64 %i.aw, 1
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = icmp slt i32 %i.ay, %i.au               ; 2 uses
  %.0274 = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.au) ; 2 uses
  %.0271 = call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.au) ; 2 uses
  %i.ba = call ptr @u_strchr_78(ptr noundef %i.p, i16 noundef zeroext -248)
  %.not314 = icmp eq ptr %i.ba, null
  br i1 %.not314, label %.thread347, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %.thread347

bb.x:                                             ; preds = %bb.u
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

.thread347:                                       ; preds = %bb.w, %bb.v, %bb.t
  %.0281 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.t ], [ %i.p, %bb.v ], [ %i.p, %bb.w ] ; 15 uses
  %.2276 = phi i32 [ 0, %bb.t ], [ %.0274, %bb.v ], [ %.0274, %bb.w ]
  %.2273 = phi i32 [ 5, %bb.t ], [ %.0271, %bb.v ], [ %.0271, %bb.w ]
  %.2270 = phi i16 [ 40, %bb.t ], [ 40, %bb.v ], [ -248, %bb.w ] ; 3 uses
  %.2267 = phi i16 [ 91, %bb.t ], [ 91, %bb.v ], [ -197, %bb.w ] ; 3 uses
  %.2264 = phi i16 [ 41, %bb.t ], [ 41, %bb.v ], [ -247, %bb.w ] ; 3 uses
  %.2261 = phi i16 [ 93, %bb.t ], [ 93, %bb.v ], [ -195, %bb.w ] ; 3 uses
  %.2246.shrunk = phi i1 [ false, %bb.t ], [ %i.az, %bb.v ], [ %i.az, %bb.w ]
  %.0281460 = ptrtoaddr ptr %.0281 to i64         ; 2 uses
  %.2246 = zext i1 %.2246.shrunk to i32
  %i.bb = icmp eq ptr %0, null
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.be = sub i64 %.0281460, %i.a
  %diff.check621 = icmp ugt i64 %i.be, -32
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.2270, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i16> poison, i16 %.2264, i64 0
  %broadcast.splat511 = shufflevector <8 x i16> %broadcast.splatinsert510, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %.2267, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %.2261, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert577 = insertelement <8 x i16> poison, i16 %.2270, i64 0
  %broadcast.splat578 = shufflevector <8 x i16> %broadcast.splatinsert577, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <8 x i16> poison, i16 %.2264, i64 0
  %broadcast.splat580 = shufflevector <8 x i16> %broadcast.splatinsert579, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <8 x i16> poison, i16 %.2267, i64 0
  %broadcast.splat582 = shufflevector <8 x i16> %broadcast.splatinsert581, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert583 = insertelement <8 x i16> poison, i16 %.2261, i64 0
  %broadcast.splat584 = shufflevector <8 x i16> %broadcast.splatinsert583, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.op = sub i64 -7, %i.x
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, %.thread347
  %.3277 = phi i32 [ %.2276, %.thread347 ], [ %.6280, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ] ; 13 uses
  %.0255 = phi i8 [ 1, %.thread347 ], [ %.3258, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0251 = phi i8 [ 1, %.thread347 ], [ %.3254, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0247 = phi i8 [ 0, %.thread347 ], [ 1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr null, ptr %8, align 8, !tbaa !26
  %.not317 = icmp eq i32 %.3277, 0
  br i1 %.not317, label %.loopexit361.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not318 = icmp slt i32 %3, %.3277
  br i1 %.not318, label %.loopexit361.preheader, label %.preheader360

.loopexit361.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block632, %vec.epilog.middle.block646, %.preheader360, %bb.y, %bb.z
  %.3219405.ph = phi i32 [ %.3277, %bb.z ], [ 0, %bb.y ], [ 0, %.preheader360 ], [ %.3277, %middle.block632 ], [ %.3277, %vec.epilog.middle.block646 ], [ %.3277, %.lr.ph ], [ %.3277, %.lr.ph.prol.loopexit ]
  %.3224404.ph = phi ptr [ %2, %bb.z ], [ %2, %bb.y ], [ %2, %.preheader360 ], [ %i.bi, %middle.block632 ], [ %i.bp, %vec.epilog.middle.block646 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dd, %.lr.ph ]
  br label %.loopexit361

.preheader360:                                    ; preds = %bb.z
  %i.bf = icmp sgt i32 %.3277, 0
  br i1 %i.bf, label %iter.check634, label %.loopexit361.preheader

iter.check634:                                    ; preds = %.preheader360
  %wide.trip.count = zext nneg i32 %.3277 to i64  ; 8 uses
  %min.iters.check619 = icmp ult i32 %.3277, 4
  %or.cond650 = select i1 %min.iters.check619, i1 true, i1 %diff.check621
  br i1 %or.cond650, label %.lr.ph.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %iter.check634
  %min.iters.check623 = icmp ult i32 %.3277, 16
  br i1 %min.iters.check623, label %vec.epilog.ph638, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.bg = and i64 %wide.trip.count, 12
  %n.vec625 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec625, 1
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 2 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.ph624, %vector.body626
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next631, %vector.body626 ] ; 3 uses
  %i.bj = shl i64 %index627, 1
  %next.gep628 = getelementptr i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index627 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load629 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !44
  %wide.load630 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !44
  %i.bm = getelementptr i8, ptr %next.gep628, i64 16
  store <8 x i16> %wide.load629, ptr %next.gep628, align 2, !tbaa !44
  store <8 x i16> %wide.load630, ptr %i.bm, align 2, !tbaa !44
  %index.next631 = add nuw i64 %index627, 16      ; 2 uses
  %i.bn = icmp eq i64 %index.next631, %n.vec625
  br i1 %i.bn, label %middle.block632, label %vector.body626, !llvm.loop !27

middle.block632:                                  ; preds = %vector.body626
  %cmp.n633 = icmp eq i64 %n.vec625, %wide.trip.count
  br i1 %cmp.n633, label %.loopexit361.preheader, label %vec.epilog.iter.check635

vec.epilog.iter.check635:                         ; preds = %middle.block632
  %min.epilog.iters.check637 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check637, label %.lr.ph.preheader, label %vec.epilog.ph638, !prof !48

vec.epilog.ph638:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check635
  %vec.epilog.resume.val639 = phi i64 [ %n.vec625, %vec.epilog.iter.check635 ], [ 0, %vector.main.loop.iter.check622 ]
  %n.vec640 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bo = shl nuw nsw i64 %n.vec640, 1
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo     ; 2 uses
  br label %vec.epilog.vector.body641

vec.epilog.vector.body641:                        ; preds = %vec.epilog.vector.body641, %vec.epilog.ph638
  %index642 = phi i64 [ %vec.epilog.resume.val639, %vec.epilog.ph638 ], [ %index.next645, %vec.epilog.vector.body641 ] ; 3 uses
  %i.bq = shl i64 %index642, 1
  %next.gep643 = getelementptr i8, ptr %2, i64 %i.bq
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index642
  %wide.load644 = load <4 x i16>, ptr %i.br, align 2, !tbaa !44
  store <4 x i16> %wide.load644, ptr %next.gep643, align 2, !tbaa !44
  %index.next645 = add nuw i64 %index642, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next645, %n.vec640
  br i1 %i.bs, label %vec.epilog.middle.block646, label %vec.epilog.vector.body641, !llvm.loop !28

vec.epilog.middle.block646:                       ; preds = %vec.epilog.vector.body641
  %cmp.n647 = icmp eq i64 %n.vec640, %wide.trip.count
  br i1 %cmp.n647, label %.loopexit361.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check634, %vec.epilog.iter.check635, %vec.epilog.middle.block646
  %indvars.iv.ph = phi i64 [ 0, %iter.check634 ], [ %n.vec625, %vec.epilog.iter.check635 ], [ %n.vec640, %vec.epilog.middle.block646 ] ; 4 uses
  %.0221383.ph = phi ptr [ %2, %iter.check634 ], [ %i.bi, %vec.epilog.iter.check635 ], [ %i.bp, %vec.epilog.middle.block646 ] ; 2 uses
  %i.bt = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0221383.prol = phi ptr [ %i.bw, %.lr.ph.prol ], [ %.0221383.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv.prol
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.0221383.prol, i64 2 ; 3 uses
  store i16 %i.bv, ptr %.0221383.prol, align 2, !tbaa !44
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0221383.unr = phi ptr [ %.0221383.ph, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %i.bx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %.loopexit361.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0221383 = phi ptr [ %i.dd, %.lr.ph ], [ %.0221383.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %.0221383, i64 2
  store i16 %i.ca, ptr %.0221383, align 2, !tbaa !44
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.0221383, i64 4
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !44
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %.0221383, i64 6
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !44
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %.0221383, i64 8
  store i16 %i.cm, ptr %i.cj, align 2, !tbaa !44
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.0221383, i64 10
  store i16 %i.cq, ptr %i.cn, align 2, !tbaa !44
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %.0221383, i64 12
  store i16 %i.cu, ptr %i.cr, align 2, !tbaa !44
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %.0221383, i64 14
  store i16 %i.cy, ptr %i.cv, align 2, !tbaa !44
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %.0221383, i64 16 ; 2 uses
  store i16 %i.dc, ptr %i.cz, align 2, !tbaa !44
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit361.preheader, label %.lr.ph, !llvm.loop !30

bb.aa:                                            ; preds = %bb.cm
  %i.de = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i339 = icmp eq ptr %i.de, null
  br i1 %.not.i339, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @uenum_close_78(ptr noundef nonnull %i.de)
          to label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %.not319 = icmp eq i8 %.3250, 0
  br i1 %.not319, label %bb.co, label %bb.y, !llvm.loop !31

.loopexit361:                                     ; preds = %.loopexit361.preheader, %bb.cm
  %.0200411 = phi i32 [ %.1201, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0202410 = phi i32 [ %.1203, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0204409 = phi i32 [ %.2206, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 7 uses
  %.0207408 = phi i32 [ %.2209, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0210407 = phi i32 [ %.2212, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.0213406 = phi i32 [ %.2215, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.3219405 = phi i32 [ %.7, %bb.cm ], [ %.3219405.ph, %.loopexit361.preheader ] ; 7 uses
  %.3224404 = phi ptr [ %.17, %bb.cm ], [ %.3224404.ph, %.loopexit361.preheader ]
  %.1248403 = phi i8 [ %.3250, %bb.cm ], [ %.0247, %.loopexit361.preheader ] ; 8 uses
  %.1252402 = phi i8 [ %.3254, %bb.cm ], [ %.0251, %.loopexit361.preheader ] ; 3 uses
  %.1256401 = phi i8 [ %.3258, %bb.cm ], [ %.0255, %.loopexit361.preheader ] ; 3 uses
  %.4278400 = phi i32 [ %.6280, %bb.cm ], [ %.3277, %.loopexit361.preheader ] ; 9 uses
  %.1285399 = phi i32 [ %.7291, %bb.cm ], [ %.3277, %.loopexit361.preheader ] ; 12 uses
  %i.dh = sub nsw i32 %3, %.1285399               ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0                   ; 4 uses
  %i.dj = sext i32 %.1285399 to i64
end_hunk_0
begin_hunk_1_@uloc_getDisplayName_78:bb.a
  br i1 %cmp.n487, label %.loopexit359, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block486
  %min.epilog.iters.check491 = icmp eq i64 %i.jj, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph391.preheader, label %vec.epilog.ph492, !prof !48

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check489
  %vec.epilog.resume.val493 = phi i64 [ %n.vec479, %vec.epilog.iter.check489 ], [ 0, %vector.main.loop.iter.check476 ]
  %n.vec494 = and i64 %wide.trip.count422, 2147483644 ; 4 uses
  %i.jr = shl nuw nsw i64 %n.vec494, 1
  %i.js = getelementptr i8, ptr %.lcssa455, i64 %i.jr ; 2 uses
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph492
  %index496 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph492 ], [ %index.next499, %vec.epilog.vector.body495 ] ; 3 uses
  %i.jt = shl i64 %index496, 1
  %next.gep497 = getelementptr i8, ptr %.lcssa455, i64 %i.jt
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index496
  %wide.load498 = load <4 x i16>, ptr %i.ju, align 2, !tbaa !44
  store <4 x i16> %wide.load498, ptr %next.gep497, align 2, !tbaa !44
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.jv, label %vec.epilog.middle.block500, label %vec.epilog.vector.body495, !llvm.loop !35

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body495
  %cmp.n501 = icmp eq i64 %n.vec494, %wide.trip.count422
  br i1 %cmp.n501, label %.loopexit359, label %.lr.ph391.preheader

.lr.ph391.preheader:                              ; preds = %iter.check488, %vec.epilog.iter.check489, %vec.epilog.middle.block500
  %indvars.iv419.ph = phi i64 [ 0, %iter.check488 ], [ %n.vec494, %vec.epilog.middle.block500 ], [ %n.vec479, %vec.epilog.iter.check489 ] ; 4 uses
  %.10389.ph = phi ptr [ %.lcssa455, %iter.check488 ], [ %i.js, %vec.epilog.middle.block500 ], [ %i.jl, %vec.epilog.iter.check489 ] ; 2 uses
  %i.jw = sub nsw i64 %wide.trip.count422, %indvars.iv419.ph
  %xtraiter656 = and i64 %i.jw, 7                 ; 2 uses
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod657.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol

.lr.ph391.prol:                                   ; preds = %.lr.ph391.preheader, %.lr.ph391.prol
  %indvars.iv419.prol = phi i64 [ %indvars.iv.next420.prol, %.lr.ph391.prol ], [ %indvars.iv419.ph, %.lr.ph391.preheader ] ; 2 uses
  %.10389.prol = phi ptr [ %i.jz, %.lr.ph391.prol ], [ %.10389.ph, %.lr.ph391.preheader ] ; 2 uses
  %prol.iter658 = phi i64 [ %prol.iter658.next, %.lr.ph391.prol ], [ 0, %.lr.ph391.preheader ]
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419.prol
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %.10389.prol, i64 2 ; 3 uses
  store i16 %i.jy, ptr %.10389.prol, align 2, !tbaa !44
  %indvars.iv.next420.prol = add nuw nsw i64 %indvars.iv419.prol, 1 ; 2 uses
  %prol.iter658.next = add i64 %prol.iter658, 1   ; 2 uses
  %prol.iter658.cmp.not = icmp eq i64 %prol.iter658.next, %xtraiter656
  br i1 %prol.iter658.cmp.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol, !llvm.loop !36

.lr.ph391.prol.loopexit:                          ; preds = %.lr.ph391.prol, %.lr.ph391.preheader
  %.lcssa652.unr = phi ptr [ poison, %.lr.ph391.preheader ], [ %i.jz, %.lr.ph391.prol ]
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph391.preheader ], [ %indvars.iv.next420.prol, %.lr.ph391.prol ]
  %.10389.unr = phi ptr [ %.10389.ph, %.lr.ph391.preheader ], [ %i.jz, %.lr.ph391.prol ]
  %i.ka = sub nsw i64 %indvars.iv419.ph, %wide.trip.count422
  %i.kb = icmp ugt i64 %i.ka, -8
  br i1 %i.kb, label %.loopexit359, label %.lr.ph391

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %bb.bx
  %.9386 = phi ptr [ %i.kf, %bb.bx ], [ %.9386.ph, %.lr.ph387.preheader ] ; 3 uses
  %i.kc = load i16, ptr %.9386, align 2, !tbaa !44 ; 2 uses
  %i.kd = icmp eq i16 %i.kc, %.2270
  br i1 %i.kd, label %.sink.split, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph387
  %i.ke = icmp eq i16 %i.kc, %.2264
  br i1 %i.ke, label %.sink.split, label %bb.bx

.sink.split:                                      ; preds = %bb.bw, %.lr.ph387
  %.2267.sink = phi i16 [ %.2267, %.lr.ph387 ], [ %.2261, %bb.bw ]
  store i16 %.2267.sink, ptr %.9386, align 2, !tbaa !44
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bw
  %i.kf = getelementptr inbounds nuw i8, ptr %.9386, i64 2 ; 3 uses
  %i.kg = icmp ult ptr %i.kf, %i.fp
  br i1 %i.kg, label %.lr.ph387, label %.preheader, !llvm.loop !37

.lr.ph391:                                        ; preds = %.lr.ph391.prol.loopexit, %.lr.ph391
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.7, %.lr.ph391 ], [ %indvars.iv419.unr, %.lr.ph391.prol.loopexit ] ; 9 uses
  %.10389 = phi ptr [ %i.ll, %.lr.ph391 ], [ %.10389.unr, %.lr.ph391.prol.loopexit ] ; 9 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !44
  %i.kj = getelementptr inbounds nuw i8, ptr %.10389, i64 2
  store i16 %i.ki, ptr %.10389, align 2, !tbaa !44
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !44
  %i.kn = getelementptr inbounds nuw i8, ptr %.10389, i64 4
  store i16 %i.km, ptr %i.kj, align 2, !tbaa !44
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %.10389, i64 6
  store i16 %i.kq, ptr %i.kn, align 2, !tbaa !44
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 6
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %.10389, i64 8
  store i16 %i.ku, ptr %i.kr, align 2, !tbaa !44
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %.10389, i64 10
  store i16 %i.ky, ptr %i.kv, align 2, !tbaa !44
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 10
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !44
  %i.ld = getelementptr inbounds nuw i8, ptr %.10389, i64 12
  store i16 %i.lc, ptr %i.kz, align 2, !tbaa !44
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !44
  %i.lh = getelementptr inbounds nuw i8, ptr %.10389, i64 14
  store i16 %i.lg, ptr %i.ld, align 2, !tbaa !44
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 14
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !44
  %i.ll = getelementptr inbounds nuw i8, ptr %.10389, i64 16 ; 2 uses
  store i16 %i.lk, ptr %i.lh, align 2, !tbaa !44
  %indvars.iv.next420.7 = add nuw nsw i64 %indvars.iv419, 8 ; 2 uses
  %exitcond423.not.7 = icmp eq i64 %indvars.iv.next420.7, %wide.trip.count422
  br i1 %exitcond423.not.7, label %.loopexit359, label %.lr.ph391, !llvm.loop !38

.loopexit359:                                     ; preds = %.lr.ph391.prol.loopexit, %.lr.ph391, %middle.block486, %vec.epilog.middle.block500, %.preheader, %bb.bv
  %.11 = phi ptr [ %.8, %bb.bv ], [ %.lcssa455, %.preheader ], [ %i.js, %vec.epilog.middle.block500 ], [ %i.jl, %middle.block486 ], [ %.lcssa652.unr, %.lr.ph391.prol.loopexit ], [ %i.ll, %.lr.ph391 ]
  %i.lm = add nsw i32 %i.fn, %.1285399
  br label %bb.ca

bb.by:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  br i1 %.1198, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not327 = icmp eq i32 %.1285399, %.1205
  %i.ln = load i32, ptr %i.c, align 4
  %i.lo = select i1 %.not327, i32 0, i32 %i.ln
  %.3287 = sub nsw i32 %.1285399, %i.lo           ; 2 uses
  %i.lp = sub nsw i32 %.3287, %.1205              ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, 0
  %i.lr = zext i1 %i.lq to i8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %.loopexit359
  %.4288 = phi i32 [ %i.lm, %.loopexit359 ], [ %.3287, %bb.bz ], [ %.1285399, %bb.by ]
  %.2253 = phi i8 [ 1, %.loopexit359 ], [ %i.lr, %bb.bz ], [ 1, %bb.by ]
  %.12 = phi ptr [ %.11, %.loopexit359 ], [ %.8, %bb.bz ], [ %.8, %bb.by ]
  %.1208 = phi i32 [ %.0207408, %.loopexit359 ], [ %i.lp, %bb.bz ], [ %.0207408, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ah, %bb.ad, %bb.af, %bb.ca
  %.5289 = phi i32 [ %.1285399, %bb.ad ], [ %.4288, %bb.ca ], [ %i.dn, %bb.af ], [ %.1285399, %bb.ah ] ; 5 uses
  %.3258 = phi i8 [ 0, %bb.ad ], [ %.1256401, %bb.ca ], [ %i.dp, %bb.af ], [ %.1256401, %bb.ah ] ; 3 uses
  %.3254 = phi i8 [ %.1252402, %bb.ad ], [ %.2253, %bb.ca ], [ %.1252402, %bb.af ], [ 0, %bb.ah ] ; 3 uses
  %.13 = phi ptr [ %.4225, %bb.ad ], [ %.12, %bb.ca ], [ %.4225, %bb.af ], [ %.4225, %bb.ah ] ; 7 uses
  %.2215 = phi i32 [ %.0213406, %bb.ad ], [ %.0213406, %bb.ca ], [ %i.dm, %bb.af ], [ %.0213406, %bb.ah ] ; 2 uses
  %.2212 = phi i32 [ %.0210407, %bb.ad ], [ %.0210407, %bb.ca ], [ %.1285399, %bb.af ], [ %.0210407, %bb.ah ] ; 2 uses
  %.2209 = phi i32 [ %.0207408, %bb.ad ], [ %.1208, %bb.ca ], [ %.0207408, %bb.af ], [ %.0207408, %bb.ah ] ; 2 uses
  %.2206 = phi i32 [ %.0204409, %bb.ad ], [ %.1205, %bb.ca ], [ %.0204409, %bb.af ], [ %.0204409, %bb.ah ] ; 2 uses
  %.1201 = phi i32 [ %.0200411, %bb.ad ], [ %i.dr, %bb.ca ], [ %.0200411, %bb.af ], [ %.0200411, %bb.ah ]
  %.2199 = phi i1 [ false, %bb.ad ], [ %.1198, %bb.ca ], [ false, %bb.af ], [ false, %bb.ah ]
  %i.ls = load i32, ptr %4, align 4, !tbaa !10
  %i.lt = icmp eq i32 %i.ls, 15
  br i1 %i.lt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %.2199, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lu = icmp ne i8 %.3258, 0                    ; 3 uses
  %i.lv = icmp ne i8 %.3254, 0
  %or.cond8 = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %or.cond8, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.lw = add nsw i32 %.3219405, 3                ; 3 uses
  %i.lx = icmp eq i32 %.0202410, 0
  %i.ly = load i32, ptr %i.d, align 4
  %i.lz = select i1 %i.lx, i32 %.2273, i32 %i.ly  ; 2 uses
  %i.ma = sub nsw i32 %i.lz, %i.lw                ; 6 uses
  %i.mb = add nsw i32 %i.ma, %.5289               ; 4 uses
  %.not335 = icmp sgt i32 %i.mb, %3
  br i1 %.not335, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mc = sext i32 %.5289 to i64                  ; 2 uses
  %i.md = getelementptr inbounds [2 x i8], ptr %2, i64 %i.mc ; 7 uses
  %i.me = icmp sgt i32 %i.ma, 0
  br i1 %i.me, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.cg
  %i.mf = sext i32 %i.lw to i64                   ; 7 uses
  %i.mg = zext nneg i32 %i.ma to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ma, 4
  br i1 %min.iters.check, label %.lr.ph396.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %9 = shl nsw i64 %i.mc, 1
  %i.mh = shl nsw i64 %i.mf, 1
  %10 = add i64 %9, %i.a
  %i.mi = add i64 %i.mh, %.0281460
  %11 = sub i64 %i.mi, %10
  %diff.check = icmp ugt i64 %11, -32
  br i1 %diff.check, label %.lr.ph396.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check461 = icmp ult i32 %i.ma, 16
  br i1 %min.iters.check461, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mj = and i64 %i.mg, 12
  %n.vec = and i64 %i.mg, 2147483632              ; 6 uses
  %i.mk = add nsw i64 %n.vec, %i.mf               ; 2 uses
  %i.ml = trunc nuw nsw i64 %n.vec to i32
  %i.mm = shl nuw nsw i64 %n.vec, 1
  %i.mn = getelementptr i8, ptr %i.md, i64 %i.mm  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0281, i64 %i.mf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mo = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.md, i64 %i.mo ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !44
  %wide.load462 = load <8 x i16>, ptr %i.mp, align 2, !tbaa !44
  %i.mq = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !44
  store <8 x i16> %wide.load462, ptr %i.mq, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mg
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph396.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec463 = and i64 %i.mg, 2147483644           ; 5 uses
  %i.ms = add nsw i64 %n.vec463, %i.mf            ; 2 uses
  %i.mt = trunc nuw nsw i64 %n.vec463 to i32
  %i.mu = shl nuw nsw i64 %n.vec463, 1
  %i.mv = getelementptr i8, ptr %i.md, i64 %i.mu  ; 2 uses
  %invariant.gep667 = getelementptr [2 x i8], ptr %.0281, i64 %i.mf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index464 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next467, %vec.epilog.vector.body ] ; 3 uses
  %i.mw = shl i64 %index464, 1
  %next.gep465 = getelementptr i8, ptr %i.md, i64 %i.mw
  %gep668 = getelementptr [2 x i8], ptr %invariant.gep667, i64 %index464
  %wide.load466 = load <4 x i16>, ptr %gep668, align 2, !tbaa !44
  store <4 x i16> %wide.load466, ptr %next.gep465, align 2, !tbaa !44
  %index.next467 = add nuw i64 %index464, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next467, %n.vec463
  br i1 %i.mx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n468 = icmp eq i64 %n.vec463, %i.mg
  br i1 %cmp.n468, label %.loopexit.loopexit, label %.lr.ph396.preheader

.lr.ph396.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv424.ph = phi i64 [ %i.mf, %iter.check ], [ %i.mf, %vector.memcheck ], [ %i.mk, %vec.epilog.iter.check ], [ %i.ms, %vec.epilog.middle.block ]
  %.0395.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ]
  %.14393.ph = phi ptr [ %i.md, %iter.check ], [ %i.md, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  br label %.lr.ph396

.lr.ph396:                                        ; preds = %.lr.ph396.preheader, %.lr.ph396
  %indvars.iv424 = phi i64 [ %indvars.iv.next425, %.lr.ph396 ], [ %indvars.iv424.ph, %.lr.ph396.preheader ] ; 2 uses
  %.0395 = phi i32 [ %i.nb, %.lr.ph396 ], [ %.0395.ph, %.lr.ph396.preheader ]
  %.14393 = phi ptr [ %i.na, %.lr.ph396 ], [ %.14393.ph, %.lr.ph396.preheader ] ; 2 uses
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %i.my = getelementptr inbounds [2 x i8], ptr %.0281, i64 %indvars.iv424
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !44
  %i.na = getelementptr inbounds nuw i8, ptr %.14393, i64 2 ; 2 uses
  store i16 %i.mz, ptr %.14393, align 2, !tbaa !44
  %i.nb = add nuw nsw i32 %.0395, 1               ; 2 uses
  %exitcond427.not = icmp eq i32 %i.nb, %i.ma
  br i1 %exitcond427.not, label %.loopexit.loopexit, label %.lr.ph396, !llvm.loop !41

bb.ch:                                            ; preds = %bb.ce
  %i.nc = icmp eq i32 %.0202410, 0
  br i1 %i.nc, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nd = icmp sgt i32 %.5289, 0
  br i1 %i.nd, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.ne = select i1 %i.lu, i32 %.2215, i32 %.2209 ; 5 uses
  %i.nf = icmp eq i32 %.4278400, 0
  %or.cond10.not = select i1 %i.l, i1 true, i1 %i.nf
  br i1 %or.cond10.not, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ng = add nsw i32 %i.ne, %.4278400
  %.not331 = icmp sgt i32 %i.ng, %3
  br i1 %.not331, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nh = select i1 %i.lu, i32 %.2212, i32 %.2206
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ni
  %i.nk = invoke ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.nj, i32 noundef %i.ne)
          to label %.loopexit unwind label %bb.ag ; 0 uses

.loopexit.loopexit:                               ; preds = %.lr.ph396, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next425.lcssa = phi i64 [ %i.ms, %vec.epilog.middle.block ], [ %i.mk, %middle.block ], [ %indvars.iv.next425, %.lr.ph396 ]
  %.lcssa457 = phi ptr [ %i.mv, %vec.epilog.middle.block ], [ %i.mn, %middle.block ], [ %i.na, %.lr.ph396 ]
  %i.nl = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cg, %bb.ck, %bb.ch, %bb.cf, %bb.cj, %bb.cl, %bb.ci
  %.6290 = phi i32 [ %.5289, %bb.ci ], [ %i.ne, %bb.ck ], [ %i.ne, %bb.cl ], [ 0, %bb.ch ], [ %i.ne, %bb.cj ], [ %i.mb, %bb.cf ], [ %i.mb, %bb.cg ], [ %i.mb, %.loopexit.loopexit ]
  %.5279 = phi i32 [ %.4278400, %bb.ci ], [ 0, %bb.ck ], [ %.4278400, %bb.cl ], [ 0, %bb.ch ], [ %.4278400, %bb.cj ], [ %.4278400, %bb.cf ], [ %.4278400, %bb.cg ], [ %.4278400, %.loopexit.loopexit ]
  %.2249 = phi i8 [ %.1248403, %bb.ci ], [ 1, %bb.ck ], [ %.1248403, %bb.cl ], [ %.1248403, %bb.ch ], [ %.1248403, %bb.cj ], [ %.1248403, %bb.cf ], [ %.1248403, %bb.cg ], [ %.1248403, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.ci ], [ %.13, %bb.ck ], [ %.13, %bb.cl ], [ %.13, %bb.ch ], [ %.13, %bb.cj ], [ %.13, %bb.cf ], [ %i.md, %bb.cg ], [ %.lcssa457, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.3219405, %bb.ci ], [ %.3219405, %bb.ck ], [ %.3219405, %bb.cl ], [ %.3219405, %bb.ch ], [ %.3219405, %bb.cj ], [ %i.lz, %bb.cf ], [ %i.lw, %bb.cg ], [ %i.nl, %.loopexit.loopexit ]
  %i.nm = add nuw nsw i32 %.0202410, 1
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit, %bb.cd
  %.7291 = phi i32 [ %.6290, %.loopexit ], [ %.5289, %bb.cd ] ; 2 uses
  %.6280 = phi i32 [ %.5279, %.loopexit ], [ %.4278400, %bb.cd ] ; 2 uses
  %.3250 = phi i8 [ %.2249, %.loopexit ], [ %.1248403, %bb.cd ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.cd ]
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.3219405, %bb.cd ]
  %.1203 = phi i32 [ %i.nm, %.loopexit ], [ %.0202410, %bb.cd ] ; 2 uses
  %i.nn = icmp slt i32 %.1203, 2
  br i1 %i.nn, label %.loopexit361, label %bb.aa, !llvm.loop !42

bb.cn:                                            ; preds = %.body, %bb.ag
  %.pn332 = phi { ptr, i32 } [ %i.dq, %bb.ag ], [ %eh.lpad-body, %.body ]
  call void @_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.cq

bb.co:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.no = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7291, ptr noundef nonnull %4)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.x, %bb.q, %bb.a, %bb.b, %bb.co, %bb.e
  %.2231 = phi i32 [ 0, %bb.q ], [ 0, %bb.e ], [ %i.no, %bb.co ], [ 0, %bb.x ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.2231

bb.cq:                                            ; preds = %bb.cn, %bb.p
  %.pn332.pn = phi { ptr, i32 } [ %.pn332, %bb.cn ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  resume { ptr, i32 } %.pn332.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  ret ptr %2
}

declare void @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_1
