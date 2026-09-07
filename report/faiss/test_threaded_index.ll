Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_threaded_index?download=true
inline.NumInlined: 1596
inline.NumDeleted: 738
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN36ThreadedIndex_MultipleException_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.au:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn56 = phi { ptr, i32 } [ %i.ez, %bb.av ], [ %i.ey, %bb.au ] ; 2 uses
  %i.fa = load ptr, ptr %11, align 8, !tbaa !57   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bc
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.aw
  %i.fc = load i64, ptr %i.bc, align 8, !tbaa !58
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.at
  %.pn56.pn = phi { ptr, i32 } [ %i.ex, %bb.at ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn56, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.fe = load ptr, ptr %9, align 8, !tbaa !60    ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.as
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.as ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn56.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.az

bb.ax:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %.pr = load ptr, ptr %i.bb, align 8, !tbaa !74  ; 4 uses
  %.not.i.i107 = icmp eq ptr %.pr, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = load ptr, ptr %.pr, align 8, !tbaa !57  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !58
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing8internal14TrueWithStringD2Ev.exit, %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.not, label %.lr.ph.i.i.i, label %.lr.ph.preheader

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit106, %_ZN7testing8internal14TrueWithStringD2Ev.exit94, %bb.b
  %.pn60 = phi { ptr, i32 } [ %i.bu, %bb.b ], [ %.pn56.pn.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %.pn52.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit94 ]
  call void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit, %bb.az
  %.pn63.pn = phi { ptr, i32 } [ %.pn60, %bb.az ], [ %lpad.loopexit, %.loopexit ]
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn63.pn

bb.bb:                                            ; preds = %bb.ac, %bb.w
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30ThreadedIndex_TestReplica_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %15 = alloca %"class.faiss::IndexReplicasTemplate", align 8 ; 13 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 50, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 6, ptr %i.b, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @_ZN5faiss21IndexReplicasTemplateINS_5IndexEEC1Eib(ptr noundef nonnull align 8 dereferenceable(65) %15, i32 noundef 3, i1 noundef zeroext true)
  %i.ac = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 11 uses

bb.d:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc unwind label %.loopexit.split-lp417

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %i.cs, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32
          to label %.noexc134 unwind label %.loopexit416 ; 5 uses

.noexc134:                                        ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cs ; 2 uses
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !76
  %i.ag = add nsw i64 %i.cs, -1                   ; 2 uses
  %37 = icmp eq i64 %i.ag, 0
  br i1 %37, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc134
  %38 = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 0, ptr %i.aj, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 25
  store i8 1, ptr %i.ak, align 1, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store i32 1, ptr %i.al, align 4, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.ac, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i8 0, ptr %i.an, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  %i.ap = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit ; 12 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.ac, ptr %i.ap, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull %i.ac)
          to label %bb.f unwind label %.split.loop.exit.split-lp.split.loop.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.aq = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 3, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.at, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 25
  store i8 1, ptr %i.au, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 1, ptr %i.av, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store float 0.000000e+00, ptr %i.aw, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.aq, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i8 0, ptr %i.ax, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.lr.ph.i.i.i.i.i.preheader.1 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 14 uses

.lr.ph.i.i.i.i.i.preheader.1:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ap, align 8, !tbaa !37, !alias.scope !251, !noalias !250
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.1, ptr %i.az, align 8, !tbaa !37, !alias.scope !250, !noalias !251
  store ptr null, ptr %i.ap, align 8, !tbaa !37, !alias.scope !251, !noalias !250
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 8) #31
  %.val118.1.pre = load ptr, ptr %i.bb, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.1.pre)
          to label %bb.g unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %i.bc = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i8 0, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 25
  store i8 1, ptr %i.bg, align 1, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store i32 1, ptr %i.bh, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store float 0.000000e+00, ptr %i.bi, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bc, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  store i8 0, ptr %i.bj, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i8 0, i64 40, i1 false)
  %i.bl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc136.2 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 22 uses

.noexc136.2:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bc, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %wide.load4151 = load <2 x i64>, ptr %i.az, align 8, !tbaa !37, !alias.scope !253, !noalias !252
  store <2 x i64> %wide.load4151, ptr %i.bl, align 8, !tbaa !37, !alias.scope !252, !noalias !253
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !37, !alias.scope !253, !noalias !252
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 16) #31
  %.val118.2.pre = load ptr, ptr %i.bn, align 8, !tbaa !37
  %.sroa.21.3.2 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 3 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.2.pre)
          to label %bb.h unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp

bb.h:                                             ; preds = %.noexc136.2
  %i.bo = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 11 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3: ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 3, ptr %i.bp, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %i.bq, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i8 0, ptr %i.br, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 25
  store i8 1, ptr %i.bs, align 1, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  store i32 1, ptr %i.bt, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store float 0.000000e+00, ptr %i.bu, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bo, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i8 0, ptr %i.bv, align 4, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false)
  store ptr %i.bo, ptr %.sroa.21.3.2, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull %i.bo)
          to label %bb.i unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3
  %i.bx = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %i.bz, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 25
  store i8 1, ptr %i.cb, align 1, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store i32 1, ptr %i.cc, align 4, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store float 0.000000e+00, ptr %i.cd, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bx, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  store i8 0, ptr %i.ce, align 4, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i8 0, i64 40, i1 false)
  %i.cg = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %.noexc136.4 unwind label %.loopexit.split.loop.exit ; 20 uses

.noexc136.4:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.bx, ptr %i.ch, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val.i.i.i.i.i.i.i.i.i.i.4 = load i64, ptr %i.bl, align 8, !tbaa !37, !alias.scope !255, !noalias !254
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4, ptr %i.cg, align 8, !tbaa !37, !alias.scope !254, !noalias !255
  store ptr null, ptr %i.bl, align 8, !tbaa !37, !alias.scope !255, !noalias !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.val.i.i.i.i.i.i.i.i.i.i.4.1 = load i64, ptr %i.ci, align 8, !tbaa !37, !alias.scope !257, !noalias !256
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.1, ptr %i.cj, align 8, !tbaa !37, !alias.scope !256, !noalias !257
  store ptr null, ptr %i.ci, align 8, !tbaa !37, !alias.scope !257, !noalias !256
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.val.i.i.i.i.i.i.i.i.i.i.4.2 = load i64, ptr %i.ck, align 8, !tbaa !37, !alias.scope !259, !noalias !258
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.2, ptr %i.cl, align 8, !tbaa !37, !alias.scope !258, !noalias !259
  store ptr null, ptr %i.ck, align 8, !tbaa !37, !alias.scope !259, !noalias !258
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.val.i.i.i.i.i.i.i.i.i.i.4.3 = load i64, ptr %i.cm, align 8, !tbaa !37, !alias.scope !261, !noalias !260
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.3, ptr %i.cn, align 8, !tbaa !37, !alias.scope !260, !noalias !261
  store ptr null, ptr %i.cm, align 8, !tbaa !37, !alias.scope !261, !noalias !260
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 5 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 32) #31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 6 uses
  %.val118.4.pre = load ptr, ptr %i.co, align 8, !tbaa !37
  %.0.lcssa.i.i.i.i.i.pn.45289 = ptrtoaddr ptr %i.co to i64
  %.sroa.21.3.4 = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 7 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.4.pre)
          to label %bb.j unwind label %.split.loop.exit

bb.j:                                             ; preds = %.noexc136.4
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !75  ; 3 uses
  %i.cr = mul nsw i32 %i.cq, 3
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp slt i32 %i.cq, 0
  br i1 %i.ct, label %bb.d, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.loopexit.split.loop.exit:                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4
  %lpad.split.loop.exit2841 = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.split.loop.exit2846 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.i
  %lpad.split.loop.exit2852 = landingpad { ptr, i32 }
          cleanup
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %.sroa.21.3.3.le6429 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.c
  %lpad.split.loop.exit2857 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.f
  %lpad.split.loop.exit2868 = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.21.3.le = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.h
  %lpad.split.loop.exit2877 = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %lpad.split.loop.exit2882 = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %lpad.split.loop.exit6445 = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp: ; preds = %bb.g
  %lpad.split.loop.exit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.da = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.21.3.1.le = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %.loopexit

.split.loop.exit:                                 ; preds = %.noexc136.4
  %lpad.split.loop.exit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit:        ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %lpad.split.loop.exit2835 = landingpad { ptr, i32 }
          cleanup
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.21.3.le2872 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3
  %lpad.split.loop.exit6427 = landingpad { ptr, i32 }
          cleanup
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %.sroa.21.3.3.le = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %lpad.split.loop.exit6434 = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.21.3.1.le6448 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp: ; preds = %.noexc136.2
  %lpad.split.loop.exit.split-lp6435 = landingpad { ptr, i32 }
          cleanup
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %.loopexit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc134, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0387.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.af, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %39 = load i32, ptr %i.a, align 4, !tbaa !75
  %i.df = load i32, ptr %i.b, align 4, !tbaa !75
  %i.dg = mul nsw i32 %i.df, %39                  ; 3 uses
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = icmp slt i32 %i.dg, 0
  br i1 %i.di, label %bb.k, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc143 unwind label %.loopexit.split-lp422

.noexc143:                                        ; preds = %bb.k
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i138 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %i.dj = shl nuw nsw i64 %i.dh, 2
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #32
          to label %.noexc144 unwind label %.loopexit421 ; 5 uses

.noexc144:                                        ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dh ; 2 uses
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !76
  %i.dm = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139: ; preds = %.noexc144
  %i.do = getelementptr i8, ptr %i.dk, i64 4
  %.idx.i.i.i.i.i.i.i140 = shl nuw nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.do, i8 0, i64 %.idx.i.i.i.i.i.i.i140, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139, %.noexc144, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %.sroa.0379.0 = phi ptr [ %i.dk, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139 ], [ %i.dk, %.noexc144 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137 ] ; 8 uses
  %.sroa.11384.0 = phi ptr [ %i.dl, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139 ], [ %i.dl, %.noexc144 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137 ] ; 2 uses
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !75
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !75
  %i.dr = mul nsw i32 %i.dq, %i.dp                ; 3 uses
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %i.dt = icmp slt i32 %i.dr, 0
  br i1 %i.dt, label %bb.m, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc149 unwind label %.loopexit.split-lp427

.noexc149:                                        ; preds = %bb.m
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145
  %.not.i.i.i.i146 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i146, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.du = shl nuw nsw i64 %i.ds, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #32
          to label %.noexc150 unwind label %.loopexit426 ; 5 uses

.noexc150:                                        ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds ; 2 uses
  store i64 0, ptr %i.dv, align 8, !tbaa !77
  %i.dx = add nsw i64 %i.ds, -1                   ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc150
  %i.dz = getelementptr i8, ptr %i.dv, i64 8
  %.idx.i.i.i.i.i.i.i147 = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dz, i8 0, i64 %.idx.i.i.i.i.i.i.i147, i1 false), !tbaa !77
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc150, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0373.0 = phi ptr [ %i.dv, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dv, %.noexc150 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.dw, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dw, %.noexc150 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !75
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN5faiss21IndexReplicasTemplateINS_5IndexEE3addElPKf(ptr noundef nonnull align 8 dereferenceable(65) %15, i64 noundef %i.eb, ptr noundef %.sroa.0387.0)
          to label %.preheader415 unwind label %bb.o

.preheader415:                                    ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.ec = ptrtoint ptr %.sroa.21.3.4 to i64
  %i.ed = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 3 uses
  %.not1222 = icmp eq ptr %.sroa.21.3.4, %i.cg    ; 3 uses
  br i1 %.not1222, label %._crit_edge, label %.lr.ph

.loopexit416:                                     ; preds = %bb.e
  %lpad.loopexit418 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp417:                            ; preds = %bb.d
  %lpad.loopexit.split-lp419 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit421:                                     ; preds = %bb.l
  %lpad.loopexit423 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit258

.loopexit.split-lp422:                            ; preds = %bb.k
  %lpad.loopexit.split-lp424 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit258

.loopexit426:                                     ; preds = %bb.n
  %lpad.loopexit428 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit256

.loopexit.split-lp427:                            ; preds = %bb.m
  %lpad.loopexit.split-lp429 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit256

bb.o:                                             ; preds = %._crit_edge, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph:                                           ; preds = %.preheader415, %_ZN7testing15AssertionResultD2Ev.exit172
  %.0321214 = phi i64 [ %i.hu, %_ZN7testing15AssertionResultD2Ev.exit172 ], [ 0, %.preheader415 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0321214 ; 2 uses
  %.val126 = load ptr, ptr %i.eh, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %.val126, i64 40 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !77, !noalias !262
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !262
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i64 %i.ej, %i.el
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.u

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !263
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %.noexc276 unwind label %bb.u

.noexc276:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !263
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.s, !noalias !263

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc276
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.en = load ptr, ptr %14, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.h
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.ep = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !263
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !263
  %i.er = load ptr, ptr %13, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.i
  br i1 %i.es, label %.noexc152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.et = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !263
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #31
  br label %.noexc152

bb.s:                                             ; preds = %.noexc276
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.t:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %14, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.h
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.t
  %i.ez = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !263
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.ev, %bb.s ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.ew, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !263
  %i.fb = load ptr, ptr %13, align 8, !tbaa !57, !noalias !263 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv:bb.a
  %i.hd = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i162, label %_ZN7testing7MessageD2Ev.exit164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.aq
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit164

_ZN7testing7MessageD2Ev.exit164:                  ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit167

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit161
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn91 = phi { ptr, i32 } [ %i.hj, %bb.at ], [ %i.hi, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.hk = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.au
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(128) %i.hk) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166, %bb.au, %bb.ar
  %.pn91.pn = phi { ptr, i32 } [ %i.hh, %bb.ar ], [ %.pn91, %bb.au ], [ %.pn91, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  br label %bb.ax

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKfPfTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit164
  %i.ho = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %.not.i.i168 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i168, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !57 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.aw
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !58
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit172

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.hu = add nuw i64 %.0321214, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.hu, %i.ef
  br i1 %exitcond.not, label %.lr.ph1217.preheader, label %.lr.ph, !llvm.loop !217

.lr.ph1217.preheader:                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit172
  %i.hv = sub i64 %.0.lcssa.i.i.i.i.i.pn.45289, %i.ed ; 2 uses
  %i.hw = lshr i64 %i.hv, 3
  %i.hx = add nuw nsw i64 %i.hw, 1
  %xtraiter = and i64 %i.hx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1217.prol.loopexit, label %.lr.ph1217.prol

.lr.ph1217.prol:                                  ; preds = %.lr.ph1217.preheader, %.lr.ph1217.prol
  %.sroa.0371.01216.prol = phi ptr [ %i.ia, %.lr.ph1217.prol ], [ %i.cg, %.lr.ph1217.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1217.prol ], [ 0, %.lr.ph1217.preheader ]
  %.val124.prol = load ptr, ptr %.sroa.0371.01216.prol, align 8, !tbaa !37 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val124.prol, i64 36
  store i8 0, ptr %i.hy, align 4, !tbaa !35
  %i.hz = getelementptr inbounds nuw i8, ptr %.val124.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hz, i8 0, i64 40, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1217.prol.loopexit, label %.lr.ph1217.prol, !llvm.loop !218

.lr.ph1217.prol.loopexit:                         ; preds = %.lr.ph1217.prol, %.lr.ph1217.preheader
  %.sroa.0371.01216.unr = phi ptr [ %i.cg, %.lr.ph1217.preheader ], [ %i.ia, %.lr.ph1217.prol ]
  %i.ib = icmp ult i64 %i.hv, 56
  br i1 %i.ib, label %._crit_edge, label %.lr.ph1217

bb.ax:                                            ; preds = %_ZN7testing7MessageD2Ev.exit167, %.body290
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %_ZN7testing7MessageD2Ev.exit167 ], [ %eh.lpad-body291, %.body290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.em

._crit_edge:                                      ; preds = %.lr.ph1217.prol.loopexit, %.lr.ph1217, %.preheader415
  %i.ic = load i32, ptr %i.a, align 4, !tbaa !75
  %i.id = sext i32 %i.ic to i64
  %i.ie = load i32, ptr %i.b, align 4, !tbaa !75
  %i.if = sext i32 %i.ie to i64
  invoke void @_ZNK5faiss21IndexReplicasTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(65) %15, i64 noundef %i.id, ptr noundef %.sroa.0387.0, i64 noundef %i.if, ptr noundef %.sroa.0379.0, ptr noundef %.sroa.0373.0, ptr noundef null)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not1222, label %._crit_edge1220, label %.lr.ph1219

.lr.ph1217:                                       ; preds = %.lr.ph1217.prol.loopexit, %.lr.ph1217
  %.sroa.0371.01216 = phi ptr [ %i.jd, %.lr.ph1217 ], [ %.sroa.0371.01216.unr, %.lr.ph1217.prol.loopexit ] ; 9 uses
  %.val124 = load ptr, ptr %.sroa.0371.01216, align 8, !tbaa !37 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val124, i64 36
  store i8 0, ptr %i.ig, align 4, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %.val124, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ih, i8 0, i64 40, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 8
  %.val124.1 = load ptr, ptr %i.ii, align 8, !tbaa !37 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val124.1, i64 36
  store i8 0, ptr %i.ij, align 4, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %.val124.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, i8 0, i64 40, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 16
  %.val124.2 = load ptr, ptr %i.il, align 8, !tbaa !37 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.val124.2, i64 36
  store i8 0, ptr %i.im, align 4, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %.val124.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.in, i8 0, i64 40, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 24
  %.val124.3 = load ptr, ptr %i.io, align 8, !tbaa !37 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val124.3, i64 36
  store i8 0, ptr %i.ip, align 4, !tbaa !35
  %i.iq = getelementptr inbounds nuw i8, ptr %.val124.3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iq, i8 0, i64 40, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 32
  %.val124.4 = load ptr, ptr %i.ir, align 8, !tbaa !37 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val124.4, i64 36
  store i8 0, ptr %i.is, align 4, !tbaa !35
  %i.it = getelementptr inbounds nuw i8, ptr %.val124.4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.it, i8 0, i64 40, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 40
  %.val124.5 = load ptr, ptr %i.iu, align 8, !tbaa !37 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.val124.5, i64 36
  store i8 0, ptr %i.iv, align 4, !tbaa !35
  %i.iw = getelementptr inbounds nuw i8, ptr %.val124.5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iw, i8 0, i64 40, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 48
  %.val124.6 = load ptr, ptr %i.ix, align 8, !tbaa !37 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val124.6, i64 36
  store i8 0, ptr %i.iy, align 4, !tbaa !35
  %i.iz = getelementptr inbounds nuw i8, ptr %.val124.6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iz, i8 0, i64 40, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 56 ; 2 uses
  %.val124.7 = load ptr, ptr %i.ja, align 8, !tbaa !37 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val124.7, i64 36
  store i8 0, ptr %i.jb, align 4, !tbaa !35
  %i.jc = getelementptr inbounds nuw i8, ptr %.val124.7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jc, i8 0, i64 40, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 64
  %i.je = icmp eq ptr %i.ja, %i.co
  br i1 %i.je, label %._crit_edge, label %.lr.ph1217

._crit_edge1220:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit254, %.preheader
  %.not.i.i.i173 = icmp eq ptr %.sroa.0373.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge1220
  %i.jf = ptrtoint ptr %.sroa.11.0 to i64
  %i.jg = ptrtoint ptr %.sroa.0373.0 to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.0, i64 noundef %i.jh) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge1220, %bb.ay
  %.not.i.i.i174 = icmp eq ptr %.sroa.0379.0, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ji = ptrtoint ptr %.sroa.11384.0 to i64
  %i.jj = ptrtoint ptr %.sroa.0379.0 to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.0, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.az
  %.not.i.i.i175 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIfSaIfEED2Ev.exit176, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %40 = ptrtoint ptr %.sroa.13.0 to i64
  %i.jl = ptrtoint ptr %.sroa.0387.0 to i64
  %i.jm = sub i64 %40, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.jm) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit176

_ZNSt6vectorIfSaIfEED2Ev.exit176:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ba
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %.not1222, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit176, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jq, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.cg, %_ZNSt6vectorIfSaIfEED2Ev.exit176 ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jn = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.not.i.i.i177 = icmp eq ptr %.05.i.i.i, %i.co
  br i1 %.not.i.i.i177, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit176
  %i.jr = ptrtoint ptr %i.cp to i64
  %i.js = sub i64 %i.jr, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.js) #31
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph1219:                                       ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit254
  %.01218 = phi i64 [ %i.ta, %_ZN7testing15AssertionResultD2Ev.exit254 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.jt = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ju = sext i32 %i.jt to i64
  %i.jv = udiv i64 %i.ju, %i.ef                   ; 2 uses
  store i64 %i.jv, ptr %i.d, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.01218 ; 5 uses
  %.val123 = load ptr, ptr %i.jw, align 8, !tbaa !37
  %i.jx = getelementptr inbounds nuw i8, ptr %.val123, i64 40 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !77, !noalias !266
  %i.jz = icmp eq i64 %i.jy, %i.jv
  br i1 %i.jz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph1219
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bg

bb.bc:                                            ; preds = %.lr.ph1219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !267
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %.noexc304 unwind label %bb.bg

.noexc304:                                        ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !267
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.be, !noalias !267

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc304
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ka = load ptr, ptr %10, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.n
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299: ; preds = %bb.bd
  %i.kc = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !267
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !267
  %i.ke = load ptr, ptr %9, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.o
  br i1 %i.kf, label %.noexc179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300
  %i.kg = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !267
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #31
  br label %.noexc179

bb.be:                                            ; preds = %.noexc304
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292

bb.bf:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = load ptr, ptr %10, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.n
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297: ; preds = %bb.bf
  %i.km = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !267
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297, %bb.be
  %.pn.i293 = phi { ptr, i32 } [ %i.ki, %bb.be ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297 ], [ %i.kj, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !267
  %i.ko = load ptr, ptr %9, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.o
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292
  %i.kq = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !267
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !267
  br label %.body305

.noexc179:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !267
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc179, %bb.bb
  %i.ks = load i8, ptr %22, align 8, !tbaa !72, !range !62, !noundef !63
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.bq, label %bb.bh

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body305

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.kv = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bj, %bb.bi
  %i.kx = phi ptr [ %i.kw, %bb.bj ], [ @.str.65, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 201, ptr noundef %i.kx)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.ky = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bl
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !30
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(128) %i.ky) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit187

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.le, %bb.bo ], [ %i.ld, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.lf = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i185 = icmp eq ptr %i.lf, null
end_hunk_1
begin_hunk_2_@_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv:bb.a
  %i.ru = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rv = load ptr, ptr %2, align 8, !tbaa !57, !noalias !275 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.z
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361: ; preds = %bb.dw
  %i.rx = load i64, ptr %i.z, align 8, !tbaa !58, !noalias !275
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361, %bb.dv
  %.pn.i357 = phi { ptr, i32 } [ %i.rt, %bb.dv ], [ %i.ru, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361 ], [ %i.ru, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !275
  %i.rz = load ptr, ptr %1, align 8, !tbaa !57, !noalias !275 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.aa
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356
  %i.sb = load i64, ptr %i.aa, align 8, !tbaa !58, !noalias !275
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !275
  br label %.body369

.noexc241:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !275
  br label %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit

_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit: ; preds = %.noexc241, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.sd = load i8, ptr %34, align 8, !tbaa !72, !range !62, !noundef !63
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %bb.ei, label %bb.dz

bb.dx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit234, %.body354
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit234 ], [ %eh.lpad-body355, %.body354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.el

bb.dy:                                            ; preds = %bb.dt, %bb.ds
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %.body369

.body369:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359, %bb.dy
  %eh.lpad-body370 = phi { ptr, i32 } [ %i.sf, %bb.dy ], [ %.pn.i357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.ek

bb.dz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.sg = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i242, label %_ZNK7testing15AssertionResult15failure_messageEv.exit243, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit243

_ZNK7testing15AssertionResult15failure_messageEv.exit243: ; preds = %bb.eb, %bb.ea
  %i.si = phi ptr [ %i.sh, %bb.eb ], [ @.str.65, %bb.ea ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 209, ptr noundef %i.si)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit243
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.sj = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i244 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i244, label %_ZN7testing7MessageD2Ev.exit246, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245: ; preds = %bb.ed
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !30
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(128) %i.sj) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit246

_ZN7testing7MessageD2Ev.exit246:                  ; preds = %bb.ed, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.ei

bb.ee:                                            ; preds = %bb.dz
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit249

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit243
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn82 = phi { ptr, i32 } [ %i.sp, %bb.eg ], [ %i.so, %bb.ef ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.sq = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i247 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i247, label %_ZN7testing7MessageD2Ev.exit249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.eh
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !30
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8
  call void %i.st(ptr noundef nonnull align 8 dereferenceable(128) %i.sq) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit249

_ZN7testing7MessageD2Ev.exit249:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248, %bb.eh, %bb.ee
  %.pn82.pn = phi { ptr, i32 } [ %i.sn, %bb.ee ], [ %.pn82, %bb.eh ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #30
  br label %bb.ek

bb.ei:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit, %_ZN7testing7MessageD2Ev.exit246
  %i.su = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 4 uses
  %.not.i.i250 = icmp eq ptr %i.su, null
  br i1 %.not.i.i250, label %_ZN7testing15AssertionResultD2Ev.exit254, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !57 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251: ; preds = %bb.ej
  %i.sy = load i64, ptr %i.sw, align 8, !tbaa !58
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sz) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit254

_ZN7testing15AssertionResultD2Ev.exit254:         ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ta = add nuw i64 %.01218, 1                  ; 2 uses
  %exitcond1973.not = icmp eq i64 %i.ta, %i.ef
  br i1 %exitcond1973.not, label %._crit_edge1220, label %.lr.ph1219, !llvm.loop !249

bb.ek:                                            ; preds = %_ZN7testing7MessageD2Ev.exit249, %.body369
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit249 ], [ %eh.lpad-body370, %.body369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.dx, %.body338, %bb.co, %.body305
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.ek ], [ %.pn78.pn.pn, %bb.dx ], [ %.pn74.pn.pn, %.body338 ], [ %.pn70.pn.pn, %bb.co ], [ %.pn.pn.pn, %.body305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.em

bb.em:                                            ; preds = %.body, %bb.ax, %bb.el, %bb.o
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.o ], [ %.pn82.pn.pn.pn, %bb.el ], [ %.pn91.pn.pn, %bb.ax ], [ %.pn87.pn.pn, %.body ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0373.0, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorIlSaIlEED2Ev.exit256, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tb = ptrtoint ptr %.sroa.11.0 to i64
  %i.tc = ptrtoint ptr %.sroa.0373.0 to i64
  %i.td = sub i64 %i.tb, %i.tc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.0, i64 noundef %i.td) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit256

_ZNSt6vectorIlSaIlEED2Ev.exit256:                 ; preds = %.loopexit426, %.loopexit.split-lp427, %bb.en, %bb.em
  %.pn91.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.en ], [ %.pn91.pn.pn.pn.pn, %bb.em ], [ %lpad.loopexit428, %.loopexit426 ], [ %lpad.loopexit.split-lp429, %.loopexit.split-lp427 ] ; 2 uses
  %.not.i.i.i257 = icmp eq ptr %.sroa.0379.0, null
  br i1 %.not.i.i.i257, label %_ZNSt6vectorIfSaIfEED2Ev.exit258, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %i.te = ptrtoint ptr %.sroa.11384.0 to i64
  %i.tf = ptrtoint ptr %.sroa.0379.0 to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.0, i64 noundef %i.tg) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit258

_ZNSt6vectorIfSaIfEED2Ev.exit258:                 ; preds = %.loopexit421, %.loopexit.split-lp422, %bb.eo, %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn, %bb.eo ], [ %.pn91.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit256 ], [ %lpad.loopexit423, %.loopexit421 ], [ %lpad.loopexit.split-lp424, %.loopexit.split-lp422 ] ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i259, label %.loopexit, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %41 = ptrtoint ptr %.sroa.13.0 to i64
  %i.th = ptrtoint ptr %.sroa.0387.0 to i64
  %i.ti = sub i64 %41, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.ti) #31
  br label %.loopexit

.loopexit:                                        ; preds = %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit, %.loopexit416, %.loopexit.split-lp417, %bb.ep, %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %.sroa.21.1 = phi ptr [ %.sroa.21.3.4, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %.sroa.21.3.4, %.split.loop.exit ], [ %.sroa.21.3.le2872, %.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.4, %bb.ep ], [ %.sroa.21.3.4, %.loopexit.split-lp417 ], [ %.sroa.21.3.4, %.loopexit416 ], [ %i.cu, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le6429, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %.sroa.21.3.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cy, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cz, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le6448, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 2 uses
  %.sroa.31.1 = phi ptr [ %i.cp, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.cp, %.split.loop.exit ], [ %i.db, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.cp, %bb.ep ], [ %i.cp, %.loopexit.split-lp417 ], [ %i.cp, %.loopexit416 ], [ %i.cu, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.cv, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.da, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.cw, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cx, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cy, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cz, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.dc, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.dd, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.de, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  %.sroa.0394.1 = phi ptr [ %i.cg, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.cg, %.split.loop.exit ], [ %i.ap, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.cg, %bb.ep ], [ %i.cg, %.loopexit.split-lp417 ], [ %i.cg, %.loopexit416 ], [ %i.bl, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.bl, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.az, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ap, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bl, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ap, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.az, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.bl, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.az, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bl, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 5 uses
  %.pn102.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %lpad.split.loop.exit, %.split.loop.exit ], [ %lpad.split.loop.exit2835, %.split.loop.exit.split-lp.split.loop.exit ], [ %.pn91.pn.pn.pn.pn.pn.pn, %bb.ep ], [ %lpad.loopexit.split-lp419, %.loopexit.split-lp417 ], [ %lpad.loopexit418, %.loopexit416 ], [ %lpad.split.loop.exit2841, %.loopexit.split.loop.exit ], [ %lpad.split.loop.exit2846, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2852, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2857, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %lpad.split.loop.exit2868, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2877, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2882, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6445, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6427, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6434, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp6435, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.not4.i.i.i261 = icmp eq ptr %.sroa.0394.1, %.sroa.21.1
  br i1 %.not4.i.i.i261, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262

.lr.ph.i.i.i262:                                  ; preds = %.loopexit, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267
  %.05.i.i.i263 = phi ptr [ %i.tm, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267 ], [ %.sroa.0394.1, %.loopexit ] ; 2 uses
  %.0.val.i.i.i264 = load ptr, ptr %.05.i.i.i263, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i265 = icmp eq ptr %.0.val.i.i.i264, null
  br i1 %.not.i.i.i.i.i.i265, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266: ; preds = %.lr.ph.i.i.i262
  %i.tj = load ptr, ptr %.0.val.i.i.i264, align 8, !tbaa !30
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i264) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266, %.lr.ph.i.i.i262
  %i.tm = getelementptr inbounds nuw i8, ptr %.05.i.i.i263, i64 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.tm, %.sroa.21.1
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, %.loopexit
  %.not.i.i2.i273 = icmp eq ptr %.sroa.0394.1, null
  br i1 %.not.i.i2.i273, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271
  %i.tn = ptrtoint ptr %.sroa.31.1 to i64
  %i.to = ptrtoint ptr %.sroa.0394.1 to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1, i64 noundef %i.tp) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn102.pn
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29ThreadedIndex_TestShards_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29ThreadedIndex_TestShards_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %15 = alloca %"struct.faiss::IndexShardsTemplate", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 70, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 6, ptr %i.b, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  %.067.idx1224.sroa.phi.sroa.speculated = phi i1 [ true, %bb.a ], [ false, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @_ZN5faiss19IndexShardsTemplateINS_5IndexEEC1Eibb(ptr noundef nonnull align 8 dereferenceable(66) %15, i32 noundef 3, i1 noundef zeroext %.067.idx1224.sroa.phi.sroa.speculated, i1 noundef zeroext true)
  br label %bb.g

bb.d:                                             ; preds = %bb.m
  %.0.lcssa.i.i.i.i.i.pn.lcssa43284329 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.0397.3.lcssa43314332 = ptrtoaddr ptr %.sroa.0397.3 to i64
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !75  ; 3 uses
  %i.ad = mul nsw i32 %i.ac, 3
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = icmp slt i32 %i.ac, 0
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc unwind label %.loopexit.split-lp420

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc139 unwind label %.loopexit419 ; 5 uses

.noexc139:                                        ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !76
  %i.aj = add nsw i64 %i.ae, -1                   ; 2 uses
  %37 = icmp eq i64 %i.aj, 0
  br i1 %37, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc139
  %38 = getelementptr i8, ptr %i.ah, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.c, %bb.m
  %.0341216 = phi i32 [ 0, %bb.c ], [ %i.by, %bb.m ]
  %.sroa.0397.01215 = phi ptr [ null, %bb.c ], [ %.sroa.0397.3, %bb.m ] ; 13 uses
  %.sroa.33.01214 = phi ptr [ null, %bb.c ], [ %.sroa.33.3, %bb.m ] ; 9 uses
  %.sroa.23.01213 = phi ptr [ null, %bb.c ], [ %.sroa.23.3, %bb.m ] ; 4 uses
  %i.ak = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %bb.h unwind label %.loopexit  ; 12 uses

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 3, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i8 0, ptr %i.an, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 25
  store i8 1, ptr %i.ao, align 1, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 1, ptr %i.ap, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store float 0.000000e+00, ptr %i.aq, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.ak, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i8 0, ptr %i.ar, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 40, i1 false)
  %.not.i = icmp eq ptr %.sroa.23.01213, %.sroa.33.01214
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ak, ptr %.sroa.23.01213, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.at = ptrtoint ptr %.sroa.33.01214 to i64     ; 3 uses
  %i.au = ptrtoint ptr %.sroa.0397.01215 to i64   ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #34
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %i.ay = icmp eq ptr %.sroa.33.01214, %.sroa.0397.01215 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ay, i64 1, i64 %i.ax
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #32
          to label %.noexc141 unwind label %.loopexit ; 10 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av
  store ptr %i.ak, ptr %i.bf, align 8, !tbaa !37
  br i1 %i.ay, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc141
  %i.bg = add i64 %i.at, -8
  %i.bh = sub i64 %i.bg, %i.au                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader3582, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bk = add i64 %i.at, -8
  %i.bl = sub i64 %i.bk, %i.au
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %scevgep3576.a = getelementptr i8, ptr %scevgep, i64 %i.bm
  %scevgep3577.a = getelementptr i8, ptr %.sroa.0397.01215, i64 8
  %scevgep3578 = getelementptr i8, ptr %scevgep3577.a, i64 %i.bm
  %bound0 = icmp ult ptr %i.be, %scevgep3578
  %bound1 = icmp ult ptr %.sroa.0397.01215, %scevgep3576.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader3582, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bq ; 2 uses
  %next.gep3579 = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.br = getelementptr i8, ptr %next.gep3579, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep3579, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %wide.load3580 = load <2 x i64>, ptr %i.br, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !333, !noalias !332
  store <2 x i64> %wide.load3580, ptr %i.bs, align 8, !tbaa !37, !alias.scope !333, !noalias !332
  %i.bt = getelementptr i8, ptr %next.gep3579, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep3579, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader3582

.lr.ph.i.i.i.i.i.preheader3582:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.sroa.0397.01215, %vector.memcheck ], [ %.sroa.0397.01215, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader3582, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3582 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3582 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !331, !noalias !330
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !330, !noalias !331
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !331, !noalias !330
  %i.bv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %.sroa.33.01214
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !283

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc141
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc141 ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %.sroa.0397.01215, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.01215, i64 noundef %i.av) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %.val119.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.i
  %.val119 = phi ptr [ %.val119.pre, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ak, %bb.i ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.23.01213, %bb.i ] ; 4 uses
  %.sroa.33.3 = phi ptr [ %i.bx, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.33.01214, %bb.i ] ; 7 uses
  %.sroa.0397.3 = phi ptr [ %i.be, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.0397.01215, %bb.i ] ; 18 uses
  %.sroa.23.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 8 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val119)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.by = add nuw nsw i32 %.0341216, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, 7
  br i1 %exitcond.not, label %bb.d, label %bb.g, !llvm.loop !284

.loopexit:                                        ; preds = %bb.g, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.23.01213.lcssa = phi ptr [ %.sroa.23.01213, %bb.g ], [ %.sroa.33.01214, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc139, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0390.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc139 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %i.ai, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ai, %.noexc139 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %39 = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !75
  %i.cb = mul nsw i32 %i.ca, %39                  ; 3 uses
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %i.cd = icmp slt i32 %i.cb, 0
  br i1 %i.cd, label %bb.o, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc148 unwind label %.loopexit.split-lp425

.noexc148:                                        ; preds = %bb.o
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i143 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142
  %i.ce = shl nuw nsw i64 %i.cc, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #32
          to label %.noexc149 unwind label %.loopexit424 ; 5 uses

.noexc149:                                        ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !76
  %i.ch = add nsw i64 %i.cc, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144: ; preds = %.noexc149
  %i.cj = getelementptr i8, ptr %i.cf, i64 4
  %.idx.i.i.i.i.i.i.i145 = shl nuw nsw i64 %i.ch, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i145, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144, %.noexc149, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142
  %.sroa.0383.0 = phi ptr [ %i.cf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144 ], [ %i.cf, %.noexc149 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142 ] ; 7 uses
  %.sroa.10387.0 = phi ptr [ %i.cg, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144 ], [ %i.cg, %.noexc149 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142 ] ; 2 uses
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !75
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !75
  %i.cm = mul nsw i32 %i.cl, %i.ck                ; 3 uses
  %i.cn = sext i32 %i.cm to i64                   ; 3 uses
  %i.co = icmp slt i32 %i.cm, 0
  br i1 %i.co, label %bb.q, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc154 unwind label %.loopexit.split-lp430

.noexc154:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150
  %.not.i.i.i.i151 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i151, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cp = shl nuw nsw i64 %i.cn, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #32
          to label %.noexc155 unwind label %.loopexit429 ; 5 uses

.noexc155:                                        ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cn ; 2 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !77
  %i.cs = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc155
  %i.cu = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i.i.i152 = shl nuw nsw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i152, i1 false), !tbaa !77
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc155, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0378.0 = phi ptr [ %i.cq, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cq, %.noexc155 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.cr, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cr, %.noexc155 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !75
  %i.cw = sext i32 %i.cv to i64
  invoke void @_ZN5faiss19IndexShardsTemplateINS_5IndexEE3addElPKf(ptr noundef nonnull align 8 dereferenceable(66) %15, i64 noundef %i.cw, ptr noundef %.sroa.0390.0)
          to label %.preheader418 unwind label %bb.s

.preheader418:                                    ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.cx = ptrtoint ptr %.sroa.23.3 to i64
  %i.cy = ptrtoint ptr %.sroa.0397.3 to i64       ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.not1225 = icmp eq ptr %.sroa.23.3, %.sroa.0397.3 ; 3 uses
  br i1 %.not1225, label %._crit_edge, label %.lr.ph

.loopexit419:                                     ; preds = %bb.f
  %lpad.loopexit421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit.split-lp420:                            ; preds = %bb.e
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit424:                                     ; preds = %bb.p
  %lpad.loopexit426 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit263

.loopexit.split-lp425:                            ; preds = %bb.o
  %lpad.loopexit.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit263

.loopexit429:                                     ; preds = %bb.r
  %lpad.loopexit431 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit261

.loopexit.split-lp430:                            ; preds = %bb.q
  %lpad.loopexit.split-lp432 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit261

bb.s:                                             ; preds = %._crit_edge, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.lr.ph:                                           ; preds = %.preheader418, %_ZN7testing15AssertionResultD2Ev.exit177
  %.0331217 = phi i64 [ %i.gt, %_ZN7testing15AssertionResultD2Ev.exit177 ], [ 0, %.preheader418 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !75
  %i.dd = sext i32 %i.dc to i64
  %i.de = udiv i64 %i.dd, %i.da                   ; 2 uses
  store i64 %i.de, ptr %i.c, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0397.3, i64 %.0331217 ; 2 uses
  %.val129 = load ptr, ptr %i.df, align 8, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %.val129, i64 40 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !77, !noalias !336
  %i.di = icmp eq i64 %i.dh, %i.de
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !337
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %.noexc281 unwind label %bb.y

.noexc281:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !337
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.w, !noalias !337

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc281
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.dj = load ptr, ptr %14, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.h
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !337
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !337
  %i.dn = load ptr, ptr %13, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.i
  br i1 %i.do, label %.noexc157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dp = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !337
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #31
  br label %.noexc157

bb.w:                                             ; preds = %.noexc281
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.x:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %14, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.h
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.x
  %i.dv = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !337
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.w
end_hunk_2
begin_hunk_3_@_ZN29ThreadedIndex_TestShards_Test8TestBodyEv:bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit172

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit166
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn92 = phi { ptr, i32 } [ %i.gi, %bb.ax ], [ %i.gh, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.gj = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i170, label %_ZN7testing7MessageD2Ev.exit172, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171: ; preds = %bb.ay
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !30
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %i.gj) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit172

_ZN7testing7MessageD2Ev.exit172:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171, %bb.ay, %bb.av
  %.pn92.pn = phi { ptr, i32 } [ %i.gg, %bb.av ], [ %.pn92, %bb.ay ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  br label %bb.bb

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKfPfTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit169
  %i.gn = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %.not.i.i173 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i173, label %_ZN7testing15AssertionResultD2Ev.exit177, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !57 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174: ; preds = %bb.ba
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !58
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit177

_ZN7testing15AssertionResultD2Ev.exit177:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gt = add nuw i64 %.0331217, 1                ; 2 uses
  %exitcond1975.not = icmp eq i64 %i.gt, %i.da
  br i1 %exitcond1975.not, label %.lr.ph1220.preheader, label %.lr.ph, !llvm.loop !297

.lr.ph1220.preheader:                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit177
  %i.gu = sub i64 %.0.lcssa.i.i.i.i.i.pn.lcssa43284329, %.sroa.0397.3.lcssa43314332 ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1
  %xtraiter = and i64 %i.gw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol

.lr.ph1220.prol:                                  ; preds = %.lr.ph1220.preheader, %.lr.ph1220.prol
  %.sroa.0376.01219.prol = phi ptr [ %i.gz, %.lr.ph1220.prol ], [ %.sroa.0397.3, %.lr.ph1220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1220.prol ], [ 0, %.lr.ph1220.preheader ]
  %.val127.prol = load ptr, ptr %.sroa.0376.01219.prol, align 8, !tbaa !37 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 36
  store i8 0, ptr %i.gx, align 4, !tbaa !35
  %i.gy = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i8 0, i64 40, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol, !llvm.loop !298

.lr.ph1220.prol.loopexit:                         ; preds = %.lr.ph1220.prol, %.lr.ph1220.preheader
  %.sroa.0376.01219.unr = phi ptr [ %.sroa.0397.3, %.lr.ph1220.preheader ], [ %i.gz, %.lr.ph1220.prol ]
  %i.ha = icmp ult i64 %i.gu, 56
  br i1 %i.ha, label %._crit_edge, label %.lr.ph1220

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit172, %.body295
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit172 ], [ %eh.lpad-body296, %.body295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.body
  %.pn92.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn, %bb.bb ], [ %.pn88.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.er

._crit_edge:                                      ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220, %.preheader418
  %i.hb = load i32, ptr %i.a, align 4, !tbaa !75
  %i.hc = sext i32 %i.hb to i64
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !75
  %i.he = sext i32 %i.hd to i64
  invoke void @_ZNK5faiss19IndexShardsTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(66) %15, i64 noundef %i.hc, ptr noundef %.sroa.0390.0, i64 noundef %i.he, ptr noundef %.sroa.0383.0, ptr noundef %.sroa.0378.0, ptr noundef null)
          to label %.preheader unwind label %bb.s

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not1225, label %._crit_edge1223, label %.lr.ph1222

.lr.ph1220:                                       ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220
  %.sroa.0376.01219 = phi ptr [ %i.ic, %.lr.ph1220 ], [ %.sroa.0376.01219.unr, %.lr.ph1220.prol.loopexit ] ; 9 uses
  %.val127 = load ptr, ptr %.sroa.0376.01219, align 8, !tbaa !37 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val127, i64 36
  store i8 0, ptr %i.hf, align 4, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %.val127, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, i8 0, i64 40, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 8
  %.val127.1 = load ptr, ptr %i.hh, align 8, !tbaa !37 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val127.1, i64 36
  store i8 0, ptr %i.hi, align 4, !tbaa !35
  %i.hj = getelementptr inbounds nuw i8, ptr %.val127.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, i8 0, i64 40, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 16
  %.val127.2 = load ptr, ptr %i.hk, align 8, !tbaa !37 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.val127.2, i64 36
  store i8 0, ptr %i.hl, align 4, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %.val127.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hm, i8 0, i64 40, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 24
  %.val127.3 = load ptr, ptr %i.hn, align 8, !tbaa !37 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.val127.3, i64 36
  store i8 0, ptr %i.ho, align 4, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %.val127.3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hp, i8 0, i64 40, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 32
  %.val127.4 = load ptr, ptr %i.hq, align 8, !tbaa !37 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.val127.4, i64 36
  store i8 0, ptr %i.hr, align 4, !tbaa !35
  %i.hs = getelementptr inbounds nuw i8, ptr %.val127.4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i8 0, i64 40, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 40
  %.val127.5 = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.val127.5, i64 36
  store i8 0, ptr %i.hu, align 4, !tbaa !35
  %i.hv = getelementptr inbounds nuw i8, ptr %.val127.5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, i8 0, i64 40, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 48
  %.val127.6 = load ptr, ptr %i.hw, align 8, !tbaa !37 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val127.6, i64 36
  store i8 0, ptr %i.hx, align 4, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %.val127.6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, i8 0, i64 40, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 56 ; 2 uses
  %.val127.7 = load ptr, ptr %i.hz, align 8, !tbaa !37 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.val127.7, i64 36
  store i8 0, ptr %i.ia, align 4, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %.val127.7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, i8 0, i64 40, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 64
  %i.id = icmp eq ptr %i.hz, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.id, label %._crit_edge, label %.lr.ph1220

._crit_edge1223:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit259, %.preheader
  %.not.i.i.i178 = icmp eq ptr %.sroa.0378.0, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1223
  %i.ie = ptrtoint ptr %.sroa.10.0 to i64
  %i.if = ptrtoint ptr %.sroa.0378.0 to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0378.0, i64 noundef %i.ig) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge1223, %bb.bd
  %.not.i.i.i179 = icmp eq ptr %.sroa.0383.0, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ih = ptrtoint ptr %.sroa.10387.0 to i64
  %i.ii = ptrtoint ptr %.sroa.0383.0 to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.0, i64 noundef %i.ij) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.be
  %.not.i.i.i180 = icmp eq ptr %.sroa.0390.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIfSaIfEED2Ev.exit181, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %40 = ptrtoint ptr %.sroa.13.0 to i64
  %i.ik = ptrtoint ptr %.sroa.0390.0 to i64
  %i.il = sub i64 %40, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0390.0, i64 noundef %i.il) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

_ZNSt6vectorIfSaIfEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bf
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %.not1225, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit181, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ip, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.sroa.0397.3, %_ZNSt6vectorIfSaIfEED2Ev.exit181 ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.im = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.not.i.i.i182 = icmp eq ptr %.05.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i182, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit181
  %.not.i.i2.i = icmp eq ptr %.sroa.0397.3, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.iq = ptrtoint ptr %.sroa.33.3 to i64
  %i.ir = sub i64 %i.iq, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.3, i64 noundef %i.ir) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bg
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph1222:                                       ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit259
  %.01221 = phi i64 [ %i.sb, %_ZN7testing15AssertionResultD2Ev.exit259 ], [ 0, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0397.3, i64 %.01221 ; 5 uses
  %.val126 = load ptr, ptr %i.is, align 8, !tbaa !37
  %i.it = getelementptr inbounds nuw i8, ptr %.val126, i64 40 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !77, !noalias !340
  %i.iv = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !340
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp eq i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1222
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bm

bb.bi:                                            ; preds = %.lr.ph1222
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !341
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.it)
          to label %.noexc309 unwind label %bb.bm

.noexc309:                                        ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !341
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.bk, !noalias !341

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc309
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.iy = load ptr, ptr %10, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.n
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304: ; preds = %bb.bj
  %i.ja = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !341
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !341
  %i.jc = load ptr, ptr %9, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.o
  br i1 %i.jd, label %.noexc184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305
  %i.je = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !341
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #31
  br label %.noexc184

bb.bk:                                            ; preds = %.noexc309
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

bb.bl:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %10, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.n
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302: ; preds = %bb.bl
  %i.jk = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !341
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302, %bb.bk
  %.pn.i298 = phi { ptr, i32 } [ %i.jg, %bb.bk ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302 ], [ %i.jh, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !341
  %i.jm = load ptr, ptr %9, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.o
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297
  %i.jo = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !341
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !341
  br label %.body310

.noexc184:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !341
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc184, %bb.bh
  %i.jq = load i8, ptr %22, align 8, !tbaa !72, !range !62, !noundef !63
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bw, label %bb.bn

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.bn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.jt = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i185, label %_ZNK7testing15AssertionResult15failure_messageEv.exit186, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit186

_ZNK7testing15AssertionResult15failure_messageEv.exit186: ; preds = %bb.bp, %bb.bo
  %i.jv = phi ptr [ %i.ju, %bb.bp ], [ @.str.65, %bb.bo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 250, ptr noundef %i.jv)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.jw = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.br
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bn
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
end_hunk_3
begin_hunk_4_@_ZN29ThreadedIndex_TestShards_Test8TestBodyEv:bb.a
bb.eb:                                            ; preds = %.noexc373
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361

bb.ec:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIPlS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = load ptr, ptr %2, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.z
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366: ; preds = %bb.ec
  %i.qy = load i64, ptr %i.z, align 8, !tbaa !58, !noalias !349
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366, %bb.eb
  %.pn.i362 = phi { ptr, i32 } [ %i.qu, %bb.eb ], [ %i.qv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366 ], [ %i.qv, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !349
  %i.ra = load ptr, ptr %1, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.aa
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361
  %i.rc = load i64, ptr %i.aa, align 8, !tbaa !58, !noalias !349
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !349
  br label %.body374

.noexc246:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !349
  br label %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit

_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit: ; preds = %.noexc246, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.re = load i8, ptr %34, align 8, !tbaa !72, !range !62, !noundef !63
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.eo, label %bb.ef

bb.ed:                                            ; preds = %_ZN7testing7MessageD2Ev.exit239, %.body359
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %eh.lpad-body360, %.body359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.er

bb.ee:                                            ; preds = %bb.dz, %bb.dy
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %.body374

.body374:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364, %bb.ee
  %eh.lpad-body375 = phi { ptr, i32 } [ %i.rg, %bb.ee ], [ %.pn.i362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.eq

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.rh = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i247, label %_ZNK7testing15AssertionResult15failure_messageEv.exit248, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit248

_ZNK7testing15AssertionResult15failure_messageEv.exit248: ; preds = %bb.eh, %bb.eg
  %i.rj = phi ptr [ %i.ri, %bb.eh ], [ @.str.65, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef %i.rj)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit248
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.rk = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit251, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250: ; preds = %bb.ej
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !30
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(128) %i.rk) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit251

_ZN7testing7MessageD2Ev.exit251:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit254

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit248
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn83 = phi { ptr, i32 } [ %i.rq, %bb.em ], [ %i.rp, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.rr = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i252 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i252, label %_ZN7testing7MessageD2Ev.exit254, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253: ; preds = %bb.en
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !30
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(128) %i.rr) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit254

_ZN7testing7MessageD2Ev.exit254:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253, %bb.en, %bb.ek
  %.pn83.pn = phi { ptr, i32 } [ %i.ro, %bb.ek ], [ %.pn83, %bb.en ], [ %.pn83, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #30
  br label %bb.eq

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit, %_ZN7testing7MessageD2Ev.exit251
  %i.rv = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 4 uses
  %.not.i.i255 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i255, label %_ZN7testing15AssertionResultD2Ev.exit259, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !57 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256: ; preds = %bb.ep
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !58
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit259

_ZN7testing15AssertionResultD2Ev.exit259:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.sb = add nuw i64 %.01221, 1                  ; 2 uses
  %exitcond1977.not = icmp eq i64 %i.sb, %i.da
  br i1 %exitcond1977.not, label %._crit_edge1223, label %.lr.ph1222, !llvm.loop !329

bb.eq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit254, %.body374
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %_ZN7testing7MessageD2Ev.exit254 ], [ %eh.lpad-body375, %.body374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.er

bb.er:                                            ; preds = %.body310, %bb.cu, %.body343, %bb.ed, %bb.eq, %bb.bc, %bb.s
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn, %bb.bc ], [ %i.db, %bb.s ], [ %.pn83.pn.pn, %bb.eq ], [ %.pn79.pn.pn, %bb.ed ], [ %.pn75.pn.pn, %.body343 ], [ %.pn71.pn.pn, %bb.cu ], [ %.pn.pn.pn, %.body310 ] ; 2 uses
  %.not.i.i.i260 = icmp eq ptr %.sroa.0378.0, null
  br i1 %.not.i.i.i260, label %_ZNSt6vectorIlSaIlEED2Ev.exit261, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sc = ptrtoint ptr %.sroa.10.0 to i64
  %i.sd = ptrtoint ptr %.sroa.0378.0 to i64
  %i.se = sub i64 %i.sc, %i.sd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0378.0, i64 noundef %i.se) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit261

_ZNSt6vectorIlSaIlEED2Ev.exit261:                 ; preds = %.loopexit429, %.loopexit.split-lp430, %bb.es, %bb.er
  %.pn92.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn, %bb.es ], [ %.pn92.pn.pn.pn.pn, %bb.er ], [ %lpad.loopexit431, %.loopexit429 ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp430 ] ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %.sroa.0383.0, null
  br i1 %.not.i.i.i262, label %_ZNSt6vectorIfSaIfEED2Ev.exit263, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit261
  %i.sf = ptrtoint ptr %.sroa.10387.0 to i64
  %i.sg = ptrtoint ptr %.sroa.0383.0 to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.0, i64 noundef %i.sh) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit263

_ZNSt6vectorIfSaIfEED2Ev.exit263:                 ; preds = %.loopexit424, %.loopexit.split-lp425, %bb.et, %_ZNSt6vectorIlSaIlEED2Ev.exit261
  %.pn92.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn.pn, %bb.et ], [ %.pn92.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit261 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ] ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.sroa.0390.0, null
  br i1 %.not.i.i.i264, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit263
  %41 = ptrtoint ptr %.sroa.13.0 to i64
  %i.si = ptrtoint ptr %.sroa.0390.0 to i64
  %i.sj = sub i64 %41, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0390.0, i64 noundef %i.sj) #31
  br label %bb.ev

bb.ev:                                            ; preds = %.loopexit419, %.loopexit.split-lp420, %.loopexit, %.loopexit.split-lp, %bb.n, %bb.eu, %_ZNSt6vectorIfSaIfEED2Ev.exit263
  %.sroa.23.1 = phi ptr [ %.sroa.23.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.23.3, %bb.n ], [ %.sroa.33.01214, %.loopexit.split-lp ], [ %.sroa.23.3, %bb.eu ], [ %.sroa.23.01213.lcssa, %.loopexit ], [ %.sroa.23.3, %.loopexit419 ], [ %.sroa.23.3, %.loopexit.split-lp420 ] ; 2 uses
  %.sroa.33.1 = phi ptr [ %.sroa.33.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.33.3, %bb.n ], [ %.sroa.33.01214, %.loopexit.split-lp ], [ %.sroa.33.3, %bb.eu ], [ %.sroa.33.01214, %.loopexit ], [ %.sroa.33.3, %.loopexit419 ], [ %.sroa.33.3, %.loopexit.split-lp420 ]
  %.sroa.0397.1 = phi ptr [ %.sroa.0397.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.0397.3, %bb.n ], [ %.sroa.0397.01215, %.loopexit.split-lp ], [ %.sroa.0397.3, %bb.eu ], [ %.sroa.0397.01215, %.loopexit ], [ %.sroa.0397.3, %.loopexit419 ], [ %.sroa.0397.3, %.loopexit.split-lp420 ] ; 5 uses
  %.pn103.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %i.bz, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn92.pn.pn.pn.pn.pn.pn, %bb.eu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ]
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.not4.i.i.i266 = icmp eq ptr %.sroa.0397.1, %.sroa.23.1
  br i1 %.not4.i.i.i266, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276, label %.lr.ph.i.i.i267

.lr.ph.i.i.i267:                                  ; preds = %bb.ev, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272
  %.05.i.i.i268 = phi ptr [ %i.sn, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272 ], [ %.sroa.0397.1, %bb.ev ] ; 2 uses
  %.0.val.i.i.i269 = load ptr, ptr %.05.i.i.i268, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i270 = icmp eq ptr %.0.val.i.i.i269, null
  br i1 %.not.i.i.i.i.i.i270, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271: ; preds = %.lr.ph.i.i.i267
  %i.sk = load ptr, ptr %.0.val.i.i.i269, align 8, !tbaa !30
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i269) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271, %.lr.ph.i.i.i267
  %i.sn = getelementptr inbounds nuw i8, ptr %.05.i.i.i268, i64 8 ; 2 uses
  %.not.i.i.i273 = icmp eq ptr %i.sn, %.sroa.23.1
  br i1 %.not.i.i.i273, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276, label %.lr.ph.i.i.i267, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272, %bb.ev
  %.not.i.i2.i278 = icmp eq ptr %.sroa.0397.1, null
  br i1 %.not.i.i2.i278, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit280, label %bb.ew

bb.ew:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276
  %i.so = ptrtoint ptr %.sroa.33.1 to i64
  %i.sp = ptrtoint ptr %.sroa.0397.1 to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.1, i64 noundef %i.sq) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit280

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit280: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn103.pn
}

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !51
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !84

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !57
  store i64 %i.c, ptr %i.a, align 8, !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !58
  store i8 %i.j, ptr %i.i, align 1, !tbaa !58
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !58
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 526)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 547)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_4
