Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locdispnames?download=true
inline.NumInlined: 110
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uloc_getDisplayLanguage_78:bb.a
  %.024.i = phi ptr [ %i.h, %bb.f ], [ %0, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i) #9
  call void @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.024.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !callees !12, !inline_history !0
  %i.j = load i32, ptr %i.a, align 4, !tbaa !10
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.n

bb.i:                                             ; preds = %bb.m, %bb.l, %bb.k
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
  br i1 %.not.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.o, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.m unwind label %bb.i       ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.s = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.t = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kLanguagesE, ptr noundef null, ptr noundef %i.s, ptr noundef %i.s, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.t, %bb.m ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.v = load i8, ptr %i.u, align 4, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.w)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %.0.i, %_ZN6icu_7810CharStringD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.a, %bb.q
  %.2.i = phi i32 [ %.1.i, %bb.q ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %.2.i
}

declare noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale16getDisplayScriptERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
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
  %i.v = call i32 @uloc_getDisplayScript_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
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
  %i.as = call i32 @uloc_getDisplayScript_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
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
define i32 @uloc_getDisplayScript_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !10
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.g = icmp slt i32 %3, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %3, 0                        ; 2 uses
  %i.i = icmp eq ptr %2, null
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.aq

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @uloc_getDefault_78()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.024.i = phi ptr [ %i.k, %bb.e ], [ %0, %bb.d ] ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i) #9
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, i64 %i.l, ptr nonnull %.024.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c), !callees !12, !inline_history !0
  %i.m = load i32, ptr %i.c, align 4, !tbaa !10
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.d, align 4, !tbaa !10
  br label %bb.l

common.resume:                                    ; preds = %bb.ai, %bb.t, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.ah, %bb.t ], [ %i.bd, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.k, %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = invoke i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.l unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.t = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_119_kScriptsStandAloneE, ptr noundef null, ptr noundef %i.s, ptr noundef %i.s, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.r, %bb.j ], [ %i.t, %bb.k ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.v = load i8, ptr %i.u, align 4, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %7, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.w)
          to label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #10
  unreachable

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.z = load i32, ptr %i.d, align 4              ; 3 uses
  %i.aa = icmp ne i32 %i.z, 15
  %or.cond.not = select i1 %i.h, i1 true, i1 %i.aa
  br i1 %or.cond.not, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit
  %i.ab = load i32, ptr %4, align 4, !tbaa !10
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br i1 %i.j, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ad = call ptr @uloc_getDefault_78()
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.024.i27 = phi ptr [ %i.ad, %bb.q ], [ %0, %bb.p ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i27) #9
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, i64 %i.ae, ptr nonnull %.024.i27, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !callees !12, !inline_history !0
  %i.af = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.x

bb.t:                                             ; preds = %bb.w, %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %common.resume

bb.u:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !17
  %.not.i32 = icmp eq i32 %i.aj, 0
  br i1 %.not.i32, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = invoke i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.x unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.al = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.am = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %2, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %.0.i28 = phi i32 [ 0, %bb.s ], [ %i.ak, %bb.v ], [ %i.am, %bb.w ]
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !19
  %.not.i.i.i.i29 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i29, label %_ZN6icu_7810CharStringD2Ev.exit.i30, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = load ptr, ptr %6, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.ap)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i30 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i30:              ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33: ; preds = %bb.o, %_ZN6icu_7810CharStringD2Ev.exit.i30
  %.2.i25 = phi i32 [ %.0.i28, %_ZN6icu_7810CharStringD2Ev.exit.i30 ], [ 0, %bb.o ]
  %i.as = call i32 @llvm.smax.i32(i32 %.2.i25, i32 %.0.i)
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit
  %i.at = icmp eq i32 %i.z, -127
  br i1 %i.at, label %bb.ab, label %bb.aq

bb.ab:                                            ; preds = %bb.aa
  %i.au = load i32, ptr %4, align 4, !tbaa !10
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.ac, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aw = icmp ne i32 %3, 0
  %i.ax = icmp eq ptr %2, null
  %or.cond.i35 = and i1 %i.ax, %i.aw
  br i1 %or.cond.i35, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ac
  %i.ay = icmp eq ptr %0, null
  br i1 %i.ay, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.az = call ptr @uloc_getDefault_78()
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.024.i36 = phi ptr [ %i.az, %bb.af ], [ %0, %bb.ae ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i36) #9
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.ba, ptr nonnull %.024.i36, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !callees !12, !inline_history !0
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.am

bb.ai:                                            ; preds = %bb.al, %bb.ak
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %common.resume

bb.aj:                                            ; preds = %bb.ag
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !17
  %.not.i41 = icmp eq i32 %i.bf, 0
  br i1 %.not.i41, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bg = invoke i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.am unwind label %bb.ai

bb.al:                                            ; preds = %bb.aj
  %i.bh = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bi = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.bh, ptr noundef %i.bh, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %.0.i37 = phi i32 [ 0, %bb.ah ], [ %i.bg, %bb.ak ], [ %i.bi, %bb.al ]
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !19
  %.not.i.i.i.i38 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i38, label %_ZN6icu_7810CharStringD2Ev.exit.i39.a, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bl = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.bl)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i39.a unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i39.a:            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i39.a, %bb.ad
  %.1.i40.a = phi i32 [ 0, %bb.ad ], [ %.0.i37, %_ZN6icu_7810CharStringD2Ev.exit.i39.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

bb.aq:                                            ; preds = %.thread, %bb.aa
  %.1.i4553 = phi i32 [ 0, %.thread ], [ %.0.i, %bb.aa ]
  %i.bo = phi i32 [ 1, %.thread ], [ %i.z, %bb.aa ]
  store i32 %i.bo, ptr %4, align 4, !tbaa !10
  br label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42

_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42: ; preds = %bb.ap, %bb.ab, %bb.aq, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33
  %.0 = phi i32 [ %i.as, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit33 ], [ %.1.i4553, %bb.aq ], [ %.1.i40.a, %bb.ap ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42
  %.1 = phi i32 [ %.0, %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit42 ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayCountryERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
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
  %i.v = call i32 @uloc_getDisplayCountry_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
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
  %i.as = call i32 @uloc_getDisplayCountry_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
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
define i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
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
  call void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.i, ptr nonnull %.024.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !callees !12, !inline_history !0
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
  %i.q = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kCountriesE, ptr noundef null, ptr noundef %i.p, ptr noundef %i.p, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
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
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale17getDisplayVariantERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
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
  %i.v = call i32 @uloc_getDisplayVariant_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
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
  %i.as = call i32 @uloc_getDisplayVariant_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
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
define i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_127_getDisplayNameForComponentEPKcS1_PDsiPFN6icu_7810CharStringESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeES1_SA_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
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
  %i.a = ptrtoaddr ptr %2 to i64
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
  br i1 %i.g, label %bb.cr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4, !tbaa !10
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.cr

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
  br label %bb.cr

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
  br label %bb.cs

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cr

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
  br label %bb.cr

.thread347:                                       ; preds = %bb.w, %bb.v, %bb.t
  %.0281 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.t ], [ %i.p, %bb.v ], [ %i.p, %bb.w ] ; 15 uses
  %.2276 = phi i32 [ 0, %bb.t ], [ %.0274, %bb.v ], [ %.0274, %bb.w ]
  %.2273 = phi i32 [ 5, %bb.t ], [ %.0271, %bb.v ], [ %.0271, %bb.w ]
  %.2270 = phi i16 [ 40, %bb.t ], [ 40, %bb.v ], [ -248, %bb.w ] ; 3 uses
  %.2267 = phi i16 [ 91, %bb.t ], [ 91, %bb.v ], [ -197, %bb.w ] ; 3 uses
  %.2264 = phi i16 [ 41, %bb.t ], [ 41, %bb.v ], [ -247, %bb.w ] ; 3 uses
  %.2261 = phi i16 [ 93, %bb.t ], [ 93, %bb.v ], [ -195, %bb.w ] ; 3 uses
  %.2246.shrunk = phi i1 [ false, %bb.t ], [ %i.az, %bb.v ], [ %i.az, %bb.w ]
  %.0281469 = ptrtoaddr ptr %.0281 to i64
  %.2246 = zext i1 %.2246.shrunk to i32
  %i.bb = icmp eq ptr %0, null
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.be = sub i64 %i.a, %.0281469                 ; 2 uses
  %i.bf = add i64 %i.be, -1
  %diff.check628 = icmp ult i64 %i.bf, 31
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.2270, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert520 = insertelement <8 x i16> poison, i16 %.2264, i64 0
  %broadcast.splat521 = shufflevector <8 x i16> %broadcast.splatinsert520, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert522 = insertelement <8 x i16> poison, i16 %.2267, i64 0
  %broadcast.splat523 = shufflevector <8 x i16> %broadcast.splatinsert522, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert524 = insertelement <8 x i16> poison, i16 %.2261, i64 0
  %broadcast.splat525 = shufflevector <8 x i16> %broadcast.splatinsert524, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert587 = insertelement <8 x i16> poison, i16 %.2270, i64 0
  %broadcast.splat588 = shufflevector <8 x i16> %broadcast.splatinsert587, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert589 = insertelement <8 x i16> poison, i16 %.2264, i64 0
  %broadcast.splat590 = shufflevector <8 x i16> %broadcast.splatinsert589, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert591 = insertelement <8 x i16> poison, i16 %.2267, i64 0
  %broadcast.splat592 = shufflevector <8 x i16> %broadcast.splatinsert591, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert593 = insertelement <8 x i16> poison, i16 %.2261, i64 0
  %broadcast.splat594 = shufflevector <8 x i16> %broadcast.splatinsert593, <8 x i16> poison, <8 x i32> zeroinitializer
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

.loopexit361.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block640, %vec.epilog.middle.block654, %.preheader360, %bb.y, %bb.z
  %.3219415.ph = phi i32 [ %.3277, %bb.z ], [ 0, %bb.y ], [ 0, %.preheader360 ], [ %.3277, %middle.block640 ], [ %.3277, %vec.epilog.middle.block654 ], [ %.3277, %.lr.ph ], [ %.3277, %.lr.ph.prol.loopexit ]
  %.3224414.ph = phi ptr [ %2, %bb.z ], [ %2, %bb.y ], [ %2, %.preheader360 ], [ %i.bj, %middle.block640 ], [ %i.bq, %vec.epilog.middle.block654 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.de, %.lr.ph ]
  br label %.loopexit361

.preheader360:                                    ; preds = %bb.z
  %i.bg = icmp sgt i32 %.3277, 0
  br i1 %i.bg, label %iter.check643, label %.loopexit361.preheader

iter.check643:                                    ; preds = %.preheader360
  %wide.trip.count = zext nneg i32 %.3277 to i64  ; 8 uses
  %min.iters.check629 = icmp ult i32 %.3277, 4
  %or.cond658 = select i1 %min.iters.check629, i1 true, i1 %diff.check628
  br i1 %or.cond658, label %.lr.ph.preheader, label %vector.main.loop.iter.check630

vector.main.loop.iter.check630:                   ; preds = %iter.check643
  %min.iters.check631 = icmp ult i32 %.3277, 16
  br i1 %min.iters.check631, label %vec.epilog.ph647, label %vector.ph632

vector.ph632:                                     ; preds = %vector.main.loop.iter.check630
  %i.bh = and i64 %wide.trip.count, 12
  %n.vec633 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.bi = shl nuw nsw i64 %n.vec633, 1
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi     ; 2 uses
  br label %vector.body634

vector.body634:                                   ; preds = %vector.ph632, %vector.body634
  %index635 = phi i64 [ 0, %vector.ph632 ], [ %index.next639, %vector.body634 ] ; 3 uses
  %i.bk = shl i64 %index635, 1
  %next.gep636 = getelementptr i8, ptr %2, i64 %i.bk ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index635 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load637 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !44
  %wide.load638 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !44
  %i.bn = getelementptr i8, ptr %next.gep636, i64 16
  store <8 x i16> %wide.load637, ptr %next.gep636, align 2, !tbaa !44
  store <8 x i16> %wide.load638, ptr %i.bn, align 2, !tbaa !44
  %index.next639 = add nuw i64 %index635, 16      ; 2 uses
  %i.bo = icmp eq i64 %index.next639, %n.vec633
  br i1 %i.bo, label %middle.block640, label %vector.body634, !llvm.loop !27

middle.block640:                                  ; preds = %vector.body634
  %cmp.n641 = icmp eq i64 %n.vec633, %wide.trip.count
  br i1 %cmp.n641, label %.loopexit361.preheader, label %vec.epilog.iter.check645

vec.epilog.iter.check645:                         ; preds = %middle.block640
  %min.epilog.iters.check646 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check646, label %.lr.ph.preheader, label %vec.epilog.ph647, !prof !48

vec.epilog.ph647:                                 ; preds = %vector.main.loop.iter.check630, %vec.epilog.iter.check645
  %vec.epilog.resume.val642 = phi i64 [ %n.vec633, %vec.epilog.iter.check645 ], [ 0, %vector.main.loop.iter.check630 ]
  %n.vec648 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bp = shl nuw nsw i64 %n.vec648, 1
  %i.bq = getelementptr i8, ptr %2, i64 %i.bp     ; 2 uses
  br label %vec.epilog.vector.body649

vec.epilog.vector.body649:                        ; preds = %vec.epilog.vector.body649, %vec.epilog.ph647
  %index650 = phi i64 [ %vec.epilog.resume.val642, %vec.epilog.ph647 ], [ %index.next653, %vec.epilog.vector.body649 ] ; 3 uses
  %i.br = shl i64 %index650, 1
  %next.gep651 = getelementptr i8, ptr %2, i64 %i.br
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index650
  %wide.load652 = load <4 x i16>, ptr %i.bs, align 2, !tbaa !44
  store <4 x i16> %wide.load652, ptr %next.gep651, align 2, !tbaa !44
  %index.next653 = add nuw i64 %index650, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next653, %n.vec648
  br i1 %i.bt, label %vec.epilog.middle.block654, label %vec.epilog.vector.body649, !llvm.loop !28

vec.epilog.middle.block654:                       ; preds = %vec.epilog.vector.body649
  %cmp.n655 = icmp eq i64 %n.vec648, %wide.trip.count
  br i1 %cmp.n655, label %.loopexit361.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check643, %vec.epilog.iter.check645, %vec.epilog.middle.block654
  %indvars.iv.ph = phi i64 [ 0, %iter.check643 ], [ %n.vec633, %vec.epilog.iter.check645 ], [ %n.vec648, %vec.epilog.middle.block654 ] ; 4 uses
  %.0221393.ph = phi ptr [ %2, %iter.check643 ], [ %i.bj, %vec.epilog.iter.check645 ], [ %i.bq, %vec.epilog.middle.block654 ] ; 2 uses
  %i.bu = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0221393.prol = phi ptr [ %i.bx, %.lr.ph.prol ], [ %.0221393.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv.prol
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %.0221393.prol, i64 2 ; 3 uses
  store i16 %i.bw, ptr %.0221393.prol, align 2, !tbaa !44
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0221393.unr = phi ptr [ %.0221393.ph, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.prol ]
  %i.by = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bz = icmp ugt i64 %i.by, -8
  br i1 %i.bz, label %.loopexit361.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0221393 = phi ptr [ %i.de, %.lr.ph ], [ %.0221393.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %.0221393, i64 2
  store i16 %i.cb, ptr %.0221393, align 2, !tbaa !44
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %.0221393, i64 4
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !44
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %.0221393, i64 6
  store i16 %i.cj, ptr %i.cg, align 2, !tbaa !44
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %.0221393, i64 8
  store i16 %i.cn, ptr %i.ck, align 2, !tbaa !44
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %.0221393, i64 10
  store i16 %i.cr, ptr %i.co, align 2, !tbaa !44
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %.0221393, i64 12
  store i16 %i.cv, ptr %i.cs, align 2, !tbaa !44
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %.0221393, i64 14
  store i16 %i.cz, ptr %i.cw, align 2, !tbaa !44
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 14
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %.0221393, i64 16 ; 2 uses
  store i16 %i.dd, ptr %i.da, align 2, !tbaa !44
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit361.preheader, label %.lr.ph, !llvm.loop !30

bb.aa:                                            ; preds = %bb.co
  %i.df = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i339 = icmp eq ptr %i.df, null
  br i1 %.not.i339, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @uenum_close_78(ptr noundef nonnull %i.df)
          to label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %.not319 = icmp eq i8 %.3250, 0
  br i1 %.not319, label %bb.cq, label %bb.y, !llvm.loop !31

.loopexit361:                                     ; preds = %.loopexit361.preheader, %bb.co
  %.0200421 = phi i32 [ %.1201, %bb.co ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0202420 = phi i32 [ %.1203, %bb.co ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0204419 = phi i32 [ %.2206, %bb.co ], [ 0, %.loopexit361.preheader ] ; 7 uses
  %.0207418 = phi i32 [ %.2209, %bb.co ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0210417 = phi i32 [ %.2212, %bb.co ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.0213416 = phi i32 [ %.2215, %bb.co ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.3219415 = phi i32 [ %.7, %bb.co ], [ %.3219415.ph, %.loopexit361.preheader ] ; 7 uses
  %.3224414 = phi ptr [ %.17, %bb.co ], [ %.3224414.ph, %.loopexit361.preheader ]
  %.1248413 = phi i8 [ %.3250, %bb.co ], [ %.0247, %.loopexit361.preheader ] ; 8 uses
  %.1252412 = phi i8 [ %.3254, %bb.co ], [ %.0251, %.loopexit361.preheader ] ; 3 uses
  %.1256411 = phi i8 [ %.3258, %bb.co ], [ %.0255, %.loopexit361.preheader ] ; 3 uses
  %.4278410 = phi i32 [ %.6280, %bb.co ], [ %.3277, %.loopexit361.preheader ] ; 9 uses
  %.1285409 = phi i32 [ %.7291, %bb.co ], [ %.3277, %.loopexit361.preheader ] ; 12 uses
  %i.di = sub nsw i32 %3, %.1285409               ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0                   ; 4 uses
  %i.dk = sext i32 %.1285409 to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dk ; 2 uses
  %.4225 = select i1 %i.dj, ptr %i.dl, ptr %.3224414 ; 21 uses
  %.0196 = call i32 @llvm.smax.i32(i32 %i.di, i32 0) ; 16 uses
  %i.dm = icmp eq i32 %.0202420, %.2246
  br i1 %i.dm, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.loopexit361
  %.not329 = icmp eq i8 %.1256411, 0
  br i1 %.not329, label %bb.cd, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = invoke i32 @uloc_getDisplayLanguage_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %bb.af unwind label %bb.ag     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.do = add nsw i32 %i.dn, %.1285409
  %i.dp = icmp sgt i32 %i.dn, 0
  %i.dq = zext i1 %i.dp to i8
  br label %bb.cd

bb.ag:                                            ; preds = %bb.cn, %bb.ae
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ah:                                            ; preds = %.loopexit361
  %.not320 = icmp eq i8 %.1252412, 0
  br i1 %.not320, label %bb.cd, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.ds = add nsw i32 %.0200421, 1
  switch i32 %.0200421, label %._crit_edge [
    i32 0, label %bb.aj
    i32 1, label %bb.ay
    i32 2, label %bb.az
    i32 3, label %bb.ba
  ]

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load ptr, ptr %8, align 8, !tbaa !26
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load i32, ptr %4, align 4, !tbaa !10
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.ak, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.dv = icmp eq ptr %.4225, null
  %or.cond.i.i = and i1 %i.dj, %i.dv
  br i1 %or.cond.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.aw

bb.am:                                            ; preds = %bb.ak
  br i1 %i.bb, label %bb.an, label %.noexc

bb.an:                                            ; preds = %bb.am
  %i.dw = invoke ptr @uloc_getDefault_78()
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.an, %bb.am
  %.024.i.i = phi ptr [ %0, %bb.am ], [ %i.dw, %bb.an ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i.i) #9
  invoke void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.dx, ptr nonnull %.024.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc340 unwind label %bb.ax

.noexc340:                                        ; preds = %.noexc
  %i.dy = load i32, ptr %i.b, align 4, !tbaa !10
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.noexc340
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.at

bb.ap:                                            ; preds = %bb.as, %bb.ar
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.body

bb.aq:                                            ; preds = %.noexc340
  %i.eb = load i32, ptr %i.bc, align 8, !tbaa !17
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ec = invoke i32 @u_terminateUChars_78(ptr noundef %.4225, i32 noundef range(i32 0, -2147483648) %.0196, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.at unwind label %bb.ap

bb.as:                                            ; preds = %bb.aq
  %i.ed = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ee = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.ed, ptr noundef %i.ed, ptr noundef %.4225, i32 noundef range(i32 0, -2147483648) %.0196, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.at unwind label %bb.ap

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %.0.i.i = phi i32 [ 0, %bb.ao ], [ %i.ec, %bb.ar ], [ %i.ee, %bb.as ]
  %i.ef = load i8, ptr %i.bd, align 4, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i.i.a, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.eg)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i.i.a unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i.i.a:            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i.i.a, %bb.al
  %.1.i.i.a = phi i32 [ 0, %bb.al ], [ %.0.i.i, %_ZN6icu_7810CharStringD2Ev.exit.i.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.ax:                                            ; preds = %bb.bc, %.noexc, %bb.an, %bb.ba, %bb.az, %bb.ay
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.ai
  %i.ek = invoke i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit unwind label %bb.ax

bb.az:                                            ; preds = %bb.ai
  %i.el = invoke i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit unwind label %bb.ax

bb.ba:                                            ; preds = %bb.ai
  %i.em = invoke ptr @uloc_openKeywords_78(ptr noundef %0, ptr noundef nonnull %4)
          to label %bb.bb unwind label %bb.ax     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.en = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i341 = icmp eq ptr %i.en, null
  br i1 %.not.i341, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @uenum_close_78(ptr noundef nonnull %i.en)
          to label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit unwind label %bb.ax

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %bb.bc, %bb.bb
  store ptr %i.em, ptr %8, align 8, !tbaa !26
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit
  %i.eo = phi ptr [ %.pre, %._crit_edge ], [ %i.em, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %i.ep = invoke ptr @uenum_next_78(ptr noundef %i.eo, ptr noundef nonnull %i.f, ptr noundef nonnull %4)
          to label %bb.be unwind label %bb.bf     ; 4 uses

bb.be:                                            ; preds = %bb.bd
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit, label %bb.bg

bb.bf:                                            ; preds = %bb.bj, %bb.bd
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.be
  %i.er = load i32, ptr %4, align 4, !tbaa !10
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.bh, label %uloc_getDisplayKeyword_78.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.et = icmp eq ptr %.4225, null
  %or.cond.i = and i1 %i.dj, %i.et
  br i1 %or.cond.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %uloc_getDisplayKeyword_78.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.eu = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ep, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %uloc_getDisplayKeyword_78.exit unwind label %bb.bf ; 5 uses

uloc_getDisplayKeyword_78.exit.thread:            ; preds = %bb.bg, %bb.bi
  store i32 0, ptr %i.f, align 4, !tbaa !20
  br label %bb.bo

uloc_getDisplayKeyword_78.exit:                   ; preds = %bb.bj
  store i32 %i.eu, ptr %i.f, align 4, !tbaa !20
  %.not321 = icmp eq i32 %i.eu, 0
  br i1 %.not321, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %uloc_getDisplayKeyword_78.exit
  %i.ev = icmp slt i32 %i.eu, %.0196
  br i1 %i.ev, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %.4225, i64 %i.ew
  store i16 61, ptr %i.ex, align 2, !tbaa !44
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ey = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ey, ptr %i.f, align 4, !tbaa !20
  %i.ez = sub nsw i32 %.0196, %i.ey               ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fb = sext i32 %i.ey to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %.4225, i64 %i.fb
  br label %bb.bo

bb.bo:                                            ; preds = %uloc_getDisplayKeyword_78.exit.thread, %bb.bm, %bb.bn, %uloc_getDisplayKeyword_78.exit
  %.5226 = phi ptr [ %.4225, %uloc_getDisplayKeyword_78.exit ], [ %i.fc, %bb.bn ], [ %.4225, %bb.bm ], [ %.4225, %uloc_getDisplayKeyword_78.exit.thread ] ; 3 uses
  %.1 = phi i32 [ %.0196, %uloc_getDisplayKeyword_78.exit ], [ %i.ez, %bb.bn ], [ 0, %bb.bm ], [ %.0196, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %i.fd = load i32, ptr %4, align 4, !tbaa !10
  %i.fe = icmp eq i32 %i.fd, 15
  br i1 %i.fe, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ff = invoke i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef nonnull %i.ep, ptr noundef %1, ptr noundef %.5226, i32 noundef %.1, ptr noundef nonnull %4)
          to label %bb.br unwind label %bb.bu     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.fg = load i32, ptr %i.f, align 4, !tbaa !20  ; 3 uses
  %.not325 = icmp eq i32 %i.fg, 0
  br i1 %.not325, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fh = icmp eq i32 %i.ff, 0
  br i1 %i.fh, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.fi = add nsw i32 %i.fg, -1                   ; 2 uses
  store i32 %i.fi, ptr %i.f, align 4, !tbaa !20
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.fk = phi i32 [ %i.fi, %bb.bt ], [ %i.fg, %bb.bs ]
  %spec.select357 = select i1 %i.dj, ptr %i.dl, ptr %.5226
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.br
  %i.fl = phi i32 [ 0, %bb.br ], [ %i.fk, %bb.bv ]
  %.6227 = phi ptr [ %.5226, %bb.br ], [ %spec.select357, %bb.bv ]
  %.2 = phi i32 [ %.1, %bb.br ], [ %.0196, %bb.bv ]
  %i.fm = add nsw i32 %i.fl, %i.ff
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit: ; preds = %bb.bw, %bb.be, %bb.az, %bb.ay, %bb.aj, %bb.aw
  %9 = phi i32 [ %i.el, %bb.az ], [ %i.ek, %bb.ay ], [ 0, %bb.aj ], [ %.1.i.i.a, %bb.aw ], [ %i.fm, %bb.bw ], [ 0, %bb.be ] ; 3 uses
  %.8 = phi ptr [ %.4225, %bb.az ], [ %.4225, %bb.ay ], [ %.4225, %bb.aj ], [ %.4225, %bb.aw ], [ %.6227, %bb.bw ], [ %.4225, %bb.be ] ; 32 uses
  %.1205 = phi i32 [ %.0204419, %bb.az ], [ %.0204419, %bb.ay ], [ %.1285409, %bb.aj ], [ %.1285409, %bb.aw ], [ %.0204419, %bb.bw ], [ %.0204419, %bb.be ] ; 3 uses
  %.1198 = phi i1 [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.aj ], [ true, %bb.aw ], [ true, %bb.bw ], [ false, %bb.be ] ; 2 uses
  %.4 = phi i32 [ %.0196, %bb.az ], [ %.0196, %bb.ay ], [ %.0196, %bb.aj ], [ %.0196, %bb.aw ], [ %.2, %bb.bw ], [ %.0196, %bb.be ]
  %.8514 = ptrtoaddr ptr %.8 to i64               ; 3 uses
  %i.fn = icmp sgt i32 %9, 0
  br i1 %i.fn, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  %i.fo = load i32, ptr %i.c, align 4, !tbaa !20  ; 5 uses
  %i.fp = add nsw i32 %i.fo, %9                   ; 2 uses
  %.not328 = icmp sgt i32 %i.fp, %.4
  br i1 %.not328, label %.loopexit359, label %iter.check581

iter.check581:                                    ; preds = %bb.bx
  %i.fq = shl nuw i32 %9, 1
  %.idx = zext i32 %i.fq to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.8, i64 %.idx
  %i.fs = add i64 %.8514, %.idx
  %i.ft = add i64 %.8514, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ft)
  %i.fu = xor i64 %.8514, -1
  %i.fv = add i64 %umax, %i.fu                    ; 3 uses
  %i.fw = lshr i64 %i.fv, 1
  %i.fx = add nuw i64 %i.fw, 1                    ; 5 uses
  %min.iters.check515 = icmp ult i64 %i.fv, 14
  br i1 %min.iters.check515, label %.lr.ph397.preheader, label %vector.main.loop.iter.check516

vector.main.loop.iter.check516:                   ; preds = %iter.check581
  %min.iters.check517 = icmp ult i64 %i.fv, 30
  br i1 %min.iters.check517, label %vec.epilog.ph585, label %vector.ph518

vector.ph518:                                     ; preds = %vector.main.loop.iter.check516
  %i.fy = and i64 %i.fx, 8
  %n.vec519 = and i64 %i.fx, -16                  ; 4 uses
  %i.fz = shl i64 %n.vec519, 1
  %i.ga = getelementptr i8, ptr %.8, i64 %i.fz    ; 2 uses
  br label %vector.body526

vector.body526:                                   ; preds = %vector.ph518, %pred.store.continue576
  %index527 = phi i64 [ 0, %vector.ph518 ], [ %index.next577, %pred.store.continue576 ] ; 2 uses
  %i.gb = shl i64 %index527, 1                    ; 16 uses
  %next.gep528 = getelementptr i8, ptr %.8, i64 %i.gb ; 3 uses
  %i.gc = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep529 = getelementptr i8, ptr %i.gc, i64 2
  %i.gd = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep530 = getelementptr i8, ptr %i.gd, i64 4
  %i.ge = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep531 = getelementptr i8, ptr %i.ge, i64 6
  %i.gf = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep532 = getelementptr i8, ptr %i.gf, i64 8
  %i.gg = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep533 = getelementptr i8, ptr %i.gg, i64 10
  %i.gh = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep534 = getelementptr i8, ptr %i.gh, i64 12
  %i.gi = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep535 = getelementptr i8, ptr %i.gi, i64 14
  %i.gj = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep536 = getelementptr i8, ptr %i.gj, i64 16
  %i.gk = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep537 = getelementptr i8, ptr %i.gk, i64 18
  %i.gl = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep538 = getelementptr i8, ptr %i.gl, i64 20
  %i.gm = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep539 = getelementptr i8, ptr %i.gm, i64 22
  %i.gn = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep540 = getelementptr i8, ptr %i.gn, i64 24
  %i.go = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep541 = getelementptr i8, ptr %i.go, i64 26
  %i.gp = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep542 = getelementptr i8, ptr %i.gp, i64 28
  %i.gq = getelementptr i8, ptr %.8, i64 %i.gb
  %next.gep543 = getelementptr i8, ptr %i.gq, i64 30
  %i.gr = getelementptr i8, ptr %next.gep528, i64 16
  %wide.load544 = load <8 x i16>, ptr %next.gep528, align 2, !tbaa !44 ; 2 uses
  %wide.load545 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !44 ; 2 uses
  %i.gs = icmp eq <8 x i16> %wide.load544, %broadcast.splat ; 2 uses
  %i.gt = icmp eq <8 x i16> %wide.load545, %broadcast.splat ; 2 uses
  %i.gu = icmp eq <8 x i16> %wide.load544, %broadcast.splat521
  %i.gv = icmp eq <8 x i16> %wide.load545, %broadcast.splat521
  %i.gw = or <8 x i1> %i.gu, %i.gs                ; 8 uses
  %i.gx = or <8 x i1> %i.gv, %i.gt                ; 8 uses
  %predphi = select <8 x i1> %i.gs, <8 x i16> %broadcast.splat523, <8 x i16> %broadcast.splat525 ; 8 uses
  %predphi546 = select <8 x i1> %i.gt, <8 x i16> %broadcast.splat523, <8 x i16> %broadcast.splat525 ; 8 uses
  %i.gy = extractelement <8 x i1> %i.gw, i64 0
  br i1 %i.gy, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body526
  %i.gz = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.gz, ptr %next.gep528, align 2, !tbaa !44
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body526
  %i.ha = extractelement <8 x i1> %i.gw, i64 1
  br i1 %i.ha, label %pred.store.if547, label %pred.store.continue548

pred.store.if547:                                 ; preds = %pred.store.continue
  %i.hb = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.hb, ptr %next.gep529, align 2, !tbaa !44
  br label %pred.store.continue548

pred.store.continue548:                           ; preds = %pred.store.if547, %pred.store.continue
  %i.hc = extractelement <8 x i1> %i.gw, i64 2
  br i1 %i.hc, label %pred.store.if549, label %pred.store.continue550

pred.store.if549:                                 ; preds = %pred.store.continue548
  %i.hd = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.hd, ptr %next.gep530, align 2, !tbaa !44
  br label %pred.store.continue550

pred.store.continue550:                           ; preds = %pred.store.if549, %pred.store.continue548
  %i.he = extractelement <8 x i1> %i.gw, i64 3
  br i1 %i.he, label %pred.store.if551, label %pred.store.continue552

pred.store.if551:                                 ; preds = %pred.store.continue550
  %i.hf = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.hf, ptr %next.gep531, align 2, !tbaa !44
  br label %pred.store.continue552

pred.store.continue552:                           ; preds = %pred.store.if551, %pred.store.continue550
  %i.hg = extractelement <8 x i1> %i.gw, i64 4
  br i1 %i.hg, label %pred.store.if553, label %pred.store.continue554

pred.store.if553:                                 ; preds = %pred.store.continue552
  %i.hh = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.hh, ptr %next.gep532, align 2, !tbaa !44
  br label %pred.store.continue554

pred.store.continue554:                           ; preds = %pred.store.if553, %pred.store.continue552
  %i.hi = extractelement <8 x i1> %i.gw, i64 5
  br i1 %i.hi, label %pred.store.if555, label %pred.store.continue556

pred.store.if555:                                 ; preds = %pred.store.continue554
  %i.hj = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.hj, ptr %next.gep533, align 2, !tbaa !44
  br label %pred.store.continue556

pred.store.continue556:                           ; preds = %pred.store.if555, %pred.store.continue554
  %i.hk = extractelement <8 x i1> %i.gw, i64 6
  br i1 %i.hk, label %pred.store.if557, label %pred.store.continue558

pred.store.if557:                                 ; preds = %pred.store.continue556
  %i.hl = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.hl, ptr %next.gep534, align 2, !tbaa !44
  br label %pred.store.continue558

pred.store.continue558:                           ; preds = %pred.store.if557, %pred.store.continue556
  %i.hm = extractelement <8 x i1> %i.gw, i64 7
  br i1 %i.hm, label %pred.store.if559, label %pred.store.continue560

pred.store.if559:                                 ; preds = %pred.store.continue558
  %i.hn = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.hn, ptr %next.gep535, align 2, !tbaa !44
  br label %pred.store.continue560

pred.store.continue560:                           ; preds = %pred.store.if559, %pred.store.continue558
  %i.ho = extractelement <8 x i1> %i.gx, i64 0
  br i1 %i.ho, label %pred.store.if561, label %pred.store.continue562

pred.store.if561:                                 ; preds = %pred.store.continue560
  %i.hp = extractelement <8 x i16> %predphi546, i64 0
  store i16 %i.hp, ptr %next.gep536, align 2, !tbaa !44
  br label %pred.store.continue562

pred.store.continue562:                           ; preds = %pred.store.if561, %pred.store.continue560
  %i.hq = extractelement <8 x i1> %i.gx, i64 1
  br i1 %i.hq, label %pred.store.if563, label %pred.store.continue564

pred.store.if563:                                 ; preds = %pred.store.continue562
  %i.hr = extractelement <8 x i16> %predphi546, i64 1
  store i16 %i.hr, ptr %next.gep537, align 2, !tbaa !44
  br label %pred.store.continue564

pred.store.continue564:                           ; preds = %pred.store.if563, %pred.store.continue562
  %i.hs = extractelement <8 x i1> %i.gx, i64 2
  br i1 %i.hs, label %pred.store.if565, label %pred.store.continue566

pred.store.if565:                                 ; preds = %pred.store.continue564
  %i.ht = extractelement <8 x i16> %predphi546, i64 2
  store i16 %i.ht, ptr %next.gep538, align 2, !tbaa !44
  br label %pred.store.continue566

pred.store.continue566:                           ; preds = %pred.store.if565, %pred.store.continue564
  %i.hu = extractelement <8 x i1> %i.gx, i64 3
  br i1 %i.hu, label %pred.store.if567, label %pred.store.continue568

pred.store.if567:                                 ; preds = %pred.store.continue566
  %i.hv = extractelement <8 x i16> %predphi546, i64 3
  store i16 %i.hv, ptr %next.gep539, align 2, !tbaa !44
  br label %pred.store.continue568

pred.store.continue568:                           ; preds = %pred.store.if567, %pred.store.continue566
  %i.hw = extractelement <8 x i1> %i.gx, i64 4
  br i1 %i.hw, label %pred.store.if569, label %pred.store.continue570

pred.store.if569:                                 ; preds = %pred.store.continue568
  %i.hx = extractelement <8 x i16> %predphi546, i64 4
  store i16 %i.hx, ptr %next.gep540, align 2, !tbaa !44
  br label %pred.store.continue570

pred.store.continue570:                           ; preds = %pred.store.if569, %pred.store.continue568
  %i.hy = extractelement <8 x i1> %i.gx, i64 5
  br i1 %i.hy, label %pred.store.if571, label %pred.store.continue572

pred.store.if571:                                 ; preds = %pred.store.continue570
  %i.hz = extractelement <8 x i16> %predphi546, i64 5
  store i16 %i.hz, ptr %next.gep541, align 2, !tbaa !44
  br label %pred.store.continue572

pred.store.continue572:                           ; preds = %pred.store.if571, %pred.store.continue570
  %i.ia = extractelement <8 x i1> %i.gx, i64 6
  br i1 %i.ia, label %pred.store.if573, label %pred.store.continue574

pred.store.if573:                                 ; preds = %pred.store.continue572
  %i.ib = extractelement <8 x i16> %predphi546, i64 6
  store i16 %i.ib, ptr %next.gep542, align 2, !tbaa !44
end_hunk_0
begin_hunk_1_@uloc_getDisplayName_78:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cd

.body:                                            ; preds = %bb.ax, %bb.ap, %bb.bf, %bb.bu
  %.pn322.pn = phi { ptr, i32 } [ %i.eq, %bb.bf ], [ %i.fj, %bb.bu ], [ %i.ej, %bb.ax ], [ %i.ea, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cp

bb.cd:                                            ; preds = %bb.ah, %bb.ad, %bb.af, %bb.cc
  %.5289 = phi i32 [ %.1285409, %bb.ad ], [ %.4288, %bb.cc ], [ %i.do, %bb.af ], [ %.1285409, %bb.ah ] ; 5 uses
  %.3258 = phi i8 [ 0, %bb.ad ], [ %.1256411, %bb.cc ], [ %i.dq, %bb.af ], [ %.1256411, %bb.ah ] ; 3 uses
  %.3254 = phi i8 [ %.1252412, %bb.ad ], [ %.2253, %bb.cc ], [ %.1252412, %bb.af ], [ 0, %bb.ah ] ; 3 uses
  %.13 = phi ptr [ %.4225, %bb.ad ], [ %.12, %bb.cc ], [ %.4225, %bb.af ], [ %.4225, %bb.ah ] ; 7 uses
  %.2215 = phi i32 [ %.0213416, %bb.ad ], [ %.0213416, %bb.cc ], [ %i.dn, %bb.af ], [ %.0213416, %bb.ah ] ; 2 uses
  %.2212 = phi i32 [ %.0210417, %bb.ad ], [ %.0210417, %bb.cc ], [ %.1285409, %bb.af ], [ %.0210417, %bb.ah ] ; 2 uses
  %.2209 = phi i32 [ %.0207418, %bb.ad ], [ %.1208, %bb.cc ], [ %.0207418, %bb.af ], [ %.0207418, %bb.ah ] ; 2 uses
  %.2206 = phi i32 [ %.0204419, %bb.ad ], [ %.1205, %bb.cc ], [ %.0204419, %bb.af ], [ %.0204419, %bb.ah ] ; 2 uses
  %.1201 = phi i32 [ %.0200421, %bb.ad ], [ %i.ds, %bb.cc ], [ %.0200421, %bb.af ], [ %.0200421, %bb.ah ]
  %.2199 = phi i1 [ false, %bb.ad ], [ %.1198, %bb.cc ], [ false, %bb.af ], [ false, %bb.ah ]
  %i.lu = load i32, ptr %4, align 4, !tbaa !10
  %i.lv = icmp eq i32 %i.lu, 15
  br i1 %i.lv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %.2199, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lw = icmp ne i8 %.3258, 0                    ; 3 uses
  %i.lx = icmp ne i8 %.3254, 0
  %or.cond8 = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %or.cond8, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ly = add nsw i32 %.3219415, 3                ; 3 uses
  %i.lz = icmp eq i32 %.0202420, 0
  %i.ma = load i32, ptr %i.d, align 4
  %i.mb = select i1 %i.lz, i32 %.2273, i32 %i.ma  ; 2 uses
  %i.mc = sub nsw i32 %i.mb, %i.ly                ; 6 uses
  %i.md = add nsw i32 %i.mc, %.5289               ; 4 uses
  %.not335 = icmp sgt i32 %i.md, %3
  br i1 %.not335, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.me = sext i32 %.5289 to i64                  ; 2 uses
  %i.mf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.me ; 7 uses
  %i.mg = icmp sgt i32 %i.mc, 0
  br i1 %i.mg, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.ci
  %i.mh = sext i32 %i.ly to i64                   ; 7 uses
  %i.mi = zext nneg i32 %i.mc to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.mc, 4
  br i1 %min.iters.check, label %.lr.ph406.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = shl nsw i64 %i.me, 1
  %i.mk = add i64 %i.be, %i.mj
  %i.ml = shl nsw i64 %i.mh, 1
  %i.mm = sub i64 %i.ml, %i.mk
  %diff.check = icmp ugt i64 %i.mm, -32
  br i1 %diff.check, label %.lr.ph406.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check470 = icmp ult i32 %i.mc, 16
  br i1 %min.iters.check470, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mn = and i64 %i.mi, 12
  %n.vec = and i64 %i.mi, 2147483632              ; 6 uses
  %i.mo = add nsw i64 %n.vec, %i.mh               ; 2 uses
  %i.mp = trunc nuw nsw i64 %n.vec to i32
  %i.mq = shl nuw nsw i64 %n.vec, 1
  %i.mr = getelementptr i8, ptr %i.mf, i64 %i.mq  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0281, i64 %i.mh
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ms = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.mf, i64 %i.ms ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !44
  %wide.load471 = load <8 x i16>, ptr %i.mt, align 2, !tbaa !44
  %i.mu = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !44
  store <8 x i16> %wide.load471, ptr %i.mu, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mv = icmp eq i64 %index.next, %n.vec
  br i1 %i.mv, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph406.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec474 = and i64 %i.mi, 2147483644           ; 5 uses
  %i.mw = add nsw i64 %n.vec474, %i.mh            ; 2 uses
  %i.mx = trunc nuw nsw i64 %n.vec474 to i32
  %i.my = shl nuw nsw i64 %n.vec474, 1
  %i.mz = getelementptr i8, ptr %i.mf, i64 %i.my  ; 2 uses
  %invariant.gep675 = getelementptr [2 x i8], ptr %.0281, i64 %i.mh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next478, %vec.epilog.vector.body ] ; 3 uses
  %i.na = shl i64 %index475, 1
  %next.gep476 = getelementptr i8, ptr %i.mf, i64 %i.na
  %gep676 = getelementptr [2 x i8], ptr %invariant.gep675, i64 %index475
  %wide.load477 = load <4 x i16>, ptr %gep676, align 2, !tbaa !44
  store <4 x i16> %wide.load477, ptr %next.gep476, align 2, !tbaa !44
  %index.next478 = add nuw i64 %index475, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next478, %n.vec474
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n479 = icmp eq i64 %n.vec474, %i.mi
  br i1 %cmp.n479, label %.loopexit.loopexit, label %.lr.ph406.preheader

.lr.ph406.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv434.ph = phi i64 [ %i.mh, %iter.check ], [ %i.mh, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ]
  %.0405.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.mp, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.14403.ph = phi ptr [ %i.mf, %iter.check ], [ %i.mf, %vector.memcheck ], [ %i.mr, %vec.epilog.iter.check ], [ %i.mz, %vec.epilog.middle.block ]
  br label %.lr.ph406

.lr.ph406:                                        ; preds = %.lr.ph406.preheader, %.lr.ph406
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %.lr.ph406 ], [ %indvars.iv434.ph, %.lr.ph406.preheader ] ; 2 uses
  %.0405 = phi i32 [ %i.nf, %.lr.ph406 ], [ %.0405.ph, %.lr.ph406.preheader ]
  %.14403 = phi ptr [ %i.ne, %.lr.ph406 ], [ %.14403.ph, %.lr.ph406.preheader ] ; 2 uses
  %indvars.iv.next435 = add nsw i64 %indvars.iv434, 1 ; 2 uses
  %i.nc = getelementptr inbounds [2 x i8], ptr %.0281, i64 %indvars.iv434
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !44
  %i.ne = getelementptr inbounds nuw i8, ptr %.14403, i64 2 ; 2 uses
  store i16 %i.nd, ptr %.14403, align 2, !tbaa !44
  %i.nf = add nuw nsw i32 %.0405, 1               ; 2 uses
  %exitcond437.not = icmp eq i32 %i.nf, %i.mc
  br i1 %exitcond437.not, label %.loopexit.loopexit, label %.lr.ph406, !llvm.loop !41

bb.cj:                                            ; preds = %bb.cg
  %i.ng = icmp eq i32 %.0202420, 0
  br i1 %i.ng, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nh = icmp sgt i32 %.5289, 0
  br i1 %i.nh, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %bb.ck
  %i.ni = select i1 %i.lw, i32 %.2215, i32 %.2209 ; 5 uses
  %i.nj = icmp eq i32 %.4278410, 0
  %or.cond10.not = select i1 %i.l, i1 true, i1 %i.nj
  br i1 %or.cond10.not, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nk = add nsw i32 %i.ni, %.4278410
  %.not331 = icmp sgt i32 %i.nk, %3
  br i1 %.not331, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nl = select i1 %i.lw, i32 %.2212, i32 %.2206
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [2 x i8], ptr %2, i64 %i.nm
  %i.no = invoke ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.nn, i32 noundef %i.ni)
          to label %.loopexit unwind label %bb.ag ; 0 uses

.loopexit.loopexit:                               ; preds = %.lr.ph406, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next435.lcssa = phi i64 [ %i.mw, %vec.epilog.middle.block ], [ %i.mo, %middle.block ], [ %indvars.iv.next435, %.lr.ph406 ]
  %.lcssa467 = phi ptr [ %i.mz, %vec.epilog.middle.block ], [ %i.mr, %middle.block ], [ %i.ne, %.lr.ph406 ]
  %i.np = trunc nsw i64 %indvars.iv.next435.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ci, %bb.cm, %bb.cj, %bb.ch, %bb.cl, %bb.cn, %bb.ck
  %.6290 = phi i32 [ %.5289, %bb.ck ], [ %i.ni, %bb.cm ], [ %i.ni, %bb.cn ], [ 0, %bb.cj ], [ %i.ni, %bb.cl ], [ %i.md, %bb.ch ], [ %i.md, %bb.ci ], [ %i.md, %.loopexit.loopexit ]
  %.5279 = phi i32 [ %.4278410, %bb.ck ], [ 0, %bb.cm ], [ %.4278410, %bb.cn ], [ 0, %bb.cj ], [ %.4278410, %bb.cl ], [ %.4278410, %bb.ch ], [ %.4278410, %bb.ci ], [ %.4278410, %.loopexit.loopexit ]
  %.2249 = phi i8 [ %.1248413, %bb.ck ], [ 1, %bb.cm ], [ %.1248413, %bb.cn ], [ %.1248413, %bb.cj ], [ %.1248413, %bb.cl ], [ %.1248413, %bb.ch ], [ %.1248413, %bb.ci ], [ %.1248413, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.ck ], [ %.13, %bb.cm ], [ %.13, %bb.cn ], [ %.13, %bb.cj ], [ %.13, %bb.cl ], [ %.13, %bb.ch ], [ %i.mf, %bb.ci ], [ %.lcssa467, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.3219415, %bb.ck ], [ %.3219415, %bb.cm ], [ %.3219415, %bb.cn ], [ %.3219415, %bb.cj ], [ %.3219415, %bb.cl ], [ %i.mb, %bb.ch ], [ %i.ly, %bb.ci ], [ %i.np, %.loopexit.loopexit ]
  %i.nq = add nuw nsw i32 %.0202420, 1
  br label %bb.co

bb.co:                                            ; preds = %.loopexit, %bb.cf
  %.7291 = phi i32 [ %.6290, %.loopexit ], [ %.5289, %bb.cf ] ; 2 uses
  %.6280 = phi i32 [ %.5279, %.loopexit ], [ %.4278410, %bb.cf ] ; 2 uses
  %.3250 = phi i8 [ %.2249, %.loopexit ], [ %.1248413, %bb.cf ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.cf ]
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.3219415, %bb.cf ]
  %.1203 = phi i32 [ %i.nq, %.loopexit ], [ %.0202420, %bb.cf ] ; 2 uses
  %i.nr = icmp slt i32 %.1203, 2
  br i1 %i.nr, label %.loopexit361, label %bb.aa, !llvm.loop !42

bb.cp:                                            ; preds = %.body, %bb.ag
  %.pn332 = phi { ptr, i32 } [ %i.dr, %bb.ag ], [ %.pn322.pn, %.body ]
  call void @_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.cs

bb.cq:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.ns = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7291, ptr noundef nonnull %4)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.x, %bb.q, %bb.a, %bb.b, %bb.cq, %bb.e
  %.2231 = phi i32 [ 0, %bb.q ], [ 0, %bb.e ], [ %i.ns, %bb.cq ], [ 0, %bb.x ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.2231

bb.cs:                                            ; preds = %bb.cp, %bb.p
  %.pn332.pn = phi { ptr, i32 } [ %.pn332, %bb.cp ], [ %.pn, %bb.p ]
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
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #10
  unreachable
}

declare ptr @u_strstr_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @u_strncmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @uloc_openKeywords_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uenum_next_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @uloc_getDisplayKeyword_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !10
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
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4, !tbaa !10
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %4, 0
  %i.g = icmp eq ptr %3, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %bb.aw

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !17
  store i8 0, ptr %i.h, align 1, !tbaa !11
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1, !tbaa !11
  %.not55 = icmp eq i8 %i.l, 0
  br i1 %.not55, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  invoke void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, ptr noundef %0, i64 %i.m, ptr nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.n = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(60) %7) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.p = load i8, ptr %i.o, align 4, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %7, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.q)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.av

bb.m:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.g, %bb.f
  %i.u = invoke i32 @uprv_stricmp_78(ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kCurrencyE)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.w = invoke ptr @ures_open_78(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef nonnull %5)
          to label %bb.p unwind label %bb.w       ; 4 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.w, ptr %8, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.x = invoke ptr @ures_getByKey_78(ptr noundef %i.w, ptr noundef nonnull @_ZN12_GLOBAL__N_112_kCurrenciesE, ptr noundef null, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.x       ; 4 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.x, ptr %9, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.y = load ptr, ptr %6, align 8, !tbaa !18
  %i.z = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.x, ptr noundef %i.y, ptr noundef null, ptr noundef nonnull %5)
          to label %bb.r unwind label %bb.y       ; 4 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.z, ptr %10, align 8, !tbaa !23
  %i.aa = invoke ptr @ures_getStringByIndex_78(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
          to label %bb.s unwind label %bb.z       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ab = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = icmp eq i32 %i.ab, 2
end_hunk_1
