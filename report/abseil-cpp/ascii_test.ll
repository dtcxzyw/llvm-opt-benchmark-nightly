inline.NumInlined: 1852
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_119AsciiToFoo_All_Test8TestBodyEv:bb.a
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.s = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.55) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.t = icmp ne ptr %i.s, null                   ; 2 uses
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %1, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.w, align 8, !tbaa !34
  br i1 %i.t, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %5, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43
  store i64 %i.z, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.x, ptr %i.aa, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, i64 64, ptr nonnull @.str.2, i32 noundef 163, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  %i.ab = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ag = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #18, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !45  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !22
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #19
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.el

bb.h:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit86

bb.i:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.j:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.l
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.az = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.az, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #18, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.em

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN7testing15AssertionResultD2Ev.exit190
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit190 ] ; 8 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bk = trunc i64 %indvars.iv to i8             ; 18 uses
  %i.bl = add i8 %i.bk, -97
  %i.bm = icmp ult i8 %i.bl, 26
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal8kToUpperE, i64 %indvars.iv ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22  ; 3 uses
  store i8 %i.bo, ptr %i.g, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.bp = trunc i64 %indvars.iv to i32
  %29 = add i32 %i.bp, -32                        ; 2 uses
  store i32 %29, ptr %i.h, align 4, !tbaa !72
  %30 = sext i8 %i.bo to i32
  %i.bq = icmp eq i32 %29, %30
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareIciTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZN7testing8internal18CmpHelperEQFailureIciEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIciTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIciTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.br = load i8, ptr %6, align 8, !tbaa !23, !range !56, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.af, label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIciTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %7, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.bk, ptr %i.f, align 1, !tbaa !22
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !9
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !38
  %.not.i.i.i92 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.v unwind label %bb.aa      ; 0 uses

bb.u:                                             ; preds = %bb.s
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %i.bk)
          to label %bb.v unwind label %bb.aa      ; 0 uses

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cd = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.cf = phi ptr [ %i.ce, %bb.w ], [ @.str.73, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 169, ptr noundef %i.cf)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.cg = load ptr, ptr %7, align 8, !tbaa !36    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i95, label %_ZN7testing7MessageD2Ev.exit97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.y
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(128) %i.cg) #18, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit97

_ZN7testing7MessageD2Ev.exit97:                   ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.af

bb.z:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit100

bb.aa:                                            ; preds = %bb.u, %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %i.cn, %bb.ac ], [ %i.cm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.ad ], [ %i.cl, %bb.aa ] ; 2 uses
  %i.co = load ptr, ptr %7, align 8, !tbaa !36    ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.co, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit100, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99: ; preds = %bb.ae
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #18, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit100

_ZN7testing7MessageD2Ev.exit100:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99, %bb.ae, %bb.z
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.z ], [ %.pn59.pn, %bb.ae ], [ %.pn59.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.em

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIciTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit97
  %i.cs = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 4 uses
  %.not.i.i101 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i101, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 32) #19
  br label %.thread

.thread:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bu

bb.ah:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.cy = load i8, ptr %i.bn, align 1, !tbaa !22  ; 4 uses
  store i8 %i.cy, ptr %i.i, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i8 %i.bk, ptr %i.j, align 1, !tbaa !22
  %i.cz = icmp eq i8 %i.cy, %i.bk
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
  br label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal18CmpHelperEQFailureIccEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  br label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %i.da = load i8, ptr %9, align 8, !tbaa !23, !range !56, !noundef !57
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.dc = load ptr, ptr %10, align 8, !tbaa !36
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.bk, ptr %i.e, align 1, !tbaa !22
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !9
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %.not.i.i.i102 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i102, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.ao unwind label %bb.at     ; 0 uses
end_hunk_0
