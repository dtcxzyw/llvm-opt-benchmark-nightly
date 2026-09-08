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
  %.not.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %i.cr, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32
          to label %.noexc134 unwind label %.loopexit416 ; 5 uses

.noexc134:                                        ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cr ; 2 uses
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !76
  %.idx.i.i.i.i.i.i.i.a = add nsw i64 %i.cr, -1   ; 2 uses
  %37 = icmp eq i64 %.idx.i.i.i.i.i.i.i.a, 0
  br i1 %37, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc134
  %38 = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.a, 2
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 3, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 25
  store i8 1, ptr %i.aj, align 1, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store i32 1, ptr %i.ak, align 4, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store float 0.000000e+00, ptr %i.al, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.ac, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false)
  %i.ao = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit ; 12 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull %i.ac)
          to label %bb.f unwind label %.split.loop.exit.split-lp.split.loop.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.ap = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 3, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.as, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  store i8 1, ptr %i.at, align 1, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 1, ptr %i.au, align 4, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store float 0.000000e+00, ptr %i.av, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.ap, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i8 0, ptr %i.aw, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false)
  %i.ay = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.lr.ph.i.i.i.i.i.preheader.1 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 14 uses

.lr.ph.i.i.i.i.i.preheader.1:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ao, align 8, !tbaa !37, !alias.scope !251, !noalias !250
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.1, ptr %i.ay, align 8, !tbaa !37, !alias.scope !250, !noalias !251
  store ptr null, ptr %i.ao, align 8, !tbaa !37, !alias.scope !251, !noalias !250
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 8) #31
  %.val118.1.pre = load ptr, ptr %i.ba, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.1.pre)
          to label %bb.g unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %i.bb = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 3, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 25
  store i8 1, ptr %i.bf, align 1, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  store i32 1, ptr %i.bg, align 4, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store float 0.000000e+00, ptr %i.bh, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bb, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  store i8 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i8 0, i64 40, i1 false)
  %i.bk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc136.2 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 22 uses

.noexc136.2:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %wide.load4150 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !37, !alias.scope !253, !noalias !252
  store <2 x i64> %wide.load4150, ptr %i.bk, align 8, !tbaa !37, !alias.scope !252, !noalias !253
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !37, !alias.scope !253, !noalias !252
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 16) #31
  %.val118.2.pre = load ptr, ptr %i.bm, align 8, !tbaa !37
  %.sroa.21.3.2 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 3 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.2.pre)
          to label %bb.h unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp

bb.h:                                             ; preds = %.noexc136.2
  %i.bn = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 11 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3: ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 3, ptr %i.bo, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %i.bp, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i8 0, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 25
  store i8 1, ptr %i.br, align 1, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 1, ptr %i.bs, align 4, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store float 0.000000e+00, ptr %i.bt, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bn, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  store i8 0, ptr %i.bu, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i8 0, i64 40, i1 false)
  store ptr %i.bn, ptr %.sroa.21.3.2, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull %i.bn)
          to label %bb.i unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3
  %i.bw = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4 unwind label %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4: ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 3, ptr %i.bx, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 0, ptr %i.by, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i8 0, ptr %i.bz, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 25
  store i8 1, ptr %i.ca, align 1, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  store i32 1, ptr %i.cb, align 4, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store float 0.000000e+00, ptr %i.cc, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.bw, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i8 0, ptr %i.cd, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i8 0, i64 40, i1 false)
  %i.cf = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %.noexc136.4 unwind label %.loopexit.split.loop.exit ; 20 uses

.noexc136.4:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %i.bw, ptr %i.cg, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val.i.i.i.i.i.i.i.i.i.i.4 = load i64, ptr %i.bk, align 8, !tbaa !37, !alias.scope !255, !noalias !254
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4, ptr %i.cf, align 8, !tbaa !37, !alias.scope !254, !noalias !255
  store ptr null, ptr %i.bk, align 8, !tbaa !37, !alias.scope !255, !noalias !254
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.val.i.i.i.i.i.i.i.i.i.i.4.1 = load i64, ptr %i.ch, align 8, !tbaa !37, !alias.scope !257, !noalias !256
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.1, ptr %i.ci, align 8, !tbaa !37, !alias.scope !256, !noalias !257
  store ptr null, ptr %i.ch, align 8, !tbaa !37, !alias.scope !257, !noalias !256
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.val.i.i.i.i.i.i.i.i.i.i.4.2 = load i64, ptr %i.cj, align 8, !tbaa !37, !alias.scope !259, !noalias !258
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.2, ptr %i.ck, align 8, !tbaa !37, !alias.scope !258, !noalias !259
  store ptr null, ptr %i.cj, align 8, !tbaa !37, !alias.scope !259, !noalias !258
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.val.i.i.i.i.i.i.i.i.i.i.4.3 = load i64, ptr %i.cl, align 8, !tbaa !37, !alias.scope !261, !noalias !260
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.4.3, ptr %i.cm, align 8, !tbaa !37, !alias.scope !260, !noalias !261
  store ptr null, ptr %i.cl, align 8, !tbaa !37, !alias.scope !261, !noalias !260
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 5 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 6 uses
  %.val118.4.pre = load ptr, ptr %i.cn, align 8, !tbaa !37
  %.0.lcssa.i.i.i.i.i.pn.45288 = ptrtoaddr ptr %i.cn to i64
  %.sroa.21.3.4 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 7 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val118.4.pre)
          to label %bb.j unwind label %.split.loop.exit

bb.j:                                             ; preds = %.noexc136.4
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !75  ; 3 uses
  %i.cq = mul nsw i32 %i.cp, 3
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp slt i32 %i.cp, 0
  br i1 %i.cs, label %bb.d, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.loopexit.split.loop.exit:                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.4
  %lpad.split.loop.exit2840 = landingpad { ptr, i32 }
          cleanup
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.split.loop.exit2845 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.i
  %lpad.split.loop.exit2851 = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.21.3.3.le6428 = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.c
  %lpad.split.loop.exit2856 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.f
  %lpad.split.loop.exit2867 = landingpad { ptr, i32 }
          cleanup
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.3.le = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %bb.h
  %lpad.split.loop.exit2876 = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %lpad.split.loop.exit2881 = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %lpad.split.loop.exit6444 = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  br label %.loopexit

.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp: ; preds = %bb.g
  %lpad.split.loop.exit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.21.3.1.le = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %.loopexit

.split.loop.exit:                                 ; preds = %.noexc136.4
  %lpad.split.loop.exit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit:        ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %lpad.split.loop.exit2834 = landingpad { ptr, i32 }
          cleanup
  %i.da = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.3.le2871 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit.3
  %lpad.split.loop.exit6426 = landingpad { ptr, i32 }
          cleanup
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.21.3.3.le = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %lpad.split.loop.exit6433 = landingpad { ptr, i32 }
          cleanup
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.21.3.1.le6447 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %.loopexit

.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp: ; preds = %.noexc136.2
  %lpad.split.loop.exit.split-lp6434 = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %.loopexit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc134, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0387.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.af, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %39 = load i32, ptr %i.a, align 4, !tbaa !75
  %i.de = load i32, ptr %i.b, align 4, !tbaa !75
  %i.df = mul nsw i32 %i.de, %39                  ; 3 uses
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = icmp slt i32 %i.df, 0
  br i1 %i.dh, label %bb.k, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc143 unwind label %.loopexit.split-lp422

.noexc143:                                        ; preds = %bb.k
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i138 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %i.di = shl nuw nsw i64 %i.dg, 2
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #32
          to label %.noexc144 unwind label %.loopexit421 ; 5 uses

.noexc144:                                        ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg ; 2 uses
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !76
  %i.dl = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139: ; preds = %.noexc144
  %i.dn = getelementptr i8, ptr %i.dj, i64 4
  %.idx.i.i.i.i.i.i.i140 = shl nuw nsw i64 %i.dl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dn, i8 0, i64 %.idx.i.i.i.i.i.i.i140, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139, %.noexc144, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %.sroa.0379.0 = phi ptr [ %i.dj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139 ], [ %i.dj, %.noexc144 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137 ] ; 8 uses
  %.sroa.11384.0 = phi ptr [ %i.dk, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139 ], [ %i.dk, %.noexc144 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137 ] ; 2 uses
  %i.do = load i32, ptr %i.a, align 4, !tbaa !75
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !75
  %i.dq = mul nsw i32 %i.dp, %i.do                ; 3 uses
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = icmp slt i32 %i.dq, 0
  br i1 %i.ds, label %bb.m, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc149 unwind label %.loopexit.split-lp427

.noexc149:                                        ; preds = %bb.m
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit145
  %.not.i.i.i.i146 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i146, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dt = shl nuw nsw i64 %i.dr, 3
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #32
          to label %.noexc150 unwind label %.loopexit426 ; 5 uses

.noexc150:                                        ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dr ; 2 uses
  store i64 0, ptr %i.du, align 8, !tbaa !77
  %i.dw = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc150
  %i.dy = getelementptr i8, ptr %i.du, i64 8
  %.idx.i.i.i.i.i.i.i147 = shl nuw nsw i64 %i.dw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dy, i8 0, i64 %.idx.i.i.i.i.i.i.i147, i1 false), !tbaa !77
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc150, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0373.0 = phi ptr [ %i.du, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.du, %.noexc150 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.dv, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dv, %.noexc150 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ea = sext i32 %i.dz to i64
  invoke void @_ZN5faiss21IndexReplicasTemplateINS_5IndexEE3addElPKf(ptr noundef nonnull align 8 dereferenceable(65) %15, i64 noundef %i.ea, ptr noundef %.sroa.0387.0)
          to label %.preheader415 unwind label %bb.o

.preheader415:                                    ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.eb = ptrtoint ptr %.sroa.21.3.4 to i64
  %i.ec = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 3 uses
  %.not1222 = icmp eq ptr %.sroa.21.3.4, %i.cf    ; 3 uses
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
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph:                                           ; preds = %.preheader415, %_ZN7testing15AssertionResultD2Ev.exit172
  %.0321214 = phi i64 [ %i.ht, %_ZN7testing15AssertionResultD2Ev.exit172 ], [ 0, %.preheader415 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0321214 ; 2 uses
  %.val126 = load ptr, ptr %i.eg, align 8, !tbaa !37
  %i.eh = getelementptr inbounds nuw i8, ptr %.val126, i64 40 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !77, !noalias !262
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !262
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp eq i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.u

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !263
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %.noexc276 unwind label %bb.u

.noexc276:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !263
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.s, !noalias !263

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc276
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.em = load ptr, ptr %14, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.h
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.eo = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !263
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !263
  %i.eq = load ptr, ptr %13, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.i
  br i1 %i.er, label %.noexc152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.es = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !263
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #31
  br label %.noexc152

bb.s:                                             ; preds = %.noexc276
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.t:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %14, align 8, !tbaa !57, !noalias !263 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.h
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.t
  %i.ey = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !263
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.eu, %bb.s ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.ev, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !263
  %i.fa = load ptr, ptr %13, align 8, !tbaa !57, !noalias !263 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv:bb.a
  %i.hc = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i162, label %_ZN7testing7MessageD2Ev.exit164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.aq
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !30
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(128) %i.hc) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit164

_ZN7testing7MessageD2Ev.exit164:                  ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit167

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit161
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn91 = phi { ptr, i32 } [ %i.hi, %bb.at ], [ %i.hh, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.hj = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.au
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !30
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(128) %i.hj) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166, %bb.au, %bb.ar
  %.pn91.pn = phi { ptr, i32 } [ %i.hg, %bb.ar ], [ %.pn91, %bb.au ], [ %.pn91, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  br label %bb.ax

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKfPfTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit164
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %.not.i.i168 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i168, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !57 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.aw
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !58
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit172

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.ht = add nuw i64 %.0321214, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ht, %i.ee
  br i1 %exitcond.not, label %.lr.ph1217.preheader, label %.lr.ph, !llvm.loop !217

.lr.ph1217.preheader:                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit172
  %i.hu = sub i64 %.0.lcssa.i.i.i.i.i.pn.45288, %i.ec ; 2 uses
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = add nuw nsw i64 %i.hv, 1
  %xtraiter = and i64 %i.hw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1217.prol.loopexit, label %.lr.ph1217.prol

.lr.ph1217.prol:                                  ; preds = %.lr.ph1217.preheader, %.lr.ph1217.prol
  %.sroa.0371.01216.prol = phi ptr [ %i.hz, %.lr.ph1217.prol ], [ %i.cf, %.lr.ph1217.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1217.prol ], [ 0, %.lr.ph1217.preheader ]
  %.val124.prol = load ptr, ptr %.sroa.0371.01216.prol, align 8, !tbaa !37 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val124.prol, i64 36
  store i8 0, ptr %i.hx, align 4, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %.val124.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, i8 0, i64 40, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1217.prol.loopexit, label %.lr.ph1217.prol, !llvm.loop !218

.lr.ph1217.prol.loopexit:                         ; preds = %.lr.ph1217.prol, %.lr.ph1217.preheader
  %.sroa.0371.01216.unr = phi ptr [ %i.cf, %.lr.ph1217.preheader ], [ %i.hz, %.lr.ph1217.prol ]
  %i.ia = icmp ult i64 %i.hu, 56
  br i1 %i.ia, label %._crit_edge, label %.lr.ph1217

bb.ax:                                            ; preds = %_ZN7testing7MessageD2Ev.exit167, %.body290
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %_ZN7testing7MessageD2Ev.exit167 ], [ %eh.lpad-body291, %.body290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.em

._crit_edge:                                      ; preds = %.lr.ph1217.prol.loopexit, %.lr.ph1217, %.preheader415
  %i.ib = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ic = sext i32 %i.ib to i64
  %i.id = load i32, ptr %i.b, align 4, !tbaa !75
  %i.ie = sext i32 %i.id to i64
  invoke void @_ZNK5faiss21IndexReplicasTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(65) %15, i64 noundef %i.ic, ptr noundef %.sroa.0387.0, i64 noundef %i.ie, ptr noundef %.sroa.0379.0, ptr noundef %.sroa.0373.0, ptr noundef null)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not1222, label %._crit_edge1220, label %.lr.ph1219

.lr.ph1217:                                       ; preds = %.lr.ph1217.prol.loopexit, %.lr.ph1217
  %.sroa.0371.01216 = phi ptr [ %i.jc, %.lr.ph1217 ], [ %.sroa.0371.01216.unr, %.lr.ph1217.prol.loopexit ] ; 9 uses
  %.val124 = load ptr, ptr %.sroa.0371.01216, align 8, !tbaa !37 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.val124, i64 36
  store i8 0, ptr %i.if, align 4, !tbaa !35
  %i.ig = getelementptr inbounds nuw i8, ptr %.val124, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ig, i8 0, i64 40, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 8
  %.val124.1 = load ptr, ptr %i.ih, align 8, !tbaa !37 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.val124.1, i64 36
  store i8 0, ptr %i.ii, align 4, !tbaa !35
  %i.ij = getelementptr inbounds nuw i8, ptr %.val124.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ij, i8 0, i64 40, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 16
  %.val124.2 = load ptr, ptr %i.ik, align 8, !tbaa !37 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val124.2, i64 36
  store i8 0, ptr %i.il, align 4, !tbaa !35
  %i.im = getelementptr inbounds nuw i8, ptr %.val124.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.im, i8 0, i64 40, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 24
  %.val124.3 = load ptr, ptr %i.in, align 8, !tbaa !37 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val124.3, i64 36
  store i8 0, ptr %i.io, align 4, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %.val124.3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ip, i8 0, i64 40, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 32
  %.val124.4 = load ptr, ptr %i.iq, align 8, !tbaa !37 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.val124.4, i64 36
  store i8 0, ptr %i.ir, align 4, !tbaa !35
  %i.is = getelementptr inbounds nuw i8, ptr %.val124.4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.is, i8 0, i64 40, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 40
  %.val124.5 = load ptr, ptr %i.it, align 8, !tbaa !37 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.val124.5, i64 36
  store i8 0, ptr %i.iu, align 4, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %.val124.5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iv, i8 0, i64 40, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 48
  %.val124.6 = load ptr, ptr %i.iw, align 8, !tbaa !37 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val124.6, i64 36
  store i8 0, ptr %i.ix, align 4, !tbaa !35
  %i.iy = getelementptr inbounds nuw i8, ptr %.val124.6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iy, i8 0, i64 40, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 56 ; 2 uses
  %.val124.7 = load ptr, ptr %i.iz, align 8, !tbaa !37 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val124.7, i64 36
  store i8 0, ptr %i.ja, align 4, !tbaa !35
  %i.jb = getelementptr inbounds nuw i8, ptr %.val124.7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jb, i8 0, i64 40, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0371.01216, i64 64
  %i.jd = icmp eq ptr %i.iz, %i.cn
  br i1 %i.jd, label %._crit_edge, label %.lr.ph1217

._crit_edge1220:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit254, %.preheader
  %.not.i.i.i173 = icmp eq ptr %.sroa.0373.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge1220
  %i.je = ptrtoint ptr %.sroa.11.0 to i64
  %i.jf = ptrtoint ptr %.sroa.0373.0 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.0, i64 noundef %i.jg) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge1220, %bb.ay
  %.not.i.i.i174 = icmp eq ptr %.sroa.0379.0, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.jh = ptrtoint ptr %.sroa.11384.0 to i64
  %i.ji = ptrtoint ptr %.sroa.0379.0 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.0, i64 noundef %i.jj) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.az
  %.not.i.i.i175 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIfSaIfEED2Ev.exit176, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %40 = ptrtoint ptr %.sroa.13.0 to i64
  %i.jk = ptrtoint ptr %.sroa.0387.0 to i64
  %i.jl = sub i64 %40, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.jl) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit176

_ZNSt6vectorIfSaIfEED2Ev.exit176:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ba
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %.not1222, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit176, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jp, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.cf, %_ZNSt6vectorIfSaIfEED2Ev.exit176 ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.not.i.i.i177 = icmp eq ptr %.05.i.i.i, %i.cn
  br i1 %.not.i.i.i177, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit176
  %i.jq = ptrtoint ptr %i.co to i64
  %i.jr = sub i64 %i.jq, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.jr) #31
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph1219:                                       ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit254
  %.01218 = phi i64 [ %i.sz, %_ZN7testing15AssertionResultD2Ev.exit254 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.js = load i32, ptr %i.a, align 4, !tbaa !75
  %i.jt = sext i32 %i.js to i64
  %i.ju = udiv i64 %i.jt, %i.ee                   ; 2 uses
  store i64 %i.ju, ptr %i.d, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.01218 ; 5 uses
  %.val123 = load ptr, ptr %i.jv, align 8, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %.val123, i64 40 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !77, !noalias !266
  %i.jy = icmp eq i64 %i.jx, %i.ju
  br i1 %i.jy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph1219
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bg

bb.bc:                                            ; preds = %.lr.ph1219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !267
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %.noexc304 unwind label %bb.bg

.noexc304:                                        ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !267
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.be, !noalias !267

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc304
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jz = load ptr, ptr %10, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.n
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299: ; preds = %bb.bd
  %i.kb = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !267
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !267
  %i.kd = load ptr, ptr %9, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.o
  br i1 %i.ke, label %.noexc179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300
  %i.kf = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !267
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #31
  br label %.noexc179

bb.be:                                            ; preds = %.noexc304
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292

bb.bf:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = load ptr, ptr %10, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.n
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297: ; preds = %bb.bf
  %i.kl = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !267
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297, %bb.be
  %.pn.i293 = phi { ptr, i32 } [ %i.kh, %bb.be ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i297 ], [ %i.ki, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !267
  %i.kn = load ptr, ptr %9, align 8, !tbaa !57, !noalias !267 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.o
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292
  %i.kp = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !267
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !267
  br label %.body305

.noexc179:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !267
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc179, %bb.bb
  %i.kr = load i8, ptr %22, align 8, !tbaa !72, !range !62, !noundef !63
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bq, label %bb.bh

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body305

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.ku = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bj, %bb.bi
  %i.kw = phi ptr [ %i.kv, %bb.bj ], [ @.str.65, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 201, ptr noundef %i.kw)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.kx = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bl
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(128) %i.kx) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit187

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.ld, %bb.bo ], [ %i.lc, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.le = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i185 = icmp eq ptr %i.le, null
end_hunk_1
begin_hunk_2_@_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv:bb.a
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %2, align 8, !tbaa !57, !noalias !275 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.z
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361: ; preds = %bb.dw
  %i.rw = load i64, ptr %i.z, align 8, !tbaa !58, !noalias !275
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361, %bb.dv
  %.pn.i357 = phi { ptr, i32 } [ %i.rs, %bb.dv ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i361 ], [ %i.rt, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !275
  %i.ry = load ptr, ptr %1, align 8, !tbaa !57, !noalias !275 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.aa
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356
  %i.sa = load i64, ptr %i.aa, align 8, !tbaa !58, !noalias !275
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !275
  br label %.body369

.noexc241:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !275
  br label %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit

_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit: ; preds = %.noexc241, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.sc = load i8, ptr %34, align 8, !tbaa !72, !range !62, !noundef !63
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.ei, label %bb.dz

bb.dx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit234, %.body354
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit234 ], [ %eh.lpad-body355, %.body354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.el

bb.dy:                                            ; preds = %bb.dt, %bb.ds
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body369

.body369:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359, %bb.dy
  %eh.lpad-body370 = phi { ptr, i32 } [ %i.se, %bb.dy ], [ %.pn.i357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.ek

bb.dz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.sf = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i242, label %_ZNK7testing15AssertionResult15failure_messageEv.exit243, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit243

_ZNK7testing15AssertionResult15failure_messageEv.exit243: ; preds = %bb.eb, %bb.ea
  %i.sh = phi ptr [ %i.sg, %bb.eb ], [ @.str.65, %bb.ea ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 209, ptr noundef %i.sh)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit243
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.si = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i244 = icmp eq ptr %i.si, null
  br i1 %.not.i.i244, label %_ZN7testing7MessageD2Ev.exit246, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245: ; preds = %bb.ed
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !30
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(128) %i.si) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit246

_ZN7testing7MessageD2Ev.exit246:                  ; preds = %bb.ed, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.ei

bb.ee:                                            ; preds = %bb.dz
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit249

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit243
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn82 = phi { ptr, i32 } [ %i.so, %bb.eg ], [ %i.sn, %bb.ef ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.sp = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i247 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i247, label %_ZN7testing7MessageD2Ev.exit249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.eh
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !30
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(128) %i.sp) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit249

_ZN7testing7MessageD2Ev.exit249:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248, %bb.eh, %bb.ee
  %.pn82.pn = phi { ptr, i32 } [ %i.sm, %bb.ee ], [ %.pn82, %bb.eh ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #30
  br label %bb.ek

bb.ei:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit, %_ZN7testing7MessageD2Ev.exit246
  %i.st = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 4 uses
  %.not.i.i250 = icmp eq ptr %i.st, null
  br i1 %.not.i.i250, label %_ZN7testing15AssertionResultD2Ev.exit254, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !57 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251: ; preds = %bb.ej
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !58
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit254

_ZN7testing15AssertionResultD2Ev.exit254:         ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.sz = add nuw i64 %.01218, 1                  ; 2 uses
  %exitcond1973.not = icmp eq i64 %i.sz, %i.ee
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
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.o ], [ %.pn82.pn.pn.pn, %bb.el ], [ %.pn91.pn.pn, %bb.ax ], [ %.pn87.pn.pn, %.body ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0373.0, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorIlSaIlEED2Ev.exit256, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ta = ptrtoint ptr %.sroa.11.0 to i64
  %i.tb = ptrtoint ptr %.sroa.0373.0 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.0, i64 noundef %i.tc) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit256

_ZNSt6vectorIlSaIlEED2Ev.exit256:                 ; preds = %.loopexit426, %.loopexit.split-lp427, %bb.en, %bb.em
  %.pn91.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.en ], [ %.pn91.pn.pn.pn.pn, %bb.em ], [ %lpad.loopexit428, %.loopexit426 ], [ %lpad.loopexit.split-lp429, %.loopexit.split-lp427 ] ; 2 uses
  %.not.i.i.i257 = icmp eq ptr %.sroa.0379.0, null
  br i1 %.not.i.i.i257, label %_ZNSt6vectorIfSaIfEED2Ev.exit258, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %i.td = ptrtoint ptr %.sroa.11384.0 to i64
  %i.te = ptrtoint ptr %.sroa.0379.0 to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.0, i64 noundef %i.tf) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit258

_ZNSt6vectorIfSaIfEED2Ev.exit258:                 ; preds = %.loopexit421, %.loopexit.split-lp422, %bb.eo, %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn, %bb.eo ], [ %.pn91.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit256 ], [ %lpad.loopexit423, %.loopexit421 ], [ %lpad.loopexit.split-lp424, %.loopexit.split-lp422 ] ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i259, label %.loopexit, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %41 = ptrtoint ptr %.sroa.13.0 to i64
  %i.tg = ptrtoint ptr %.sroa.0387.0 to i64
  %i.th = sub i64 %41, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.th) #31
  br label %.loopexit

.loopexit:                                        ; preds = %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit, %.loopexit416, %.loopexit.split-lp417, %bb.ep, %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %.sroa.21.1 = phi ptr [ %.sroa.21.3.4, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %.sroa.21.3.4, %.split.loop.exit ], [ %.sroa.21.3.le2871, %.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.4, %bb.ep ], [ %.sroa.21.3.4, %.loopexit.split-lp417 ], [ %.sroa.21.3.4, %.loopexit416 ], [ %i.ct, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le6428, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %.sroa.21.3.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cx, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cy, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le6447, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 2 uses
  %.sroa.31.1 = phi ptr [ %i.co, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.co, %.split.loop.exit ], [ %i.da, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.co, %bb.ep ], [ %i.co, %.loopexit.split-lp417 ], [ %i.co, %.loopexit416 ], [ %i.ct, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.cu, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cz, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.cv, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cw, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cx, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cy, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.db, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.dc, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.dd, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  %.sroa.0394.1 = phi ptr [ %i.cf, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.cf, %.split.loop.exit ], [ %i.ao, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.cf, %bb.ep ], [ %i.cf, %.loopexit.split-lp417 ], [ %i.cf, %.loopexit416 ], [ %i.bk, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.bk, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ay, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ao, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bk, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ao, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ay, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.bk, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ay, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bk, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 5 uses
  %.pn102.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %lpad.split.loop.exit, %.split.loop.exit ], [ %lpad.split.loop.exit2834, %.split.loop.exit.split-lp.split.loop.exit ], [ %.pn91.pn.pn.pn.pn.pn.pn, %bb.ep ], [ %lpad.loopexit.split-lp419, %.loopexit.split-lp417 ], [ %lpad.loopexit418, %.loopexit416 ], [ %lpad.split.loop.exit2840, %.loopexit.split.loop.exit ], [ %lpad.split.loop.exit2845, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2851, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2856, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %lpad.split.loop.exit2867, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2876, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2881, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6444, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6426, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6433, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp6434, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.not4.i.i.i261 = icmp eq ptr %.sroa.0394.1, %.sroa.21.1
  br i1 %.not4.i.i.i261, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262

.lr.ph.i.i.i262:                                  ; preds = %.loopexit, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267
  %.05.i.i.i263 = phi ptr [ %i.tl, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267 ], [ %.sroa.0394.1, %.loopexit ] ; 2 uses
  %.0.val.i.i.i264 = load ptr, ptr %.05.i.i.i263, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i265 = icmp eq ptr %.0.val.i.i.i264, null
  br i1 %.not.i.i.i.i.i.i265, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266: ; preds = %.lr.ph.i.i.i262
  %i.ti = load ptr, ptr %.0.val.i.i.i264, align 8, !tbaa !30
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i264) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266, %.lr.ph.i.i.i262
  %i.tl = getelementptr inbounds nuw i8, ptr %.05.i.i.i263, i64 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.tl, %.sroa.21.1
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, %.loopexit
  %.not.i.i2.i273 = icmp eq ptr %.sroa.0394.1, null
  br i1 %.not.i.i2.i273, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271
  %i.tm = ptrtoint ptr %.sroa.31.1 to i64
  %i.tn = ptrtoint ptr %.sroa.0394.1 to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1, i64 noundef %i.to) #31
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
  %.0.lcssa.i.i.i.i.i.pn.lcssa43274328 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.0397.3.lcssa43304331 = ptrtoaddr ptr %.sroa.0397.3 to i64
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
  %.idx.i.i.i.i.i.i.i.a = add nsw i64 %i.ae, -1   ; 2 uses
  %37 = icmp eq i64 %.idx.i.i.i.i.i.i.i.a, 0
  br i1 %37, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc139
  %38 = getelementptr i8, ptr %i.ah, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.a, 2
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.c, %bb.m
  %.0341216 = phi i32 [ 0, %bb.c ], [ %i.bx, %bb.m ]
  %.sroa.0397.01215 = phi ptr [ null, %bb.c ], [ %.sroa.0397.3, %bb.m ] ; 13 uses
  %.sroa.33.01214 = phi ptr [ null, %bb.c ], [ %.sroa.33.3, %bb.m ] ; 9 uses
  %.sroa.23.01213 = phi ptr [ null, %bb.c ], [ %.sroa.23.3, %bb.m ] ; 4 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %bb.h unwind label %.loopexit  ; 12 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  store i8 1, ptr %i.an, align 1, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store i32 1, ptr %i.ao, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store float 0.000000e+00, ptr %i.ap, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.aj, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  store i8 0, ptr %i.aq, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 40, i1 false)
  %.not.i = icmp eq ptr %.sroa.23.01213, %.sroa.33.01214
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %.sroa.23.01213, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %.sroa.33.01214 to i64     ; 3 uses
  %i.at = ptrtoint ptr %.sroa.0397.01215 to i64   ; 3 uses
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #34
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %i.ax = icmp eq ptr %.sroa.33.01214, %.sroa.0397.01215 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ax, i64 1, i64 %i.aw
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.aw
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #32
          to label %.noexc141 unwind label %.loopexit ; 10 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store ptr %i.aj, ptr %i.be, align 8, !tbaa !37
  br i1 %i.ax, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc141
  %i.bf = add i64 %i.as, -8
  %i.bg = sub i64 %i.bf, %i.at                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader3581, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bd, i64 8
  %i.bj = add i64 %i.as, -8
  %i.bk = sub i64 %i.bj, %i.at
  %i.bl = and i64 %i.bk, -8                       ; 2 uses
  %scevgep3575 = getelementptr i8, ptr %scevgep, i64 %i.bl
  %scevgep3576 = getelementptr i8, ptr %.sroa.0397.01215, i64 8
  %scevgep3577 = getelementptr i8, ptr %scevgep3576, i64 %i.bl
  %bound0 = icmp ult ptr %i.bd, %scevgep3577
  %bound1 = icmp ult ptr %.sroa.0397.01215, %scevgep3575
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader3581, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep3578 = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bq = getelementptr i8, ptr %next.gep3578, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep3578, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %wide.load3579 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !333, !noalias !332
  store <2 x i64> %wide.load3579, ptr %i.br, align 8, !tbaa !37, !alias.scope !333, !noalias !332
  %i.bs = getelementptr i8, ptr %next.gep3578, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep3578, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !37, !alias.scope !332, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader3581

.lr.ph.i.i.i.i.i.preheader3581:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.sroa.0397.01215, %vector.memcheck ], [ %.sroa.0397.01215, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader3581, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3581 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3581 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !331, !noalias !330
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !330, !noalias !331
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !331, !noalias !330
  %i.bu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %.sroa.33.01214
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !283

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc141
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bd, %.noexc141 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %.sroa.0397.01215, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.01215, i64 noundef %i.au) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  %.val119.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.i
  %.val119 = phi ptr [ %.val119.pre, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.aj, %bb.i ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.23.01213, %bb.i ] ; 4 uses
  %.sroa.33.3 = phi ptr [ %i.bw, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.33.01214, %bb.i ] ; 7 uses
  %.sroa.0397.3 = phi ptr [ %i.bd, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.0397.01215, %bb.i ] ; 18 uses
  %.sroa.23.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 8 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val119)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.bx = add nuw nsw i32 %.0341216, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, 7
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
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc139, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0390.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc139 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %i.ai, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ai, %.noexc139 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %39 = load i32, ptr %i.a, align 4, !tbaa !75
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !75
  %i.ca = mul nsw i32 %i.bz, %39                  ; 3 uses
  %i.cb = sext i32 %i.ca to i64                   ; 3 uses
  %i.cc = icmp slt i32 %i.ca, 0
  br i1 %i.cc, label %bb.o, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc148 unwind label %.loopexit.split-lp425

.noexc148:                                        ; preds = %bb.o
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i143 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142
  %i.cd = shl nuw nsw i64 %i.cb, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #32
          to label %.noexc149 unwind label %.loopexit424 ; 5 uses

.noexc149:                                        ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb ; 2 uses
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !76
  %i.cg = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144: ; preds = %.noexc149
  %i.ci = getelementptr i8, ptr %i.ce, i64 4
  %.idx.i.i.i.i.i.i.i145 = shl nuw nsw i64 %i.cg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %.idx.i.i.i.i.i.i.i145, i1 false), !tbaa !76
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144, %.noexc149, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142
  %.sroa.0383.0 = phi ptr [ %i.ce, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144 ], [ %i.ce, %.noexc149 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142 ] ; 7 uses
  %.sroa.10387.0 = phi ptr [ %i.cf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144 ], [ %i.cf, %.noexc149 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i142 ] ; 2 uses
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !75
  %i.cl = mul nsw i32 %i.ck, %i.cj                ; 3 uses
  %i.cm = sext i32 %i.cl to i64                   ; 3 uses
  %i.cn = icmp slt i32 %i.cl, 0
  br i1 %i.cn, label %bb.q, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc154 unwind label %.loopexit.split-lp430

.noexc154:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit150
  %.not.i.i.i.i151 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i151, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.co = shl nuw nsw i64 %i.cm, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #32
          to label %.noexc155 unwind label %.loopexit429 ; 5 uses

.noexc155:                                        ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !77
  %i.cr = add nsw i64 %i.cm, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc155
  %i.ct = getelementptr i8, ptr %i.cp, i64 8
  %.idx.i.i.i.i.i.i.i152 = shl nuw nsw i64 %i.cr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i.i.i152, i1 false), !tbaa !77
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc155, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0378.0 = phi ptr [ %i.cp, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cp, %.noexc155 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.cq, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cq, %.noexc155 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !75
  %i.cv = sext i32 %i.cu to i64
  invoke void @_ZN5faiss19IndexShardsTemplateINS_5IndexEE3addElPKf(ptr noundef nonnull align 8 dereferenceable(66) %15, i64 noundef %i.cv, ptr noundef %.sroa.0390.0)
          to label %.preheader418 unwind label %bb.s

.preheader418:                                    ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.cw = ptrtoint ptr %.sroa.23.3 to i64
  %i.cx = ptrtoint ptr %.sroa.0397.3 to i64       ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 3 uses
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
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.lr.ph:                                           ; preds = %.preheader418, %_ZN7testing15AssertionResultD2Ev.exit177
  %.0331217 = phi i64 [ %i.gs, %_ZN7testing15AssertionResultD2Ev.exit177 ], [ 0, %.preheader418 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.db = load i32, ptr %i.a, align 4, !tbaa !75
  %i.dc = sext i32 %i.db to i64
  %i.dd = udiv i64 %i.dc, %i.cz                   ; 2 uses
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0397.3, i64 %.0331217 ; 2 uses
  %.val129 = load ptr, ptr %i.de, align 8, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %.val129, i64 40 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !77, !noalias !336
  %i.dh = icmp eq i64 %i.dg, %i.dd
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !337
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %.noexc281 unwind label %bb.y

.noexc281:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !337
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.w, !noalias !337

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc281
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.di = load ptr, ptr %14, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.h
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !337
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !337
  %i.dm = load ptr, ptr %13, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.i
  br i1 %i.dn, label %.noexc157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.do = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !337
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #31
  br label %.noexc157

bb.w:                                             ; preds = %.noexc281
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.x:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %14, align 8, !tbaa !57, !noalias !337 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.h
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.x
  %i.du = load i64, ptr %i.h, align 8, !tbaa !58, !noalias !337
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.w
end_hunk_2
begin_hunk_3_@_ZN29ThreadedIndex_TestShards_Test8TestBodyEv:bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit172

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit166
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn92 = phi { ptr, i32 } [ %i.gh, %bb.ax ], [ %i.gg, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.gi = load ptr, ptr %20, align 8, !tbaa !60   ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i170, label %_ZN7testing7MessageD2Ev.exit172, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171: ; preds = %bb.ay
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(128) %i.gi) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit172

_ZN7testing7MessageD2Ev.exit172:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171, %bb.ay, %bb.av
  %.pn92.pn = phi { ptr, i32 } [ %i.gf, %bb.av ], [ %.pn92, %bb.ay ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  br label %bb.bb

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKfPfTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit169
  %i.gm = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %.not.i.i173 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i173, label %_ZN7testing15AssertionResultD2Ev.exit177, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !57 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174: ; preds = %bb.ba
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !58
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit177

_ZN7testing15AssertionResultD2Ev.exit177:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gs = add nuw i64 %.0331217, 1                ; 2 uses
  %exitcond1975.not = icmp eq i64 %i.gs, %i.cz
  br i1 %exitcond1975.not, label %.lr.ph1220.preheader, label %.lr.ph, !llvm.loop !297

.lr.ph1220.preheader:                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit177
  %i.gt = sub i64 %.0.lcssa.i.i.i.i.i.pn.lcssa43274328, %.sroa.0397.3.lcssa43304331 ; 2 uses
  %i.gu = lshr i64 %i.gt, 3
  %i.gv = add nuw nsw i64 %i.gu, 1
  %xtraiter = and i64 %i.gv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol

.lr.ph1220.prol:                                  ; preds = %.lr.ph1220.preheader, %.lr.ph1220.prol
  %.sroa.0376.01219.prol = phi ptr [ %i.gy, %.lr.ph1220.prol ], [ %.sroa.0397.3, %.lr.ph1220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1220.prol ], [ 0, %.lr.ph1220.preheader ]
  %.val127.prol = load ptr, ptr %.sroa.0376.01219.prol, align 8, !tbaa !37 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 36
  store i8 0, ptr %i.gw, align 4, !tbaa !35
  %i.gx = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i8 0, i64 40, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol, !llvm.loop !298

.lr.ph1220.prol.loopexit:                         ; preds = %.lr.ph1220.prol, %.lr.ph1220.preheader
  %.sroa.0376.01219.unr = phi ptr [ %.sroa.0397.3, %.lr.ph1220.preheader ], [ %i.gy, %.lr.ph1220.prol ]
  %i.gz = icmp ult i64 %i.gt, 56
  br i1 %i.gz, label %._crit_edge, label %.lr.ph1220

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit172, %.body295
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit172 ], [ %eh.lpad-body296, %.body295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.body
  %.pn92.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn, %bb.bb ], [ %.pn88.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.er

._crit_edge:                                      ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220, %.preheader418
  %i.ha = load i32, ptr %i.a, align 4, !tbaa !75
  %i.hb = sext i32 %i.ha to i64
  %i.hc = load i32, ptr %i.b, align 4, !tbaa !75
  %i.hd = sext i32 %i.hc to i64
  invoke void @_ZNK5faiss19IndexShardsTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(66) %15, i64 noundef %i.hb, ptr noundef %.sroa.0390.0, i64 noundef %i.hd, ptr noundef %.sroa.0383.0, ptr noundef %.sroa.0378.0, ptr noundef null)
          to label %.preheader unwind label %bb.s

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not1225, label %._crit_edge1223, label %.lr.ph1222

.lr.ph1220:                                       ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220
  %.sroa.0376.01219 = phi ptr [ %i.ib, %.lr.ph1220 ], [ %.sroa.0376.01219.unr, %.lr.ph1220.prol.loopexit ] ; 9 uses
  %.val127 = load ptr, ptr %.sroa.0376.01219, align 8, !tbaa !37 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val127, i64 36
  store i8 0, ptr %i.he, align 4, !tbaa !35
  %i.hf = getelementptr inbounds nuw i8, ptr %.val127, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i8 0, i64 40, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 8
  %.val127.1 = load ptr, ptr %i.hg, align 8, !tbaa !37 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val127.1, i64 36
  store i8 0, ptr %i.hh, align 4, !tbaa !35
  %i.hi = getelementptr inbounds nuw i8, ptr %.val127.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, i8 0, i64 40, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 16
  %.val127.2 = load ptr, ptr %i.hj, align 8, !tbaa !37 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val127.2, i64 36
  store i8 0, ptr %i.hk, align 4, !tbaa !35
  %i.hl = getelementptr inbounds nuw i8, ptr %.val127.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hl, i8 0, i64 40, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 24
  %.val127.3 = load ptr, ptr %i.hm, align 8, !tbaa !37 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val127.3, i64 36
  store i8 0, ptr %i.hn, align 4, !tbaa !35
  %i.ho = getelementptr inbounds nuw i8, ptr %.val127.3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ho, i8 0, i64 40, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 32
  %.val127.4 = load ptr, ptr %i.hp, align 8, !tbaa !37 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val127.4, i64 36
  store i8 0, ptr %i.hq, align 4, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %.val127.4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, i8 0, i64 40, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 40
  %.val127.5 = load ptr, ptr %i.hs, align 8, !tbaa !37 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val127.5, i64 36
  store i8 0, ptr %i.ht, align 4, !tbaa !35
  %i.hu = getelementptr inbounds nuw i8, ptr %.val127.5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hu, i8 0, i64 40, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 48
  %.val127.6 = load ptr, ptr %i.hv, align 8, !tbaa !37 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val127.6, i64 36
  store i8 0, ptr %i.hw, align 4, !tbaa !35
  %i.hx = getelementptr inbounds nuw i8, ptr %.val127.6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hx, i8 0, i64 40, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 56 ; 2 uses
  %.val127.7 = load ptr, ptr %i.hy, align 8, !tbaa !37 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val127.7, i64 36
  store i8 0, ptr %i.hz, align 4, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %.val127.7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, i8 0, i64 40, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 64
  %i.ic = icmp eq ptr %i.hy, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.ic, label %._crit_edge, label %.lr.ph1220

._crit_edge1223:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit259, %.preheader
  %.not.i.i.i178 = icmp eq ptr %.sroa.0378.0, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1223
  %i.id = ptrtoint ptr %.sroa.10.0 to i64
  %i.ie = ptrtoint ptr %.sroa.0378.0 to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0378.0, i64 noundef %i.if) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge1223, %bb.bd
  %.not.i.i.i179 = icmp eq ptr %.sroa.0383.0, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ig = ptrtoint ptr %.sroa.10387.0 to i64
  %i.ih = ptrtoint ptr %.sroa.0383.0 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.0, i64 noundef %i.ii) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.be
  %.not.i.i.i180 = icmp eq ptr %.sroa.0390.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIfSaIfEED2Ev.exit181, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %40 = ptrtoint ptr %.sroa.13.0 to i64
  %i.ij = ptrtoint ptr %.sroa.0390.0 to i64
  %i.ik = sub i64 %40, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0390.0, i64 noundef %i.ik) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

_ZNSt6vectorIfSaIfEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bf
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %.not1225, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit181, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.io, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.sroa.0397.3, %_ZNSt6vectorIfSaIfEED2Ev.exit181 ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.il = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.not.i.i.i182 = icmp eq ptr %.05.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i182, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit181
  %.not.i.i2.i = icmp eq ptr %.sroa.0397.3, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ip = ptrtoint ptr %.sroa.33.3 to i64
  %i.iq = sub i64 %i.ip, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.3, i64 noundef %i.iq) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bg
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph1222:                                       ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit259
  %.01221 = phi i64 [ %i.sa, %_ZN7testing15AssertionResultD2Ev.exit259 ], [ 0, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0397.3, i64 %.01221 ; 5 uses
  %.val126 = load ptr, ptr %i.ir, align 8, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %.val126, i64 40 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !77, !noalias !340
  %i.iu = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !340
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1222
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bm

bb.bi:                                            ; preds = %.lr.ph1222
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !341
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %.noexc309 unwind label %bb.bm

.noexc309:                                        ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !341
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.bk, !noalias !341

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc309
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ix = load ptr, ptr %10, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.n
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304: ; preds = %bb.bj
  %i.iz = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !341
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !341
  %i.jb = load ptr, ptr %9, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.o
  br i1 %i.jc, label %.noexc184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305
  %i.jd = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !341
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #31
  br label %.noexc184

bb.bk:                                            ; preds = %.noexc309
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

bb.bl:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %10, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.n
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302: ; preds = %bb.bl
  %i.jj = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !341
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302, %bb.bk
  %.pn.i298 = phi { ptr, i32 } [ %i.jf, %bb.bk ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302 ], [ %i.jg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !341
  %i.jl = load ptr, ptr %9, align 8, !tbaa !57, !noalias !341 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.o
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297
  %i.jn = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !341
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !341
  br label %.body310

.noexc184:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !341
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc184, %bb.bh
  %i.jp = load i8, ptr %22, align 8, !tbaa !72, !range !62, !noundef !63
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bw, label %bb.bn

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.bn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.js = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.js, null
  br i1 %.not.i.i185, label %_ZNK7testing15AssertionResult15failure_messageEv.exit186, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit186

_ZNK7testing15AssertionResult15failure_messageEv.exit186: ; preds = %bb.bp, %bb.bo
  %i.ju = phi ptr [ %i.jt, %bb.bp ], [ @.str.65, %bb.bo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 250, ptr noundef %i.ju)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.jv = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.br
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !30
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.jv) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bn
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
end_hunk_3
begin_hunk_4_@_ZN29ThreadedIndex_TestShards_Test8TestBodyEv:bb.a
bb.eb:                                            ; preds = %.noexc373
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361

bb.ec:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIPlS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qv = load ptr, ptr %2, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.z
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366: ; preds = %bb.ec
  %i.qx = load i64, ptr %i.z, align 8, !tbaa !58, !noalias !349
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366, %bb.eb
  %.pn.i362 = phi { ptr, i32 } [ %i.qt, %bb.eb ], [ %i.qu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i366 ], [ %i.qu, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !349
  %i.qz = load ptr, ptr %1, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.aa
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361
  %i.rb = load i64, ptr %i.aa, align 8, !tbaa !58, !noalias !349
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !349
  br label %.body374

.noexc246:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !349
  br label %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit

_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit: ; preds = %.noexc246, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.rd = load i8, ptr %34, align 8, !tbaa !72, !range !62, !noundef !63
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.eo, label %bb.ef

bb.ed:                                            ; preds = %_ZN7testing7MessageD2Ev.exit239, %.body359
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %eh.lpad-body360, %.body359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.er

bb.ee:                                            ; preds = %bb.dz, %bb.dy
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body374

.body374:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364, %bb.ee
  %eh.lpad-body375 = phi { ptr, i32 } [ %i.rf, %bb.ee ], [ %.pn.i362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i364 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.eq

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.rg = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i247, label %_ZNK7testing15AssertionResult15failure_messageEv.exit248, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit248

_ZNK7testing15AssertionResult15failure_messageEv.exit248: ; preds = %bb.eh, %bb.eg
  %i.ri = phi ptr [ %i.rh, %bb.eh ], [ @.str.65, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef %i.ri)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit248
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.rj = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit251, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250: ; preds = %bb.ej
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !30
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(128) %i.rj) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit251

_ZN7testing7MessageD2Ev.exit251:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit254

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit248
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #30
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn83 = phi { ptr, i32 } [ %i.rp, %bb.em ], [ %i.ro, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  %i.rq = load ptr, ptr %35, align 8, !tbaa !60   ; 3 uses
  %.not.i.i252 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i252, label %_ZN7testing7MessageD2Ev.exit254, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253: ; preds = %bb.en
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !30
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(128) %i.rq) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit254

_ZN7testing7MessageD2Ev.exit254:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253, %bb.en, %bb.ek
  %.pn83.pn = phi { ptr, i32 } [ %i.rn, %bb.ek ], [ %.pn83, %bb.en ], [ %.pn83, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #30
  br label %bb.eq

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPlS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit, %_ZN7testing7MessageD2Ev.exit251
  %i.ru = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 4 uses
  %.not.i.i255 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i255, label %_ZN7testing15AssertionResultD2Ev.exit259, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !57 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256: ; preds = %bb.ep
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !58
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit259

_ZN7testing15AssertionResultD2Ev.exit259:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.sa = add nuw i64 %.01221, 1                  ; 2 uses
  %exitcond1977.not = icmp eq i64 %i.sa, %i.cz
  br i1 %exitcond1977.not, label %._crit_edge1223, label %.lr.ph1222, !llvm.loop !329

bb.eq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit254, %.body374
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %_ZN7testing7MessageD2Ev.exit254 ], [ %eh.lpad-body375, %.body374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.er

bb.er:                                            ; preds = %.body310, %bb.cu, %.body343, %bb.ed, %bb.eq, %bb.bc, %bb.s
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn, %bb.bc ], [ %i.da, %bb.s ], [ %.pn83.pn.pn, %bb.eq ], [ %.pn79.pn.pn, %bb.ed ], [ %.pn75.pn.pn, %.body343 ], [ %.pn71.pn.pn, %bb.cu ], [ %.pn.pn.pn, %.body310 ] ; 2 uses
  %.not.i.i.i260 = icmp eq ptr %.sroa.0378.0, null
  br i1 %.not.i.i.i260, label %_ZNSt6vectorIlSaIlEED2Ev.exit261, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sb = ptrtoint ptr %.sroa.10.0 to i64
  %i.sc = ptrtoint ptr %.sroa.0378.0 to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0378.0, i64 noundef %i.sd) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit261

_ZNSt6vectorIlSaIlEED2Ev.exit261:                 ; preds = %.loopexit429, %.loopexit.split-lp430, %bb.es, %bb.er
  %.pn92.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn, %bb.es ], [ %.pn92.pn.pn.pn.pn, %bb.er ], [ %lpad.loopexit431, %.loopexit429 ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp430 ] ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %.sroa.0383.0, null
  br i1 %.not.i.i.i262, label %_ZNSt6vectorIfSaIfEED2Ev.exit263, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit261
  %i.se = ptrtoint ptr %.sroa.10387.0 to i64
  %i.sf = ptrtoint ptr %.sroa.0383.0 to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.0, i64 noundef %i.sg) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit263

_ZNSt6vectorIfSaIfEED2Ev.exit263:                 ; preds = %.loopexit424, %.loopexit.split-lp425, %bb.et, %_ZNSt6vectorIlSaIlEED2Ev.exit261
  %.pn92.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn.pn, %bb.et ], [ %.pn92.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit261 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ] ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.sroa.0390.0, null
  br i1 %.not.i.i.i264, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit263
  %41 = ptrtoint ptr %.sroa.13.0 to i64
  %i.sh = ptrtoint ptr %.sroa.0390.0 to i64
  %i.si = sub i64 %41, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0390.0, i64 noundef %i.si) #31
  br label %bb.ev

bb.ev:                                            ; preds = %.loopexit419, %.loopexit.split-lp420, %.loopexit, %.loopexit.split-lp, %bb.n, %bb.eu, %_ZNSt6vectorIfSaIfEED2Ev.exit263
  %.sroa.23.1 = phi ptr [ %.sroa.23.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.23.3, %bb.n ], [ %.sroa.33.01214, %.loopexit.split-lp ], [ %.sroa.23.3, %bb.eu ], [ %.sroa.23.01213.lcssa, %.loopexit ], [ %.sroa.23.3, %.loopexit419 ], [ %.sroa.23.3, %.loopexit.split-lp420 ] ; 2 uses
  %.sroa.33.1 = phi ptr [ %.sroa.33.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.33.3, %bb.n ], [ %.sroa.33.01214, %.loopexit.split-lp ], [ %.sroa.33.3, %bb.eu ], [ %.sroa.33.01214, %.loopexit ], [ %.sroa.33.3, %.loopexit419 ], [ %.sroa.33.3, %.loopexit.split-lp420 ]
  %.sroa.0397.1 = phi ptr [ %.sroa.0397.3, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %.sroa.0397.3, %bb.n ], [ %.sroa.0397.01215, %.loopexit.split-lp ], [ %.sroa.0397.3, %bb.eu ], [ %.sroa.0397.01215, %.loopexit ], [ %.sroa.0397.3, %.loopexit419 ], [ %.sroa.0397.3, %.loopexit.split-lp420 ] ; 5 uses
  %.pn103.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit263 ], [ %i.by, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn92.pn.pn.pn.pn.pn.pn, %bb.eu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ]
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.not4.i.i.i266 = icmp eq ptr %.sroa.0397.1, %.sroa.23.1
  br i1 %.not4.i.i.i266, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276, label %.lr.ph.i.i.i267

.lr.ph.i.i.i267:                                  ; preds = %bb.ev, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272
  %.05.i.i.i268 = phi ptr [ %i.sm, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272 ], [ %.sroa.0397.1, %bb.ev ] ; 2 uses
  %.0.val.i.i.i269 = load ptr, ptr %.05.i.i.i268, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i270 = icmp eq ptr %.0.val.i.i.i269, null
  br i1 %.not.i.i.i.i.i.i270, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271: ; preds = %.lr.ph.i.i.i267
  %i.sj = load ptr, ptr %.0.val.i.i.i269, align 8, !tbaa !30
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i269) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i271, %.lr.ph.i.i.i267
  %i.sm = getelementptr inbounds nuw i8, ptr %.05.i.i.i268, i64 8 ; 2 uses
  %.not.i.i.i273 = icmp eq ptr %i.sm, %.sroa.23.1
  br i1 %.not.i.i.i273, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276, label %.lr.ph.i.i.i267, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i272, %bb.ev
  %.not.i.i2.i278 = icmp eq ptr %.sroa.0397.1, null
  br i1 %.not.i.i2.i278, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit280, label %bb.ew

bb.ew:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i276
  %i.sn = ptrtoint ptr %.sroa.33.1 to i64
  %i.so = ptrtoint ptr %.sroa.0397.1 to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.1, i64 noundef %i.sp) #31
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
