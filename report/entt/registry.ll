Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/registry?download=true
inline.NumInlined: 24885
inline.NumDeleted: 7508
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN46RegistryDeathTest_DISABLED_DestroyVersion_Test8TestBodyEv:bb.a
bb.ct:                                            ; preds = %bb.cp, %bb.co
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #27
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn57 = phi { ptr, i32 } [ %i.hd, %bb.cu ], [ %i.hc, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.he = load ptr, ptr %9, align 8, !tbaa !219   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.he, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.cv
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !199
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.cv, %bb.cs
  %.pn57.pn = phi { ptr, i32 } [ %i.hb, %bb.cs ], [ %.pn57, %bb.cv ], [ %.pn57, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.cx

bb.cw:                                            ; preds = %.thread104, %_ZN7testing7MessageD2Ev.exit87, %_ZN7testing7MessageD2Ev.exit
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.cx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.cm, %_ZN7testing7MessageD2Ev.exit69, %bb.ap, %bb.j
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %.pn54.pn, %bb.cm ], [ %i.v, %bb.j ], [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit69 ], [ %.pn41.pn, %bb.ap ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn57.pn.pn

bb.cy:                                            ; preds = %bb.ci, %bb.cd, %bb.al, %bb.ag
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN26Registry_DestroyRange_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %2 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %3 = alloca %"class.entt::basic_registry", align 8 ; 54 uses
  %4 = alloca %"class.entt::basic_view.172", align 16 ; 10 uses
  %5 = alloca %"struct.std::array.131", align 4   ; 23 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.entt::internal::view_iterator", align 8 ; 8 uses
  %19 = alloca %"class.entt::internal::view_iterator", align 8 ; 8 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 18 uses
  %46 = alloca %"class.std::reverse_iterator", align 8 ; 3 uses
  %47 = alloca %"class.std::reverse_iterator", align 8 ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %76 = alloca %"class.testing::Message", align 8 ; 7 uses
  %77 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %80 = alloca %"class.testing::Message", align 8 ; 7 uses
  %81 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %82 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %83 = alloca %"class.testing::Message", align 8 ; 7 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %87 = alloca %"class.testing::Message", align 8 ; 7 uses
  %88 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %90 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %91 = alloca %"class.testing::Message", align 8 ; 7 uses
  %92 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %94 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %95 = alloca %"class.testing::Message", align 8 ; 7 uses
  %96 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %97 = alloca %"class.entt::basic_sparse_set", align 8 ; 14 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %98 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %99 = alloca %"class.testing::Message", align 8 ; 7 uses
  %100 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %103 = alloca %"class.testing::Message", align 8 ; 7 uses
  %104 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %106 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %107 = alloca %"class.testing::Message", align 8 ; 7 uses
  %108 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %110 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %111 = alloca %"class.testing::Message", align 8 ; 7 uses
  %112 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %113 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %114 = alloca %"class.testing::Message", align 8 ; 7 uses
  %115 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %117 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %118 = alloca %"class.testing::Message", align 8 ; 7 uses
  %119 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %122 = alloca %"class.testing::Message", align 8 ; 7 uses
  %123 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %125 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %126 = alloca %"class.testing::Message", align 8 ; 7 uses
  %127 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %3, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.aa = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %3, i32 noundef -1779859874)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE.exit unwind label %bb.d ; 2 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.172") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 4 uses
  invoke void @_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateITkSt15output_iteratorIT_EPS1_EEvS6_S6_(ptr noundef nonnull align 8 dereferenceable(168) %i.ac, ptr noundef nonnull %5, ptr noundef nonnull %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !382 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !400 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !400 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  %.pre1104 = load i32, ptr %5, align 4, !tbaa !254 ; 2 uses
  br i1 %i.aj, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc452, %.lr.ph.preheader.i.i.i
  %.06.i.i.i = phi i64 [ %i.ao, %.noexc452 ], [ %i.an, %.lr.ph.preheader.i.i.i ]
  %i.ao = add i64 %.06.i.i.i, -1                  ; 3 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !271
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !273
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !274
  invoke void %i.as(ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(336) %i.ae, i32 noundef %.pre1104)
          to label %.noexc452 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, !inline_history !443

.noexc452:                                        ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i: ; preds = %.noexc452
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre1100.a = load ptr, ptr %i.af, align 8, !tbaa !271 ; 2 uses
  %.09.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.au = load i32, ptr %.09.i.i.ptr.1, align 4, !tbaa !254
  %.not5.i.i.i.1 = icmp eq ptr %.pre, %.pre1100.a
  br i1 %.not5.i.i.i.1, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2, label %.lr.ph.preheader.i.i.i.1

.lr.ph.preheader.i.i.i.1:                         ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i
  %i.av = ptrtoint ptr %.pre to i64
  %i.aw = ptrtoint ptr %.pre1100.a to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 4
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.noexc452.1, %.lr.ph.preheader.i.i.i.1
  %.06.i.i.i.1 = phi i64 [ %i.az, %.noexc452.1 ], [ %i.ay, %.lr.ph.preheader.i.i.i.1 ]
  %i.az = add i64 %.06.i.i.i.1, -1                ; 3 uses
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !271
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !273
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !274
  invoke void %i.bd(ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(336) %i.ae, i32 noundef %i.au)
          to label %.noexc452.1 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, !inline_history !443

.noexc452.1:                                      ; preds = %.lr.ph.i.i.i.1
  %.not.i.i.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.1, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !18

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.1: ; preds = %.noexc452.1
  %.pre1101.a = load ptr, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre1102 = load ptr, ptr %i.af, align 8, !tbaa !271 ; 2 uses
  %.09.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load i32, ptr %.09.i.i.ptr.2, align 4, !tbaa !254
  %.not5.i.i.i.2 = icmp eq ptr %.pre1101.a, %.pre1102
  br i1 %.not5.i.i.i.2, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2, label %.lr.ph.preheader.i.i.i.2

.lr.ph.preheader.i.i.i.2:                         ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.1
  %i.bg = ptrtoint ptr %.pre1101.a to i64
  %i.bh = ptrtoint ptr %.pre1102 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 4
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.noexc452.2, %.lr.ph.preheader.i.i.i.2
  %.06.i.i.i.2 = phi i64 [ %i.bk, %.noexc452.2 ], [ %i.bj, %.lr.ph.preheader.i.i.i.2 ]
  %i.bk = add i64 %.06.i.i.i.2, -1                ; 3 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !271
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !273
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !274
  invoke void %i.bo(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(336) %i.ae, i32 noundef %i.bf)
          to label %.noexc452.2 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !443

.noexc452.2:                                      ; preds = %.lr.ph.i.i.i.2
  %.not.i.i.i.2 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.2, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !18

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2: ; preds = %.noexc452.2, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.1
  %.pre1103.a = load i32, ptr %5, align 4, !tbaa !254
  br label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit: ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2, %.noexc
  %i.bq = phi i32 [ %.pre1103.a, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_ES3_E7publishES5_S2_.exit.i.i.2 ], [ %.pre1104, %.noexc ] ; 2 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %3, i32 noundef -1779859874)
          to label %.noexc458.a unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc458.a:                                      ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createITkSt15output_iteratorINS_11entt_traitsIT_E10value_typeEEPS1_EEvS7_S7_.exit
  %i.bs = invoke { ptr, i64 } @_ZN4entt13basic_storageIiNS_6entityESaIiEE15emplace_elementIJEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.br, i32 noundef %i.bq, i1 noundef zeroext false)
          to label %.noexc459 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc459:                                        ; preds = %.noexc458.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 112 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !269
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !270 ; 2 uses
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !271 ; 2 uses
  %.not5.i.i.i453 = icmp eq ptr %i.bx, %i.by
  br i1 %.not5.i.i.i453, label %.loopexit1088, label %.lr.ph.preheader.i.i.i454

.lr.ph.preheader.i.i.i454:                        ; preds = %.noexc459
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 4
  br label %.lr.ph.i.i.i455

.lr.ph.i.i.i455:                                  ; preds = %.noexc460, %.lr.ph.preheader.i.i.i454
  %.06.i.i.i456 = phi i64 [ %i.cd, %.noexc460 ], [ %i.cc, %.lr.ph.preheader.i.i.i454 ]
  %i.cd = add i64 %.06.i.i.i456, -1               ; 3 uses
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !271
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !273
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !274
  invoke void %i.ch(ptr noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(336) %i.bv, i32 noundef %i.bq)
          to label %.noexc460 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !275

.noexc460:                                        ; preds = %.lr.ph.i.i.i455
  %.not.i.i.i457 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i457, label %.loopexit1088, label %.lr.ph.i.i.i455, !llvm.loop !1

.loopexit1088:                                    ; preds = %.noexc460, %.noexc459
  %i.cj = load i32, ptr %5, align 4, !tbaa !254   ; 2 uses
  %i.ck = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %3, i32 noundef -1471413475)
          to label %.noexc466.a unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc466.a:                                      ; preds = %.loopexit1088
  %i.cl = invoke { ptr, i64 } @_ZN4entt13basic_storageIcNS_6entityESaIcEE15emplace_elementIJEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.ck, i32 noundef %i.cj, i1 noundef zeroext false)
          to label %.noexc467 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc467:                                        ; preds = %.noexc466.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !285
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !270 ; 2 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !271 ; 2 uses
  %.not5.i.i.i461 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not5.i.i.i461, label %.loopexit1084, label %.lr.ph.preheader.i.i.i462

.lr.ph.preheader.i.i.i462:                        ; preds = %.noexc467
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 4
  br label %.lr.ph.i.i.i463

.lr.ph.i.i.i463:                                  ; preds = %.noexc468, %.lr.ph.preheader.i.i.i462
  %.06.i.i.i464 = phi i64 [ %i.cw, %.noexc468 ], [ %i.cv, %.lr.ph.preheader.i.i.i462 ]
  %i.cw = add i64 %.06.i.i.i464, -1               ; 3 uses
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !271
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !273
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !274
  invoke void %i.da(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(336) %i.co, i32 noundef %i.cj)
          to label %.noexc468 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2

.noexc468:                                        ; preds = %.lr.ph.i.i.i463
end_hunk_0
begin_hunk_1_@_ZN26Registry_DestroyRange_Test8TestBodyEv:bb.a
  %i.bcg = getelementptr inbounds nuw i8, ptr %121, i64 8
  store ptr null, ptr %i.bcg, align 8, !tbaa !252
  br i1 %i.bcd, label %bb.ps, label %bb.qc

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %bb.pt unwind label %bb.px

bb.pt:                                            ; preds = %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %124, ptr noundef nonnull align 8 dereferenceable(16) %121, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15)
          to label %bb.pu unwind label %bb.py

bb.pu:                                            ; preds = %bb.pt
  %i.bch = load ptr, ptr %124, align 8, !tbaa !216
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %123, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 915, ptr noundef %i.bch)
          to label %bb.pv unwind label %bb.pz

bb.pv:                                            ; preds = %bb.pu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %bb.pw unwind label %bb.qa

bb.pw:                                            ; preds = %bb.pv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #27
  %i.bci = load ptr, ptr %124, align 8, !tbaa !216 ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.bck = icmp eq ptr %i.bci, %i.bcj
  br i1 %i.bck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008: ; preds = %bb.pw
  %i.bcl = load i64, ptr %i.bcj, align 8, !tbaa !217
  %i.bcm = add i64 %i.bcl, 1
  call void @_ZdlPvm(ptr noundef %i.bci, i64 noundef %i.bcm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010: ; preds = %bb.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #27
  %i.bcn = load ptr, ptr %122, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1011 = icmp eq ptr %i.bcn, null
  br i1 %.not.i.i1011, label %_ZN7testing7MessageD2Ev.exit1013, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !199
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcq = load ptr, ptr %i.bcp, align 8
  call void %i.bcq(ptr noundef nonnull align 8 dereferenceable(128) %i.bcn) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1013

_ZN7testing7MessageD2Ev.exit1013:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1012
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #27
  br label %bb.qq

bb.px:                                            ; preds = %bb.ps
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1019

bb.py:                                            ; preds = %bb.pt
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

bb.pz:                                            ; preds = %bb.pu
  %i.bct = landingpad { ptr, i32 }
          cleanup
  br label %bb.qb

bb.qa:                                            ; preds = %bb.pv
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #27
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %.pn376 = phi { ptr, i32 } [ %i.bcu, %bb.qa ], [ %i.bct, %bb.pz ] ; 2 uses
  %i.bcv = load ptr, ptr %124, align 8, !tbaa !216 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.bcx = icmp eq ptr %i.bcv, %i.bcw
  br i1 %i.bcx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %bb.qb
  %i.bcy = load i64, ptr %i.bcw, align 8, !tbaa !217
  %i.bcz = add i64 %i.bcy, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %bb.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014, %bb.py
  %.pn376.pn = phi { ptr, i32 } [ %i.bcs, %bb.py ], [ %.pn376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014 ], [ %.pn376, %bb.qb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #27
  %i.bda = load ptr, ptr %122, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1017 = icmp eq ptr %i.bda, null
  br i1 %.not.i.i1017, label %_ZN7testing7MessageD2Ev.exit1019, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !199
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 8
  %i.bdd = load ptr, ptr %i.bdc, align 8
  call void %i.bdd(ptr noundef nonnull align 8 dereferenceable(128) %i.bda) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1019

_ZN7testing7MessageD2Ev.exit1019:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %bb.px
  %.pn376.pn.pn = phi { ptr, i32 } [ %i.bcr, %bb.px ], [ %.pn376.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016 ], [ %.pn376.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1018 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #27
  br label %bb.qt

bb.qc:                                            ; preds = %bb.pr
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #27
  %i.bde = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %3, i32 noundef -1779859874)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIiEERNS_11storage_forIT_S1_SaINSt12remove_constIS6_E4typeEEE4typeEj.exit1021 unwind label %bb.qe ; 2 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIiEERNS_11storage_forIT_S1_SaINSt12remove_constIS6_E4typeEEE4typeEj.exit1021: ; preds = %bb.qc
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 32
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bde, i64 40
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !221
  %i.bdi = load ptr, ptr %i.bdf, align 8, !tbaa !222
  %i.bdj = ptrtoint ptr %i.bdh to i64
  %i.bdk = ptrtoint ptr %i.bdi to i64
  %i.bdl = sub i64 %i.bdj, %i.bdk
  %i.bdm = ashr exact i64 %i.bdl, 2
  store i64 %i.bdm, ptr %i.y, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #27
  store i32 0, ptr %i.z, align 4, !tbaa !224
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %125, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.qd unwind label %bb.qf

bb.qd:                                            ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIiEERNS_11storage_forIT_S1_SaINSt12remove_constIS6_E4typeEEE4typeEj.exit1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #27
  %i.bdn = load i8, ptr %125, align 8, !tbaa !234, !range !235, !noundef !236
  %i.bdo = trunc nuw i8 %i.bdn to i1
  br i1 %i.bdo, label %.critedge451, label %bb.qh

bb.qe:                                            ; preds = %bb.qc
  %i.bdp = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.qf:                                            ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIiEERNS_11storage_forIT_S1_SaINSt12remove_constIS6_E4typeEEE4typeEj.exit1021
  %i.bdq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #27
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  %.pn380 = phi { ptr, i32 } [ %i.bdq, %bb.qf ], [ %i.bdp, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #27
  br label %bb.qs

bb.qh:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %126)
          to label %bb.qi unwind label %bb.qm

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #27
  %i.bdr = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i1022 = icmp eq ptr %i.bds, null
  br i1 %.not.i.i.i1022, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1023, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !216
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1023

_ZNK7testing15AssertionResult15failure_messageEv.exit1023: ; preds = %bb.qj, %bb.qi
  %i.bdu = phi ptr [ %i.bdt, %bb.qj ], [ @.str.176, %bb.qi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %127, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 916, ptr noundef %i.bdu)
          to label %bb.qk unwind label %bb.qn

bb.qk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1023
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %126)
          to label %bb.ql unwind label %bb.qo

bb.ql:                                            ; preds = %bb.qk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  %i.bdv = load ptr, ptr %126, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1024 = icmp eq ptr %i.bdv, null
  br i1 %.not.i.i1024, label %_ZN7testing7MessageD2Ev.exit1026, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025: ; preds = %bb.ql
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !199
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8
  call void %i.bdy(ptr noundef nonnull align 8 dereferenceable(128) %i.bdv) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1026

_ZN7testing7MessageD2Ev.exit1026:                 ; preds = %bb.ql, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #27
  br label %bb.qq

bb.qm:                                            ; preds = %bb.qh
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1029

bb.qn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1023
  %i.bea = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qo:                                            ; preds = %bb.qk
  %i.beb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #27
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  %.pn382 = phi { ptr, i32 } [ %i.beb, %bb.qo ], [ %i.bea, %bb.qn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  %i.bec = load ptr, ptr %126, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1027 = icmp eq ptr %i.bec, null
  br i1 %.not.i.i1027, label %_ZN7testing7MessageD2Ev.exit1029, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028: ; preds = %bb.qp
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !199
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 8
  %i.bef = load ptr, ptr %i.bee, align 8
  call void %i.bef(ptr noundef nonnull align 8 dereferenceable(128) %i.bec) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1029

_ZN7testing7MessageD2Ev.exit1029:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028, %bb.qp, %bb.qm
  %.pn382.pn = phi { ptr, i32 } [ %i.bdz, %bb.qm ], [ %.pn382, %bb.qp ], [ %.pn382, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #27
  br label %bb.qs

.critedge451:                                     ; preds = %bb.qd
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #27
  br label %bb.qq

bb.qq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1013, %_ZN7testing7MessageD2Ev.exit1001, %_ZN7testing7MessageD2Ev.exit989, %_ZN7testing7MessageD2Ev.exit976, %_ZN7testing7MessageD2Ev.exit963, %_ZN7testing7MessageD2Ev.exit951, %_ZN7testing7MessageD2Ev.exit939, %_ZN7testing7MessageD2Ev.exit1026, %.critedge451
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %97) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  br label %bb.qr

bb.qr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit923, %_ZN7testing7MessageD2Ev.exit910, %_ZN7testing7MessageD2Ev.exit898, %_ZN7testing7MessageD2Ev.exit886, %_ZN7testing7MessageD2Ev.exit877, %_ZN7testing7MessageD2Ev.exit864, %_ZN7testing7MessageD2Ev.exit852, %_ZN7testing7MessageD2Ev.exit840, %_ZN7testing7MessageD2Ev.exit831, %_ZN7testing7MessageD2Ev.exit821, %_ZN7testing7MessageD2Ev.exit811, %_ZN7testing7MessageD2Ev.exit801, %_ZN7testing7MessageD2Ev.exit788, %_ZN7testing15AssertionResultD2Ev.exit740, %_ZN7testing15AssertionResultD2Ev.exit713, %_ZN7testing15AssertionResultD2Ev.exit691, %_ZN7testing15AssertionResultD2Ev.exit669, %_ZN7testing15AssertionResultD2Ev.exit646, %_ZN7testing15AssertionResultD2Ev.exit620, %_ZN7testing15AssertionResultD2Ev.exit594, %_ZN7testing15AssertionResultD2Ev.exit557, %_ZN7testing15AssertionResultD2Ev.exit531, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing8internal14TrueWithStringD2Ev.exit, %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.qs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1029, %bb.qg
  %.pn382.pn.pn = phi { ptr, i32 } [ %.pn382.pn, %_ZN7testing7MessageD2Ev.exit1029 ], [ %.pn380, %bb.qg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #27
  br label %bb.qt

bb.qt:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.qs, %_ZN7testing7MessageD2Ev.exit1019, %_ZN7testing7MessageD2Ev.exit1007, %_ZN7testing7MessageD2Ev.exit995, %bb.ov, %_ZN7testing7MessageD2Ev.exit969, %_ZN7testing7MessageD2Ev.exit957, %_ZN7testing7MessageD2Ev.exit945, %bb.my
  %.pn382.pn.pn.pn = phi { ptr, i32 } [ %.pn382.pn.pn, %bb.qs ], [ %.pn376.pn.pn, %_ZN7testing7MessageD2Ev.exit1019 ], [ %.pn372.pn.pn, %_ZN7testing7MessageD2Ev.exit1007 ], [ %.pn368.pn.pn, %_ZN7testing7MessageD2Ev.exit995 ], [ %i.avh, %bb.my ], [ %.pn364.pn.pn, %bb.ov ], [ %.pn358.pn.pn, %_ZN7testing7MessageD2Ev.exit969 ], [ %.pn354.pn.pn, %_ZN7testing7MessageD2Ev.exit957 ], [ %.pn350.pn.pn, %_ZN7testing7MessageD2Ev.exit945 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %97) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  br label %.loopexit.split-lp1061

.loopexit.split-lp1061:                           ; preds = %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, %.loopexit1060, %.loopexit.split-lp1061.loopexit.split-lp.loopexit, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp1061.loopexit, %bb.qt, %bb.mx, %_ZN7testing7MessageD2Ev.exit916, %_ZN7testing7MessageD2Ev.exit904, %_ZN7testing7MessageD2Ev.exit892, %bb.la, %_ZN7testing7MessageD2Ev.exit870, %_ZN7testing7MessageD2Ev.exit858, %_ZN7testing7MessageD2Ev.exit846, %bb.jd, %bb.jc, %bb.im, %bb.hx, %bb.hi, %bb.gv, %_ZN7testing8internal14TrueWithStringD2Ev.exit783, %_ZN7testing7MessageD2Ev.exit746, %bb.eo, %bb.dx, %bb.df, %_ZN7testing7MessageD2Ev.exit652, %_ZN7testing7MessageD2Ev.exit626, %_ZN7testing7MessageD2Ev.exit600, %_ZN7testing7MessageD2Ev.exit563, %_ZN7testing7MessageD2Ev.exit537, %_ZN7testing7MessageD2Ev.exit511
  %.pn382.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn382.pn.pn.pn, %bb.qt ], [ %.pn346.pn.pn, %bb.mx ], [ %.pn340.pn.pn, %_ZN7testing7MessageD2Ev.exit916 ], [ %.pn336.pn.pn, %_ZN7testing7MessageD2Ev.exit904 ], [ %.pn332.pn.pn, %_ZN7testing7MessageD2Ev.exit892 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit511 ], [ %.pn328.pn.pn, %bb.la ], [ %.pn322.pn.pn, %_ZN7testing7MessageD2Ev.exit870 ], [ %.pn318.pn.pn, %_ZN7testing7MessageD2Ev.exit858 ], [ %.pn314.pn.pn, %_ZN7testing7MessageD2Ev.exit846 ], [ %i.alv, %bb.jd ], [ %.pn310.pn.pn, %bb.jc ], [ %.pn304.pn.pn, %bb.im ], [ %.pn298.pn.pn, %bb.hx ], [ %.pn292.pn.pn, %bb.hi ], [ %.pn288.pn.pn, %bb.gv ], [ %.pn283.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit783 ], [ %.pn273.pn.pn, %_ZN7testing7MessageD2Ev.exit746 ], [ %.pn269.pn.pn, %bb.eo ], [ %.pn263.pn.pn, %bb.dx ], [ %.pn257.pn.pn, %bb.df ], [ %.pn251.pn.pn, %_ZN7testing7MessageD2Ev.exit652 ], [ %.pn247.pn.pn, %_ZN7testing7MessageD2Ev.exit626 ], [ %.pn243.pn.pn, %_ZN7testing7MessageD2Ev.exit600 ], [ %.pn239.pn.pn, %_ZN7testing7MessageD2Ev.exit563 ], [ %.pn235.pn.pn, %_ZN7testing7MessageD2Ev.exit537 ], [ %lpad.loopexit1062, %.loopexit1060 ], [ %lpad.loopexit1065, %.loopexit.split-lp1061.loopexit ], [ %lpad.loopexit1069, %.loopexit.split-lp1061.loopexit.split-lp.loopexit ], [ %lpad.loopexit1073, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1077, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1081, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1085, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1090, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit1095.a, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit1097, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1098, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.qu

bb.qu:                                            ; preds = %.loopexit.split-lp1061, %bb.e
  %.pn382.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn382.pn.pn.pn.pn, %.loopexit.split-lp1061 ], [ %i.hg, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.d
  %.pn382.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn382.pn.pn.pn.pn.pn, %bb.qu ], [ %i.hf, %bb.d ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn382.pn.pn.pn.pn.pn.pn

bb.qw:                                            ; preds = %bb.fr, %bb.fm
  %i.beg = landingpad { ptr, i32 }
          catch ptr null
  %i.beh = extractvalue { ptr, i32 } %i.beg, 0
  call void @__clang_call_terminate(ptr %i.beh) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::basic_view.172") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874)
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1471413475)
  store ptr %i.a, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !217
  %i.c = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, !prof !365

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #27
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #27
  br label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i

_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr %i.g, align 8, !tbaa !501
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !495
  %i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !403 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !403    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !221
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.p, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit

bb.d:                                             ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i
  store i64 1, ptr %i.h, align 8, !tbaa !495
  br label %_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit

_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit: ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.entt::internal::view_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !495  ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !325
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !249
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !222
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.d ]
  store ptr %i.e, ptr %0, align 8, !tbaa !500
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !223
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.u, align 8, !tbaa !499
  tail call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE6offsetEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind noalias writable sret(%"class.entt::internal::view_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !495  ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %0, align 8, !tbaa !500
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.h, align 8, !tbaa !499
  tail call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE7destroyITkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEETkSt14input_iteratorS9_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.b = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7sort_asITkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEES9_T_SA_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %1, i64 %2, ptr %3, i64 %4) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !249  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !324  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN23Registry_SortEmpty_Test8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151: ; preds = %bb.bk
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !217
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit154

_ZN7testing15AssertionResultD2Ev.exit154:         ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit126, %_ZN7testing15AssertionResultD2Ev.exit100, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit154
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit149, %bb.az
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit149 ], [ %i.go, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bm, %bb.ay, %bb.ai, %bb.s
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.bm ], [ %.pn32.pn.pn, %bb.ay ], [ %.pn.pn.pn, %bb.s ], [ %.pn28.pn.pn, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit155, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn36.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN21Registry_Context_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %2 = alloca %"class.entt::basic_registry", align 8 ; 95 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 7 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %54 = alloca %"class.testing::Message", align 8 ; 7 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.q = alloca i8, align 1                       ; 5 uses
  %i.r = alloca i8, align 1                       ; 5 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.u = alloca i8, align 1                       ; 5 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %i.y = alloca ptr, align 8                      ; 5 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %80 = alloca %"class.testing::Message", align 8 ; 7 uses
  %81 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %82 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %83 = alloca %"class.testing::Message", align 8 ; 7 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aa = alloca ptr, align 8                     ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 5 uses
  %86 = alloca %"class.testing::Message", align 8 ; 7 uses
  %87 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %88 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ac = alloca ptr, align 8                     ; 5 uses
  %i.ad = alloca ptr, align 8                     ; 5 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ae = alloca i8, align 1                      ; 5 uses
  %i.af = alloca i8, align 1                      ; 5 uses
  %92 = alloca %"class.testing::Message", align 8 ; 7 uses
  %93 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %94 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ag = alloca ptr, align 8                     ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 5 uses
  %95 = alloca %"class.testing::Message", align 8 ; 7 uses
  %96 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %97 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %98 = alloca %"class.testing::Message", align 8 ; 7 uses
  %99 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %100 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ai = alloca i8, align 1                      ; 5 uses
  %101 = alloca %"class.testing::Message", align 8 ; 7 uses
  %102 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %103 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %104 = alloca %"class.testing::Message", align 8 ; 7 uses
  %105 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %106 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.al = alloca ptr, align 8                     ; 5 uses
  %i.am = alloca ptr, align 8                     ; 5 uses
  %107 = alloca %"class.testing::Message", align 8 ; 7 uses
  %108 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %109 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %110 = alloca %"class.testing::Message", align 8 ; 7 uses
  %111 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %112 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %113 = alloca %"class.testing::Message", align 8 ; 7 uses
  %114 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %115 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %116 = alloca %"class.testing::Message", align 8 ; 7 uses
  %117 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %119 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %120 = alloca %"class.testing::Message", align 8 ; 7 uses
  %121 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %123 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %124 = alloca %"class.testing::Message", align 8 ; 7 uses
  %125 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %127 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %128 = alloca %"class.testing::Message", align 8 ; 7 uses
  %129 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ao = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !365

bb.b:                                             ; preds = %bb.a
  %i.aq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %i.ar = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !406 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 24 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !308
  %i.aw = load ptr, ptr %2, align 8, !tbaa !309   ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = and i64 %i.bb, %i.at
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 24 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %.07.in.i.i.i = phi ptr [ %i.bd, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit ], [ %i.bg, %bb.e ]
  %.07.i.i.i = load i64, ptr %.07.in.i.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %.07.i.i.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !224
  %i.bj = icmp eq i32 %i.bi, %i.as
  br i1 %i.bj, label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit.i, label %bb.d, !llvm.loop !81

bb.f:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !329 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.i

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !329
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.i

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.i: ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit.i, %bb.f
  %i.bq = phi ptr [ %i.bl, %bb.f ], [ %.pre.i, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.bg, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit.i ] ; 3 uses
  %i.br = icmp eq ptr %.sroa.0.1.i.i.i, %i.bq
  br i1 %i.br, label %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !626
  %i.bv = invoke noundef ptr %i.bu(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(29) %i.bs, ptr noundef null)
          to label %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #30
  unreachable

_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit.i:      ; preds = %bb.g
  %i.by = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.i, label %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit, !prof !365

bb.i:                                             ; preds = %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit.i
  %i.ca = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %.not.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i, label %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %i.cb = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  br label %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit

_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit: ; preds = %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit.i, %bb.i, %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !406
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !406
  %i.cf = icmp ne i32 %i.cd, %i.ce                ; 2 uses
  %i.cg = zext i1 %i.cf to i8
  store i8 %i.cg, ptr %3, align 8, !tbaa !234
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !252
  br i1 %i.cf, label %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %6, align 8, !tbaa !216
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2311, ptr noundef %i.ci)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  %i.cj = load ptr, ptr %6, align 8, !tbaa !216   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !217
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.co = load ptr, ptr %4, align 8, !tbaa !219   ; 3 uses
  %.not.i.i582 = icmp eq ptr %i.co, null
  br i1 %.not.i.i582, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !199
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !237 ; 4 uses
  %.not.i.i583 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i583, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !216 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !217
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.zh

bb.q:                                             ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit589

bb.r:                                             ; preds = %bb.l
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586

bb.s:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN21Registry_Context_Test8TestBodyEv:bb.a
  store i8 %i.box, ptr %123, align 8, !tbaa !234
  %i.boy = getelementptr inbounds nuw i8, ptr %123, i64 8
  store ptr null, ptr %i.boy, align 8, !tbaa !252
  br i1 %i.bov, label %bb.yj, label %bb.yt

bb.yh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1229, %bb.xu
  %.pn492.pn.pn.pn = phi { ptr, i32 } [ %.pn492.pn.pn, %_ZN7testing7MessageD2Ev.exit1229 ], [ %i.bnu, %bb.xu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #27
  br label %bb.zj

bb.yi:                                            ; preds = %bb.yf
  %i.boz = landingpad { ptr, i32 }
          cleanup
  br label %bb.yv

bb.yj:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.yk unwind label %bb.yo

bb.yk:                                            ; preds = %bb.yj
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %126, ptr noundef nonnull align 8 dereferenceable(16) %123, ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15)
          to label %bb.yl unwind label %bb.yp

bb.yl:                                            ; preds = %bb.yk
  %i.bpa = load ptr, ptr %126, align 8, !tbaa !216
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %125, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2366, ptr noundef %i.bpa)
          to label %bb.ym unwind label %bb.yq

bb.ym:                                            ; preds = %bb.yl
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.yn unwind label %bb.yr

bb.yn:                                            ; preds = %bb.ym
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #27
  %i.bpb = load ptr, ptr %126, align 8, !tbaa !216 ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.bpd = icmp eq ptr %i.bpb, %i.bpc
  br i1 %i.bpd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230: ; preds = %bb.yn
  %i.bpe = load i64, ptr %i.bpc, align 8, !tbaa !217
  %i.bpf = add i64 %i.bpe, 1
  call void @_ZdlPvm(ptr noundef %i.bpb, i64 noundef %i.bpf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232: ; preds = %bb.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #27
  %i.bpg = load ptr, ptr %124, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1233 = icmp eq ptr %i.bpg, null
  br i1 %.not.i.i1233, label %_ZN7testing7MessageD2Ev.exit1235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !199
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(128) %i.bpg) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1235

_ZN7testing7MessageD2Ev.exit1235:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1234
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #27
  br label %bb.zh

bb.yo:                                            ; preds = %bb.yj
  %i.bpk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1241

bb.yp:                                            ; preds = %bb.yk
  %i.bpl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238

bb.yq:                                            ; preds = %bb.yl
  %i.bpm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ys

bb.yr:                                            ; preds = %bb.ym
  %i.bpn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #27
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yq
  %.pn497 = phi { ptr, i32 } [ %i.bpn, %bb.yr ], [ %i.bpm, %bb.yq ] ; 2 uses
  %i.bpo = load ptr, ptr %126, align 8, !tbaa !216 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.bpq = icmp eq ptr %i.bpo, %i.bpp
  br i1 %i.bpq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1236: ; preds = %bb.ys
  %i.bpr = load i64, ptr %i.bpp, align 8, !tbaa !217
  %i.bps = add i64 %i.bpr, 1
  call void @_ZdlPvm(ptr noundef %i.bpo, i64 noundef %i.bps) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238: ; preds = %bb.ys, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1236, %bb.yp
  %.pn497.pn = phi { ptr, i32 } [ %i.bpl, %bb.yp ], [ %.pn497, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1236 ], [ %.pn497, %bb.ys ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #27
  %i.bpt = load ptr, ptr %124, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1239 = icmp eq ptr %i.bpt, null
  br i1 %.not.i.i1239, label %_ZN7testing7MessageD2Ev.exit1241, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1240

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !199
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 8
  %i.bpw = load ptr, ptr %i.bpv, align 8
  call void %i.bpw(ptr noundef nonnull align 8 dereferenceable(128) %i.bpt) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1241

_ZN7testing7MessageD2Ev.exit1241:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238, %bb.yo
  %.pn497.pn.pn = phi { ptr, i32 } [ %i.bpk, %bb.yo ], [ %.pn497.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238 ], [ %.pn497.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1240 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #27
  br label %bb.yv

bb.yt:                                            ; preds = %bb.yg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %123) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #27
  %i.bpx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4entt7type_idIiEERKNS_9type_infoEv() #27
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 4
  %i.bpz = load i32, ptr %i.bpy, align 4, !tbaa !406
  %i.bqa = invoke noundef zeroext i1 @_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIiEEbj(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.bpz)
          to label %bb.yu unwind label %bb.yw     ; 2 uses

bb.yu:                                            ; preds = %bb.yt
  %i.bqb = xor i1 %i.bqa, true
  %i.bqc = zext i1 %i.bqb to i8
  store i8 %i.bqc, ptr %127, align 8, !tbaa !234
  %i.bqd = getelementptr inbounds nuw i8, ptr %127, i64 8
  store ptr null, ptr %i.bqd, align 8, !tbaa !252
  br i1 %i.bqa, label %bb.yx, label %.critedge581

bb.yv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1241, %bb.yi
  %.pn497.pn.pn.pn = phi { ptr, i32 } [ %.pn497.pn.pn, %_ZN7testing7MessageD2Ev.exit1241 ], [ %i.boz, %bb.yi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #27
  br label %bb.zj

bb.yw:                                            ; preds = %bb.yt
  %i.bqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.zi

bb.yx:                                            ; preds = %bb.yu
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %128)
          to label %bb.yy unwind label %bb.zc

bb.yy:                                            ; preds = %bb.yx
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %130, ptr noundef nonnull align 8 dereferenceable(16) %127, ptr noundef nonnull @.str.549, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15)
          to label %bb.yz unwind label %bb.zd

bb.yz:                                            ; preds = %bb.yy
  %i.bqf = load ptr, ptr %130, align 8, !tbaa !216
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %129, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2367, ptr noundef %i.bqf)
          to label %bb.za unwind label %bb.ze

bb.za:                                            ; preds = %bb.yz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %129, ptr noundef nonnull align 8 dereferenceable(8) %128)
          to label %bb.zb unwind label %bb.zf

bb.zb:                                            ; preds = %bb.za
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #27
  %i.bqg = load ptr, ptr %130, align 8, !tbaa !216 ; 2 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.bqi = icmp eq ptr %i.bqg, %i.bqh
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242: ; preds = %bb.zb
  %i.bqj = load i64, ptr %i.bqh, align 8, !tbaa !217
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqg, i64 noundef %i.bqk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244: ; preds = %bb.zb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #27
  %i.bql = load ptr, ptr %128, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1245 = icmp eq ptr %i.bql, null
  br i1 %.not.i.i1245, label %_ZN7testing7MessageD2Ev.exit1247, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1246

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !199
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 8
  %i.bqo = load ptr, ptr %i.bqn, align 8
  call void %i.bqo(ptr noundef nonnull align 8 dereferenceable(128) %i.bql) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1247

_ZN7testing7MessageD2Ev.exit1247:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1246
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %127) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  br label %bb.zh

bb.zc:                                            ; preds = %bb.yx
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1253

bb.zd:                                            ; preds = %bb.yy
  %i.bqq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250

bb.ze:                                            ; preds = %bb.yz
  %i.bqr = landingpad { ptr, i32 }
          cleanup
  br label %bb.zg

bb.zf:                                            ; preds = %bb.za
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #27
  br label %bb.zg

bb.zg:                                            ; preds = %bb.zf, %bb.ze
  %.pn502 = phi { ptr, i32 } [ %i.bqs, %bb.zf ], [ %i.bqr, %bb.ze ] ; 2 uses
  %i.bqt = load ptr, ptr %130, align 8, !tbaa !216 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.bqv = icmp eq ptr %i.bqt, %i.bqu
  br i1 %i.bqv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248: ; preds = %bb.zg
  %i.bqw = load i64, ptr %i.bqu, align 8, !tbaa !217
  %i.bqx = add i64 %i.bqw, 1
  call void @_ZdlPvm(ptr noundef %i.bqt, i64 noundef %i.bqx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250: ; preds = %bb.zg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248, %bb.zd
  %.pn502.pn = phi { ptr, i32 } [ %i.bqq, %bb.zd ], [ %.pn502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248 ], [ %.pn502, %bb.zg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #27
  %i.bqy = load ptr, ptr %128, align 8, !tbaa !219 ; 3 uses
  %.not.i.i1251 = icmp eq ptr %i.bqy, null
  br i1 %.not.i.i1251, label %_ZN7testing7MessageD2Ev.exit1253, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1252

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !199
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  %i.brb = load ptr, ptr %i.bra, align 8
  call void %i.brb(ptr noundef nonnull align 8 dereferenceable(128) %i.bqy) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1253

_ZN7testing7MessageD2Ev.exit1253:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250, %bb.zc
  %.pn502.pn.pn = phi { ptr, i32 } [ %i.bqp, %bb.zc ], [ %.pn502.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250 ], [ %.pn502.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1252 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %127) #27
  br label %bb.zi

.critedge581:                                     ; preds = %bb.yu
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %127) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  br label %bb.zh

bb.zh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1235, %_ZN7testing7MessageD2Ev.exit1223, %_ZN7testing7MessageD2Ev.exit1211, %_ZN7testing7MessageD2Ev.exit1202, %_ZN7testing7MessageD2Ev.exit1189, %_ZN7testing7MessageD2Ev.exit1171, %_ZN7testing7MessageD2Ev.exit1163, %_ZN7testing7MessageD2Ev.exit1155, %_ZN7testing7MessageD2Ev.exit1143, %_ZN7testing7MessageD2Ev.exit1125, %_ZN7testing7MessageD2Ev.exit1117, %_ZN7testing7MessageD2Ev.exit1109, %_ZN7testing7MessageD2Ev.exit1101, %_ZN7testing7MessageD2Ev.exit1093, %_ZN7testing7MessageD2Ev.exit1080, %_ZN7testing7MessageD2Ev.exit1064, %_ZN7testing7MessageD2Ev.exit1056, %_ZN7testing7MessageD2Ev.exit1048, %_ZN7testing7MessageD2Ev.exit1035, %_ZN7testing7MessageD2Ev.exit1023, %_ZN7testing7MessageD2Ev.exit1015, %_ZN7testing7MessageD2Ev.exit1004, %_ZN7testing7MessageD2Ev.exit992, %_ZN7testing7MessageD2Ev.exit983, %_ZN7testing7MessageD2Ev.exit961, %_ZN7testing15AssertionResultD2Ev.exit931, %_ZN7testing15AssertionResultD2Ev.exit894, %_ZN7testing15AssertionResultD2Ev.exit859, %_ZN7testing15AssertionResultD2Ev.exit835, %_ZN7testing15AssertionResultD2Ev.exit815, %_ZN7testing15AssertionResultD2Ev.exit781, %_ZN7testing15AssertionResultD2Ev.exit747, %_ZN7testing15AssertionResultD2Ev.exit713, %_ZN7testing15AssertionResultD2Ev.exit674, %_ZN7testing15AssertionResultD2Ev.exit644, %_ZN7testing15AssertionResultD2Ev.exit615, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit1247, %.critedge581
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.zi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1253, %bb.yw
  %.pn502.pn.pn.pn = phi { ptr, i32 } [ %.pn502.pn.pn, %_ZN7testing7MessageD2Ev.exit1253 ], [ %i.bqe, %bb.yw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.yv, %bb.yh, %bb.xt, %bb.xf, %bb.ws, %bb.wc, %bb.vh, %bb.uq, %bb.uc, %bb.tm, %bb.sr, %bb.sa, %bb.rk, %bb.qu, %bb.qg, %bb.pq, %bb.ov, %bb.oe, %bb.nq, %bb.na, %bb.mf, %bb.lo, %bb.ln, %bb.lm, %bb.kv, %bb.kh, %bb.ju, %_ZN7testing7MessageD2Ev.exit937, %_ZN7testing7MessageD2Ev.exit900, %bb.hm, %bb.gp, %bb.fy, %bb.fh, %_ZN7testing7MessageD2Ev.exit753, %_ZN7testing7MessageD2Ev.exit719, %bb.cw, %bb.cv, %bb.bs, %_ZN7testing7MessageD2Ev.exit621, %_ZN7testing7MessageD2Ev.exit589
  %.pn502.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn502.pn.pn.pn, %bb.zi ], [ %.pn497.pn.pn.pn, %bb.yv ], [ %.pn492.pn.pn.pn, %bb.yh ], [ %.pn487.pn.pn.pn, %bb.xt ], [ %.pn483.pn.pn, %bb.xf ], [ %.pn479.pn.pn, %bb.ws ], [ %.pn475.pn.pn, %bb.wc ], [ %.pn469.pn.pn, %bb.vh ], [ %.pn463.pn.pn, %bb.uq ], [ %.pn459.pn.pn, %bb.uc ], [ %.pn455.pn.pn, %bb.tm ], [ %.pn449.pn.pn, %bb.sr ], [ %.pn443.pn.pn, %bb.sa ], [ %.pn437.pn.pn, %bb.rk ], [ %.pn431.pn.pn, %bb.qu ], [ %.pn427.pn.pn, %bb.qg ], [ %.pn423.pn.pn, %bb.pq ], [ %.pn417.pn.pn, %bb.ov ], [ %.pn411.pn.pn, %bb.oe ], [ %.pn407.pn.pn, %bb.nq ], [ %.pn403.pn.pn, %bb.na ], [ %.pn397.pn.pn, %bb.mf ], [ %i.aly, %bb.lo ], [ %i.alx, %bb.ln ], [ %.pn390.pn.pn.pn, %bb.lm ], [ %.pn385.pn.pn.pn, %bb.kv ], [ %.pn381.pn.pn, %bb.kh ], [ %.pn375.pn.pn, %bb.ju ], [ %.pn368.pn.pn, %_ZN7testing7MessageD2Ev.exit937 ], [ %.pn363.pn.pn, %_ZN7testing7MessageD2Ev.exit900 ], [ %.pn358.pn.pn.pn, %bb.hm ], [ %.pn353.pn.pn.pn, %bb.gp ], [ %.pn349.pn.pn, %bb.fy ], [ %.pn343.pn.pn, %bb.fh ], [ %.pn336.pn.pn, %_ZN7testing7MessageD2Ev.exit753 ], [ %.pn331.pn.pn, %_ZN7testing7MessageD2Ev.exit719 ], [ %i.np, %bb.cw ], [ %.pn327.pn.pn, %bb.cv ], [ %.pn321.pn.pn, %bb.bs ], [ %.pn314.pn.pn, %_ZN7testing7MessageD2Ev.exit621 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit589 ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn502.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIcEEbj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.d = load ptr, ptr %0, align 8, !tbaa !309    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 4294967295
  %i.j = and i64 %i.i, %i.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i.i = phi ptr [ %i.k, %bb.a ], [ %i.n, %bb.c ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.07.i.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !224
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit, label %bb.b, !llvm.loop !81

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !329
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit: ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit, %bb.d
  %i.x = phi ptr [ %i.s, %bb.d ], [ %.pre, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.0.1.i.i, %i.x
  br i1 %i.y, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !626
  %i.ac = invoke noundef ptr %i.ab(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(29) %i.z, ptr noundef null)
          to label %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #30
  unreachable

_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit:        ; preds = %bb.e
  %i.af = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !365

bb.g:                                             ; preds = %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  %i.ai = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit, %bb.g, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !406
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !406
  %i.am = icmp eq i32 %i.ak, %i.al
  br label %bb.i

bb.i:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit
  %i.an = phi i1 [ false, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit ], [ %i.am, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit ]
  ret i1 %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4entt7type_idIKiEERKNS_9type_infoEv() local_unnamed_addr #12 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !365

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #27
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  ret ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4entt8internal16registry_contextISaINS_6entityEEE8containsIiEEbj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.d = load ptr, ptr %0, align 8, !tbaa !309    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 4294967295
  %i.j = and i64 %i.i, %i.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i.i = phi ptr [ %i.k, %bb.a ], [ %i.n, %bb.c ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.07.i.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !224
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit, label %bb.b, !llvm.loop !81

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !329
  br label %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit

_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit: ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit, %bb.d
  %i.x = phi ptr [ %i.s, %bb.d ], [ %.pre, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit.loopexit ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.0.1.i.i, %i.x
  br i1 %i.y, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE4findERS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !626
  %i.ac = invoke noundef ptr %i.ab(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(29) %i.z, ptr noundef null)
          to label %_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #30
  unreachable

_ZNK4entt9basic_anyILm0ELm8EE4infoEv.exit:        ; preds = %bb.e
  %i.af = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !365
end_hunk_3
