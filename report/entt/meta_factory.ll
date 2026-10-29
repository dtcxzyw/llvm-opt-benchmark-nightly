Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_factory?download=true
inline.NumInlined: 6044
inline.NumDeleted: 1659
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4entt8meta_any10allow_castIN11MetaFactory5clazzEEES0_v:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !217
  %i.bo = load i8, ptr %i.az, align 4, !tbaa !171
  %i.bp = icmp eq i8 %i.bo, 2
  %i.bq = load ptr, ptr %1, align 8
  %i.br = select i1 %i.bp, ptr %1, ptr %i.bq
  %i.bs = call noundef ptr %i.bn(ptr noundef %i.br) #29
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef null, ptr noundef %i.bs)
  %i.bt = load i32, ptr %.sroa.037.044, align 8, !tbaa !200
  %i.bu = icmp eq i32 %i.bt, 2102306136
  br i1 %i.bu, label %.critedge27, label %bb.l

.critedge27:                                      ; preds = %bb.i
  call void @_ZN4entt8meta_anyC2EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #29
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.critedge27
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %.critedge27, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.critedge29.thread

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNK4entt8meta_any10allow_castIN11MetaFactory5clazzEEES0_v(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !175
  %.not42 = icmp eq ptr %i.by, null               ; 2 uses
  br i1 %.not42, label %bb.q, label %_ZN4entt8meta_anyD2Ev.exit34

bb.n:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i31, label %_ZN4entt8meta_anyD2Ev.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit32 unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit32:                     ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.bz

bb.q:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i33, label %_ZN4entt8meta_anyD2Ev.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit34 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit34:                     ; preds = %bb.r, %bb.q, %bb.m
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i35, label %_ZN4entt8meta_anyD2Ev.exit36, label %bb.t

bb.t:                                             ; preds = %_ZN4entt8meta_anyD2Ev.exit34
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit36 unwind label %bb.u, !inline_history !3

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit36:                     ; preds = %_ZN4entt8meta_anyD2Ev.exit34, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.not42, label %bb.h, label %.critedge29.thread

.critedge29:                                      ; preds = %bb.h, %.critedge, %_ZNK4entt8meta_any10fetch_nodeEv.exit, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !173
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.cl, align 8, !tbaa !169
  store i32 1219850847, ptr %i.cn, align 8, !tbaa !170
  store ptr null, ptr %i.cm, align 8, !tbaa !151
  store i8 0, ptr %i.co, align 4, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !129
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ck, ptr %i.cp, align 8, !tbaa !173
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  br label %.critedge29.thread

.critedge29.thread:                               ; preds = %_ZN4entt8meta_anyD2Ev.exit36, %_ZN4entt8meta_anyD2Ev.exit, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit, %.critedge29, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33MetaFactory_DataMemberObject_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %3 = alloca %"struct.MetaFactory::base", align 1 ; 12 uses
  %4 = alloca %"class.entt::meta_factory.43", align 8 ; 5 uses
  %5 = alloca %"class.entt::meta_type", align 8   ; 10 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.entt::meta_factory.43", align 8 ; 3 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 99, ptr %3, align 1, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.f, null
  br i1 %.not.i.i69, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit
  %i.j = phi ptr [ %i.f, %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit ], [ %i.g, %bb.d ] ; 3 uses
  %i.k = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %i.j, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.m = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i32 noundef 719708611, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.a, label %31, label %_ZNK4entt9meta_type4dataEjb.exit

31:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %32 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %31
  %i.n = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %6, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %9, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef %i.r)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.s = load ptr, ptr %9, align 8, !tbaa !126    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !129
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.x = load ptr, ptr %7, align 8, !tbaa !128    ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.x, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !123 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !129
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cy

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit77

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.o:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.al = load ptr, ptr %9, align 8, !tbaa !126   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.q
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !129
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.aq = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cz

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %31, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory4baseEE4dataITnDaXadL_ZNS2_6memberEEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.43") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 719708611, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.au = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.au, null
  br i1 %.not.i.i83, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.av = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i87:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ay = phi ptr [ %i.au, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.av, %bb.r ] ; 3 uses
  %i.az = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ay) #29 ; 2 uses
  store ptr %i.az, ptr %5, align 8, !tbaa !92
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ba = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %i.az, i32 noundef 719708611, i1 noundef zeroext true)
  %.not.i88 = icmp eq ptr %i.ba, null
  br i1 %.not.i88, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  %i.bb = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i92, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %11, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr %14, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 242, ptr noundef %i.bg)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.bh = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.aa
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !129
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.bm = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !123 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.ab
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !129
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %_ZN7testing7MessageD2Ev.exit99, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cy

bb.ac:                                            ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit110

bb.ad:                                            ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ae:                                            ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn40 = phi { ptr, i32 } [ %i.bz, %bb.af ], [ %i.by, %bb.ae ] ; 2 uses
  %i.ca = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ag
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !129
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ad
  %.pn40.pn = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn40, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.cf = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ac
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.ac ], [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn40.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cz

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZNK4entt9meta_type3getIRKN11MetaFactory4baseEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 719708611, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN7testing8internal11CmpHelperEQIN4entt8meta_anyEcEENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31
end_hunk_0
begin_hunk_1_@_ZNK4entt9meta_type3getIRN11MetaFactory4baseEJEEENS_8meta_anyEjOT_DpOT0_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.f:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !157, !noalias !534
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162, !noalias !534
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.r, align 8, !tbaa !169, !noalias !534
  store i32 362938007, ptr %i.t, align 8, !tbaa !170, !noalias !534
  store ptr null, ptr %i.s, align 8, !tbaa !151, !noalias !534
  store i8 3, ptr %i.u, align 4, !tbaa !171, !noalias !534
  store ptr %3, ptr %4, align 8, !tbaa !129, !noalias !534
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.l, ptr %i.v, align 8, !tbaa !173, !noalias !534
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !174, !noalias !534
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.x, align 8, !tbaa !175, !noalias !534
  invoke void %i.q(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %4, ptr noundef null)
          to label %bb.i unwind label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.y, align 8, !tbaa !169, !alias.scope !534
  store i32 1219850847, ptr %i.aa, align 8, !tbaa !170, !alias.scope !534
  store ptr null, ptr %i.z, align 8, !tbaa !151, !alias.scope !534
  store i8 0, ptr %i.ab, align 4, !tbaa !171, !alias.scope !534
  store ptr null, ptr %0, align 8, !tbaa !129, !alias.scope !534
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !173, !alias.scope !534
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !534
  br label %_ZNK4entt9meta_data3getIRN11MetaFactory4baseEJEEENS_8meta_anyEOT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !151, !noalias !534 ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK4entt9meta_data3getIRN11MetaFactory4baseEJEEENS_8meta_anyEOT_DpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNK4entt9meta_data3getIRN11MetaFactory4baseEJEEENS_8meta_anyEOT_DpOT0_.exit unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !151, !noalias !534 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i5.i, label %_ZN4entt11meta_handleD2Ev.exit6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt11meta_handleD2Ev.exit6.i unwind label %bb.n, !inline_history !3

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit6.i:                ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.ah

_ZNK4entt9meta_data3getIRN11MetaFactory4baseEJEEENS_8meta_anyEOT_DpOT0_.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.p

bb.o:                                             ; preds = %bb.c, %bb.d
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.am, align 8, !tbaa !169
  store i32 1219850847, ptr %i.ao, align 8, !tbaa !170
  store ptr null, ptr %i.an, align 8, !tbaa !151
  store i8 0, ptr %i.ap, align 4, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !129
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4entt9meta_data3getIRN11MetaFactory4baseEJEEENS_8meta_anyEOT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33MetaFactory_DataFreeFunction_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %3 = alloca %"struct.MetaFactory::clazz", align 4 ; 11 uses
  %4 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %5 = alloca %"class.entt::meta_type", align 8   ; 10 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %16 = alloca %"class.entt::meta_any", align 8   ; 18 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %20 = alloca %"class.entt::meta_any", align 8   ; 18 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 0, ptr %3, align 4, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 1, ptr %i.e, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.k = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.k, null
  br i1 %.not.i.i75, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.o = phi ptr [ %i.k, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.p = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #29 ; 2 uses
  store ptr %i.p, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %i.o, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.r = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i32 noundef 719708611, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.a, label %31, label %_ZNK4entt9meta_type4dataEjb.exit

31:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %32 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %31
  %i.s = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %6, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %9, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 256, ptr noundef %i.w)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.x = load ptr, ptr %9, align 8, !tbaa !126    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !129
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ac = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i76, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !123 ; 4 uses
  %.not.i.i77 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i77, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.dm

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit83

bb.n:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.o:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %9, align 8, !tbaa !126   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.av = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.av, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.dn

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %31, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaXadL_ZNS2_10set_doubleERS2_dEETnDaXadL_ZNS2_10get_doubleERKS2_EENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 719708611, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.az = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.az, null
  br i1 %.not.i.i89, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i93

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i93 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i93:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.bd = phi ptr [ %i.az, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.ba, %bb.r ] ; 3 uses
  %i.be = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bd) #29 ; 2 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bf = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.be, i32 noundef 719708611, i1 noundef zeroext true)
  %.not.i94 = icmp eq ptr %i.bf, null
  br i1 %.not.i94, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i93
  %i.bg = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i98 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i98, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %11, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bl = load ptr, ptr %14, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 261, ptr noundef %i.bl)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.bm = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.aa
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.br = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.br, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i106, label %_ZN7testing15AssertionResultD2Ev.exit110, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.ab
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !129
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit110

_ZN7testing15AssertionResultD2Ev.exit110:         ; preds = %_ZN7testing7MessageD2Ev.exit105, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.dm

bb.ac:                                            ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit116

bb.ad:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ae:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn42 = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.cf = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ag
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !129
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ad
  %.pn42.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %.pn42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn42, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ck = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.ac
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ac ], [ %.pn42.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn42.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.dn

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZNK4entt9meta_type3getIRKN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 719708611, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !170
  %i.cr = icmp ne i32 %i.cq, -1595207928
  %i.cs = load i8, ptr %i.co, align 4             ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 2
  %i.cu = load ptr, ptr %16, align 8              ; 2 uses
  %i.cv = select i1 %i.ct, ptr %16, ptr %i.cu     ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.cv, null
  %.not.i.i.i = select i1 %i.cr, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !174 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4entt9meta_type3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_:bb.a
  br i1 %i.d, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %2, i1 noundef zeroext true) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.h = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.o unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.f:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !157, !noalias !540
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162, !noalias !540
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.r, align 8, !tbaa !169, !noalias !540
  store i32 2102306136, ptr %i.t, align 8, !tbaa !170, !noalias !540
  store ptr null, ptr %i.s, align 8, !tbaa !151, !noalias !540
  store i8 3, ptr %i.u, align 4, !tbaa !171, !noalias !540
  store ptr %3, ptr %4, align 8, !tbaa !129, !noalias !540
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.l, ptr %i.v, align 8, !tbaa !173, !noalias !540
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !174, !noalias !540
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.x, align 8, !tbaa !175, !noalias !540
  invoke void %i.q(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %4, ptr noundef null)
          to label %bb.i unwind label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.y, align 8, !tbaa !169, !alias.scope !540
  store i32 1219850847, ptr %i.aa, align 8, !tbaa !170, !alias.scope !540
  store ptr null, ptr %i.z, align 8, !tbaa !151, !alias.scope !540
  store i8 0, ptr %i.ab, align 4, !tbaa !171, !alias.scope !540
  store ptr null, ptr %0, align 8, !tbaa !129, !alias.scope !540
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !173, !alias.scope !540
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !540
  br label %_ZNK4entt9meta_data3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEOT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !151, !noalias !540 ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK4entt9meta_data3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEOT_DpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNK4entt9meta_data3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEOT_DpOT0_.exit unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !151, !noalias !540 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i5.i, label %_ZN4entt11meta_handleD2Ev.exit6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt11meta_handleD2Ev.exit6.i unwind label %bb.n, !inline_history !3

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit6.i:                ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.ah

_ZNK4entt9meta_data3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEOT_DpOT0_.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.p

bb.o:                                             ; preds = %bb.c, %bb.d
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.am, align 8, !tbaa !169
  store i32 1219850847, ptr %i.ao, align 8, !tbaa !170
  store ptr null, ptr %i.an, align 8, !tbaa !151
  store i8 0, ptr %i.ap, align 4, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !129
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4entt9meta_data3getIRN11MetaFactory5clazzEJEEENS_8meta_anyEOT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN28MetaFactory_DataPointer_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 5 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 5 uses
  %3 = alloca %"struct.entt::internal::meta_data_node", align 8 ; 16 uses
  %4 = alloca %"class.entt::meta_factory", align 8 ; 5 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 16 uses
  %15 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %19 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIiEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN4entt12meta_factoryIiEC2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  call void @_ZN4entt12meta_factoryIiEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.f, null
  br i1 %.not.i.i50, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIiEC2Ev.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIiEC2Ev.exit
  %i.j = phi ptr [ %i.f, %_ZN4entt12meta_factoryIiEC2Ev.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.l = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.a, label %23, label %_ZNK4entt9meta_type4dataEjb.exit

23:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %24 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %24, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %23
  %i.m = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %5, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 274, ptr noundef %i.q)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  %i.r = load ptr, ptr %8, align 8, !tbaa !126    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !129
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.w = load ptr, ptr %6, align 8, !tbaa !128    ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.w, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !123 ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i52, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !129
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.cx

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit58

bb.n:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.o:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !126   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.q
  %i.an = load i64, ptr %i.al, align 8, !tbaa !129
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ap = load ptr, ptr %6, align 8, !tbaa !128   ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit58, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit58

_ZN7testing7MessageD2Ev.exit58:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.cz

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %23, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1113510858, ptr %3, align 8, !tbaa !153, !noalias !546
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !154, !noalias !546
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 2, ptr %i.au, align 8, !tbaa !155, !noalias !546
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.av, align 8, !tbaa !156, !noalias !546
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aw, align 8, !tbaa !157, !noalias !546
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZN4entt8meta_argINS_9type_listIJiEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.ax, align 8, !tbaa !158, !noalias !546
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @_ZN4entt8meta_argINS_9type_listIJEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.ay, align 8, !tbaa !159, !noalias !546
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %i.az, align 8, !tbaa !160, !noalias !546
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @_ZN4entt11meta_setterIiTnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEEEEbNS_11meta_handleEPNS_8meta_anyE, ptr %i.ba, align 8, !tbaa !161, !noalias !546
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @_ZN4entt11meta_getterIiTnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS3_, ptr %i.bb, align 8, !tbaa !162, !noalias !546
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.bc, align 8, !tbaa !163, !noalias !546
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !noalias !546
  invoke void @_ZN4entt8internal18basic_meta_factory4dataENS0_14meta_data_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nofreeobj noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.r unwind label %bb.y, !noalias !546

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !136, !noalias !546 ; 8 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i64, label %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8, !noalias !546 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8, !tbaa !138, !noalias !546
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !139, !noalias !546
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !45, !noalias !546
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !546
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29, !noalias !546, !inline_history !543
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !45, !noalias !546
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !546
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29, !noalias !546, !inline_history !543
  br label %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !546
  %.not.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !88, !noalias !546
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4, !noalias !546
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.x, label %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit, !prof !140

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29, !noalias !546
  br label %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit

bb.y:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #31, !noalias !546
  unreachable

_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bx = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i65, label %bb.z, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69

bb.z:                                             ; preds = %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit
  %i.by = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i69:       ; preds = %bb.z, %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit
  %i.cb = phi ptr [ %i.bx, %_ZN4entt12meta_factoryIiE4dataITnDaXadL_ZZN28MetaFactory_DataPointer_Test8TestBodyEvE5valueEENS_10as_value_tEEES1_jPKc.exit ], [ %i.by, %bb.z ] ; 7 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cb) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cd = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(128) %i.cc, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i70 = icmp eq ptr %i.cd, null
  br i1 %.not.i70, label %bb.ab, label %bb.ap

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69
  %i.ce = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i74, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cf = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.ae unwind label %bb.ad     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #31
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  store i8 0, ptr %9, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr %12, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 280, ptr noundef %i.cj)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.ck = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ai
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.cp = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i79, label %_ZN7testing7MessageD2Ev.exit81, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit81

_ZN7testing7MessageD2Ev.exit81:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !123 ; 4 uses
  %.not.i.i82 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i82, label %_ZN7testing15AssertionResultD2Ev.exit86, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit81
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !126 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83: ; preds = %bb.aj
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !129
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit86

_ZN7testing15AssertionResultD2Ev.exit86:          ; preds = %_ZN7testing7MessageD2Ev.exit81, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
end_hunk_2
begin_hunk_3_@_ZN28MetaFactory_DataPointer_Test8TestBodyEv:bb.a

bb.cn:                                            ; preds = %bb.cm
  %i.hj = load ptr, ptr %22, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 282, ptr noundef %i.hj)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #29
  %i.hk = load ptr, ptr %22, align 8, !tbaa !126  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.cp
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !129
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.hp = load ptr, ptr %20, align 8, !tbaa !128  ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i141, label %bb.cv, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !45
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(128) %i.hp) #29, !inline_history !1
  br label %bb.cv

bb.cq:                                            ; preds = %bb.cl
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit149

bb.cr:                                            ; preds = %bb.cm
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.cs:                                            ; preds = %bb.cn
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #29
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn40 = phi { ptr, i32 } [ %i.hw, %bb.ct ], [ %i.hv, %bb.cs ] ; 2 uses
  %i.hx = load ptr, ptr %22, align 8, !tbaa !126  ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.cu
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !129
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.cr
  %.pn40.pn = phi { ptr, i32 } [ %i.hu, %bb.cr ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %.pn40, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.ic = load ptr, ptr %20, align 8, !tbaa !128  ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ic) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.cq
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.cq ], [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn40.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #29
  br label %bb.cy

bb.cv:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %.pre = load ptr, ptr %i.hb, align 8, !tbaa !123 ; 4 uses
  %.not.i.i150 = icmp eq ptr %.pre, null
  br i1 %.not.i.i150, label %_ZN7testing15AssertionResultD2Ev.exit154, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ig = load ptr, ptr %.pre, align 8, !tbaa !126 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151: ; preds = %bb.cw
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !129
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit154

_ZN7testing15AssertionResultD2Ev.exit154:         ; preds = %_ZN4entt11meta_handleD2Ev.exit135, %bb.cv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit116, %_ZN7testing15AssertionResultD2Ev.exit86, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit149, %_ZN4entt11meta_handleD2Ev.exit137
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %_ZN7testing7MessageD2Ev.exit149 ], [ %i.hf, %_ZN4entt11meta_handleD2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ch, %_ZN7testing7MessageD2Ev.exit92, %_ZN7testing7MessageD2Ev.exit58
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.cy ], [ %.pn36.pn.pn, %bb.ch ], [ %.pn30.pn.pn, %_ZN7testing7MessageD2Ev.exit92 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN26MetaFactory_DataValue_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 5 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.entt::meta_factory", align 8 ; 5 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 16 uses
  %15 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %19 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIiEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZN4entt12meta_factoryIiEC2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ]
  call void @_ZN4entt12meta_factoryIiEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #29
  %i.g = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.g, null
  br i1 %.not.i.i50, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIiEC2Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIiEC2Ev.exit
  %i.k = phi ptr [ %i.g, %_ZN4entt12meta_factoryIiEC2Ev.exit ], [ %i.h, %bb.d ] ; 2 uses
  %i.l = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.m = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.a, label %23, label %_ZNK4entt9meta_type4dataEjb.exit

23:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %24 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %24, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %23
  %i.n = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %4, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %7, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 292, ptr noundef %i.r)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.s = load ptr, ptr %7, align 8, !tbaa !126    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !129
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.x = load ptr, ptr %5, align 8, !tbaa !128    ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.x, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !123 ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i52, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !129
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cp

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit58

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.o:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !126   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.q
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !129
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aq = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit58, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit58

_ZN7testing7MessageD2Ev.exit58:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cr

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %23, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4entt12meta_factoryIiE4dataITnDaLi1ENS_10as_value_tEEES1_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1113510858, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.au = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.au, null
  br i1 %.not.i.i64, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i68

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.av = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i68 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i68:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ay = phi ptr [ %i.au, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.av, %bb.r ] ; 7 uses
  %i.az = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ay) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ba = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %i.az, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i69 = icmp eq ptr %i.ba, null
  br i1 %.not.i69, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i68
  %i.bb = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i73, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %9, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr %12, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 297, ptr noundef %i.bg)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.bh = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.aa
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !129
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.bm = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !123 ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i81, label %_ZN7testing15AssertionResultD2Ev.exit85, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82: ; preds = %bb.ab
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !129
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit85

_ZN7testing15AssertionResultD2Ev.exit85:          ; preds = %_ZN7testing7MessageD2Ev.exit80, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cp

bb.ac:                                            ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

bb.ad:                                            ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.ae:                                            ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn30 = phi { ptr, i32 } [ %i.bz, %bb.af ], [ %i.by, %bb.ae ] ; 2 uses
  %i.ca = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ag
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !129
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.ad
  %.pn30.pn = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn30, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.cf = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.ac
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.ac ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn30.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cr

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, i8 0, i64 56, i1 false)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.cj, align 8, !tbaa !169
  store i32 1219850847, ptr %i.cl, align 8, !tbaa !170
  store ptr null, ptr %15, align 8, !tbaa !129
  %i.cn = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %bb.ai, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.co = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !151 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN26MetaFactory_DataValue_Test8TestBodyEv:bb.a
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.gn = load ptr, ptr %20, align 8, !tbaa !128  ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i139, label %bb.cn, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #29, !inline_history !1
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cd
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit147

bb.cj:                                            ; preds = %bb.ce
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ck:                                            ; preds = %bb.cf
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cg
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #29
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn40 = phi { ptr, i32 } [ %i.gu, %bb.cl ], [ %i.gt, %bb.ck ] ; 2 uses
  %i.gv = load ptr, ptr %22, align 8, !tbaa !126  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.cm
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !129
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.cj
  %.pn40.pn = phi { ptr, i32 } [ %i.gs, %bb.cj ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn40, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.ha = load ptr, ptr %20, align 8, !tbaa !128  ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(128) %i.ha) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ci
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.ci ], [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn40.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #29
  br label %bb.cq

bb.cn:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %.pre = load ptr, ptr %i.fz, align 8, !tbaa !123 ; 4 uses
  %.not.i.i148 = icmp eq ptr %.pre, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.he = load ptr, ptr %.pre, align 8, !tbaa !126 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.co
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !129
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %_ZN4entt11meta_handleD2Ev.exit133, %bb.cn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit114, %_ZN7testing15AssertionResultD2Ev.exit85, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147, %_ZN4entt11meta_handleD2Ev.exit135
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %_ZN7testing7MessageD2Ev.exit147 ], [ %i.gd, %_ZN4entt11meta_handleD2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.bz, %_ZN7testing7MessageD2Ev.exit91, %_ZN7testing7MessageD2Ev.exit58
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.cq ], [ %.pn36.pn.pn, %bb.bz ], [ %.pn30.pn.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31MetaFactory_DataGetterOnly_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %3 = alloca %"struct.MetaFactory::clazz", align 4 ; 9 uses
  %4 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %5 = alloca %"class.entt::meta_type", align 8   ; 10 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 0, ptr %3, align 4, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 1, ptr %i.e, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.k = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.k, null
  br i1 %.not.i.i69, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.o = phi ptr [ %i.k, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.p = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #29 ; 2 uses
  store ptr %i.p, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %i.o, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.r = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.a, label %31, label %_ZNK4entt9meta_type4dataEjb.exit

31:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %32 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %31
  %i.s = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %6, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %9, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 309, ptr noundef %i.w)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.x = load ptr, ptr %9, align 8, !tbaa !126    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !129
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ac = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !123 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cy

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit77

bb.n:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.o:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %9, align 8, !tbaa !126   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.av = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.av, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cz

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %31, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaLDn0ETnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1113510858, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.az = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.az, null
  br i1 %.not.i.i83, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i87:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.bd = phi ptr [ %i.az, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.ba, %bb.r ] ; 3 uses
  %i.be = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bd) #29 ; 2 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bf = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.be, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i88 = icmp eq ptr %i.bf, null
  br i1 %.not.i88, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  %i.bg = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i92, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %11, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bl = load ptr, ptr %14, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 314, ptr noundef %i.bl)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.bm = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.aa
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.br = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.br, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.ab
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !129
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %_ZN7testing7MessageD2Ev.exit99, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cy

bb.ac:                                            ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit110

bb.ad:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ae:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn40 = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.cf = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ag
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !129
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ad
  %.pn40.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn40, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ck = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ac
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ac ], [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn40.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cz

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZNK4entt9meta_type3getIRKN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 1113510858, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.co = load i32, ptr %i.e, align 4, !tbaa !207
  store i32 %i.co, ptr %i.a, align 4, !tbaa !88
  invoke void @_ZN7testing8internal11CmpHelperEQIN4entt8meta_anyEiEENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.63, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
end_hunk_4
begin_hunk_5_@_ZN31MetaFactory_DataGetterOnly_Test8TestBodyEv:bb.a
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit200

_ZN7testing15AssertionResultD2Ev.exit200:         ; preds = %_ZNK4entt9meta_type3setIRN11MetaFactory5clazzEJiEEEbjOT_DpOT0_.exit, %_ZNK4entt9meta_type3setIRN11MetaFactory5clazzEJiEEEbjOT_DpOT0_.exit.thread, %bb.cw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169, %_ZN7testing15AssertionResultD2Ev.exit149, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZN7testing15AssertionResultD2Ev.exit104, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.cz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit195, %_ZN7testing7MessageD2Ev.exit175, %bb.bv, %bb.bb, %_ZN7testing7MessageD2Ev.exit110, %_ZN7testing7MessageD2Ev.exit77
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn52.pn.pn, %_ZN7testing7MessageD2Ev.exit175 ], [ %.pn48.pn.pn, %bb.bv ], [ %.pn44.pn.pn, %bb.bb ], [ %.pn40.pn.pn, %_ZN7testing7MessageD2Ev.exit110 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn56.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaLDn0ETnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_factory.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.entt::internal::meta_data_node", align 8 ; 13 uses
  store i32 %2, ptr %4, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr @_ZN4entt8meta_argINS_9type_listIJEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.d, align 8, !tbaa !158
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN4entt8meta_argINS_9type_listIJEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.e, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @_ZN4entt11meta_setterIN11MetaFactory5clazzETnDaLDn0EEEbNS_11meta_handleEPNS_8meta_anyE, ptr %i.g, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr @_ZN4entt11meta_getterIN11MetaFactory5clazzETnDaXadL_ZNKS2_7get_intEvEETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS4_, ptr %i.h, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.i, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  invoke void @_ZN4entt8internal18basic_meta_factory4dataENS0_14meta_data_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal14meta_data_nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !139
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !4
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !4
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZN4entt8internal14meta_data_nodeD2Ev.exit, !prof !140

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

_ZN4entt8internal14meta_data_nodeD2Ev.exit:       ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33MetaFactory_DataSetterGetter_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %2 = alloca %"struct.entt::meta_data", align 8  ; 6 uses
  %3 = alloca %"struct.MetaFactory::clazz", align 4 ; 9 uses
  %4 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %5 = alloca %"class.entt::meta_type", align 8   ; 10 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.entt::meta_any", align 8   ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 0, ptr %3, align 4, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 1, ptr %i.e, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.k = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.k, null
  br i1 %.not.i.i69, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.o = phi ptr [ %i.k, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.p = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #29 ; 2 uses
  store ptr %i.p, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %i.o, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.r = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.a, label %31, label %_ZNK4entt9meta_type4dataEjb.exit

31:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %32 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %31
  %i.s = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %6, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %9, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 328, ptr noundef %i.w)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.x = load ptr, ptr %9, align 8, !tbaa !126    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !129
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ac = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !123 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cy

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit77

bb.n:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.o:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %9, align 8, !tbaa !126   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.av = load ptr, ptr %7, align 8, !tbaa !128   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.av, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cz

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %31, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaXadL_ZNS2_7set_intEiEETnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1113510858, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.az = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.az, null
  br i1 %.not.i.i83, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ba = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i87:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.bd = phi ptr [ %i.az, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.ba, %bb.r ] ; 3 uses
  %i.be = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bd) #29 ; 2 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bf = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.be, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i88 = icmp eq ptr %i.bf, null
  br i1 %.not.i88, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  %i.bg = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i92, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %11, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bl = load ptr, ptr %14, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 333, ptr noundef %i.bl)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.bm = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.aa
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.br = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.br, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.ab
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !129
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %_ZN7testing7MessageD2Ev.exit99, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cy

bb.ac:                                            ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit110

bb.ad:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ae:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn40 = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.cf = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ag
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !129
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ad
  %.pn40.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn40, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ck = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ac
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ac ], [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn40.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cz

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZNK4entt9meta_type3getIRKN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 1113510858, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.co = load i32, ptr %i.e, align 4, !tbaa !207
  store i32 %i.co, ptr %i.a, align 4, !tbaa !88
  invoke void @_ZN7testing8internal11CmpHelperEQIN4entt8meta_anyEiEENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.63, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8meta_anyEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
end_hunk_5
begin_hunk_6_@_ZN33MetaFactory_DataSetterGetter_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cz

bb.cw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  %.pr = load ptr, ptr %i.ib, align 8, !tbaa !123 ; 4 uses
  %.not.i.i196 = icmp eq ptr %.pr, null
  br i1 %.not.i.i196, label %_ZN7testing15AssertionResultD2Ev.exit200, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.iz = load ptr, ptr %.pr, align 8, !tbaa !126 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197: ; preds = %bb.cx
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !129
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit200

_ZN7testing15AssertionResultD2Ev.exit200:         ; preds = %_ZNK4entt9meta_type3setIRN11MetaFactory5clazzEJiEEEbjOT_DpOT0_.exit, %bb.cw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169, %_ZN7testing15AssertionResultD2Ev.exit149, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZN7testing15AssertionResultD2Ev.exit104, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.cz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit195, %_ZN7testing7MessageD2Ev.exit175, %bb.bv, %bb.bb, %_ZN7testing7MessageD2Ev.exit110, %_ZN7testing7MessageD2Ev.exit77
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn52.pn.pn, %_ZN7testing7MessageD2Ev.exit175 ], [ %.pn48.pn.pn, %bb.bv ], [ %.pn44.pn.pn, %bb.bb ], [ %.pn40.pn.pn, %_ZN7testing7MessageD2Ev.exit110 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn56.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaXadL_ZNS2_7set_intEiEETnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_factory.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.entt::internal::meta_data_node", align 8 ; 14 uses
  store i32 %2, ptr %4, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.c, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4entt8meta_argINS_9type_listIJiEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.e, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN4entt8meta_argINS_9type_listIJEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.f, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @_ZN4entt11meta_setterIN11MetaFactory5clazzETnDaXadL_ZNS2_7set_intEiEEEEbNS_11meta_handleEPNS_8meta_anyE, ptr %i.h, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr @_ZN4entt11meta_getterIN11MetaFactory5clazzETnDaXadL_ZNKS2_7get_intEvEETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS4_, ptr %i.i, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZN4entt8internal18basic_meta_factory4dataENS0_14meta_data_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal14meta_data_nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !139
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #29, !inline_history !4
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #29, !inline_history !4
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZN4entt8internal14meta_data_nodeD2Ev.exit, !prof !140

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #29
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

_ZN4entt8internal14meta_data_nodeD2Ev.exit:       ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN30MetaFactory_DataOverwrite_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::meta_factory.37", align 8 ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.e) #29
  %i.f = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.f, null
  br i1 %.not.i.i59, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.j = phi ptr [ %i.f, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.l = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.a, label %24, label %_ZNK4entt9meta_type4dataEjb.exit

24:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %25 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %25, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4dataEjb.exit.thread

bb.f:                                             ; preds = %24
  %i.m = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %2, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %5, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 346, ptr noundef %i.q)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  %i.r = load ptr, ptr %5, align 8, !tbaa !126    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !129
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.w = load ptr, ptr %3, align 8, !tbaa !128    ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.w, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !123 ; 4 uses
  %.not.i.i61 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i61, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !129
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bz

bb.m:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit67

bb.n:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.o:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.q
  %i.an = load i64, ptr %i.al, align 8, !tbaa !129
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ap = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i65, label %_ZN7testing7MessageD2Ev.exit67, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit67

_ZN7testing7MessageD2Ev.exit67:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ca

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %24, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4dataITnDaLDn0ETnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1113510858, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.at = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.at, null
  br i1 %.not.i.i73, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i77

bb.r:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.au = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i77 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i77:       ; preds = %bb.r, %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.ax = phi ptr [ %i.at, %_ZNK4entt9meta_type4dataEjb.exit.thread ], [ %i.au, %bb.r ] ; 3 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.az = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i78 = icmp eq ptr %i.az, null
  br i1 %.not.i78, label %bb.t, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i106

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i77
  %i.ba = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i82 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i82, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bb = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %7, align 8, !tbaa !120
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.be, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bf = load ptr, ptr %10, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 351, ptr noundef %i.bf)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  %i.bg = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aa
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !129
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bl = load ptr, ptr %8, align 8, !tbaa !128   ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !123 ; 4 uses
  %.not.i.i90 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i90, label %_ZN7testing15AssertionResultD2Ev.exit94, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit89
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !126 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91: ; preds = %bb.ab
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !129
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit94

_ZN7testing15AssertionResultD2Ev.exit94:          ; preds = %_ZN7testing7MessageD2Ev.exit89, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bz

bb.ac:                                            ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit100

bb.ad:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ae:                                            ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn36 = phi { ptr, i32 } [ %i.by, %bb.af ], [ %i.bx, %bb.ae ] ; 2 uses
  %i.bz = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ag
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !129
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ad
  %.pn36.pn = phi { ptr, i32 } [ %i.bw, %bb.ad ], [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn36, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.ce = load ptr, ptr %8, align 8, !tbaa !128   ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit100, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit100

_ZN7testing7MessageD2Ev.exit100:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.ac
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.ac ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn36.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ca

_ZNK4entt9meta_type10fetch_nodeEv.exit.i106:      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ci = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i32 noundef 1113510858, i1 noundef zeroext true) ; 2 uses
  %.not.i107 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i111 = icmp eq ptr %i.cj, null
  %or.cond252 = select i1 %.not.i107, i1 %.not.i.i.i.i.i111, i1 false
  br i1 %or.cond252, label %bb.ah, label %_ZNK4entt9meta_type4dataEjb.exit112

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i106
  %i.ck = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit112 unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit112:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i106, %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !155 ; 2 uses
  %.not.i.i113 = trunc i32 %i.co to i1
end_hunk_6
begin_hunk_7_@_ZN30MetaFactory_DataOverwrite_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.bh
  %.pn44.pn = phi { ptr, i32 } [ %i.ey, %bb.bh ], [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn44, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.fg = load ptr, ptr %17, align 8, !tbaa !128  ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i161, label %_ZN7testing7MessageD2Ev.exit163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit163

_ZN7testing7MessageD2Ev.exit163:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %bb.bg
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.bg ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn44.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ca

_ZNK4entt9meta_type10fetch_nodeEv.exit.i169:      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.fk = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.dz, ptr noundef nonnull align 8 dereferenceable(128) %i.ea, i32 noundef 1113510858, i1 noundef zeroext true) ; 2 uses
  %.not.i170 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i174 = icmp eq ptr %i.fl, null
  %or.cond253 = select i1 %.not.i170, i1 %.not.i.i.i.i.i174, i1 false
  br i1 %or.cond253, label %bb.bl, label %_ZNK4entt9meta_type4dataEjb.exit175

bb.bl:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i169
  %i.fm = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit175 unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit175:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i169, %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !155
  %.not.i.i176 = trunc i32 %i.fq to i1            ; 2 uses
  %i.fr = xor i1 %.not.i.i176, true
  %i.fs = zext i1 %i.fr to i8
  store i8 %i.fs, ptr %20, align 8, !tbaa !120
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr null, ptr %i.ft, align 8, !tbaa !131
  br i1 %.not.i.i176, label %bb.bn, label %_ZN7testing15AssertionResultD2Ev.exit193

bb.bn:                                            ; preds = %_ZNK4entt9meta_type4dataEjb.exit175
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.fu = load ptr, ptr %23, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef %i.fu)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #29
  %i.fv = load ptr, ptr %23, align 8, !tbaa !126  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.br
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !129
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.ga = load ptr, ptr %21, align 8, !tbaa !128  ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i180, label %bb.bx, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !45
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #29, !inline_history !1
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bn
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit188

bb.bt:                                            ; preds = %bb.bo
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.bu:                                            ; preds = %bb.bp
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #29
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn48 = phi { ptr, i32 } [ %i.gh, %bb.bv ], [ %i.gg, %bb.bu ] ; 2 uses
  %i.gi = load ptr, ptr %23, align 8, !tbaa !126  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.bw
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !129
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.bt
  %.pn48.pn = phi { ptr, i32 } [ %i.gf, %bb.bt ], [ %.pn48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %.pn48, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.gn = load ptr, ptr %21, align 8, !tbaa !128  ; 3 uses
  %.not.i.i186 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i186, label %_ZN7testing7MessageD2Ev.exit188, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit188

_ZN7testing7MessageD2Ev.exit188:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.bs
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.bs ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn48.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ca

bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %.pr = load ptr, ptr %i.ft, align 8, !tbaa !123 ; 4 uses
  %.not.i.i189 = icmp eq ptr %.pr, null
  br i1 %.not.i.i189, label %_ZN7testing15AssertionResultD2Ev.exit193, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gr = load ptr, ptr %.pr, align 8, !tbaa !126 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190: ; preds = %bb.by
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !129
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit193

_ZN7testing15AssertionResultD2Ev.exit193:         ; preds = %_ZNK4entt9meta_type4dataEjb.exit175, %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157, %_ZN7testing15AssertionResultD2Ev.exit124, %_ZN7testing15AssertionResultD2Ev.exit94, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.ca:                                            ; preds = %_ZN7testing7MessageD2Ev.exit188, %_ZN7testing7MessageD2Ev.exit163, %_ZN7testing7MessageD2Ev.exit130, %_ZN7testing7MessageD2Ev.exit100, %_ZN7testing7MessageD2Ev.exit67
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %_ZN7testing7MessageD2Ev.exit188 ], [ %.pn44.pn.pn, %_ZN7testing7MessageD2Ev.exit163 ], [ %.pn40.pn.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %.pn36.pn.pn, %_ZN7testing7MessageD2Ev.exit100 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn48.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34MetaFactory_DataTypeNameClash_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.entt::meta_factory.43", align 8 ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.entt::meta_factory.43", align 8 ; 4 uses
  %7 = alloca %"class.entt::meta_factory.43", align 8 ; 3 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 2, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.e = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.e, %bb.a ], [ %i.f, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.i) #29
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit, !prof !76

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4entt9type_infoC2IN11MetaFactory4baseEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  %i.m = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit: ; preds = %_ZN4entt12meta_factoryIN11MetaFactory4baseEEC2Ev.exit, %bb.d, %bb.e
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !85 ; 3 uses
  %i.o = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.o, null
  br i1 %.not.i.i44, label %bb.f, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.f:                                             ; preds = %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.f, %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit
  %i.s = phi ptr [ %i.o, %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #29
  %i.u = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i32 noundef %i.n, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.a, label %bb.h, label %_ZNK4entt9meta_type4dataEjb.exit

bb.h:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %18 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %18, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4entt9meta_type4dataEjb.exit.thread, label %bb.t

_ZNK4entt9meta_type4dataEjb.exit.thread:          ; preds = %bb.h
  %19 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.t unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit.thread
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZNK4entt9meta_type4dataEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 0, ptr %2, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %5, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef %i.y)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  %i.z = load ptr, ptr %5, align 8, !tbaa !126    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !129
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ae = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !123 ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i47, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !129
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bm

bb.o:                                             ; preds = %_ZNK4entt9meta_type4dataEjb.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.q:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aq, %bb.q ] ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.s
  %i.av = load i64, ptr %i.at, align 8, !tbaa !129
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ax = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bn

bb.t:                                             ; preds = %bb.h, %_ZNK4entt9meta_type4dataEjb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory4baseEE4dataITnDaXadL_ZNS2_6memberEEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.43") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.n, ptr noundef null) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory4baseEE6customIiJRKiEEES3_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.43") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bb = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i59, label %bb.u, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i63

bb.u:                                             ; preds = %bb.t
  %i.bc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i63 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i63:       ; preds = %bb.u, %bb.t
  %i.bf = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ] ; 2 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #29
  %i.bh = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(128) %i.bg, i32 noundef %i.n, i1 noundef zeroext true) ; 4 uses
  %.not.i64 = icmp eq ptr %i.bh, null
  br i1 %.not.i64, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i63
  %i.bi = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i68 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i68, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bj = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.z unwind label %bb.y       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i8 0, ptr %8, align 8, !tbaa !120
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.bn = load ptr, ptr %11, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 374, ptr noundef %i.bn)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  %i.bo = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ad
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !129
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bt = load ptr, ptr %9, align 8, !tbaa !128   ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !123 ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit80, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit75
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !126 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %bb.ae
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !129
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit80

_ZN7testing15AssertionResultD2Ev.exit80:          ; preds = %_ZN7testing7MessageD2Ev.exit75, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bm

bb.af:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit86

bb.ag:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.ah:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn29 = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %i.cf, %bb.ah ] ; 2 uses
  %i.ch = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.aj
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !129
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.ag
  %.pn29.pn = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn29, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.cm = load ptr, ptr %9, align 8, !tbaa !128   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.af
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.af ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bn

bb.ak:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i63
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !163
  %i.cs = icmp eq i32 %i.cr, -1779859874
  br i1 %i.cs, label %_ZNK4entt11meta_customcvPT_IKiEEv.exit, label %_ZNK4entt11meta_customcvPT_IKiEEv.exit.thread

_ZNK4entt11meta_customcvPT_IKiEEv.exit.thread:    ; preds = %bb.ak
  store ptr null, ptr %i.b, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr null, ptr %i.c, align 8, !tbaa !235
  br label %bb.am

_ZNK4entt11meta_customcvPT_IKiEEv.exit:           ; preds = %bb.ak
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !236 ; 2 uses
  store ptr %i.cu, ptr %i.b, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr null, ptr %i.c, align 8, !tbaa !235
  %.not.i93 = icmp eq ptr %i.cu, null
  br i1 %.not.i93, label %bb.am, label %bb.al

end_hunk_7
begin_hunk_8_@_ZN4entt12meta_factoryIN11MetaFactory4baseEE6customIiJRKiEEES3_DpOT0_:bb.a
  store i32 %i.l, ptr %i.k, align 8, !tbaa !88, !noalias !561
  store ptr %i.k, ptr %i.f, align 8, !tbaa !236
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !136
  store ptr %i.h, ptr %i.m, align 8, !tbaa !136
  store ptr null, ptr %4, align 8, !tbaa !238
  invoke void @_ZN4entt8internal18basic_meta_factory6customENS0_16meta_custom_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !139
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !13
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !13
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, !prof !140

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit

_ZN4entt8internal16meta_custom_nodeD2Ev.exit:     ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !136 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !139
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29, !inline_history !14
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29, !inline_history !14
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i3 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.p, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !140

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.q:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4entt8internal16meta_custom_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN21MetaFactory_Func_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.MetaFactory::clazz", align 4 ; 7 uses
  %2 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %3 = alloca %"class.entt::meta_type", align 8   ; 9 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.entt::meta_any", align 8   ; 18 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %24 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i8 0, ptr %1, align 4, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.d = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.h) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.i = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.i, null
  br i1 %.not.i.i62, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.m = phi ptr [ %i.i, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.j, %bb.d ] ; 3 uses
  %i.n = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #29 ; 2 uses
  store ptr %i.n, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.p = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.a, label %28, label %_ZNK4entt9meta_type4funcEjb.exit

28:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %29 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %29, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4funcEjb.exit.thread

bb.f:                                             ; preds = %28
  %i.q = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %4, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %7, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 386, ptr noundef %i.u)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.v = load ptr, ptr %7, align 8, !tbaa !126    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !129
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aa = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !123 ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i64, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !129
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cs

bb.m:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.n:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.o:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !126   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.at = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.at, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cu

_ZNK4entt9meta_type4funcEjb.exit.thread:          ; preds = %28, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 243156999, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ax = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i76, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80

bb.r:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i80:       ; preds = %bb.r, %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.bb = phi ptr [ %i.ax, %_ZNK4entt9meta_type4funcEjb.exit.thread ], [ %i.ay, %bb.r ] ; 3 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bb) #29 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.bd = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %i.bc, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i81 = icmp eq ptr %i.bd, null
  br i1 %.not.i81, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80
  %i.be = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i85 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i85, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bf = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %9, align 8, !tbaa !120
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bj = load ptr, ptr %12, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 391, ptr noundef %i.bj)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.bk = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aa
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !129
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.bp = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !123 ; 4 uses
  %.not.i.i93 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i93, label %_ZN7testing15AssertionResultD2Ev.exit97, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit92
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !126 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.ab
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !129
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit97

_ZN7testing15AssertionResultD2Ev.exit97:          ; preds = %_ZN7testing7MessageD2Ev.exit92, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cs

bb.ac:                                            ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103

bb.ad:                                            ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ae:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn36 = phi { ptr, i32 } [ %i.cc, %bb.af ], [ %i.cb, %bb.ae ] ; 2 uses
  %i.cd = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ag
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !129
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ad
  %.pn36.pn = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn36, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ci = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ac
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.ac ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn36.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cu

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZNK4entt9meta_type6invokeIRKN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 243156999, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !175
  %i.co = icmp ne ptr %i.cn, null                 ; 2 uses
  %i.cp = zext i1 %i.co to i8
  store i8 %i.cp, ptr %13, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !131
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
  %i.ct = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZNK4entt9meta_type6invokeINS_11meta_handleEJEEENS_8meta_anyEjOT_DpOT0_:bb.a
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type4baseEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, %bb.z
  %i.dh = phi ptr [ %i.dd, %bb.z ], [ %i.dd, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cy, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ] ; 2 uses
  %i.di = phi ptr [ %i.dg, %bb.z ], [ %.pr.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.ct, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !135, !noalias !569
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !196, !noalias !569 ; 2 uses
  %i.dn = icmp eq ptr %i.dh, %i.dm
  br i1 %i.dn, label %.critedge44, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt9meta_type4baseEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_ZN4entt8meta_anyD2Ev.exit
  %.sroa.061.074 = phi ptr [ %i.dh, %.lr.ph ], [ %i.dz, %_ZN4entt8meta_anyD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !198
  %i.dt = call noundef nonnull align 8 dereferenceable(128) ptr %i.ds(ptr noundef nonnull align 8 dereferenceable(56) %i.cs) #29, !inline_history !7
  store ptr %i.dt, ptr %6, align 8
  store ptr %i.cs, ptr %i.do, align 8
  invoke void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJEEES2_jOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !175
  %.not71 = icmp eq ptr %i.du, null
  br i1 %.not71, label %bb.ad, label %.critedge40

bb.ac:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN4entt11meta_handleD2Ev.exit46

bb.ad:                                            ; preds = %bb.ab
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.af, !inline_history !3

bb.af:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %bb.ad, %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dm
  br i1 %i.ea, label %.critedge44, label %bb.aa

.critedge44:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i, %_ZNK4entt9meta_type4baseEv.exit
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ec, align 8, !tbaa !169
  store i32 1219850847, ptr %i.ee, align 8, !tbaa !170
  store ptr null, ptr %i.ed, align 8, !tbaa !151
  store i8 0, ptr %i.ef, align 4, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !129
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.eb, ptr %i.eg, align 8, !tbaa !173
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false)
  br label %.critedge40

.critedge40:                                      ; preds = %bb.ab, %bb.s, %bb.r, %.critedge44
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i55, label %_ZN4entt11meta_handleD2Ev.exit56, label %bb.ag

bb.ag:                                            ; preds = %.critedge40
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt11meta_handleD2Ev.exit56 unwind label %bb.ah, !inline_history !3

bb.ah:                                            ; preds = %bb.ag
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit56:                 ; preds = %.critedge40, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

_ZN4entt11meta_handleD2Ev.exit46:                 ; preds = %bb.v, %bb.u, %bb.ac
  %.pn35 = phi { ptr, i32 } [ %i.dv, %bb.ac ], [ %i.ch, %bb.v ], [ %i.ch, %bb.u ]
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i57, label %_ZN4entt11meta_handleD2Ev.exit58, label %bb.ai

bb.ai:                                            ; preds = %_ZN4entt11meta_handleD2Ev.exit46
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt11meta_handleD2Ev.exit58 unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit58:                 ; preds = %_ZN4entt11meta_handleD2Ev.exit46, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn35
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33MetaFactory_FuncFreeFunction_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.MetaFactory::clazz", align 4 ; 7 uses
  %2 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %3 = alloca %"class.entt::meta_type", align 8   ; 9 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %19 = alloca %"class.entt::meta_any", align 8   ; 18 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %24 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i8 0, ptr %1, align 4, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.d = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.h) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.i = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.i, null
  br i1 %.not.i.i62, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.m = phi ptr [ %i.i, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.j, %bb.d ] ; 3 uses
  %i.n = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #29 ; 2 uses
  store ptr %i.n, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.p = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.a, label %28, label %_ZNK4entt9meta_type4funcEjb.exit

28:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %29 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %29, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4funcEjb.exit.thread

bb.f:                                             ; preds = %28
  %i.q = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %4, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %7, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 404, ptr noundef %i.u)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.v = load ptr, ptr %7, align 8, !tbaa !126    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !129
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aa = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !123 ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i64, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !129
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cs

bb.m:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.n:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.o:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !126   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.at = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.at, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cu

_ZNK4entt9meta_type4funcEjb.exit.thread:          ; preds = %28, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNS2_10get_doubleERKS2_EENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 243156999, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ax = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i76, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80

bb.r:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i80:       ; preds = %bb.r, %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.bb = phi ptr [ %i.ax, %_ZNK4entt9meta_type4funcEjb.exit.thread ], [ %i.ay, %bb.r ] ; 3 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bb) #29 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.bd = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %i.bc, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i81 = icmp eq ptr %i.bd, null
  br i1 %.not.i81, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80
  %i.be = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i85 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i85, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bf = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #31
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store i8 0, ptr %9, align 8, !tbaa !120
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bj = load ptr, ptr %12, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 409, ptr noundef %i.bj)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.bk = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aa
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !129
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.bp = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !123 ; 4 uses
  %.not.i.i93 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i93, label %_ZN7testing15AssertionResultD2Ev.exit97, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit92
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !126 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.ab
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !129
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit97

_ZN7testing15AssertionResultD2Ev.exit97:          ; preds = %_ZN7testing7MessageD2Ev.exit92, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cs

bb.ac:                                            ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103

bb.ad:                                            ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ae:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn36 = phi { ptr, i32 } [ %i.cc, %bb.af ], [ %i.cb, %bb.ae ] ; 2 uses
  %i.cd = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ag
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !129
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ad
  %.pn36.pn = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn36, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ci = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ac
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.ac ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn36.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cu

bb.ah:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZNK4entt9meta_type6invokeIRKN11MetaFactory5clazzEJEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 243156999, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !175
  %i.co = icmp ne ptr %i.cn, null                 ; 2 uses
  %i.cp = zext i1 %i.co to i8
  store i8 %i.cp, ptr %13, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !131
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
  %i.ct = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_ZN33MetaFactory_FuncFreeFunction_Test8TestBodyEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNS2_10get_doubleERKS2_EENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_factory.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.entt::internal::meta_func_node", align 8 ; 12 uses
  store i32 %2, ptr %4, align 8, !tbaa !247
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %i.d, align 8, !tbaa !251
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4entt8meta_argINS_9type_listIJEEEEENS_9meta_typeERKNS_8meta_ctxEm, ptr %i.e, align 8, !tbaa !252
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN4entt11meta_invokeIN11MetaFactory5clazzETnDaXadL_ZNS2_10get_doubleERKS2_EETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS6_, ptr %i.f, align 8, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN4entt8internal18basic_meta_factory4funcENS0_14meta_func_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(88) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !139
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !15
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !15
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i, !prof !140

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !16
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i

_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i:   ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !255 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN4entt8internal14meta_func_nodeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i
  call void @_ZNKSt14default_deleteIN4entt8internal14meta_func_nodeEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.aa), !inline_history !17
  br label %_ZN4entt8internal14meta_func_nodeD2Ev.exit

_ZN4entt8internal14meta_func_nodeD2Ev.exit:       ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN29MetaFactory_FuncOverload_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.MetaFactory::clazz", align 4 ; 7 uses
  %2 = alloca %"class.entt::meta_factory.37", align 8 ; 6 uses
  %3 = alloca %"class.entt::meta_type", align 8   ; 12 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.entt::meta_any", align 8   ; 6 uses
  %40 = alloca %"struct.test::internal::value_type", align 4 ; 4 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i8 0, ptr %1, align 4, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.k) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.l = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.l, null
  br i1 %.not.i.i113, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.d, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.p = phi ptr [ %i.l, %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit ], [ %i.m, %bb.d ] ; 3 uses
  %i.q = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #29 ; 2 uses
  store ptr %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.p, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.s = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.a, label %47, label %_ZNK4entt9meta_type4funcEjb.exit

47:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %48 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %48, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK4entt9meta_type4funcEjb.exit.thread

bb.f:                                             ; preds = %47
  %i.t = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  store i8 0, ptr %4, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %7, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 422, ptr noundef %i.x)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.y = load ptr, ptr %7, align 8, !tbaa !126    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !129
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ad = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !123 ; 4 uses
  %.not.i.i115 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i115, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !126 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !129
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ew

bb.m:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.n:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.o:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !126   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.q
  %i.au = load i64, ptr %i.as, align 8, !tbaa !129
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aw = load ptr, ptr %5, align 8, !tbaa !128   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ex

_ZNK4entt9meta_type4funcEjb.exit.thread:          ; preds = %47, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNS2_7set_intEiEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 243156999, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.r, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i127

bb.r:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.bd = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ba) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i127

_ZNK4entt9meta_type10fetch_nodeEv.exit.i127:      ; preds = %bb.r, %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.be = phi ptr [ %i.bd, %bb.r ], [ %i.bb, %_ZNK4entt9meta_type4funcEjb.exit.thread ]
  %i.bf = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %i.be, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i128 = icmp eq ptr %i.bf, null
  br i1 %.not.i128, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i127
  %i.bg = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i132 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i132, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.t
  store i8 0, ptr %9, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr %12, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 426, ptr noundef %i.bl)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.bm = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.z
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.br = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.br, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit139, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit139

_ZN7testing7MessageD2Ev.exit139:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 4 uses
  %.not.i.i140 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i140, label %_ZN7testing15AssertionResultD2Ev.exit144, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit139
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141: ; preds = %bb.aa
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !129
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit144

_ZN7testing15AssertionResultD2Ev.exit144:         ; preds = %_ZN7testing7MessageD2Ev.exit139, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ew

bb.ab:                                            ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit150

bb.ac:                                            ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.ad:                                            ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn62 = phi { ptr, i32 } [ %i.ce, %bb.ae ], [ %i.cd, %bb.ad ] ; 2 uses
  %i.cf = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.af
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !129
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.ac
  %.pn62.pn = phi { ptr, i32 } [ %i.cc, %bb.ac ], [ %.pn62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn62, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ck = load ptr, ptr %10, align 8, !tbaa !128  ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.ab
  %.pn62.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn62.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ex

bb.ag:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ah, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i156

bb.ah:                                            ; preds = %bb.ag
  %i.cr = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.co) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i156

_ZNK4entt9meta_type10fetch_nodeEv.exit.i156:      ; preds = %bb.ah, %bb.ag
  %i.cs = phi ptr [ %i.cr, %bb.ah ], [ %i.cp, %bb.ag ]
  %i.ct = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(128) %i.cs, i32 noundef 243156999, i1 noundef zeroext true) ; 2 uses
  %.not.i157 = icmp eq ptr %i.ct, null
  %i.cu = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i161 = icmp eq ptr %i.cu, null
  %or.cond442 = select i1 %.not.i157, i1 %.not.i.i.i.i.i161, i1 false
  br i1 %or.cond442, label %bb.ai, label %_ZNK4entt9meta_type4funcEjb.exit162

bb.ai:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i156
  %i.cv = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit162 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit162:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i156, %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !255
  %.not.i.i.i.i.i167.a = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i167.a, label %49, label %_ZNK4entt9meta_func4nextEv.exit

49:                                               ; preds = %_ZNK4entt9meta_type4funcEjb.exit162
  %50 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i167 = icmp eq ptr %50, null
  br i1 %.not.i.i.i.i.i167, label %bb.ak, label %_ZNK4entt9meta_func4nextEv.exit.thread

bb.ak:                                            ; preds = %49
  %i.da = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_func4nextEv.exit.thread unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #31
  unreachable

_ZNK4entt9meta_func4nextEv.exit:                  ; preds = %_ZNK4entt9meta_type4funcEjb.exit162
  store i8 0, ptr %13, align 8, !tbaa !120
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr %16, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 427, ptr noundef %i.de)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  %i.df = load ptr, ptr %16, align 8, !tbaa !126  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.ap
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !129
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.dk = load ptr, ptr %14, align 8, !tbaa !128  ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !123 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.do, null
  br i1 %.not.i.i174, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit173
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !126 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.aq
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !129
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit178

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %_ZN7testing7MessageD2Ev.exit173, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ew

bb.ar:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.as:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.at:                                            ; preds = %bb.an
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn66 = phi { ptr, i32 } [ %i.dx, %bb.au ], [ %i.dw, %bb.at ] ; 2 uses
  %i.dy = load ptr, ptr %16, align 8, !tbaa !126  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.av
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !129
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.as
  %.pn66.pn = phi { ptr, i32 } [ %i.dv, %bb.as ], [ %.pn66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %.pn66, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.ed = load ptr, ptr %14, align 8, !tbaa !128  ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(128) %i.ed) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.ar
  %.pn66.pn.pn = phi { ptr, i32 } [ %i.du, %bb.ar ], [ %.pn66.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %.pn66.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ex

_ZNK4entt9meta_func4nextEv.exit.thread:           ; preds = %49, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNS2_13set_boxed_intEN4test8internal10value_typeIiEEEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 243156999, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.eh = load ptr, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.aw, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i190

bb.aw:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit.thread
  %i.ek = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.eh) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i190

_ZNK4entt9meta_type10fetch_nodeEv.exit.i190:      ; preds = %bb.aw, %_ZNK4entt9meta_func4nextEv.exit.thread
  %i.el = phi ptr [ %i.ek, %bb.aw ], [ %i.ei, %_ZNK4entt9meta_func4nextEv.exit.thread ]
  %i.em = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.eh, ptr noundef nonnull align 8 dereferenceable(128) %i.el, i32 noundef 243156999, i1 noundef zeroext true)
  %.not.i191 = icmp eq ptr %i.em, null
  br i1 %.not.i191, label %bb.ax, label %bb.bl

bb.ax:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i190
  %i.en = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i195 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i195, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.eo = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.ba unwind label %bb.az     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #31
  unreachable

bb.ba:                                            ; preds = %bb.ax, %bb.ay
  store i8 0, ptr %18, align 8, !tbaa !120
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr null, ptr %i.er, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.es = load ptr, ptr %21, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef %i.es)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #29
  %i.et = load ptr, ptr %21, align 8, !tbaa !126  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.be
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !129
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.ey = load ptr, ptr %19, align 8, !tbaa !128  ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i200, label %_ZN7testing7MessageD2Ev.exit202, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit202

_ZN7testing7MessageD2Ev.exit202:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !123 ; 4 uses
  %.not.i.i203 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i203, label %_ZN7testing15AssertionResultD2Ev.exit207, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit202
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !126 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204: ; preds = %bb.bf
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !129
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit207

_ZN7testing15AssertionResultD2Ev.exit207:         ; preds = %_ZN7testing7MessageD2Ev.exit202, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ew

bb.bg:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit213

bb.bh:                                            ; preds = %bb.bb
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.bi:                                            ; preds = %bb.bc
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn70 = phi { ptr, i32 } [ %i.fl, %bb.bj ], [ %i.fk, %bb.bi ] ; 2 uses
  %i.fm = load ptr, ptr %21, align 8, !tbaa !126  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.bk
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !129
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %bb.bh
  %.pn70.pn = phi { ptr, i32 } [ %i.fj, %bb.bh ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %.pn70, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.fr = load ptr, ptr %19, align 8, !tbaa !128  ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %bb.bg
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.bg ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %.pn70.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ex

bb.bl:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.fv = load ptr, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.fw = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.bm, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i219

bb.bm:                                            ; preds = %bb.bl
  %i.fy = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.fv) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i219

_ZNK4entt9meta_type10fetch_nodeEv.exit.i219:      ; preds = %bb.bm, %bb.bl
  %i.fz = phi ptr [ %i.fy, %bb.bm ], [ %i.fw, %bb.bl ]
  %i.ga = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(128) %i.fz, i32 noundef 243156999, i1 noundef zeroext true) ; 2 uses
  %.not.i220 = icmp eq ptr %i.ga, null
  %i.gb = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i224 = icmp eq ptr %i.gb, null
  %or.cond444 = select i1 %.not.i220, i1 %.not.i.i.i.i.i224, i1 false
  br i1 %or.cond444, label %bb.bn, label %_ZNK4entt9meta_type4funcEjb.exit225

bb.bn:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i219
  %i.gc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4funcEjb.exit225 unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit225:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i219, %bb.bn
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !255
  %.not.i.i226 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i226, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit225
  %i.gh = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i230 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i230, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.gi = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.bs unwind label %bb.br     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #31
  unreachable

bb.bs:                                            ; preds = %bb.bp, %bb.bq
  store i8 0, ptr %22, align 8, !tbaa !120
  %i.gl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %i.gl, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.gm = load ptr, ptr %25, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 432, ptr noundef %i.gm)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #29
  %i.gn = load ptr, ptr %25, align 8, !tbaa !126  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %bb.bw
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !129
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.gs = load ptr, ptr %23, align 8, !tbaa !128  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i235, label %_ZN7testing7MessageD2Ev.exit237, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !45
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(128) %i.gs) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit237

_ZN7testing7MessageD2Ev.exit237:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  %i.gw = load ptr, ptr %i.gl, align 8, !tbaa !123 ; 4 uses
  %.not.i.i238 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i238, label %_ZN7testing15AssertionResultD2Ev.exit242, label %bb.bx

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit237
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !126 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %bb.bx
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !129
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit242

_ZN7testing15AssertionResultD2Ev.exit242:         ; preds = %_ZN7testing7MessageD2Ev.exit237, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %bb.ew

bb.by:                                            ; preds = %bb.bs
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit248

bb.bz:                                            ; preds = %bb.bt
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.ca:                                            ; preds = %bb.bu
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bv
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #29
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn74 = phi { ptr, i32 } [ %i.hf, %bb.cb ], [ %i.he, %bb.ca ] ; 2 uses
  %i.hg = load ptr, ptr %25, align 8, !tbaa !126  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.cc
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !129
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.bz
  %.pn74.pn = phi { ptr, i32 } [ %i.hd, %bb.bz ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn74, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.hl = load ptr, ptr %23, align 8, !tbaa !128  ; 3 uses
  %.not.i.i246 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i246, label %_ZN7testing7MessageD2Ev.exit248, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !45
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(128) %i.hl) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit248

_ZN7testing7MessageD2Ev.exit248:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.by
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.by ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %.pn74.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i247 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %bb.ex

bb.cd:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit225
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.hp = load ptr, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.hq = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ce, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i254

bb.ce:                                            ; preds = %bb.cd
  %i.hs = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.hp) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i254

_ZNK4entt9meta_type10fetch_nodeEv.exit.i254:      ; preds = %bb.ce, %bb.cd
  %i.ht = phi ptr [ %i.hs, %bb.ce ], [ %i.hq, %bb.cd ]
  %i.hu = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.hp, ptr noundef nonnull align 8 dereferenceable(128) %i.ht, i32 noundef 243156999, i1 noundef zeroext true) ; 2 uses
  %.not.i255 = icmp eq ptr %i.hu, null
  %i.hv = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8 ; 2 uses
  %.not.i.i.i.i.i259 = icmp eq ptr %i.hv, null
  %or.cond445 = select i1 %.not.i255, i1 %.not.i.i.i.i.i259, i1 false
  br i1 %or.cond445, label %bb.cf, label %_ZNK4entt9meta_type4funcEjb.exit260

bb.cf:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i254
  %i.hw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %._ZNK4entt9meta_type4funcEjb.exit260_crit_edge unwind label %bb.cg ; 0 uses

._ZNK4entt9meta_type4funcEjb.exit260_crit_edge:   ; preds = %bb.cf
  %.pre448 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  br label %_ZNK4entt9meta_type4funcEjb.exit260

bb.cg:                                            ; preds = %bb.cf
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit260:              ; preds = %._ZNK4entt9meta_type4funcEjb.exit260_crit_edge, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i254
  %i.hz = phi ptr [ %.pre448, %._ZNK4entt9meta_type4funcEjb.exit260_crit_edge ], [ %i.hv, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i254 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !255 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.ib, null
  %.not.i.i.i.i.i265 = icmp eq ptr %i.hz, null
  %or.cond446 = select i1 %.not.i.i261, i1 %.not.i.i.i.i.i265, i1 false
  br i1 %or.cond446, label %bb.ch, label %_ZNK4entt9meta_func4nextEv.exit266

bb.ch:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit260
  %i.ic = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_func4nextEv.exit266 unwind label %bb.ci ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #31
  unreachable

_ZNK4entt9meta_func4nextEv.exit266:               ; preds = %_ZNK4entt9meta_type4funcEjb.exit260, %bb.ch
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !255
  %.not.i.i.i.i.i271.a = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i271.a, label %51, label %_ZNK4entt9meta_func4nextEv.exit272

51:                                               ; preds = %_ZNK4entt9meta_func4nextEv.exit266
  %52 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i271 = icmp eq ptr %52, null
  br i1 %.not.i.i.i.i.i271, label %bb.cj, label %_ZNK4entt9meta_func4nextEv.exit272.thread

bb.cj:                                            ; preds = %51
  %i.ih = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_func4nextEv.exit272.thread unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #31
  unreachable

_ZNK4entt9meta_func4nextEv.exit272:               ; preds = %_ZNK4entt9meta_func4nextEv.exit266
  store i8 0, ptr %26, align 8, !tbaa !120
  %i.ik = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store ptr null, ptr %i.ik, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit272
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.il = load ptr, ptr %29, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 433, ptr noundef %i.il)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #29
  %i.im = load ptr, ptr %29, align 8, !tbaa !126  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.co
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !129
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  %i.ir = load ptr, ptr %27, align 8, !tbaa !128  ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i276, label %_ZN7testing7MessageD2Ev.exit278, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !45
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(128) %i.ir) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit278

_ZN7testing7MessageD2Ev.exit278:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  %i.iv = load ptr, ptr %i.ik, align 8, !tbaa !123 ; 4 uses
  %.not.i.i279 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i279, label %_ZN7testing15AssertionResultD2Ev.exit283, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit278
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !126 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i280: ; preds = %bb.cp
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !129
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i280
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit283

_ZN7testing15AssertionResultD2Ev.exit283:         ; preds = %_ZN7testing7MessageD2Ev.exit278, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.ew

bb.cq:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit272
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit289

bb.cr:                                            ; preds = %bb.cl
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.cs:                                            ; preds = %bb.cm
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cn
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #29
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn78 = phi { ptr, i32 } [ %i.je, %bb.ct ], [ %i.jd, %bb.cs ] ; 2 uses
  %i.jf = load ptr, ptr %29, align 8, !tbaa !126  ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.cu
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !129
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.cr
  %.pn78.pn = phi { ptr, i32 } [ %i.jc, %bb.cr ], [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %.pn78, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  %i.jk = load ptr, ptr %27, align 8, !tbaa !128  ; 3 uses
  %.not.i.i287 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i287, label %_ZN7testing7MessageD2Ev.exit289, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !45
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit289

_ZN7testing7MessageD2Ev.exit289:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %bb.cq
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.jb, %bb.cq ], [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ], [ %.pn78.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.ex

_ZNK4entt9meta_func4nextEv.exit272.thread:        ; preds = %51, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 2, ptr %i.a, align 4, !tbaa !88
  call void @_ZNK4entt9meta_type6invokeIRN11MetaFactory5clazzEJiEEENS_8meta_anyEjOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 243156999, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.jo = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !175
  %i.jq = icmp ne ptr %i.jp, null                 ; 2 uses
  %i.jr = zext i1 %i.jq to i8
  store i8 %i.jr, ptr %30, align 8, !tbaa !120
  %i.js = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr null, ptr %i.js, align 8, !tbaa !131
  %i.jt = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNK4entt9meta_func4nextEv.exit272.thread
  invoke void %i.ju(ptr noundef nonnull align 8 dereferenceable(64) %31)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.cw, !inline_history !3

bb.cw:                                            ; preds = %bb.cv
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %_ZNK4entt9meta_func4nextEv.exit272.thread, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br i1 %i.jq, label %.critedge108._crit_edge, label %bb.cx

bb.cx:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.cz unwind label %bb.de

bb.cz:                                            ; preds = %bb.cy
  %i.jx = load ptr, ptr %34, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 435, ptr noundef %i.jx)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #29
  %i.jy = load ptr, ptr %34, align 8, !tbaa !126  ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.db
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !129
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.kd = load ptr, ptr %32, align 8, !tbaa !128  ; 3 uses
  %.not.i.i298 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i298, label %_ZN7testing7MessageD2Ev.exit300, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !45
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(128) %i.kd) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit300

_ZN7testing7MessageD2Ev.exit300:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  %i.kh = load ptr, ptr %i.js, align 8, !tbaa !123 ; 4 uses
  %.not.i.i301 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i301, label %_ZN7testing15AssertionResultD2Ev.exit305, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit300
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !126 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302: ; preds = %bb.dc
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !129
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i302
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit305

_ZN7testing15AssertionResultD2Ev.exit305:         ; preds = %_ZN7testing7MessageD2Ev.exit300, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.ew

bb.dd:                                            ; preds = %bb.cx
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit311

bb.de:                                            ; preds = %bb.cy
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.df:                                            ; preds = %bb.cz
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %bb.da
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #29
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn82 = phi { ptr, i32 } [ %i.kq, %bb.dg ], [ %i.kp, %bb.df ] ; 2 uses
  %i.kr = load ptr, ptr %34, align 8, !tbaa !126  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.dh
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !129
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.de
  %.pn82.pn = phi { ptr, i32 } [ %i.ko, %bb.de ], [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %.pn82, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.kw = load ptr, ptr %32, align 8, !tbaa !128  ; 3 uses
  %.not.i.i309 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i309, label %_ZN7testing7MessageD2Ev.exit311, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit311

_ZN7testing7MessageD2Ev.exit311:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.dd
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.dd ], [ %.pn82.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn82.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.ex

.critedge108._crit_edge:                          ; preds = %_ZN4entt8meta_anyD2Ev.exit
  %.pre450 = load i32, ptr %i.f, align 4, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 %.pre450, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 2, ptr %i.c, align 4, !tbaa !88
  %i.la = icmp eq i32 %.pre450, 2
  br i1 %i.la, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.critedge108._crit_edge
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.dj:                                            ; preds = %.critedge108._crit_edge
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.lb = load i8, ptr %35, align 8, !tbaa !120, !range !121, !noundef !122
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %.critedge110, label %bb.dk

bb.dk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dl unwind label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  %i.ld = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i317 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i317, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.dm
end_hunk_10
begin_hunk_11_@_ZNK4entt9meta_type6invokeIRN11MetaFactory5clazzEJN4test8internal10value_typeIiEEEEENS_8meta_anyEjOT_DpOT0_:bb.a
  %.not.i.i.i.i60 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i60, label %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61 unwind label %bb.x, !inline_history !3

bb.x:                                             ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #31
  unreachable

_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61:     ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i62, label %_ZN4entt11meta_handleD2Ev.exit63, label %bb.y

bb.y:                                             ; preds = %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZN4entt11meta_handleD2Ev.exit63 unwind label %bb.z, !inline_history !3

bb.z:                                             ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

.critedge:                                        ; preds = %bb.d, %bb.c, %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit, %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !95, !noalias !575 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.aa:                                            ; preds = %.critedge
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !575
  %i.ce = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cd) #29, !noalias !575
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.aa, %.critedge
  %i.cf = phi ptr [ %i.ce, %bb.aa ], [ %i.cb, %.critedge ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !135, !noalias !575
  %.not.i64 = icmp eq ptr %i.ch, null
  br i1 %.not.i64, label %.critedge56, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !575 ; 3 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !95, !noalias !575 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i: ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !135, !noalias !575
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !196, !noalias !575
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit2.i:        ; preds = %bb.ab
  %i.cp = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ci) #29, !noalias !575
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !95, !noalias !575 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !575
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !196, !noalias !575 ; 2 uses
  %i.cu = icmp eq ptr %.pr.i, null
  br i1 %i.cu, label %bb.ac, label %_ZNK4entt9meta_type4baseEv.exit

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !575
  %i.cw = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv) #29, !noalias !575
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type4baseEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, %bb.ac
  %i.cx = phi ptr [ %i.ct, %bb.ac ], [ %i.ct, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.co, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ] ; 2 uses
  %i.cy = phi ptr [ %i.cw, %bb.ac ], [ %.pr.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cj, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !135, !noalias !575
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !196, !noalias !575 ; 2 uses
  %i.dd = icmp eq ptr %i.cx, %i.dc
  br i1 %i.dd, label %.critedge56, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt9meta_type4baseEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %_ZN4entt8meta_anyD2Ev.exit
  %.sroa.078.087 = phi ptr [ %i.cx, %.lr.ph ], [ %i.dp, %_ZN4entt8meta_anyD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.078.087, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !198
  %i.dj = call noundef nonnull align 8 dereferenceable(128) ptr %i.di(ptr noundef nonnull align 8 dereferenceable(56) %i.ci) #29, !inline_history !7
  store ptr %i.dj, ptr %9, align 8
  store ptr %i.ci, ptr %i.de, align 8
  invoke void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJN4test8internal10value_typeIiEEEEES2_jOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !175
  %.not85 = icmp eq ptr %i.dk, null
  br i1 %.not85, label %bb.ag, label %.critedge52

bb.af:                                            ; preds = %bb.ad
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZN4entt11meta_handleD2Ev.exit63

bb.ag:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.ai, !inline_history !3

bb.ai:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #31
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %bb.ag, %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.078.087, i64 24 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dc
  br i1 %i.dq, label %.critedge56, label %bb.ad

.critedge56:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i, %_ZNK4entt9meta_type4baseEv.exit
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ds, align 8, !tbaa !169
  store i32 1219850847, ptr %i.du, align 8, !tbaa !170
  store ptr null, ptr %i.dt, align 8, !tbaa !151
  store i8 0, ptr %i.dv, align 4, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !173
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  br label %.critedge52

.critedge52:                                      ; preds = %bb.ae, %bb.q, %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit, %.critedge56
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i72, label %_ZN4entt11meta_handleD2Ev.exit73, label %bb.aj

bb.aj:                                            ; preds = %.critedge52
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt11meta_handleD2Ev.exit73 unwind label %bb.ak, !inline_history !3

bb.ak:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit73:                 ; preds = %.critedge52, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

_ZN4entt11meta_handleD2Ev.exit63:                 ; preds = %bb.y, %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61, %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit59, %bb.af
  %.pn47 = phi { ptr, i32 } [ %i.dl, %bb.af ], [ %i.bq, %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit59 ], [ %i.bu, %_ZNSt5arrayIN4entt8meta_anyELm1EED2Ev.exit61 ], [ %i.bu, %bb.y ]
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i74, label %_ZN4entt11meta_handleD2Ev.exit75, label %bb.al

bb.al:                                            ; preds = %_ZN4entt11meta_handleD2Ev.exit63
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt11meta_handleD2Ev.exit75 unwind label %bb.am, !inline_history !3

bb.am:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #31
  unreachable

_ZN4entt11meta_handleD2Ev.exit75:                 ; preds = %_ZN4entt11meta_handleD2Ev.exit63, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn47
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34MetaFactory_FuncTypeNameClash_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.entt::meta_factory.37", align 8 ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.entt::meta_factory.37", align 8 ; 4 uses
  %7 = alloca %"class.entt::meta_factory.37", align 8 ; 3 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 2, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.e = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.e, %bb.a ], [ %i.f, %bb.b ]
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2ERNS_8meta_ctxE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.i) #29
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit, !prof !76

bb.d:                                             ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4entt9type_infoC2IN11MetaFactory4baseEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  %i.m = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit: ; preds = %_ZN4entt12meta_factoryIN11MetaFactory5clazzEEC2Ev.exit, %bb.d, %bb.e
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !85 ; 3 uses
  %i.o = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.o, null
  br i1 %.not.i.i44, label %bb.f, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.f:                                             ; preds = %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.f, %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit
  %i.s = phi ptr [ %i.o, %_ZN4entt7type_idIN11MetaFactory4baseEEERKNS_9type_infoEv.exit ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #29
  %i.u = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i32 noundef %i.n, i1 noundef zeroext true)
  %.not.i.i.i.i.i.a = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.a, label %bb.h, label %_ZNK4entt9meta_type4funcEjb.exit

bb.h:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %18 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %18, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4entt9meta_type4funcEjb.exit.thread, label %bb.t

_ZNK4entt9meta_type4funcEjb.exit.thread:          ; preds = %bb.h
  %19 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.t unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit.thread
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZNK4entt9meta_type4funcEjb.exit:                 ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 0, ptr %2, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %5, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 450, ptr noundef %i.y)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  %i.z = load ptr, ptr %5, align 8, !tbaa !126    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !129
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ae = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !123 ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i47, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !129
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bm

bb.o:                                             ; preds = %_ZNK4entt9meta_type4funcEjb.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.q:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aq, %bb.q ] ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.s
  %i.av = load i64, ptr %i.at, align 8, !tbaa !129
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ax = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bn

bb.t:                                             ; preds = %bb.h, %_ZNK4entt9meta_type4funcEjb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE4funcITnDaXadL_ZNKS2_7get_intEvEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.n, ptr noundef null) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN4entt12meta_factoryIN11MetaFactory5clazzEE6customIiJRKiEEES3_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory.37") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bb = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i59, label %bb.u, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i62

bb.u:                                             ; preds = %bb.t
  %i.bc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i62 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i62:       ; preds = %bb.u, %bb.t
  %i.bf = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ] ; 2 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN11MetaFactory5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #29
  %i.bh = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(128) %i.bg, i32 noundef %i.n, i1 noundef zeroext true) ; 4 uses
  %.not.i63 = icmp eq ptr %i.bh, null
  br i1 %.not.i63, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i62
  %i.bi = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !81
  %.not.i.i.i.i.i67 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i67, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bj = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.z unwind label %bb.y       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i8 0, ptr %8, align 8, !tbaa !120
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.bn = load ptr, ptr %11, align 8, !tbaa !126
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 455, ptr noundef %i.bn)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  %i.bo = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ad
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !129
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bt = load ptr, ptr %9, align 8, !tbaa !128   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit74

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !123 ; 4 uses
  %.not.i.i75 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i75, label %_ZN7testing15AssertionResultD2Ev.exit79, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit74
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !126 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76: ; preds = %bb.ae
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !129
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit79

_ZN7testing15AssertionResultD2Ev.exit79:          ; preds = %_ZN7testing7MessageD2Ev.exit74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bm

bb.af:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.ag:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ah:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn29 = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %i.cf, %bb.ah ] ; 2 uses
  %i.ch = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.aj
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !129
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.ag
  %.pn29.pn = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn29, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.cm = load ptr, ptr %9, align 8, !tbaa !128   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.af
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.af ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bn

bb.ak:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !163
  %i.cs = icmp eq i32 %i.cr, -1779859874
  br i1 %i.cs, label %_ZNK4entt11meta_customcvPT_IKiEEv.exit, label %_ZNK4entt11meta_customcvPT_IKiEEv.exit.thread

_ZNK4entt11meta_customcvPT_IKiEEv.exit.thread:    ; preds = %bb.ak
  store ptr null, ptr %i.b, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr null, ptr %i.c, align 8, !tbaa !235
  br label %bb.am

_ZNK4entt11meta_customcvPT_IKiEEv.exit:           ; preds = %bb.ak
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !236 ; 2 uses
  store ptr %i.cu, ptr %i.b, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr null, ptr %i.c, align 8, !tbaa !235
  %.not.i92 = icmp eq ptr %i.cu, null
  br i1 %.not.i92, label %bb.am, label %bb.al

end_hunk_11
