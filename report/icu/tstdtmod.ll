Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/tstdtmod?download=true
inline.NumInlined: 167
inline.NumDeleted: 71
begin_hunk_0_@_ZN16IcuTestErrorCode8setScopeEPKc:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.q, ptr noundef %.0.i.i.i.i, i64 noundef %i.o)
          to label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEaSIN6icu_7813UnicodeStringEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIDsS2_EESt6__not_IS9_IPSB_PKS4_EESG_IS9_ISC_PKDsEEEE5valueERS4_E4typeESC_.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEaSIN6icu_7813UnicodeStringEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIDsS2_EESt6__not_IS9_IPSB_PKS4_EESG_IS9_ISC_PKDsEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignIN6icu_7813UnicodeStringEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIDsS2_EESt6__not_IS9_IPSB_PKS4_EESG_IS9_ISC_PKDsEEEE5valueERS4_E4typeESC_.exit.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignIN6icu_7813UnicodeStringEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIDsS2_EESt6__not_IS9_IPSB_PKS4_EESG_IS9_ISC_PKDsEEEE5valueERS4_E4typeESC_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.s
}

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN16IcuTestErrorCode8setScopeESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16IcuTestErrorCode13handleFailureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt17basic_string_viewIDsSt11char_traitsIDsEEC2EPKDs.exit:
  tail call void @_ZNK16IcuTestErrorCode6errlogEaSt17basic_string_viewIDsSt11char_traitsIDsEEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 0, i64 15, ptr nonnull @.str.4, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN14TestDataModule17getTestDataModuleEPKcR7TestLogR10UErrorCode(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25 ; 5 uses
  invoke void @_ZN16RBTestDataModuleC1EPKcR7TestLogR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %i.c, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %2, align 4, !tbaa !31
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #23
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN14TestDataModuleC2EPKcR7TestLogR10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %3) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14TestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN14TestDataModuleD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14TestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN14TestDataModuleD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK14TestDataModule7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16RBTestDataModuleD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(76) dereferenceable(76) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16RBTestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  invoke void @ures_close_78(ptr noundef %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  invoke void @ures_close_78(ptr noundef %i.d)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  invoke void @ures_close_78(ptr noundef %i.f)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  invoke void @uprv_free_78(ptr noundef %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14TestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN14TestDataModuleD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #24, !inline_history !42
  br label %_ZN14TestDataModuleD2Ev.exit

_ZN14TestDataModuleD2Ev.exit:                     ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #22
  unreachable
}

declare void @ures_close_78(ptr noundef) local_unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16RBTestDataModuleD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN16RBTestDataModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16RBTestDataModuleC2EPKcR7TestLogR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((0, 57), (64, 76)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16RBTestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.i, align 8, !tbaa !44
  %i.j = invoke noundef ptr @_ZN16RBTestDataModule13getTestBundleEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.n       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.d, align 8, !tbaa !39
  %i.k = load i8, ptr %i.i, align 8, !tbaa !44
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = invoke ptr @ures_getByKey_78(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.n       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.e, align 8, !tbaa !36
  %i.m = invoke i32 @ures_getSize_78(ptr noundef %i.l)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  store i32 %i.m, ptr %i.h, align 8, !tbaa !43
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.o = invoke ptr @ures_getByKey_78(ptr noundef %i.n, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.f, align 8, !tbaa !40
  %i.p = load i32, ptr %3, align 4, !tbaa !31
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.10, ptr %5, align 8, !tbaa !45
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef -1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !27   ; 4 uses
  %i.s = and i16 %i.r, 17
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.t = and i16 %i.r, 2
  %.not2.i.i = icmp eq i16 %i.t, 0
  br i1 %.not2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 10
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i = phi ptr [ %i.w, %bb.k ], [ %i.u, %bb.j ], [ null, %bb.h ]
  %i.x = icmp slt i16 %i.r, 0
  %i.y = ashr i16 %i.r, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = select i1 %i.x, i32 %i.ab, i32 %i.z
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %i.ad, ptr %.0.i.i)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24
  %i.ah = load ptr, ptr %5, align 8, !tbaa !45
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah) #24, !srcloc !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store i8 0, ptr %i.i, align 8, !tbaa !44
  br label %bb.v

bb.n:                                             ; preds = %bb.r, %bb.e, %bb.d, %bb.c, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.aj, %bb.o ]
  %i.al = load ptr, ptr %5, align 8, !tbaa !45
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.al) #24, !srcloc !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.w

bb.r:                                             ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.s unwind label %bb.n       ; 3 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN9RBDataMapC1EP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.am, ptr %i.b, align 8, !tbaa !35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 16) #23
  br label %bb.w

bb.v:                                             ; preds = %bb.m, %bb.t, %bb.b
  ret void

bb.w:                                             ; preds = %bb.u, %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.an, %bb.u ], [ %i.ai, %bb.n ]
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14TestDataModule, i64 16), ptr %0, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN14TestDataModuleD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #24, !inline_history !42
  br label %_ZN14TestDataModuleD2Ev.exit

_ZN14TestDataModuleD2Ev.exit:                     ; preds = %bb.w, %bb.x
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN16RBTestDataModule13getTestBundleEPKcR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48, !nonnull !29, !align !30 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.i = tail call ptr @ures_openDirect_78(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !31
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !48, !nonnull !29, !align !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.12, ptr %5, align 8, !tbaa !45
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef -1)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %1, i32 noundef -1, i32 noundef 0)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_78plERKNS_13UnicodeStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = and i16 %i.m, 17
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = and i16 %i.m, 2
  %.not2.i.i = icmp eq i16 %i.o, 0
  br i1 %.not2.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 10
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi ptr [ %i.r, %bb.i ], [ %i.p, %bb.h ], [ null, %bb.f ]
  %i.s = icmp slt i16 %i.m, 0
  %i.t = ashr i16 %i.m, 5
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 %i.y, ptr %.0.i.i)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #24
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24
  %i.ac = load ptr, ptr %5, align 8, !tbaa !45
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ac) #24, !srcloc !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.ad, align 8, !tbaa !44
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ag, %bb.n ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.af, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.ae, %bb.l ]
  %i.ai = load ptr, ptr %5, align 8, !tbaa !45
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ai) #24, !srcloc !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.pn

bb.s:                                             ; preds = %bb.a, %bb.k, %bb.b
  %.015 = phi ptr [ %i.i, %bb.k ], [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.015
}

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @ures_getSize_78(ptr noundef) local_unnamed_addr #11

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #11

declare void @_ZN9RBDataMapC1EP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK16RBTestDataModule7getInfoERPK7DataMapR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !49
  %.not = icmp ne ptr %i.b, null
  %. = zext i1 %.not to i8
  ret i8 %.
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK16RBTestDataModule14createTestDataEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !44
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm:bb.a
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !50

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i16, ptr %i.u, align 2, !tbaa !24
  store i16 %i.v, ptr %i.t, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit

bb.g:                                             ; preds = %bb.e
  %i.w = shl i64 %i.o, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.t, ptr align 2 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit
  %i.x = load i16, ptr %3, align 2, !tbaa !24
  store i16 %i.x, ptr %i.m, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit
  %i.y = shl i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.m, ptr align 2 %3, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_replace_coldEPDsmPKDsmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %i.z = load ptr, ptr %0, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.f
  store i16 0, ptr %i.aa, align 2, !tbaa !24
  ret ptr %0
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_replace_coldEPDsmPKDsmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %.not50 = icmp ugt i64 %4, %2
  %i.a = add i64 %4, -1
  %or.cond.not = icmp ult i64 %i.a, %2
  br i1 %or.cond.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit

bb.b:                                             ; preds = %bb.a
  %cond62 = icmp eq i64 %4, 1
  br i1 %cond62, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i16, ptr %3, align 2, !tbaa !24
  store i16 %i.b, ptr %1, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit

bb.d:                                             ; preds = %bb.b
  %i.c = shl i64 %4, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %3, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.not51 = icmp eq i64 %5, 0
  %.not52 = icmp eq i64 %2, %4
  %or.cond55 = or i1 %.not52, %.not51
  br i1 %or.cond55, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4 ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %cond61 = icmp eq i64 %5, 1
  br i1 %cond61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24
  store i16 %i.f, ptr %i.d, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56

bb.g:                                             ; preds = %bb.e
  %i.g = shl i64 %5, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr align 2 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit
  br i1 %.not50, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %4
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 3 uses
  %.not53 = icmp ugt ptr %i.h, %i.i
  br i1 %.not53, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %cond60 = icmp eq i64 %4, 1
  br i1 %cond60, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = load i16, ptr %3, align 2, !tbaa !24
  store i16 %i.j, ptr %1, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.k:                                             ; preds = %bb.i
  %i.k = shl i64 %4, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %3, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.l:                                             ; preds = %bb.h
  %.not54 = icmp ult ptr %3, %i.i
  br i1 %.not54, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.l = ptrtoint ptr %3 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sub i64 %4, %2
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %i.q = getelementptr [2 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.r = load i16, ptr %i.q, align 2, !tbaa !24
  store i16 %i.r, ptr %1, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.o:                                             ; preds = %bb.m
  %i.s = shl i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 2 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.p:                                             ; preds = %bb.l
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  switch i64 %i.w, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58
  ]

bb.q:                                             ; preds = %bb.p
  %i.x = load i16, ptr %3, align 2, !tbaa !24
  store i16 %i.x, ptr %1, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %3, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58: ; preds = %bb.p, %bb.q, %bb.r
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4 ; 2 uses
  %i.aa = sub i64 %4, %i.w                        ; 2 uses
  switch i64 %i.aa, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57
  ]

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !24
  store i16 %i.ab, ptr %i.y, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58
  %i.ac = shl i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.y, ptr nonnull align 2 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit57: ; preds = %bb.t, %bb.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit58, %bb.o, %bb.n, %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_moveEPDsPKDsm.exit56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 8
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ], [ 7, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #26
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = shl nuw nsw i64 %.0, 1
  %i.r = add nuw nsw i64 %i.q, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 5 uses
  switch i64 %1, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %i.t = load i16, ptr %i.g, align 2, !tbaa !24
  store i16 %i.t, ptr %i.s, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %i.u = shl i64 %1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.s, ptr align 2 %i.g, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, %bb.g, %bb.f
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i16, ptr %3, align 2, !tbaa !24
  store i16 %i.y, ptr %i.x, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26

bb.j:                                             ; preds = %bb.h
  %i.z = shl i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.x, ptr nonnull align 2 %3, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %1
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %1
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !24
  store i16 %i.ae, ptr %i.ab, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27

bb.m:                                             ; preds = %bb.k
  %i.af = shl i64 %i.d, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ab, ptr align 2 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27
  %5 = icmp ult i64 %i.b, 8
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !27
  %i.ah = shl i64 %i.ag, 1
  %i.ai = add i64 %i.ah, 2
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !26
  store i64 %.0, ptr %i.h, align 8, !tbaa !27
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTS16IcuTestErrorCode", !12, i64 8, !13, i64 16, !15, i64 24, !16, i64 32}
!12 = !{!"_ZTS10UErrorCode", !6, i64 0}
!13 = !{!"p1 _ZTS7TestLog", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !17, i64 0, !19, i64 8, !6, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 char16_t", !14, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!13, !13, i64 0}
!21 = !{!11, !15, i64 24}
!22 = !{!17, !18, i64 0}
!23 = !{!16, !19, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"char16_t", !6, i64 0}
!26 = !{!16, !18, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!11, !13, i64 16}
!29 = !{}
!30 = !{i64 8}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !15, i64 8}
!33 = !{!"_ZTS14TestDataModule", !15, i64 8, !34, i64 16, !13, i64 24}
!34 = !{!"p1 _ZTS7DataMap", !14, i64 0}
!35 = !{!33, !34, i64 16}
!36 = !{!37, !38, i64 40}
!37 = !{!"_ZTS16RBTestDataModule", !33, i64 0, !38, i64 32, !38, i64 40, !38, i64 48, !6, i64 56, !15, i64 64, !5, i64 72}
!38 = !{!"p1 _ZTS15UResourceBundle", !14, i64 0}
!39 = !{!37, !38, i64 32}
!40 = !{!37, !38, i64 48}
!41 = !{!37, !15, i64 64}
!42 = !{ptr @_ZN14TestDataModuleD2Ev}
!43 = !{!37, !5, i64 72}
!44 = !{!37, !6, i64 56}
!45 = !{!46, !18, i64 0}
!46 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !18, i64 0}
!47 = !{i64 2149025572}
!48 = !{!33, !13, i64 24}
!49 = !{!34, !34, i64 0}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
