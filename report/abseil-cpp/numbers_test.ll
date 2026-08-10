inline.NumInlined: 12995
inline.NumDeleted: 1495
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN12_GLOBAL__N_136stringtest_safe_strto128_random_Test8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.nr = add nuw nsw i64 %.0546, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.nr, 10000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !2148

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit219, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit205
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %_ZN7testing7MessageD2Ev.exit219 ], [ %.pn64.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bo, %bb.ar, %bb.x
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.ce ], [ %.pn59.pn.pn.pn, %bb.bo ], [ %.pn51.pn.pn, %bb.ar ], [ %.pn46.pn.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cf
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn, %bb.cf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ns = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ag
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.cg
  %i.nu = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %4 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 17
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %.0274 = phi i32 [ 0, %bb.a ], [ %i.am, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.al = trunc nuw i32 %.0274 to i8              ; 2 uses
  store i8 %i.al, ptr %i.a, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.am = add nuw nsw i32 %.0274, 1               ; 2 uses
  %exitcond275 = icmp eq i32 %i.am, 256
  br i1 %exitcond275, label %bb.b, label %bb.c, !llvm.loop !2149

thread-pre-split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %.pr = load i8, ptr %i.a, align 1, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.c
  %i.an = phi i8 [ %.pr, %thread-pre-split ], [ %i.al, %bb.c ] ; 2 uses
  %.014273 = phi i32 [ %i.ic, %thread-pre-split ], [ 2, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.c, ptr %3, align 8, !tbaa !101
  %i.ao = icmp eq i8 %i.an, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  br i1 %i.ao, label %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.ap = zext i8 %i.an to i32
  br label %.preheader.i

_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.e
  store i8 48, ptr %i.c, align 8, !tbaa !26
  store i64 1, ptr %i.d, align 8, !tbaa !103
  store i8 0, ptr %i.ak, align 1, !tbaa !26
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

.preheader.i:                                     ; preds = %.noexc72, %.preheader.preheader.i
  %.02733.i = phi i32 [ %i.aq, %.noexc72 ], [ %i.ap, %.preheader.preheader.i ] ; 3 uses
  %i.aq = udiv i32 %.02733.i, %.014273            ; 2 uses
  %i.ar = mul nuw nsw i32 %i.aq, %.014273
  %i.as = sub nsw i32 %i.ar, %.02733.i
  %i.at = call i32 @llvm.abs.i32(i32 %i.as, i1 true) ; 3 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  %i.av = or disjoint i32 %i.at, 48
  %i.aw = add nuw nsw i32 %i.at, 55
  %i.ax = select i1 %i.au, i32 %i.av, i32 %i.aw
  %i.ay = trunc i32 %i.ax to i8
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.ay)
          to label %.noexc72 unwind label %28     ; 0 uses

.noexc72:                                         ; preds = %.preheader.i
  %.not.i = icmp samesign ugt i32 %.014273, %.02733.i
  br i1 %.not.i, label %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i, !llvm.loop !2150

_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc72
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  %.pre276 = load i64, ptr %i.d, align 8, !tbaa !103
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

28:                                               ; preds = %.preheader.i
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ba = phi i64 [ %.pre276, %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 1, %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  %i.bb = phi ptr [ %.pre, %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.c, %_ZN4absl12lts_2026052616strings_internal4ItoaIhEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.bc = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal17safe_strtou8_baseESt17basic_string_viewIcSt11char_traitsIcEEPhi(i64 %i.ba, ptr %i.bb, ptr noundef nonnull %i.b, i32 noundef %.014273)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.bd = zext i1 %i.bc to i8
  store i8 %i.bd, ptr %4, align 8, !tbaa !27
  store ptr null, ptr %i.e, align 8, !tbaa !368
  store i8 1, ptr %i.f, align 8, !tbaa !369
  br i1 %i.bc, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99, label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %8, align 8, !tbaa !22
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !103
  store i64 %i.bg, ptr %7, align 8
  store ptr %i.bf, ptr %i.h, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 1581, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  %i.bh = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.i
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.l
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !26
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bl = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i86, label %bb.r, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #31, !inline_history !42
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.n:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.o:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn45 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.br, %bb.o ] ; 2 uses
  %i.bt = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.i
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.q
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.n
  %.pn45.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn45, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bx = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #31, !inline_history !42
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.m
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.m ], [ %.pn45.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn45.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #31
  br label %bb.y

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr189 = load ptr, ptr %i.e, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i95 = icmp eq ptr %.pr189, null
  br i1 %.not.i.i.i95, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %.pr189, align 8, !tbaa !22 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr189, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96: ; preds = %bb.s
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i97: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %.pr189, i64 noundef 32) #33
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99: ; preds = %bb.f, %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cg = load i8, ptr %i.b, align 1, !tbaa !26, !noalias !2151
  %i.ch = load i8, ptr %i.a, align 1, !tbaa !26, !noalias !2151
  %i.ci = icmp eq i8 %i.cg, %i.ch
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.z

bb.u:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !2156
  invoke void @_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc177 unwind label %bb.z

.noexc177:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !2156
  invoke void @_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.w, !noalias !2156

_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc177
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.358, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cj = load ptr, ptr %2, align 8, !tbaa !22, !noalias !2156 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.j
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %bb.v
  %i.cl = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !2156
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2156
  %i.cn = load ptr, ptr %1, align 8, !tbaa !22, !noalias !2156 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.k
  br i1 %i.co, label %.noexc101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !26, !noalias !2156
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #33
  br label %.noexc101

bb.w:                                             ; preds = %.noexc177
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.x:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !22, !noalias !2156 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.j
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.x
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !2156
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.cr, %bb.w ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.cs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2156
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_139stringtest_safe_strtou8_exhaustive_Test8TestBodyEv:bb.a
  %i.ie = icmp eq ptr %i.id, %i.c
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ca
  %i.if = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.pn65.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %4 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 17
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %.0282 = phi i32 [ -128, %bb.a ], [ %i.ao, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.an = trunc nsw i32 %.0282 to i8              ; 2 uses
  store i8 %i.an, ptr %i.a, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ao = add nsw i32 %.0282, 1                   ; 2 uses
  %exitcond283 = icmp eq i32 %i.ao, 128
  br i1 %exitcond283, label %bb.b, label %bb.c, !llvm.loop !2160

thread-pre-split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.pr = load i8, ptr %i.a, align 1, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.c
  %i.ap = phi i8 [ %.pr, %thread-pre-split ], [ %i.an, %bb.c ] ; 3 uses
  %.014281 = phi i32 [ %i.ij, %thread-pre-split ], [ 2, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.c, ptr %3, align 8, !tbaa !101
  %i.aq = icmp eq i8 %i.ap, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  br i1 %i.aq, label %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.f

_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.e
  store i8 48, ptr %i.c, align 8, !tbaa !26
  store i64 1, ptr %i.d, align 8, !tbaa !103
  store i8 0, ptr %i.am, align 1, !tbaa !26
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = sext i8 %i.ap to i32
  br label %bb.g

bb.g:                                             ; preds = %.noexc72, %bb.f
  %.02734.i = phi i32 [ %i.ar, %bb.f ], [ %i.as, %.noexc72 ] ; 2 uses
  %i.as = sdiv i32 %.02734.i, %.014281            ; 3 uses
  %i.at = mul nsw i32 %i.as, %.014281             ; 0 uses
  %.recomposed = srem i32 %.02734.i, %.014281
  %i.au = call i32 @llvm.abs.i32(i32 %.recomposed, i1 true) ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 10
  %i.aw = or disjoint i32 %i.au, 48
  %i.ax = add nuw nsw i32 %i.au, 55
  %i.ay = select i1 %i.av, i32 %i.aw, i32 %i.ax
  %i.az = trunc i32 %i.ay to i8
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.az)
          to label %.noexc72 unwind label %.loopexit ; 0 uses

.noexc72:                                         ; preds = %bb.g
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !llvm.loop !2161

bb.h:                                             ; preds = %.noexc72
  %i.bb = icmp slt i8 %i.ap, 0
  br i1 %i.bb, label %bb.i, label %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 45)
          to label %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h, %bb.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  %.pre284 = load i64, ptr %i.d, align 8, !tbaa !103
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.bd = phi i64 [ %.pre284, %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 1, %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  %i.be = phi ptr [ %.pre, %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.c, %_ZN4absl12lts_2026052616strings_internal4ItoaIaEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.bf = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal16safe_strto8_baseESt17basic_string_viewIcSt11char_traitsIcEEPai(i64 %i.bd, ptr %i.be, ptr noundef nonnull %i.b, i32 noundef %.014281)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr %4, align 8, !tbaa !27
  store ptr null, ptr %i.e, align 8, !tbaa !368
  store i8 1, ptr %i.f, align 8, !tbaa !369
  br i1 %i.bf, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100, label %bb.l

bb.k:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %8, align 8, !tbaa !22
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !103
  store i64 %i.bj, ptr %7, align 8
  store ptr %i.bi, ptr %i.h, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 1608, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  %i.bk = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.p
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !26
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.bo = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i87, label %bb.v, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #31, !inline_history !42
  br label %bb.v

bb.q:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.r:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.s:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn45 = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bu, %bb.s ] ; 2 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.u
  %i.by = load i64, ptr %i.i, align 8, !tbaa !26
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.r
  %.pn45.pn = phi { ptr, i32 } [ %i.bt, %bb.r ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn45, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ca = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #31, !inline_history !42
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.q
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %.pn45.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn45.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #31
  br label %bb.ac

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr192 = load ptr, ptr %i.e, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i96 = icmp eq ptr %.pr192, null
  br i1 %.not.i.i.i96, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %.pr192, align 8, !tbaa !22 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pr192, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i97: ; preds = %bb.w
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !26
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i98

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i98: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i97
  call void @_ZdlPvm(ptr noundef nonnull %.pr192, i64 noundef 32) #33
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100: ; preds = %bb.j, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cj = load i8, ptr %i.b, align 1, !tbaa !26, !noalias !2162
  %i.ck = load i8, ptr %i.a, align 1, !tbaa !26, !noalias !2162
  %i.cl = icmp eq i8 %i.cj, %i.ck
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIaaTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ad

bb.y:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !2167
  invoke void @_ZN7testing13PrintToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc180 unwind label %bb.ad

.noexc180:                                        ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !2167
  invoke void @_ZN7testing13PrintToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIaaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.aa, !noalias !2167

_ZN7testing8internal33FormatForComparisonFailureMessageIaaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc180
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.358, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIaaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !22, !noalias !2167 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.j
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %bb.z
  %i.co = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !2167
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2167
  %i.cq = load ptr, ptr %1, align 8, !tbaa !22, !noalias !2167 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.k
  br i1 %i.cr, label %.noexc102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cs = load i64, ptr %i.k, align 8, !tbaa !26, !noalias !2167
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #33
  br label %.noexc102

bb.aa:                                            ; preds = %.noexc180
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.ab:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIaaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !22, !noalias !2167 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_138stringtest_safe_strto8_exhaustive_Test8TestBodyEv:bb.a
  %i.gv = icmp eq i8 %i.gt, %i.gu
  br i1 %i.gv, label %bb.cc, label %bb.bs

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit135, %bb.aw
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZN7testing7MessageD2Ev.exit135 ], [ %.pn54.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.cf

bb.bo:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit140
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %bb.bj, %bb.bk
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.bq:                                            ; preds = %bb.bl
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %21, align 8, !tbaa !22   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ai
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bq
  %i.hb = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bp
  %.pn62 = phi { ptr, i32 } [ %i.gx, %bb.bp ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.gy, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.bo
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.gw, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.ce

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.596, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.hd = load ptr, ptr %27, align 8, !tbaa !22
  %i.he = load i64, ptr %i.aj, align 8, !tbaa !103
  store i64 %i.he, ptr %26, align 8
  store ptr %i.hd, ptr %i.ak, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 1618, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %26)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #31
  %i.hf = load ptr, ptr %27, align 8, !tbaa !22   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.al
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.bw
  %i.hh = load i64, ptr %i.al, align 8, !tbaa !26
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  %i.hj = load ptr, ptr %24, align 8, !tbaa !40   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(128) %i.hj) #31, !inline_history !42
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.cc

bb.bx:                                            ; preds = %bb.bs
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.by:                                            ; preds = %bb.bt
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.bz:                                            ; preds = %bb.bu
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bv
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #31
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn65 = phi { ptr, i32 } [ %i.hq, %bb.ca ], [ %i.hp, %bb.bz ] ; 2 uses
  %i.hr = load ptr, ptr %27, align 8, !tbaa !22   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.al
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.cb
  %i.ht = load i64, ptr %i.al, align 8, !tbaa !26
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.by
  %.pn65.pn = phi { ptr, i32 } [ %i.ho, %bb.by ], [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn65, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  %i.hv = load ptr, ptr %24, align 8, !tbaa !40   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !9
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #31, !inline_history !42
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.bx
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.bx ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn65.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %20) #31
  br label %bb.ce

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZN7testing7MessageD2Ev.exit160
  %i.hz = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i167 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i167, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit171, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !22 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168: ; preds = %bb.cd
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !26
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i169: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 32) #33
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit171

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit171: ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.if = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.c
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit171
  %i.ih = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ij = add nuw nsw i32 %.014281, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ij, 37
  br i1 %exitcond.not, label %bb.d, label %thread-pre-split, !llvm.loop !2170

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.br
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %.pn62.pn, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bn, %.body, %bb.ac
  %.pn65.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn, %bb.ce ], [ %.pn57.pn.pn.pn, %bb.bn ], [ %.pn50.pn.pn, %.body ], [ %.pn45.pn.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp, %.loopexit, %bb.cf
  %.pn65.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn, %bb.cf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ik = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.c
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cg
  %i.im = load i64, ptr %i.c, align 8, !tbaa !26
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.pn65.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134stringtest_safe_strtou32_base_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134stringtest_safe_strtou32_base_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_134stringtest_safe_strtou32_base_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_134stringtest_safe_strtou32_base_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_134stringtest_safe_strtou32_base_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 11 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 13 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.ai
  ret void

bb.c:                                             ; preds = %bb.a, %bb.ai
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  %i.e = phi ptr [ @.str.606, %bb.a ], [ %i.cv, %bb.ai ] ; 6 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @_ZZN4absl12lts_2026052616strings_internal22strtouint32_test_casesEvE10test_cases, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #31
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2171 ; 3 uses
  %i.k = call noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %i.h, ptr nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef %i.j)
  %i.l = zext i1 %i.k to i8                       ; 2 uses
  store i8 %i.l, ptr %i.b, align 1, !tbaa !2173
  %i.m = load i8, ptr %i.g, align 8, !tbaa !2173, !range !37, !noalias !2174, !noundef !38 ; 2 uses
  %i.n = icmp eq i8 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.599, ptr noundef nonnull @.str.600, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.o = load i8, ptr %1, align 8, !tbaa !27, !range !37, !noundef !38
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.601, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #31
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.e, i64 noundef %i.v)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.x = load ptr, ptr %2, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.602, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.aa = load ptr, ptr %2, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %i.j)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.af = phi ptr [ %i.ae, %bb.h ], [ @.str.144, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1627, ptr noundef %i.af)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ag = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #31, !inline_history !42
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit31

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.al, %bb.l ] ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i29, label %_ZN7testing7MessageD2Ev.exit31, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30: ; preds = %bb.p
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9
end_hunk_2
