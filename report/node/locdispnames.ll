Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/locdispnames?download=true
inline.NumInlined: 110
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uloc_getDisplayLanguage_78:bb.a
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @uloc_getDefault_78() #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022.i = phi ptr [ %i.h, %bb.f ], [ %0, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i) #6
  call void @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.022.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #6, !callees !6, !inline_history !0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str.2) #6
  %i.n = load ptr, ptr %6, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %4) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = load ptr, ptr %5, align 8                ; 2 uses
  %i.s = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kLanguagesE, ptr noundef null, ptr noundef %i.r, ptr noundef %i.r, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.s, %bb.k ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.v) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %.0.i, %_ZN6icu_7810CharStringD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.a, %bb.n
  %.2.i = phi i32 [ %.1.i, %bb.n ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %.2.i
}

declare noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 157) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8              ; 4 uses
  %i.f = trunc i16 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.m, ptr %i.d, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayScript_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y) #6
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8             ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.al, ptr %i.p, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.ao = load i16, ptr %i.p, align 8
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayScript_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayScript_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = load i32, ptr %4, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.g = icmp slt i32 %3, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %3, 0                        ; 2 uses
  %i.i = icmp eq ptr %2, null
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @uloc_getDefault_78() #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022.i = phi ptr [ %i.k, %bb.e ], [ %0, %bb.d ] ; 2 uses
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i) #6
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, i64 %i.l, ptr nonnull %.022.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #6, !callees !6, !inline_history !0
  %i.m = load i32, ptr %i.c, align 4
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.d, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.p = load i32, ptr %i.o, align 8
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #6
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %7, align 8                ; 2 uses
  %i.s = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_119_kScriptsStandAloneE, ptr noundef null, ptr noundef %i.r, ptr noundef %i.r, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.s, %bb.j ], [ %i.q, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.v) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.w = load i32, ptr %i.d, align 4              ; 3 uses
  %i.x = icmp ne i32 %i.w, 15
  %or.cond.not = select i1 %i.h, i1 true, i1 %i.x
  br i1 %or.cond.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit
  %i.y = load i32, ptr %4, align 4
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  br i1 %i.j, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = call ptr @uloc_getDefault_78() #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.022.i27 = phi ptr [ %i.aa, %bb.o ], [ %0, %bb.n ] ; 2 uses
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i27) #6
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, i64 %i.ab, ptr nonnull %.022.i27, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #6, !callees !6, !inline_history !0
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %4, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.af = load i32, ptr %i.ae, align 8
  %.not.i32 = icmp eq i32 %i.af, 0
  br i1 %.not.i32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ag = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ah = load ptr, ptr %6, align 8               ; 2 uses
  %i.ai = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.ah, ptr noundef %i.ah, ptr noundef %2, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.i28 = phi i32 [ 0, %bb.q ], [ %i.ai, %bb.t ], [ %i.ag, %bb.s ]
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ak = load i8, ptr %i.aj, align 4
  %.not.i.i.i.i29 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i29, label %_ZN6icu_7810CharStringD2Ev.exit.i30, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = load ptr, ptr %6, align 8
  call void @uprv_free_78(ptr noundef %i.al) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i30

_ZN6icu_7810CharStringD2Ev.exit.i30:              ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33: ; preds = %bb.m, %_ZN6icu_7810CharStringD2Ev.exit.i30
  %.2.i25 = phi i32 [ %.0.i28, %_ZN6icu_7810CharStringD2Ev.exit.i30 ], [ 0, %bb.m ]
  %i.am = call i32 @llvm.smax.i32(i32 %.2.i25, i32 %.0.i)
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit
  %i.an = icmp eq i32 %i.w, -127
  br i1 %i.an, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.ao = load i32, ptr %4, align 4
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.y, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.aq = icmp ne i32 %3, 0
  %i.ar = icmp eq ptr %2, null
  %or.cond.i35 = and i1 %i.ar, %i.aq
  br i1 %or.cond.i35, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %4, align 4
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %i.as = icmp eq ptr %0, null
  br i1 %i.as, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.at = call ptr @uloc_getDefault_78() #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.022.i36 = phi ptr [ %i.at, %bb.ab ], [ %0, %bb.aa ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i36) #6
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.au, ptr nonnull %.022.i36, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #6, !callees !6, !inline_history !0
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %4, align 4
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ay = load i32, ptr %i.ax, align 8
  %.not.i41 = icmp eq i32 %i.ay, 0
  br i1 %.not.i41, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.az = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ba = load ptr, ptr %5, align 8               ; 2 uses
  %i.bb = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.ba, ptr noundef %i.ba, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.0.i37 = phi i32 [ 0, %bb.ad ], [ %i.bb, %bb.ag ], [ %i.az, %bb.af ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bd = load i8, ptr %i.bc, align 4
  %.not.i.i.i.i38 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i38, label %_ZN6icu_7810CharStringD2Ev.exit.i39.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.be = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.be) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i39.a

_ZN6icu_7810CharStringD2Ev.exit.i39.a:            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i39.a, %bb.z
  %.1.i40.a = phi i32 [ 0, %bb.z ], [ %.0.i37, %_ZN6icu_7810CharStringD2Ev.exit.i39.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.ak:                                            ; preds = %.thread, %bb.w
  %.1.i4553 = phi i32 [ 0, %.thread ], [ %.0.i, %bb.w ]
  %i.bf = phi i32 [ 1, %.thread ], [ %i.w, %bb.w ]
  store i32 %i.bf, ptr %4, align 4
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42: ; preds = %bb.aj, %bb.x, %bb.ak, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33
  %.0 = phi i32 [ %i.am, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33 ], [ %.1.i4553, %bb.ak ], [ %.1.i40.a, %bb.aj ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42
  %.1 = phi i32 [ %.0, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42 ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 157) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8              ; 4 uses
  %i.f = trunc i16 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.m, ptr %i.d, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayCountry_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y) #6
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8             ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.al, ptr %i.p, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.ao = load i16, ptr %i.p, align 8
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayCountry_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @uloc_getDefault_78() #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022.i = phi ptr [ %i.h, %bb.f ], [ %0, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i) #6
  call void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.022.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #6, !callees !6, !inline_history !0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kCountriesE, ptr noundef null, ptr noundef %i.o, ptr noundef %i.o, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.p, %bb.k ], [ %i.n, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.r = load i8, ptr %i.q, align 4
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.s) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %.0.i, %_ZN6icu_7810CharStringD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.a, %bb.n
  %.2.i = phi i32 [ %.1.i, %bb.n ], [ 0, %bb.a ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 157) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8              ; 4 uses
  %i.f = trunc i16 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.m, ptr %i.d, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayVariant_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y) #6
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8             ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.al, ptr %i.p, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.ao = load i16, ptr %i.p, align 8
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayVariant_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @uloc_getDefault_78() #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022.i = phi ptr [ %i.h, %bb.f ], [ %0, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i) #6
  call void @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.022.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #6, !callees !6, !inline_history !0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kVariantsE, ptr noundef null, ptr noundef %i.o, ptr noundef %i.o, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.p, %bb.k ], [ %i.n, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.r = load i8, ptr %i.q, align 4
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.s) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %.0.i, %_ZN6icu_7810CharStringD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.a, %bb.n
  %.2.i = phi i32 [ %.1.i, %bb.n ], [ 0, %bb.a ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 157) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8              ; 4 uses
  %i.f = trunc i16 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.m, ptr %i.d, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayName_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y) #6
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8             ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
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
  store i16 %i.al, ptr %i.p, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.ao = load i16, ptr %i.p, align 8
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayName_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayName_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.bs

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %3, 0
  %i.l = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.bs

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  %i.m = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.e) #6 ; 3 uses
  %i.n = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.m, ptr noundef nonnull @_ZN12_GLOBAL__N_122_kLocaleDisplayPatternE, ptr noundef null, ptr noundef nonnull %i.e) #6 ; 4 uses
  %i.o = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kSeparatorE, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #6
  %i.p = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kPatternE, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #6 ; 7 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ures_close_78(ptr noundef nonnull %i.n) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.f, %bb.g
  %.not.i318 = icmp eq ptr %i.m, null
  br i1 %.not.i318, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.m) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.q = load i32, ptr %i.c, align 4
  %i.r = icmp eq i32 %i.q, 0
  %spec.select = select i1 %i.r, ptr @_ZZ22uloc_getDisplayName_78E16defaultSeparator, ptr %i.o ; 2 uses
  %i.s = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) #6 ; 3 uses
  %i.t = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) #6 ; 3 uses
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp eq ptr %i.t, null
  %or.cond4 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = icmp ult ptr %i.t, %i.s
  %or.cond317 = select i1 %or.cond4, i1 true, i1 %i.w
  br i1 %or.cond317, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319
  store i32 1, ptr %4, align 4
  br label %bb.bs

bb.j:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 1
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.c, align 4
  %i.ad = load i32, ptr %i.d, align 4
  switch i32 %i.ad, label %bb.m [
    i32 0, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @u_strncmp_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E14defaultPattern, i32 noundef 9) #6
  %.not300 = icmp eq i32 %i.ae, 0
  br i1 %.not300, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 9, ptr %i.d, align 4
  br label %.thread332

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.af = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) #6 ; 2 uses
  %i.ag = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) #6 ; 2 uses
  %i.ah = icmp ne ptr %i.af, null
  %i.ai = icmp ne ptr %i.ag, null
  %or.cond6.not = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond6.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = sub i64 %i.ao, %i.ak
  %i.aq = lshr exact i64 %i.ap, 1
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = icmp slt i32 %i.ar, %i.an               ; 2 uses
  %.0262 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %.0259 = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %i.at = call ptr @u_strchr_78(ptr noundef %i.p, i16 noundef zeroext -248) #6
  %.not301 = icmp eq ptr %i.at, null
  br i1 %.not301, label %.thread332, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %.thread332

bb.p:                                             ; preds = %bb.m
  store i32 1, ptr %4, align 4
  br label %bb.bs

.thread332:                                       ; preds = %bb.o, %bb.n, %bb.l
  %.0269 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.l ], [ %i.p, %bb.n ], [ %i.p, %bb.o ] ; 15 uses
  %.2264 = phi i32 [ 0, %bb.l ], [ %.0262, %bb.n ], [ %.0262, %bb.o ]
  %.2261 = phi i32 [ 5, %bb.l ], [ %.0259, %bb.n ], [ %.0259, %bb.o ]
  %.2258 = phi i16 [ 40, %bb.l ], [ 40, %bb.n ], [ -248, %bb.o ] ; 3 uses
  %.2255 = phi i16 [ 91, %bb.l ], [ 91, %bb.n ], [ -197, %bb.o ] ; 3 uses
  %.2252 = phi i16 [ 41, %bb.l ], [ 41, %bb.n ], [ -247, %bb.o ] ; 3 uses
  %.2249 = phi i16 [ 93, %bb.l ], [ 93, %bb.n ], [ -195, %bb.o ] ; 3 uses
  %.2234.shrunk = phi i1 [ false, %bb.l ], [ %i.as, %bb.n ], [ %i.as, %bb.o ]
  %.0269422 = ptrtoaddr ptr %.0269 to i64
  %.2234 = zext i1 %.2234.shrunk to i32
  %i.au = icmp eq ptr %0, null
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ax = sub i64 %i.a, %.0269422                 ; 2 uses
  %i.ay = add i64 %i.ax, -1
  %diff.check550 = icmp ult i64 %i.ay, 31
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.2258, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert442 = insertelement <8 x i16> poison, i16 %.2252, i64 0
  %broadcast.splat443 = shufflevector <8 x i16> %broadcast.splatinsert442, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert444 = insertelement <8 x i16> poison, i16 %.2255, i64 0
  %broadcast.splat445 = shufflevector <8 x i16> %broadcast.splatinsert444, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert446 = insertelement <8 x i16> poison, i16 %.2249, i64 0
  %broadcast.splat447 = shufflevector <8 x i16> %broadcast.splatinsert446, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert509 = insertelement <8 x i16> poison, i16 %.2258, i64 0
  %broadcast.splat510 = shufflevector <8 x i16> %broadcast.splatinsert509, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert511 = insertelement <8 x i16> poison, i16 %.2252, i64 0
  %broadcast.splat512 = shufflevector <8 x i16> %broadcast.splatinsert511, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <8 x i16> poison, i16 %.2255, i64 0
  %broadcast.splat514 = shufflevector <8 x i16> %broadcast.splatinsert513, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert515 = insertelement <8 x i16> poison, i16 %.2249, i64 0
  %broadcast.splat516 = shufflevector <8 x i16> %broadcast.splatinsert515, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, %.thread332
  %.3265 = phi i32 [ %.2264, %.thread332 ], [ %.6268, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ] ; 13 uses
  %.0243 = phi i8 [ 1, %.thread332 ], [ %.3246, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0239 = phi i8 [ 1, %.thread332 ], [ %.3242, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0235 = phi i8 [ 0, %.thread332 ], [ 1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.not304 = icmp eq i32 %.3265, 0
  br i1 %.not304, label %.loopexit346.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not305 = icmp slt i32 %3, %.3265
  br i1 %.not305, label %.loopexit346.preheader, label %.preheader345

.loopexit346.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block562, %vec.epilog.middle.block576, %.preheader345, %bb.q, %bb.r
  %.3217370.ph = phi i32 [ %.3265, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader345 ], [ %.3265, %middle.block562 ], [ %.3265, %vec.epilog.middle.block576 ], [ %.3265, %.lr.ph ], [ %.3265, %.lr.ph.prol.loopexit ]
  %.3222369.ph = phi ptr [ %2, %bb.r ], [ %2, %bb.q ], [ %2, %.preheader345 ], [ %i.bc, %middle.block562 ], [ %i.bj, %vec.epilog.middle.block576 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ]
  br label %.loopexit346

.preheader345:                                    ; preds = %bb.r
  %i.az = icmp sgt i32 %.3265, 0
  br i1 %i.az, label %iter.check565, label %.loopexit346.preheader

iter.check565:                                    ; preds = %.preheader345
  %wide.trip.count = zext nneg i32 %.3265 to i64  ; 8 uses
  %min.iters.check551 = icmp ult i32 %.3265, 4
  %or.cond580 = select i1 %min.iters.check551, i1 true, i1 %diff.check550
  br i1 %or.cond580, label %.lr.ph.preheader, label %vector.main.loop.iter.check552

vector.main.loop.iter.check552:                   ; preds = %iter.check565
  %min.iters.check553 = icmp ult i32 %.3265, 16
  br i1 %min.iters.check553, label %vec.epilog.ph569, label %vector.ph554

vector.ph554:                                     ; preds = %vector.main.loop.iter.check552
  %i.ba = and i64 %wide.trip.count, 12
  %n.vec555 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.bb = shl nuw nsw i64 %n.vec555, 1
  %i.bc = getelementptr i8, ptr %2, i64 %i.bb     ; 2 uses
  br label %vector.body556

vector.body556:                                   ; preds = %vector.ph554, %vector.body556
  %index557 = phi i64 [ 0, %vector.ph554 ], [ %index.next561, %vector.body556 ] ; 3 uses
  %i.bd = shl i64 %index557, 1
  %next.gep558 = getelementptr i8, ptr %2, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %index557 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load559 = load <8 x i16>, ptr %i.be, align 2
  %wide.load560 = load <8 x i16>, ptr %i.bf, align 2
  %i.bg = getelementptr i8, ptr %next.gep558, i64 16
  store <8 x i16> %wide.load559, ptr %next.gep558, align 2
  store <8 x i16> %wide.load560, ptr %i.bg, align 2
  %index.next561 = add nuw i64 %index557, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next561, %n.vec555
  br i1 %i.bh, label %middle.block562, label %vector.body556, !llvm.loop !7

middle.block562:                                  ; preds = %vector.body556
  %cmp.n563 = icmp eq i64 %n.vec555, %wide.trip.count
  br i1 %cmp.n563, label %.loopexit346.preheader, label %vec.epilog.iter.check567

vec.epilog.iter.check567:                         ; preds = %middle.block562
  %min.epilog.iters.check568 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check568, label %.lr.ph.preheader, label %vec.epilog.ph569, !prof !23

vec.epilog.ph569:                                 ; preds = %vector.main.loop.iter.check552, %vec.epilog.iter.check567
  %vec.epilog.resume.val564 = phi i64 [ %n.vec555, %vec.epilog.iter.check567 ], [ 0, %vector.main.loop.iter.check552 ]
  %n.vec570 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec570, 1
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi     ; 2 uses
  br label %vec.epilog.vector.body571

vec.epilog.vector.body571:                        ; preds = %vec.epilog.vector.body571, %vec.epilog.ph569
  %index572 = phi i64 [ %vec.epilog.resume.val564, %vec.epilog.ph569 ], [ %index.next575, %vec.epilog.vector.body571 ] ; 3 uses
  %i.bk = shl i64 %index572, 1
  %next.gep573 = getelementptr i8, ptr %2, i64 %i.bk
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %index572
  %wide.load574 = load <4 x i16>, ptr %i.bl, align 2
  store <4 x i16> %wide.load574, ptr %next.gep573, align 2
  %index.next575 = add nuw i64 %index572, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next575, %n.vec570
  br i1 %i.bm, label %vec.epilog.middle.block576, label %vec.epilog.vector.body571, !llvm.loop !8

vec.epilog.middle.block576:                       ; preds = %vec.epilog.vector.body571
  %cmp.n577 = icmp eq i64 %n.vec570, %wide.trip.count
  br i1 %cmp.n577, label %.loopexit346.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check565, %vec.epilog.iter.check567, %vec.epilog.middle.block576
  %indvars.iv.ph = phi i64 [ 0, %iter.check565 ], [ %n.vec555, %vec.epilog.iter.check567 ], [ %n.vec570, %vec.epilog.middle.block576 ] ; 4 uses
  %.0219347.ph = phi ptr [ %2, %iter.check565 ], [ %i.bc, %vec.epilog.iter.check567 ], [ %i.bj, %vec.epilog.middle.block576 ] ; 2 uses
  %i.bn = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0219347.prol = phi ptr [ %i.bq, %.lr.ph.prol ], [ %.0219347.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv.prol
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.0219347.prol, i64 2 ; 3 uses
  store i16 %i.bp, ptr %.0219347.prol, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bq, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0219347.unr = phi ptr [ %.0219347.ph, %.lr.ph.preheader ], [ %i.bq, %.lr.ph.prol ]
  %i.br = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bs = icmp ugt i64 %i.br, -8
  br i1 %i.bs, label %.loopexit346.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0219347 = phi ptr [ %i.cx, %.lr.ph ], [ %.0219347.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.0219347, i64 2
  store i16 %i.bu, ptr %.0219347, align 2
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.0219347, i64 4
  store i16 %i.by, ptr %i.bv, align 2
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.0219347, i64 6
  store i16 %i.cc, ptr %i.bz, align 2
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.0219347, i64 8
  store i16 %i.cg, ptr %i.cd, align 2
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.0219347, i64 10
  store i16 %i.ck, ptr %i.ch, align 2
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.0219347, i64 12
  store i16 %i.co, ptr %i.cl, align 2
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %.0219347, i64 14
  store i16 %i.cs, ptr %i.cp, align 2
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.0219347, i64 16 ; 2 uses
  store i16 %i.cw, ptr %i.ct, align 2
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit346.preheader, label %.lr.ph, !llvm.loop !10

bb.s:                                             ; preds = %bb.bq
  %.not.i320 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i320, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.3) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.s, %bb.t
  %.not306 = icmp eq i8 %.3238, 0
  br i1 %.not306, label %bb.br, label %bb.q, !llvm.loop !11

.loopexit346:                                     ; preds = %.loopexit346.preheader, %bb.bq
  %.0198376 = phi i32 [ %.1199, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0200375 = phi i32 [ %.1201, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0202374 = phi i32 [ %.2204, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 7 uses
  %.0205373 = phi i32 [ %.2207, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0208372 = phi i32 [ %.2210, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 3 uses
  %.0211371 = phi i32 [ %.2213, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 3 uses
  %.3217370 = phi i32 [ %.7, %bb.bq ], [ %.3217370.ph, %.loopexit346.preheader ] ; 7 uses
  %.3222369 = phi ptr [ %.17, %bb.bq ], [ %.3222369.ph, %.loopexit346.preheader ]
  %.1236368 = phi i8 [ %.3238, %bb.bq ], [ %.0235, %.loopexit346.preheader ] ; 8 uses
  %.1240367 = phi i8 [ %.3242, %bb.bq ], [ %.0239, %.loopexit346.preheader ] ; 3 uses
  %.1244366 = phi i8 [ %.3246, %bb.bq ], [ %.0243, %.loopexit346.preheader ] ; 3 uses
  %.4266365 = phi i32 [ %.6268, %bb.bq ], [ %.3265, %.loopexit346.preheader ] ; 9 uses
  %.1273364 = phi i32 [ %.7279, %bb.bq ], [ %.3265, %.loopexit346.preheader ] ; 12 uses
  %.sroa.0.0363 = phi ptr [ %.sroa.0.3, %bb.bq ], [ null, %.loopexit346.preheader ] ; 10 uses
  %i.cy = sub nsw i32 %3, %.1273364               ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0                   ; 4 uses
  %i.da = sext i32 %.1273364 to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %2, i64 %i.da ; 2 uses
  %.4223 = select i1 %i.cz, ptr %i.db, ptr %.3222369 ; 21 uses
  %.0194 = call i32 @llvm.smax.i32(i32 %i.cy, i32 0) ; 16 uses
  %i.dc = icmp eq i32 %.0200375, %.2234
  br i1 %i.dc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.loopexit346
  %.not313 = icmp eq i8 %.1244366, 0
  br i1 %.not313, label %bb.bf, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = call i32 @uloc_getDisplayLanguage_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4) ; 3 uses
  %i.de = add nsw i32 %i.dd, %.1273364
  %i.df = icmp sgt i32 %i.dd, 0
  %i.dg = zext i1 %i.df to i8
  br label %bb.bf

bb.w:                                             ; preds = %.loopexit346
  %.not307 = icmp eq i8 %.1240367, 0
  br i1 %.not307, label %bb.bf, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dh = add nsw i32 %.0198376, 1
  switch i32 %.0198376, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit [
    i32 0, label %bb.y
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
  ]

bb.y:                                             ; preds = %bb.x
  %i.di = load i32, ptr %4, align 4
  %i.dj = icmp slt i32 %i.di, 1
  br i1 %i.dj, label %bb.z, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.dk = icmp eq ptr %.4223, null
  %or.cond.i.i = and i1 %i.cz, %i.dk
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  br i1 %i.au, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = call ptr @uloc_getDefault_78() #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.022.i.i = phi ptr [ %i.dl, %bb.ac ], [ %0, %bb.ab ] ; 2 uses
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.dm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i.i) #6
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.dm, ptr nonnull %.022.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #6, !callees !6, !inline_history !0
  %i.dn = load i32, ptr %i.b, align 4
  %i.do = icmp slt i32 %i.dn, 1
  br i1 %i.do, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %4, align 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.dp = load i32, ptr %i.av, align 8
  %.not.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dq = call i32 @u_terminateUChars_78(ptr noundef %.4223, i32 noundef range(i32 0, -2147483648) %.0194, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dr = load ptr, ptr %5, align 8               ; 2 uses
  %i.ds = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.dr, ptr noundef %i.dr, ptr noundef %.4223, i32 noundef range(i32 0, -2147483648) %.0194, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i = phi i32 [ 0, %bb.ae ], [ %i.ds, %bb.ah ], [ %i.dq, %bb.ag ]
  %i.dt = load i8, ptr %i.aw, align 4
  %.not.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i.i.a, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.du) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i.i.a

_ZN6icu_7810CharStringD2Ev.exit.i.i.a:            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i.i.a, %bb.aa
  %.1.i.i.a = phi i32 [ 0, %bb.aa ], [ %.0.i.i, %_ZN6icu_7810CharStringD2Ev.exit.i.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.al:                                            ; preds = %bb.x
  %i.dv = call i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.am:                                            ; preds = %bb.x
  %i.dw = call i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.an:                                            ; preds = %bb.x
  %i.dx = call ptr @uloc_openKeywords_78(ptr noundef %0, ptr noundef nonnull %4) #6 ; 2 uses
  %.not.i321 = icmp eq ptr %.sroa.0.0363, null
  br i1 %.not.i321, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.0363) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %bb.ao, %bb.an, %bb.x
  %.sroa.0.1 = phi ptr [ %.sroa.0.0363, %bb.x ], [ %i.dx, %bb.an ], [ %i.dx, %bb.ao ] ; 3 uses
  %i.dy = call ptr @uenum_next_78(ptr noundef %.sroa.0.1, ptr noundef nonnull %i.f, ptr noundef nonnull %4) #6 ; 4 uses
  %.not = icmp eq ptr %i.dy, null
  br i1 %.not, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit
  %i.dz = load i32, ptr %4, align 4
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.aq, label %uloc_getDisplayKeyword_78.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.eb = icmp eq ptr %.4223, null
  %or.cond.i = and i1 %i.cz, %i.eb
  br i1 %or.cond.i, label %bb.ar, label %uloc_getDisplayKeyword_78.exit

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %4, align 4
  br label %uloc_getDisplayKeyword_78.exit.thread

uloc_getDisplayKeyword_78.exit.thread:            ; preds = %bb.ar, %bb.ap
  store i32 0, ptr %i.f, align 4
  br label %bb.aw

uloc_getDisplayKeyword_78.exit:                   ; preds = %bb.aq
  %i.ec = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dy, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 5 uses
  store i32 %i.ec, ptr %i.f, align 4
  %.not308 = icmp eq i32 %i.ec, 0
  br i1 %.not308, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %uloc_getDisplayKeyword_78.exit
  %i.ed = icmp slt i32 %i.ec, %.0194
  br i1 %i.ed, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %.4223, i64 %i.ee
  store i16 61, ptr %i.ef, align 2
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.eg = phi i32 [ %.pre, %bb.at ], [ %i.ec, %bb.as ]
  %i.eh = add nsw i32 %i.eg, 1                    ; 3 uses
  store i32 %i.eh, ptr %i.f, align 4
  %i.ei = sub nsw i32 %.0194, %i.eh               ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr inbounds [2 x i8], ptr %.4223, i64 %i.ek
  br label %bb.aw

bb.aw:                                            ; preds = %uloc_getDisplayKeyword_78.exit.thread, %bb.au, %bb.av, %uloc_getDisplayKeyword_78.exit
  %.5224 = phi ptr [ %.4223, %uloc_getDisplayKeyword_78.exit ], [ %i.el, %bb.av ], [ %.4223, %bb.au ], [ %.4223, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %.1 = phi i32 [ %.0194, %uloc_getDisplayKeyword_78.exit ], [ %i.ei, %bb.av ], [ 0, %bb.au ], [ %.0194, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %i.em = load i32, ptr %4, align 4
  %i.en = icmp eq i32 %i.em, 15
  br i1 %i.en, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %4, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.eo = call i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef nonnull %i.dy, ptr noundef %1, ptr noundef %.5224, i32 noundef %.1, ptr noundef nonnull %4) ; 2 uses
  %i.ep = load i32, ptr %i.f, align 4             ; 2 uses
  %.not309 = icmp ne i32 %i.ep, 0                 ; 3 uses
  %i.eq = icmp eq i32 %i.eo, 0
  %i.er = sext i1 %i.eq to i32
  %spec.select416 = add nsw i32 %i.ep, %i.er
  %i.es = select i1 %.not309, i32 %spec.select416, i32 0
  %.not417 = select i1 %.not309, i1 %i.cz, i1 false
  %.6225 = select i1 %.not417, ptr %i.db, ptr %.5224
  %.2 = select i1 %.not309, i32 %.0194, i32 %.1
  %i.et = add nsw i32 %i.es, %i.eo
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit: ; preds = %bb.ay, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, %bb.ak, %bb.y, %bb.am, %bb.al
  %storemerge.sink = phi i32 [ 0, %bb.y ], [ %i.dw, %bb.am ], [ %i.dv, %bb.al ], [ %.1.i.i.a, %bb.ak ], [ %i.et, %bb.ay ], [ 0, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 4 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0363, %bb.y ], [ %.sroa.0.0363, %bb.am ], [ %.sroa.0.0363, %bb.al ], [ %.sroa.0.0363, %bb.ak ], [ %.sroa.0.1, %bb.ay ], [ %.sroa.0.1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8 = phi ptr [ %.4223, %bb.y ], [ %.4223, %bb.am ], [ %.4223, %bb.al ], [ %.4223, %bb.ak ], [ %.6225, %bb.ay ], [ %.4223, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 32 uses
  %.1203 = phi i32 [ %.1273364, %bb.y ], [ %.0202374, %bb.am ], [ %.0202374, %bb.al ], [ %.1273364, %bb.ak ], [ %.0202374, %bb.ay ], [ %.0202374, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 3 uses
  %.1196 = phi i1 [ true, %bb.y ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.ay ], [ false, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 2 uses
  %.4 = phi i32 [ %.0194, %bb.y ], [ %.0194, %bb.am ], [ %.0194, %bb.al ], [ %.0194, %bb.ak ], [ %.2, %bb.ay ], [ %.0194, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8436 = ptrtoaddr ptr %.8 to i64               ; 3 uses
  store i32 %storemerge.sink, ptr %i.f, align 4
  %i.eu = icmp sgt i32 %storemerge.sink, 0
  br i1 %i.eu, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  %i.ev = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ew = add nsw i32 %i.ev, %storemerge.sink
  %.not312 = icmp sgt i32 %i.ew, %.4
  br i1 %.not312, label %.loopexit344, label %iter.check503

iter.check503:                                    ; preds = %bb.az
  %i.ex = shl nuw i32 %storemerge.sink, 1
  %.idx = zext i32 %i.ex to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.8, i64 %.idx
  %i.ez = add i64 %.8436, %.idx
  %i.fa = add i64 %.8436, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.fa)
  %i.fb = xor i64 %.8436, -1
  %i.fc = add i64 %umax, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 5 uses
  %min.iters.check437 = icmp ult i64 %i.fc, 14
  br i1 %min.iters.check437, label %.lr.ph351.preheader, label %vector.main.loop.iter.check438

vector.main.loop.iter.check438:                   ; preds = %iter.check503
  %min.iters.check439 = icmp ult i64 %i.fc, 30
  br i1 %min.iters.check439, label %vec.epilog.ph507, label %vector.ph440

vector.ph440:                                     ; preds = %vector.main.loop.iter.check438
  %i.ff = and i64 %i.fe, 8
  %n.vec441 = and i64 %i.fe, -16                  ; 4 uses
  %i.fg = shl i64 %n.vec441, 1
  %i.fh = getelementptr i8, ptr %.8, i64 %i.fg    ; 2 uses
  br label %vector.body448

vector.body448:                                   ; preds = %vector.ph440, %pred.store.continue498
  %index449 = phi i64 [ 0, %vector.ph440 ], [ %index.next499, %pred.store.continue498 ] ; 2 uses
  %i.fi = shl i64 %index449, 1                    ; 16 uses
  %next.gep450 = getelementptr i8, ptr %.8, i64 %i.fi ; 3 uses
  %i.fj = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep451 = getelementptr i8, ptr %i.fj, i64 2
  %i.fk = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep452 = getelementptr i8, ptr %i.fk, i64 4
  %i.fl = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep453 = getelementptr i8, ptr %i.fl, i64 6
  %i.fm = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep454 = getelementptr i8, ptr %i.fm, i64 8
  %i.fn = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep455 = getelementptr i8, ptr %i.fn, i64 10
  %i.fo = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep456 = getelementptr i8, ptr %i.fo, i64 12
  %i.fp = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep457 = getelementptr i8, ptr %i.fp, i64 14
  %i.fq = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep458 = getelementptr i8, ptr %i.fq, i64 16
  %i.fr = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep459 = getelementptr i8, ptr %i.fr, i64 18
  %i.fs = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep460 = getelementptr i8, ptr %i.fs, i64 20
  %i.ft = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep461 = getelementptr i8, ptr %i.ft, i64 22
  %i.fu = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep462 = getelementptr i8, ptr %i.fu, i64 24
  %i.fv = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep463 = getelementptr i8, ptr %i.fv, i64 26
  %i.fw = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep464 = getelementptr i8, ptr %i.fw, i64 28
  %i.fx = getelementptr i8, ptr %.8, i64 %i.fi
  %next.gep465 = getelementptr i8, ptr %i.fx, i64 30
  %i.fy = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load466 = load <8 x i16>, ptr %next.gep450, align 2 ; 2 uses
  %wide.load467 = load <8 x i16>, ptr %i.fy, align 2 ; 2 uses
  %i.fz = icmp eq <8 x i16> %wide.load466, %broadcast.splat ; 2 uses
  %i.ga = icmp eq <8 x i16> %wide.load467, %broadcast.splat ; 2 uses
  %i.gb = icmp eq <8 x i16> %wide.load466, %broadcast.splat443
  %i.gc = icmp eq <8 x i16> %wide.load467, %broadcast.splat443
  %i.gd = or <8 x i1> %i.gb, %i.fz                ; 8 uses
  %i.ge = or <8 x i1> %i.gc, %i.ga                ; 8 uses
  %predphi = select <8 x i1> %i.fz, <8 x i16> %broadcast.splat445, <8 x i16> %broadcast.splat447 ; 8 uses
  %predphi468 = select <8 x i1> %i.ga, <8 x i16> %broadcast.splat445, <8 x i16> %broadcast.splat447 ; 8 uses
  %i.gf = extractelement <8 x i1> %i.gd, i64 0
  br i1 %i.gf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body448
  %i.gg = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.gg, ptr %next.gep450, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body448
  %i.gh = extractelement <8 x i1> %i.gd, i64 1
  br i1 %i.gh, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue
  %i.gi = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.gi, ptr %next.gep451, align 2
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue
  %i.gj = extractelement <8 x i1> %i.gd, i64 2
  br i1 %i.gj, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gk = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.gk, ptr %next.gep452, align 2
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.gl = extractelement <8 x i1> %i.gd, i64 3
  br i1 %i.gl, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.gm = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.gm, ptr %next.gep453, align 2
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.gn = extractelement <8 x i1> %i.gd, i64 4
  br i1 %i.gn, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.go = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.go, ptr %next.gep454, align 2
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.gp = extractelement <8 x i1> %i.gd, i64 5
  br i1 %i.gp, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.gq = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.gq, ptr %next.gep455, align 2
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.gr = extractelement <8 x i1> %i.gd, i64 6
  br i1 %i.gr, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.gs = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.gs, ptr %next.gep456, align 2
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.gt = extractelement <8 x i1> %i.gd, i64 7
  br i1 %i.gt, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.gu = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.gu, ptr %next.gep457, align 2
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.gv = extractelement <8 x i1> %i.ge, i64 0
  br i1 %i.gv, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.gw = extractelement <8 x i16> %predphi468, i64 0
  store i16 %i.gw, ptr %next.gep458, align 2
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %i.gx = extractelement <8 x i1> %i.ge, i64 1
  br i1 %i.gx, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %i.gy = extractelement <8 x i16> %predphi468, i64 1
  store i16 %i.gy, ptr %next.gep459, align 2
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %i.gz = extractelement <8 x i1> %i.ge, i64 2
  br i1 %i.gz, label %pred.store.if487, label %pred.store.continue488

pred.store.if487:                                 ; preds = %pred.store.continue486
  %i.ha = extractelement <8 x i16> %predphi468, i64 2
  store i16 %i.ha, ptr %next.gep460, align 2
  br label %pred.store.continue488

pred.store.continue488:                           ; preds = %pred.store.if487, %pred.store.continue486
  %i.hb = extractelement <8 x i1> %i.ge, i64 3
  br i1 %i.hb, label %pred.store.if489, label %pred.store.continue490

pred.store.if489:                                 ; preds = %pred.store.continue488
  %i.hc = extractelement <8 x i16> %predphi468, i64 3
  store i16 %i.hc, ptr %next.gep461, align 2
  br label %pred.store.continue490

pred.store.continue490:                           ; preds = %pred.store.if489, %pred.store.continue488
  %i.hd = extractelement <8 x i1> %i.ge, i64 4
  br i1 %i.hd, label %pred.store.if491, label %pred.store.continue492

pred.store.if491:                                 ; preds = %pred.store.continue490
  %i.he = extractelement <8 x i16> %predphi468, i64 4
  store i16 %i.he, ptr %next.gep462, align 2
  br label %pred.store.continue492

pred.store.continue492:                           ; preds = %pred.store.if491, %pred.store.continue490
  %i.hf = extractelement <8 x i1> %i.ge, i64 5
  br i1 %i.hf, label %pred.store.if493, label %pred.store.continue494
end_hunk_0
begin_hunk_1_@uloc_getDisplayName_78:bb.a
  store i32 0, ptr %4, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.2197, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jn = icmp ne i8 %.3246, 0                    ; 3 uses
  %i.jo = icmp ne i8 %.3242, 0
  %or.cond8 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond8, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jp = add nsw i32 %.3217370, 3                ; 3 uses
  %i.jq = icmp eq i32 %.0200375, 0
  %i.jr = load i32, ptr %i.d, align 4
  %i.js = select i1 %i.jq, i32 %.2261, i32 %i.jr  ; 2 uses
  %i.jt = sub nsw i32 %i.js, %i.jp                ; 6 uses
  %i.ju = add nsw i32 %i.jt, %.5277               ; 4 uses
  %.not316 = icmp sgt i32 %i.ju, %3
  br i1 %.not316, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jv = sext i32 %.5277 to i64                  ; 2 uses
  %i.jw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.jv ; 7 uses
  %i.jx = icmp sgt i32 %i.jt, 0
  br i1 %i.jx, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bk
  %i.jy = sext i32 %i.jp to i64                   ; 7 uses
  %i.jz = zext nneg i32 %i.jt to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.jt, 4
  br i1 %min.iters.check, label %.lr.ph360.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ka = shl nsw i64 %i.jv, 1
  %i.kb = add i64 %i.ax, %i.ka
  %i.kc = shl nsw i64 %i.jy, 1
  %i.kd = sub i64 %i.kc, %i.kb
  %diff.check = icmp ugt i64 %i.kd, -32
  br i1 %diff.check, label %.lr.ph360.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check423 = icmp ult i32 %i.jt, 16
  br i1 %min.iters.check423, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ke = and i64 %i.jz, 12
  %n.vec = and i64 %i.jz, 2147483632              ; 6 uses
  %i.kf = add nsw i64 %n.vec, %i.jy               ; 2 uses
  %i.kg = trunc nuw nsw i64 %n.vec to i32
  %i.kh = shl nuw nsw i64 %n.vec, 1
  %i.ki = getelementptr i8, ptr %i.jw, i64 %i.kh  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0269, i64 %i.jy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.jw, i64 %i.kj ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2
  %wide.load424 = load <8 x i16>, ptr %i.kk, align 2
  %i.kl = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2
  store <8 x i16> %wide.load424, ptr %i.kl, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jz
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ke, 0
  br i1 %min.epilog.iters.check, label %.lr.ph360.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.jz, 2147483644           ; 5 uses
  %i.kn = add nsw i64 %n.vec427, %i.jy            ; 2 uses
  %i.ko = trunc nuw nsw i64 %n.vec427 to i32
  %i.kp = shl nuw nsw i64 %n.vec427, 1
  %i.kq = getelementptr i8, ptr %i.jw, i64 %i.kp  ; 2 uses
  %invariant.gep593 = getelementptr [2 x i8], ptr %.0269, i64 %i.jy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next431, %vec.epilog.vector.body ] ; 3 uses
  %i.kr = shl i64 %index428, 1
  %next.gep429 = getelementptr i8, ptr %i.jw, i64 %i.kr
  %gep594 = getelementptr [2 x i8], ptr %invariant.gep593, i64 %index428
  %wide.load430 = load <4 x i16>, ptr %gep594, align 2
  store <4 x i16> %wide.load430, ptr %next.gep429, align 2
  %index.next431 = add nuw i64 %index428, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next431, %n.vec427
  br i1 %i.ks, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n432 = icmp eq i64 %n.vec427, %i.jz
  br i1 %cmp.n432, label %.loopexit.loopexit, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv386.ph = phi i64 [ %i.jy, %iter.check ], [ %i.jy, %vector.memcheck ], [ %i.kf, %vec.epilog.iter.check ], [ %i.kn, %vec.epilog.middle.block ]
  %.0359.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.kg, %vec.epilog.iter.check ], [ %i.ko, %vec.epilog.middle.block ]
  %.14357.ph = phi ptr [ %i.jw, %iter.check ], [ %i.jw, %vector.memcheck ], [ %i.ki, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %.lr.ph360
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph360 ], [ %indvars.iv386.ph, %.lr.ph360.preheader ] ; 2 uses
  %.0359 = phi i32 [ %i.kw, %.lr.ph360 ], [ %.0359.ph, %.lr.ph360.preheader ]
  %.14357 = phi ptr [ %i.kv, %.lr.ph360 ], [ %.14357.ph, %.lr.ph360.preheader ] ; 2 uses
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.kt = getelementptr inbounds [2 x i8], ptr %.0269, i64 %indvars.iv386
  %i.ku = load i16, ptr %i.kt, align 2
  %i.kv = getelementptr inbounds nuw i8, ptr %.14357, i64 2 ; 2 uses
  store i16 %i.ku, ptr %.14357, align 2
  %i.kw = add nuw nsw i32 %.0359, 1               ; 2 uses
  %exitcond389.not = icmp eq i32 %i.kw, %i.jt
  br i1 %exitcond389.not, label %.loopexit.loopexit, label %.lr.ph360, !llvm.loop !18

bb.bl:                                            ; preds = %bb.bi
  %i.kx = icmp eq i32 %.0200375, 0
  br i1 %i.kx, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ky = icmp sgt i32 %.5277, 0
  br i1 %i.ky, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.kz = select i1 %i.jn, i32 %.2213, i32 %.2207 ; 5 uses
  %i.la = icmp eq i32 %.4266365, 0
  %or.cond10.not = select i1 %i.l, i1 true, i1 %i.la
  br i1 %or.cond10.not, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lb = add nsw i32 %i.kz, %.4266365
  %.not315 = icmp sgt i32 %i.lb, %3
  br i1 %.not315, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lc = select i1 %i.jn, i32 %.2210, i32 %.2204
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ld
  %i.lf = call ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.le, i32 noundef %i.kz) #6 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph360, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next387.lcssa = phi i64 [ %i.kn, %vec.epilog.middle.block ], [ %i.kf, %middle.block ], [ %indvars.iv.next387, %.lr.ph360 ]
  %.lcssa421 = phi ptr [ %i.kq, %vec.epilog.middle.block ], [ %i.ki, %middle.block ], [ %i.kv, %.lr.ph360 ]
  %i.lg = trunc nsw i64 %indvars.iv.next387.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bk, %bb.bo, %bb.bl, %bb.bj, %bb.bn, %bb.bp, %bb.bm
  %.6278 = phi i32 [ %.5277, %bb.bm ], [ %i.kz, %bb.bo ], [ %i.kz, %bb.bp ], [ 0, %bb.bl ], [ %i.kz, %bb.bn ], [ %i.ju, %bb.bj ], [ %i.ju, %bb.bk ], [ %i.ju, %.loopexit.loopexit ]
  %.5267 = phi i32 [ %.4266365, %bb.bm ], [ 0, %bb.bo ], [ %.4266365, %bb.bp ], [ 0, %bb.bl ], [ %.4266365, %bb.bn ], [ %.4266365, %bb.bj ], [ %.4266365, %bb.bk ], [ %.4266365, %.loopexit.loopexit ]
  %.2237 = phi i8 [ %.1236368, %bb.bm ], [ 1, %bb.bo ], [ %.1236368, %bb.bp ], [ %.1236368, %bb.bl ], [ %.1236368, %bb.bn ], [ %.1236368, %bb.bj ], [ %.1236368, %bb.bk ], [ %.1236368, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.bm ], [ %.13, %bb.bo ], [ %.13, %bb.bp ], [ %.13, %bb.bl ], [ %.13, %bb.bn ], [ %.13, %bb.bj ], [ %i.jw, %bb.bk ], [ %.lcssa421, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.3217370, %bb.bm ], [ %.3217370, %bb.bo ], [ %.3217370, %bb.bp ], [ %.3217370, %bb.bl ], [ %.3217370, %bb.bn ], [ %i.js, %bb.bj ], [ %i.jp, %bb.bk ], [ %i.lg, %.loopexit.loopexit ]
  %i.lh = add nuw nsw i32 %.0200375, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit, %bb.bh
  %.7279 = phi i32 [ %.6278, %.loopexit ], [ %.5277, %bb.bh ] ; 2 uses
  %.6268 = phi i32 [ %.5267, %.loopexit ], [ %.4266365, %bb.bh ] ; 2 uses
  %.3238 = phi i8 [ %.2237, %.loopexit ], [ %.1236368, %bb.bh ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.bh ]
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.3217370, %bb.bh ]
  %.1201 = phi i32 [ %i.lh, %.loopexit ], [ %.0200375, %bb.bh ] ; 2 uses
  %i.li = icmp slt i32 %.1201, 2
  br i1 %i.li, label %.loopexit346, label %bb.s, !llvm.loop !19

bb.br:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.lj = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7279, ptr noundef nonnull %4) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.p, %bb.i, %bb.a, %bb.b, %bb.br, %bb.e
  %.2229 = phi i32 [ 0, %bb.i ], [ 0, %bb.e ], [ %i.lj, %bb.br ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.2229
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
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

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @u_strstr_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @u_strncmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @uloc_openKeywords_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uenum_next_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @uloc_getDisplayKeyword_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %4, 0
  %i.g = icmp eq ptr %3, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 0, ptr %i.k, align 8
  store i8 0, ptr %i.h, align 1
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1
  %.not46 = icmp eq i8 %i.l, 0
  br i1 %.not46, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  call void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, ptr noundef %0, i64 %i.m, ptr nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #6
  %i.n = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(60) %7) #6 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.q) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.g, %bb.f
  %i.r = call i32 @uprv_stricmp_78(ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kCurrencyE) #6
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.t = call ptr @ures_open_78(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef nonnull %5) #6 ; 3 uses
  %i.u = call ptr @ures_getByKey_78(ptr noundef %i.t, ptr noundef nonnull @_ZN12_GLOBAL__N_112_kCurrenciesE, ptr noundef null, ptr noundef nonnull %5) #6 ; 3 uses
  %i.v = load ptr, ptr %6, align 8
  %i.w = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.u, ptr noundef %i.v, ptr noundef null, ptr noundef nonnull %5) #6 ; 3 uses
  %i.x = call ptr @ures_getStringByIndex_78(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #6 ; 2 uses
  %i.y = load i32, ptr %5, align 4                ; 2 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i32 %i.y, 2
  br i1 %i.aa, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  store i32 -127, ptr %5, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.not48 = icmp eq ptr %i.x, null
  br i1 %.not48, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.a, align 4             ; 3 uses
  %.not50 = icmp sgt i32 %i.ab, %4
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = call ptr @u_memcpy_78(ptr noundef %3, ptr noundef nonnull %i.x, i32 noundef %i.ab) #6 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %i.ad, ptr noundef nonnull %5) #6
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  store i32 15, ptr %5, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.k, align 8             ; 3 uses
  %.not49 = icmp sgt i32 %i.af, %4
  br i1 %.not49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr %6, align 8
  call void @u_charsToUChars_78(ptr noundef %i.ag, ptr noundef %3, i32 noundef %i.af) #6
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %i.ah, ptr noundef nonnull %5) #6
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 15, ptr %5, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.t, %bb.s, %bb.q, %bb.p
  %.0 = phi i32 [ %i.ae, %bb.p ], [ %i.ab, %bb.q ], [ %i.ai, %bb.s ], [ %i.af, %bb.t ], [ 0, %bb.l ]
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @ures_close_78(ptr noundef nonnull %i.w) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.u, %bb.v
  %.not.i51 = icmp eq ptr %i.u, null
  br i1 %.not.i51, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit52, label %bb.w

bb.w:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.u) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit52

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit52: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.w
  %.not.i53 = icmp eq ptr %i.t, null
  br i1 %.not.i53, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit54, label %bb.x

bb.x:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit52
  call void @ures_close_78(ptr noundef nonnull %i.t) #6
end_hunk_1
