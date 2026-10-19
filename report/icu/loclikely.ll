Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/loclikely?download=true
inline.NumInlined: 139
inline.NumDeleted: 39
begin_hunk_0_@_Z39ulocimp_getRegionForSupplementalData_78PKcbR10UErrorCode:bb.a

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4) #14 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %4, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.s)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.v = load i32, ptr %3, align 4, !tbaa !10
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.x = load i32, ptr %i.j, align 8, !tbaa !22
  %i.y = icmp eq i32 %i.x, 0
  %or.cond = and i1 %2, %i.y
  br i1 %or.cond, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke fastcc void @_ZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef %1, i64 2, ptr nonnull @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %5) #14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !20
  %.not.i.i.i30 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i30, label %_ZN6icu_7810CharStringD2Ev.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.ac)
          to label %_ZN6icu_7810CharStringD2Ev.exit31 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #16
  unreachable

_ZN6icu_7810CharStringD2Ev.exit31:                ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.af = load i32, ptr %3, align 4, !tbaa !10
  %i.ag = icmp slt i32 %i.af, 1
  %i.ah = load i32, ptr %i.j, align 8
  %.not39 = icmp eq i32 %i.ah, 0
  %or.cond40 = select i1 %i.ag, i1 %.not39, i1 false
  br i1 %or.cond40, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_Z27ulocimp_addLikelySubtags_78PKcR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !10
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ak = load ptr, ptr %6, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !22
  %i.an = sext i32 %i.am to i64
  invoke void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, i64 %i.an, ptr %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ao = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %7) #14 ; 0 uses
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.x

bb.t:                                             ; preds = %bb.g, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.z

bb.v:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #14
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.q
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.as, %bb.w ], [ %i.ar, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.aq, %bb.u ], [ %i.ap, %bb.t ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #14
  resume { ptr, i32 } %.pn.pn

bb.aa:                                            ; preds = %bb.c, %bb.d, %_ZN6icu_7810CharStringD2Ev.exit31, %bb.x, %bb.k, %_ZN6icu_7810CharStringD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, ptr noundef %1, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = load i32, ptr %4, align 4, !tbaa !10
  %i.h = icmp slt i32 %i.g, 1
  %i.i = add i32 %i.f, -3
  %i.j = icmp ult i32 %i.i, 4
  %or.cond3 = and i1 %i.h, %i.j
  br i1 %or.cond3, label %bb.c, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %5, align 8, !tbaa !18
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %i.m = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.l)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %5, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  %i.q = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.p)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %.not16 = icmp eq i8 %i.q, 0
  br i1 %.not16, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.k, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid) #14
  %.not17 = icmp eq i32 %i.t, 0
  br i1 %.not17, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6icu_7817RegionValidateMapC1Ev(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7817RegionValidateMapD1Ev, ptr nonnull @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, ptr nonnull @__dso_handle) #14 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.v = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23    ; 2 uses
  %i.z = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.w)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.k
  %.not.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.aa = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.y)
          to label %.noexc20 unwind label %bb.s

.noexc20:                                         ; preds = %bb.l
  %.not5.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not5.i.i, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i

_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i:  ; preds = %.noexc20
  %i.ab = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.w)
          to label %.noexc21 unwind label %bb.s

.noexc21:                                         ; preds = %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i
  %i.ac = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.y)
          to label %.noexc22 unwind label %bb.s

.noexc22:                                         ; preds = %.noexc21
  %i.ad = sext i8 %i.ab to i32
  %i.ae = mul nsw i32 %i.ad, 26
  %i.af = sext i8 %i.ac to i32
  %i.ag = add nsw i32 %i.ae, -1755
  %i.ah = add nsw i32 %i.ag, %i.af                ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit

_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit:    ; preds = %.noexc22
  %i.aj = lshr i32 %i.ah, 5
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid, i64 8), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = zext i32 %i.am to i64
  %i.ao = and i32 %i.ah, 31
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.an
  %.not26 = icmp eq i64 %i.ar, 0
  br i1 %.not26, label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit
  %i.as = load ptr, ptr %5, align 8, !tbaa !18
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  %i.au = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.at)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.av = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 noundef signext %i.au, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %5, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.ay)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 noundef signext %i.az, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread unwind label %bb.s ; 0 uses

bb.q:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_116GetRegionFromKeyEPKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE5valid) #14
  br label %bb.v

bb.s:                                             ; preds = %bb.c, %bb.e, %.noexc21, %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.i, %bb.l, %bb.k, %bb.p, %bb.o, %bb.n, %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread: ; preds = %.noexc20, %.noexc, %.noexc22, %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit, %bb.p, %bb.f, %bb.d, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread
  %i.bg = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.bg)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #16
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZNK6icu_7817RegionValidateMap5isSetEPKc.exit.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.v:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.bc, %bb.r ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #14
  resume { ptr, i32 } %.pn.pn
}

declare void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7817RegionValidateMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817RegionValidateMapE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 16 dereferenceable(88) @_ZN12_GLOBAL__N_115gValidRegionMapE, i64 88, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7817RegionValidateMapD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7817RegionValidateMapD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7817RegionValidateMapD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7817RegionValidateMap5isSetEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !23
  %i.b = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.a)
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = tail call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.d)
  %.not5.i = icmp eq i8 %i.e, 0
  br i1 %.not5.i, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread

_ZNK6icu_7817RegionValidateMap5valueEPKc.exit:    ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  %i.j = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.i)
  %i.k = sext i8 %i.j to i32
  %i.l = mul nsw i32 %i.k, 26
  %i.m = load i8, ptr %i.c, align 1, !tbaa !23
  %i.n = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.m)
  %i.o = sext i8 %i.n to i32
  %i.p = add nsw i32 %i.l, -1755
  %i.q = add nsw i32 %i.p, %i.o                   ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7817RegionValidateMap5valueEPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = lshr i32 %i.q, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30
  %i.x = zext i32 %i.w to i64
end_hunk_0
