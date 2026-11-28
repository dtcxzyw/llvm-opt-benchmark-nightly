Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/localebuilder?download=true
inline.NumInlined: 220
inline.NumDeleted: 54
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_121_setUnicodeExtensionsERNS_6LocaleERKNS_10CharStringER10UErrorCode:bb.a
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull @.str.2)
  %i.c = load ptr, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.f, align 1, !tbaa !25
  %i.j = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.c, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %bb.o, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %3) #13
  br label %common.resume

_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.l, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.d unwind label %bb.k       ; 0 uses

bb.d:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.p = load ptr, ptr %3, align 8, !tbaa !30
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.p)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i32, ptr %i.r, align 8
  invoke void @_ZN6icu_786Locale14forLanguageTagENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %5, ptr %i.q, i32 %i.s, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_115_copyExtensionsERKNS_6LocaleEPNS_17StringEnumerationERS1_bR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.t = load i8, ptr %i.h, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %3, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.u)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.x, %bb.k ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !32
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #14
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder23setUnicodeLocaleKeywordENS_11StringPieceES1_(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_Z27ultag_isUnicodeLocaleKey_78PKci(ptr noundef %1, i32 noundef %2)
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef zeroext i1 @_Z28ultag_isUnicodeLocaleType_78PKci(ptr noundef %3, i32 noundef %4)
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !24
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale7getRootEv()
  %i.j = tail call noundef ptr @_ZNK6icu_786Locale5cloneEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) ; 3 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !23
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %i.a, align 8, !tbaa !24
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %i.j, %bb.g ], [ %i.g, %bb.f ]
  tail call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.e
  ret ptr %0
}

declare noundef zeroext i1 @_Z27ultag_isUnicodeLocaleKey_78PKci(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_Z28ultag_isUnicodeLocaleType_78PKci(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr, i32, ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder25addUnicodeLocaleAttributeENS_11StringPieceE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::StringByteSink", align 8 ; 8 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 19 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %13 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %15 = alloca %"class.icu_78::CharString", align 8 ; 17 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %18 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 40, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i8 0, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.c, align 1, !tbaa !25
  %i.g = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.loopexit.split-lp91, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn51, %.loopexit.split-lp91 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %10) #13
  br label %common.resume

_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !24
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.az

.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %.noexc54, %.noexc53, %bb.l, %bb.i, %bb.h, %.loopexit95
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp91

bb.c:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.k = load ptr, ptr %10, align 8, !tbaa !30    ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %.loopexit95

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %.09.i = phi i32 [ %i.q, %.noexc ], [ 0, %bb.c ]
  %.078.i = phi ptr [ %i.r, %.noexc ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = load i8, ptr %.078.i, align 1, !tbaa !25 ; 2 uses
  %i.o = icmp eq i8 %i.n, 95
  br i1 %i.o, label %.noexc, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.n)
          to label %.noexc unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d, %.lr.ph.i
  %storemerge.i = phi i8 [ 45, %.lr.ph.i ], [ %i.p, %bb.d ]
  store i8 %storemerge.i, ptr %.078.i, align 1, !tbaa !25
  %i.q = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.078.i, i64 1
  %exitcond.not.i = icmp eq i32 %i.q, %i.l
  br i1 %exitcond.not.i, label %.loopexit95.loopexit, label %.lr.ph.i, !llvm.loop !1

.loopexit95.loopexit:                             ; preds = %.noexc
  %.pre = load ptr, ptr %10, align 8, !tbaa !30
  %.pre103 = load i32, ptr %i.f, align 8, !tbaa !34
  br label %.loopexit95

.loopexit95:                                      ; preds = %.loopexit95.loopexit, %bb.c
  %i.s = phi i32 [ %.pre103, %.loopexit95.loopexit ], [ %i.l, %bb.c ]
  %i.t = phi ptr [ %.pre, %.loopexit95.loopexit ], [ %i.k, %bb.c ]
  %i.u = invoke noundef zeroext i1 @_Z33ultag_isUnicodeLocaleAttribute_78PKci(ptr noundef %i.t, i32 noundef %i.s)
          to label %bb.e unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.loopexit95
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.b, align 8, !tbaa !24
  br label %bb.az

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.y = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale7getRootEv()
          to label %bb.i unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef ptr @_ZNK6icu_786Locale5cloneEv(ptr noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %bb.j unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !23
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 7, ptr %i.b, align 8, !tbaa !24
  br label %bb.az

bb.l:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull @.str)
          to label %.noexc53 unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.l
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef %i.ab)
          to label %.noexc54 unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.noexc53
  %i.ac = load ptr, ptr %8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = load ptr, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  invoke void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr %i.ac, i32 %i.ae, ptr %i.af, i32 %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit: ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.az

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull @.str)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %12, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.al = load i32, ptr %i.a, align 4, !tbaa !26, !noalias !42
  %i.am = icmp slt i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 13 ; 2 uses
  store ptr %i.an, ptr %11, align 8, !tbaa !30, !alias.scope !42
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 40, ptr %i.ao, align 8, !tbaa !31, !alias.scope !42
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  store i8 0, ptr %i.ap, align 4, !tbaa !32, !alias.scope !42
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !34, !alias.scope !42
  store i8 0, ptr %i.an, align 1, !tbaa !25, !alias.scope !42
  br i1 %i.am, label %bb.o, label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !42
  invoke void @_ZN6icu_7818CharStringByteSinkC2EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 %11)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINS_10CharStringEEE, i64 16), ptr %7, align 8, !tbaa !12, !noalias !42
  invoke void @_ZNK6icu_786Locale15getKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr %i.ai, i32 %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ar, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !42
  br label %bb.ay

_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit: ; preds = %bb.p
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !42
  %.pre104 = load i32, ptr %i.a, align 4, !tbaa !26
  %i.at = icmp slt i32 %.pre104, 1
  br i1 %i.at, label %bb.ac, label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit.thread

_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit.thread: ; preds = %bb.n, %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.au = load ptr, ptr %10, align 8, !tbaa !30
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef %i.au)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit.thread
  %i.av = load ptr, ptr %14, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 13 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 40, ptr %i.az, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i8 0, ptr %i.ba, align 4, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 0, ptr %i.bb, align 8, !tbaa !34
  store i8 0, ptr %i.ay, align 1, !tbaa !25
  %i.bc = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %13, ptr noundef %i.av, i32 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %13) #13
  br label %.body56

bb.v:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.bf = load ptr, ptr %13, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull @.str)
          to label %.noexc59 unwind label %bb.ab

.noexc59:                                         ; preds = %bb.v
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.bf)
          to label %.noexc60 unwind label %bb.ab

.noexc60:                                         ; preds = %.noexc59
  %i.bg = load ptr, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %6, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  invoke void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr %i.bg, i32 %i.bi, ptr %i.bj, i32 %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load i8, ptr %i.ba, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = load ptr, ptr %13, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.bn)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.av

bb.z:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit.thread
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.ab:                                            ; preds = %.noexc60, %.noexc59, %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %13) #13
  br label %.body56

.body56:                                          ; preds = %bb.aa, %bb.u, %bb.ab
  %.pn47 = phi { ptr, i32 } [ %i.bs, %bb.ab ], [ %i.br, %bb.aa ], [ %i.bd, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ay

bb.ac:                                            ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit
  %i.bt = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !34 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i63, label %.loopexit89

.lr.ph.i63:                                       ; preds = %bb.ac, %.noexc68
  %.09.i64 = phi i32 [ %i.bz, %.noexc68 ], [ 0, %bb.ac ]
  %.078.i65 = phi ptr [ %i.ca, %.noexc68 ], [ %i.bt, %bb.ac ] ; 3 uses
  %i.bw = load i8, ptr %.078.i65, align 1, !tbaa !25 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 95
  br i1 %i.bx, label %.noexc68, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i63
  %i.by = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.bw)
          to label %.noexc68 unwind label %bb.ag

.noexc68:                                         ; preds = %bb.ad, %.lr.ph.i63
  %storemerge.i66 = phi i8 [ 45, %.lr.ph.i63 ], [ %i.by, %bb.ad ]
  store i8 %storemerge.i66, ptr %.078.i65, align 1, !tbaa !25
  %i.bz = add nuw nsw i32 %.09.i64, 1             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.078.i65, i64 1
  %exitcond.not.i67 = icmp eq i32 %i.bz, %i.bu
  br i1 %exitcond.not.i67, label %.loopexit89.loopexit, label %.lr.ph.i63, !llvm.loop !1

.loopexit89.loopexit:                             ; preds = %.noexc68
  %.pre105 = load ptr, ptr %11, align 8, !tbaa !30
  %.pre106 = load i32, ptr %i.aq, align 8, !tbaa !34
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %bb.ac
  %i.cb = phi i32 [ %.pre106, %.loopexit89.loopexit ], [ %i.bu, %bb.ac ] ; 2 uses
  %i.cc = phi ptr [ %.pre105, %.loopexit89.loopexit ], [ %i.bt, %bb.ac ] ; 2 uses
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 13 ; 2 uses
  store ptr %i.cf, ptr %15, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 40, ptr %i.cg, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i8 0, ptr %i.ch, align 4, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 4 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !34
  store i8 0, ptr %i.cf, align 1, !tbaa !25
  %i.cj = icmp sgt i32 %i.cb, 0
  br i1 %i.cj, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.loopexit89
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72
  %.099 = phi i8 [ 0, %.lr.ph ], [ %.3, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72 ]
  %.01698 = phi ptr [ %i.cc, %.lr.ph ], [ %i.de, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72 ] ; 4 uses
  %i.cm = trunc nuw i8 %.099 to i1
  br i1 %i.cm, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.co = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01698, ptr noundef nonnull dereferenceable(1) %i.cn) #15 ; 2 uses
  %.not41 = icmp eq i32 %i.co, 0
  br i1 %.not41, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ah:                                            ; preds = %bb.af
  %i.cq = icmp sgt i32 %i.co, 0
  br i1 %i.cq, label %bb.ai, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load i32, ptr %i.ci, align 8, !tbaa !34
  %.not87 = icmp eq i32 %i.cr, 0
  br i1 %.not87, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._crit_edge107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge107:                                   ; preds = %bb.aj
  %.pre108 = load ptr, ptr %10, align 8, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge107, %bb.ai
  %i.ct = phi ptr [ %.pre108, %._crit_edge107 ], [ %i.cn, %bb.ai ]
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef %i.ct)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.cu = load ptr, ptr %16, align 8
  %i.cv = load i32, ptr %i.ck, align 8
  %i.cw = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, ptr noundef %i.cu, i32 noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread: ; preds = %bb.ah, %bb.al, %bb.ae
  %.3 = phi i8 [ 1, %bb.ae ], [ 1, %bb.al ], [ 0, %bb.ah ] ; 2 uses
  %i.cx = load i32, ptr %i.ci, align 8, !tbaa !34
  %.not88 = icmp eq i32 %i.cx, 0
  br i1 %.not88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread
  %i.cy = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.al, %bb.aj, %bb.ak, %bb.an, %bb.am, %.noexc76, %.noexc75, %bb.as, %bb.ar, %.thread, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.ay

bb.an:                                            ; preds = %bb.am, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef %.01698)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.cz = load ptr, ptr %17, align 8
  %i.da = load i32, ptr %i.cl, align 8
  %i.db = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, ptr noundef %i.cz, i32 noundef %i.da, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72: ; preds = %bb.ao
  %i.dc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01698) #15
  %i.dd = getelementptr i8, ptr %.01698, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 1      ; 2 uses
  %i.df = icmp ult ptr %i.de, %i.ce
  br i1 %i.df, label %bb.ae, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit72
  %i.dg = trunc nuw i8 %.3 to i1
  br i1 %i.dg, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %.pr = load i32, ptr %i.ci, align 8, !tbaa !34
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread:                                          ; preds = %.loopexit89, %bb.ap, %bb.aq
  %i.di = load ptr, ptr %10, align 8, !tbaa !30
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef %i.di)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.thread
  %i.dj = load ptr, ptr %18, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %15, ptr noundef %i.dj, i32 noundef %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.as:                                            ; preds = %._crit_edge, %bb.ar
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.do = load ptr, ptr %15, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull @.str)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.as
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.do)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %.noexc75
  %i.dp = load ptr, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = load ptr, ptr %4, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = load i32, ptr %i.dt, align 8
  invoke void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr %i.dp, i32 %i.dr, ptr %i.ds, i32 %i.du, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit78: ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.af, %_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit78
  %i.dv = load i8, ptr %i.ch, align 4, !tbaa !32
  %.not.i.i.i79 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i79, label %_ZN6icu_7810CharStringD2Ev.exit80, label %bb.at

bb.at:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.dw = load ptr, ptr %15, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.dw)
          to label %_ZN6icu_7810CharStringD2Ev.exit80 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit80:                ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.av

bb.av:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit80, %_ZN6icu_7810CharStringD2Ev.exit
  %i.dz = load i8, ptr %i.ap, align 4, !tbaa !32
  %.not.i.i.i81 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i81, label %_ZN6icu_7810CharStringD2Ev.exit82, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = load ptr, ptr %11, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ea)
          to label %_ZN6icu_7810CharStringD2Ev.exit82 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit82:                ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.az

bb.ay:                                            ; preds = %.body56, %bb.ag, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.pn47.pn.pn.ph = phi { ptr, i32 } [ %.pn.i, %bb.s ], [ %.pn47, %.body56 ], [ %i.cp, %bb.ag ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %11) #13
  br label %.body

.body:                                            ; preds = %bb.ay, %bb.z
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %.pn47.pn.pn.ph, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit.split-lp91

bb.az:                                            ; preds = %_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode.exit, %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit, %_ZN6icu_7810CharStringD2Ev.exit82, %bb.k, %bb.f
  %i.ed = load i8, ptr %i.e, align 4, !tbaa !32
  %.not.i.i.i83 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i83, label %_ZN6icu_7810CharStringD2Ev.exit84, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ee = load ptr, ptr %10, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ee)
          to label %_ZN6icu_7810CharStringD2Ev.exit84 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit84:                ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret ptr %0

.loopexit.split-lp91:                             ; preds = %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn51 = phi { ptr, i32 } [ %.pn47.pn.pn, %.body ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %common.resume
}

declare noundef zeroext i1 @_Z33ultag_isUnicodeLocaleAttribute_78PKci(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %1)
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %2)
  %i.a = load ptr, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = load ptr, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8
  call void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.a, i32 %i.c, ptr %i.d, i32 %i.f, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder28removeUnicodeLocaleAttributeENS_11StringPieceE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::StringByteSink", align 8 ; 8 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 40, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i8 0, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.c, align 1, !tbaa !25
  %i.g = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.loopexit.split-lp48, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn39.pn.pn, %.loopexit.split-lp48 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %4) #13
  br label %common.resume

_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !24
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.ab

.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %.loopexit52
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp48

bb.c:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %.loopexit52

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %.09.i = phi i32 [ %i.q, %.noexc ], [ 0, %bb.c ]
  %.078.i = phi ptr [ %i.r, %.noexc ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = load i8, ptr %.078.i, align 1, !tbaa !25 ; 2 uses
  %i.o = icmp eq i8 %i.n, 95
  br i1 %i.o, label %.noexc, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.n)
          to label %.noexc unwind label %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d, %.lr.ph.i
  %storemerge.i = phi i8 [ 45, %.lr.ph.i ], [ %i.p, %bb.d ]
  store i8 %storemerge.i, ptr %.078.i, align 1, !tbaa !25
  %i.q = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.078.i, i64 1
  %exitcond.not.i = icmp eq i32 %i.q, %i.l
  br i1 %exitcond.not.i, label %.loopexit52.loopexit, label %.lr.ph.i, !llvm.loop !1

.loopexit52.loopexit:                             ; preds = %.noexc
  %.pre = load ptr, ptr %4, align 8, !tbaa !30
  %.pre67 = load i32, ptr %i.f, align 8, !tbaa !34
  br label %.loopexit52

.loopexit52:                                      ; preds = %.loopexit52.loopexit, %bb.c
  %i.s = phi i32 [ %.pre67, %.loopexit52.loopexit ], [ %i.l, %bb.c ]
  %i.t = phi ptr [ %.pre, %.loopexit52.loopexit ], [ %i.k, %bb.c ]
  %i.u = invoke noundef zeroext i1 @_Z33ultag_isUnicodeLocaleAttribute_78PKci(ptr noundef %i.t, i32 noundef %i.s)
          to label %bb.e unwind label %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.loopexit52
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.b, align 8, !tbaa !24
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %6, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !26, !noalias !47
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !30, !alias.scope !47
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 40, ptr %i.ae, align 8, !tbaa !31, !alias.scope !47
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i8 0, ptr %i.af, align 4, !tbaa !32, !alias.scope !47
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !34, !alias.scope !47
  store i8 0, ptr %i.ad, align 1, !tbaa !25, !alias.scope !47
  br i1 %i.ac, label %bb.j, label %_ZN6icu_7810CharStringD2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !47
  invoke void @_ZN6icu_7818CharStringByteSinkC2EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 %5)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINS_10CharStringEEE, i64 16), ptr %3, align 8, !tbaa !12, !noalias !47
  invoke void @_ZNK6icu_786Locale15getKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr %i.y, i32 %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !47
  br label %.body.sink.split

_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit: ; preds = %bb.k
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !47
  %.pre68 = load i32, ptr %i.a, align 4, !tbaa !26
  %.pre69 = load i32, ptr %i.ag, align 8          ; 3 uses
  %i.aj = icmp sgt i32 %.pre68, 0
  %.not = icmp eq i32 %.pre69, 0
  %or.cond = select i1 %i.aj, i1 true, i1 %.not
  br i1 %or.cond, label %bb.y, label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.am = icmp sgt i32 %.pre69, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.r
  %.02056 = phi i32 [ %i.aq, %bb.r ], [ 0, %bb.p ]
  %.02155 = phi ptr [ %i.ar, %bb.r ], [ %i.al, %bb.p ] ; 3 uses
  %i.an = load i8, ptr %.02155, align 1, !tbaa !25 ; 2 uses
  switch i8 %i.an, label %bb.q [
    i8 95, label %bb.r
    i8 45, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph
  %i.ao = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.an)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.lr.ph, %.lr.ph, %bb.q
  %i.ap = phi i8 [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ %i.ao, %bb.q ]
  store i8 %i.ap, ptr %.02155, align 1, !tbaa !25
  %i.aq = add nuw nsw i32 %.02056, 1              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02155, i64 1
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre70 = load ptr, ptr %5, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.au = phi ptr [ %i.al, %bb.p ], [ %.pre70, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %.pre69, %bb.p ], [ %i.as, %._crit_edge.loopexit ] ; 2 uses
  %i.av = sext i32 %.lcssa to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 40, ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.az, align 4, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !34
  store i8 0, ptr %i.ax, align 1, !tbaa !25
  %i.bb = icmp sgt i32 %.lcssa, 0
  br i1 %i.bb, label %.lr.ph60, label %.critedge

.lr.ph60:                                         ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread, %.lr.ph60
  %.058.ph = phi i1 [ true, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread ], [ false, %.lr.ph60 ]
  %.01957.ph = phi ptr [ %i.bs, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread ], [ %i.au, %.lr.ph60 ]
  br label %bb.s

bb.s:                                             ; preds = %.outer, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %.01957 = phi ptr [ %i.bo, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit ], [ %.01957.ph, %.outer ] ; 6 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !30
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01957, ptr noundef nonnull dereferenceable(1) %i.bd) #15
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.w, %bb.v, %._crit_edge61.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.body.sink.split

bb.u:                                             ; preds = %bb.s
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !34
  %.not46 = icmp eq i32 %i.bh, 0
  br i1 %.not46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %bb.v, %bb.u
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %.01957)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %8, align 8
  %i.bk = load i32, ptr %i.bc, align 8
  %i.bl = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.x
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01957) #15
  %i.bn = getelementptr i8, ptr %.01957, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 1      ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.aw
  br i1 %i.bp, label %bb.s, label %._crit_edge61, !llvm.loop !46

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread: ; preds = %bb.s
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01957) #15
  %i.br = getelementptr i8, ptr %.01957, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 1      ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.aw
  br i1 %i.bt, label %.outer, label %._crit_edge61.thread, !llvm.loop !46

._crit_edge61:                                    ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  br i1 %.058.ph, label %._crit_edge61.thread, label %.critedge

._crit_edge61.thread:                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit.thread, %._crit_edge61
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.bv = load ptr, ptr %7, align 8, !tbaa !30
  invoke void @_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull @.str, ptr noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %._crit_edge, %._crit_edge61.thread, %._crit_edge61
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.y

bb.y:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit, %.critedge
  %.pr = load i8, ptr %i.af, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i8 %.pr, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = load ptr, ptr %5, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.bw)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

.body.sink.split:                                 ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn39.pn.ph = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.bg, %bb.t ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o
  %.pn39.pn = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %.pn39.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit.split-lp48

bb.ab:                                            ; preds = %bb.g, %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit, %_ZN6icu_7810CharStringD2Ev.exit, %bb.f
  %i.bz = load i8, ptr %i.e, align 4, !tbaa !32
  %.not.i.i.i44 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i44, label %_ZN6icu_7810CharStringD2Ev.exit45, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load ptr, ptr %4, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ca)
          to label %_ZN6icu_7810CharStringD2Ev.exit45 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit45:                ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %0

.loopexit.split-lp48:                             ; preds = %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %.body ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder15clearExtensionsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !23
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815makeBogusLocaleEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::Locale") align 8 %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  invoke void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #13
  resume { ptr, i32 } %i.a

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813LocaleBuilder18copyExtensionsFromERKNS_6LocaleER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 8 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !26
  %i.e = icmp sgt i32 %i.d, 0
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(116) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.d unwind label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.e

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.j, %bb.g, %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(116) %i.c) #13, !inline_history !2
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale7getRootEv()
          to label %bb.g unwind label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNK6icu_786Locale5cloneEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.h unwind label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit ; 3 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %i.o, align 8, !tbaa !23
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.u, align 8, !tbaa !24
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.v = phi ptr [ %i.s, %bb.h ], [ %i.p, %bb.e ]
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_115_copyExtensionsERKNS_6LocaleEPNS_17StringEnumerationERS1_bR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.thread unwind label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.k:                                             ; preds = %bb.b
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit11, label %.thread

.thread:                                          ; preds = %bb.i, %bb.d, %bb.j, %bb.k
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(116) %i.c) #13, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit11

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit11: ; preds = %.thread, %bb.k, %bb.a
  ret void
}

declare noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_115_copyExtensionsERKNS_6LocaleEPNS_17StringEnumerationERS1_bR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.std::optional", align 8     ; 7 uses
  %8 = alloca %"class.std::optional", align 8     ; 7 uses
  %9 = alloca %"class.icu_78::StringByteSink", align 8 ; 8 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 16 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit, label %bb.c

_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit: ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 4 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !26
  %i.f = icmp sgt i32 %i.e, 0
  %.not = icmp eq ptr %i.d, null
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %.loopexit64, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.d, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit ] ; 6 uses
  %.025 = phi ptr [ %1, %bb.b ], [ %i.d, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.c
  %i.r = load ptr, ptr %.025, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(116) %.025, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.e unwind label %.loopexit59 ; 12 uses

bb.e:                                             ; preds = %bb.d
  %.not30 = icmp eq ptr %i.u, null
  br i1 %.not30, label %.loopexit64, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.u)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %11, align 8
  %i.w = load i32, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.x = load i32, ptr %4, align 4, !tbaa !26, !noalias !51
  %i.y = icmp slt i32 %i.x, 1
  store ptr %i.h, ptr %10, align 8, !tbaa !30, !alias.scope !51
  store i32 40, ptr %i.i, align 8, !tbaa !31, !alias.scope !51
  store i8 0, ptr %i.j, align 4, !tbaa !32, !alias.scope !51
  store i32 0, ptr %i.k, align 8, !tbaa !34, !alias.scope !51
  store i8 0, ptr %i.h, align 1, !tbaa !25, !alias.scope !51
  br i1 %i.y, label %bb.h, label %_ZN6icu_7810CharStringD2Ev.exit52

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !51
  invoke void @_ZN6icu_7818CharStringByteSinkC2EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 %10)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINS_10CharStringEEE, i64 16), ptr %9, align 8, !tbaa !12, !noalias !51
  invoke void @_ZNK6icu_786Locale15getKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.v, i32 %i.w, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !51
  br label %.body.sink.split

_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit: ; preds = %bb.i
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !51
  %.pre = load i32, ptr %4, align 4, !tbaa !26
  %i.ab = icmp slt i32 %.pre, 1
  br i1 %i.ab, label %bb.n, label %.critedge

.loopexit59:                                      ; preds = %bb.d
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(10) @.str) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.preheader, label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.ah = load ptr, ptr %10, align 8, !tbaa !30
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc
  %.09.i = phi i32 [ %i.al, %.noexc ], [ 0, %.lr.ph.i.preheader ]
  %.078.i = phi ptr [ %i.am, %.noexc ], [ %i.ah, %.lr.ph.i.preheader ] ; 3 uses
  %i.ai = load i8, ptr %.078.i, align 1, !tbaa !25 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 95
  br i1 %i.aj, label %.noexc, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.ak = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.ai)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p, %.lr.ph.i
  %storemerge.i = phi i8 [ 45, %.lr.ph.i ], [ %i.ak, %bb.p ]
  store i8 %storemerge.i, ptr %.078.i, align 1, !tbaa !25
  %i.al = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.078.i, i64 1
  %exitcond.not.i = icmp eq i32 %i.al, %i.af
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit, label %.lr.ph.i, !llvm.loop !1

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %.noexc49, %.noexc48, %bb.ac, %bb.ab, %bb.aa, %.noexc44, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %.noexc36, %bb.r
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

_ZN6icu_7812_GLOBAL__N_19transformEPci.exit:      ; preds = %.noexc, %bb.o, %bb.n
  br i1 %3, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit
  %i.an = load ptr, ptr %10, align 8, !tbaa !30   ; 7 uses
  %i.ao = load i32, ptr %i.k, align 8, !tbaa !34  ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.as = load i8, ptr %i.u, align 1, !tbaa !25
  %i.at = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.as)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36:                                         ; preds = %bb.r
  %i.au = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.at)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %.noexc36
  %.not.i.i = icmp ne i8 %i.au, 0
  %i.av = add i8 %i.at, -48
  %i.aw = icmp ult i8 %i.av, 10
  %i.ax = or i1 %i.aw, %.not.i.i
  br i1 %i.ax, label %bb.s, label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread

bb.s:                                             ; preds = %.noexc37
  %i.ay = load i8, ptr %i.u, align 1, !tbaa !25
  %i.az = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.ay)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %bb.s
  switch i8 %i.az, label %bb.w [
    i8 117, label %bb.t
    i8 116, label %bb.u
    i8 120, label %bb.v
  ]

bb.t:                                             ; preds = %.noexc38
  %i.ba = invoke noundef zeroext i1 @_Z34ultag_isUnicodeExtensionSubtags_78PKci(ptr noundef %i.an, i32 noundef %i.ao)
          to label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.noexc38
  %i.bb = invoke noundef zeroext i1 @_Z38ultag_isTransformedExtensionSubtags_78PKci(ptr noundef %i.an, i32 noundef %i.ao)
          to label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.noexc38
  %i.bc = invoke noundef zeroext i1 @_Z33ultag_isPrivateuseValueSubtags_78PKci(ptr noundef %i.an, i32 noundef %i.ao)
          to label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.noexc38
  %i.bd = invoke noundef zeroext i1 @_Z27ultag_isExtensionSubtags_78PKci(ptr noundef %i.an, i32 noundef %i.ao)
          to label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.q
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(10) @.str) #15
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bg = invoke noundef zeroext i1 @_Z34ultag_isUnicodeLocaleAttributes_78PKci(ptr noundef %i.an, i32 noundef %i.ao)
          to label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  invoke void @_Z31ulocimp_toBcpKeyWithFallback_78St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, i64 %i.bh, ptr nonnull %i.u)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  invoke void @_Z32ulocimp_toBcpTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %8, i64 %i.bi, ptr nonnull %i.u, i64 %i.bj, ptr nonnull %i.an)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %.noexc44
  %i.bk = load i8, ptr %i.l, align 8, !tbaa !54, !range !55, !noundef !56
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i8, ptr %i.m, align 8, !range !55
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond.i = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond.i, label %bb.aa, label %.noexc47.thread

bb.aa:                                            ; preds = %.noexc45
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.bp = load i64, ptr %7, align 8, !tbaa !60
  %i.bq = trunc i64 %i.bp to i32
  %i.br = invoke noundef zeroext i1 @_Z27ultag_isUnicodeLocaleKey_78PKci(ptr noundef %i.bo, i32 noundef %i.bq)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.aa
  br i1 %i.br, label %bb.ab, label %.noexc47.thread

bb.ab:                                            ; preds = %.noexc46
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.bt = load i64, ptr %8, align 8, !tbaa !60
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = invoke noundef zeroext i1 @_Z28ultag_isUnicodeLocaleType_78PKci(ptr noundef %i.bs, i32 noundef %i.bu)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47.thread:                                  ; preds = %.noexc46, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread

.noexc47:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br i1 %i.bv, label %bb.ac, label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread

_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.y
  %.0.i = phi i1 [ %i.ba, %bb.t ], [ %i.bd, %bb.w ], [ %i.bg, %bb.y ], [ %i.bc, %bb.v ], [ %i.bb, %bb.u ]
  br i1 %.0.i, label %bb.ac, label %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread

_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread: ; preds = %.noexc37, %.noexc47, %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit, %.noexc47.thread
  store i32 1, ptr %4, align 4, !tbaa !26
  br label %.critedge

bb.ac:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit, %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit, %.noexc47
  %i.bw = load ptr, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %i.u)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.ac
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.bw)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %.noexc48
  %i.bx = load ptr, ptr %5, align 8
  %i.by = load i32, ptr %i.p, align 8
  %i.bz = load ptr, ptr %6, align 8
  %i.ca = load i32, ptr %i.q, align 8
  invoke void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.bx, i32 %i.by, ptr %i.bz, i32 %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cb = load i32, ptr %4, align 4, !tbaa !26
  %i.cc = icmp slt i32 %i.cb, 1
  %i.cd = load i8, ptr %i.j, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %10, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ce)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br i1 %i.cc, label %bb.d, label %.loopexit64, !llvm.loop !50

.body.sink.split:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %.pn.i, %bb.l ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %10) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.aj

.critedge:                                        ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit, %_ZN6icu_7812_GLOBAL__N_115_isKeywordValueEPKcS2_i.exit.thread
  %.pr = load i8, ptr %i.j, align 4, !tbaa !32
  %.not.i.i.i51 = icmp eq i8 %.pr, 0
  br i1 %.not.i.i.i51, label %_ZN6icu_7810CharStringD2Ev.exit52, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.ch = load ptr, ptr %10, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ch)
          to label %_ZN6icu_7810CharStringD2Ev.exit52 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #14
  unreachable

_ZN6icu_7810CharStringD2Ev.exit52:                ; preds = %bb.g, %.critedge, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %.loopexit64

.loopexit64:                                      ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.e, %_ZN6icu_7810CharStringD2Ev.exit52, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %_ZN6icu_7810CharStringD2Ev.exit52 ], [ %i.d, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %_ZN6icu_7810CharStringD2Ev.exit ] ; 3 uses
  %i.ck = icmp eq ptr %.sroa.0.2, null
  br i1 %i.ck, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit64
  %i.cl = load ptr, ptr %.sroa.0.2, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(116) %.sroa.0.2) #13, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.ai, %.loopexit64, %bb.a
  ret void

bb.aj:                                            ; preds = %.loopexit59, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit61, %.loopexit59 ]
  %i.co = icmp eq ptr %.sroa.0.0, null
  br i1 %i.co, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit53, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = load ptr, ptr %.sroa.0.0, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(116) %.sroa.0.0) #13, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit53

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit53: ; preds = %bb.aj, %bb.ak
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::Locale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::CharString", align 8 ; 16 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %8 = alloca %"class.icu_78::Locale", align 8    ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  invoke void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN6icu_7815makeBogusLocaleEv.exit unwind label %bb.c

common.resume:                                    ; preds = %.body, %bb.h, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.g, %bb.f ], [ %i.q, %bb.h ], [ %.pn26, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #13
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.e, ptr %2, align 4, !tbaa !26
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  invoke void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN6icu_7815makeBogusLocaleEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #13
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %i.h)
  %i.i = load ptr, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.o, align 8, !tbaa !34
  store i8 0, ptr %i.l, align 1, !tbaa !25
  %i.p = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %3) #13
  br label %common.resume

_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %char0 = load i8, ptr %i.r, align 1
  %.not18 = icmp eq i8 %char0, 0
  br i1 %.not18, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, i8 noundef signext 45, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %i.r)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.s, ptr noundef %i.t, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.k, %bb.q, %bb.p, %bb.n, %bb.m, %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.k, %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %char019 = load i8, ptr %i.y, align 2
  %.not20 = icmp eq i8 %char019, 0
  br i1 %.not20, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit29, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, i8 noundef signext 45, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull %i.y)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.z, ptr noundef %i.aa, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit29 unwind label %bb.l ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit29: ; preds = %bb.o, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %.not21 = icmp eq ptr %i.af, null
  br i1 %.not21, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit30, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit29
  %i.ag = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, i8 noundef signext 45, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %spec.select.i = select i1 %i.aj, ptr @.str.1, ptr %i.ai
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull %spec.select.i)
          to label %bb.r unwind label %bb.l

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %7, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ag, ptr noundef %i.ak, i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit30 unwind label %bb.l ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit30: ; preds = %bb.r, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit29
  %i.ao = load i32, ptr %2, align 4, !tbaa !26
end_hunk_0
