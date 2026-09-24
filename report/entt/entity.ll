Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/entity?download=true
inline.NumInlined: 2337
inline.NumDeleted: 377
begin_hunk_0_@_ZN7testing8internal21TypeParameterizedTestI6EntityNS0_11TemplateSelI18Entity_Traits_TestEENS0_5TypesIN10EntityBase12other_entityEJEEEE8RegisterEPKcRKNS0_12CodeLocationESC_SC_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EE:bb.a
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.bc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ht = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ek
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.hv = load i64, ptr %i.ek, align 8, !tbaa !25
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.hx = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.el
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hz = load i64, ptr %i.el, align 8, !tbaa !25
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.bb
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.bb ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ib = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.da
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.id = load i64, ptr %i.da, align 8, !tbaa !25
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ba
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ba ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.if = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.bz
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ih = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.az
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.az ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %i.ij = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ay
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.il = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ay
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.ay ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  %i.in = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ac
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ip = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ax
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ax ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %i.ir = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.a
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.it = load i64, ptr %i.a, align 8, !tbaa !25
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI18Entity_Traits_TestIN10EntityBase9my_entityEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI18Entity_Traits_TestIN10EntityBase9my_entityEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18Entity_Traits_TestIN10EntityBase9my_entityEE, i64 16), ptr %i.a, align 8, !tbaa !34
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN18Entity_Traits_TestIN10EntityBase9my_entityEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN18Entity_Traits_TestIN10EntityBase9my_entityEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %50 = alloca %"class.testing::Message", align 8 ; 7 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.w = alloca i16, align 2                      ; 4 uses
  %i.x = alloca i16, align 2                      ; 4 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.y = alloca i16, align 2                      ; 4 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.z = alloca i16, align 2                      ; 4 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aa = alloca i16, align 2                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ac = alloca i16, align 2                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %80 = alloca %"class.testing::Message", align 8 ; 7 uses
  %81 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %82 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %83 = alloca %"class.testing::Message", align 8 ; 7 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %86 = alloca %"class.testing::Message", align 8 ; 7 uses
  %87 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %88 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %92 = alloca %"class.testing::Message", align 8 ; 7 uses
  %93 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %94 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %95 = alloca %"class.testing::Message", align 8 ; 7 uses
  %96 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %97 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %98 = alloca %"class.testing::Message", align 8 ; 7 uses
  %99 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %100 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %101 = alloca %"class.testing::Message", align 8 ; 7 uses
  %102 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %103 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.as = alloca i32, align 4                     ; 4 uses
  %104 = alloca %"class.testing::Message", align 8 ; 7 uses
  %105 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %106 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.at = alloca i32, align 4                     ; 4 uses
  %107 = alloca %"class.testing::Message", align 8 ; 7 uses
  %108 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1073741823, ptr %i.a, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1073741823, ptr %i.b, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 262148, ptr %i.c, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 3, ptr %i.d, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.au = load i8, ptr %1, align 8, !tbaa !57, !range !58, !noundef !59
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.critedge, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.az = phi ptr [ %i.ay, %bb.c ], [ @.str, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef %i.az)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ba = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !60 ; 4 uses
  %.not.i.i364.a = icmp eq ptr %i.be, null
  br i1 %.not.i.i364.a, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.nw

bb.g:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit367

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.bl, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bn = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i365, label %_ZN7testing7MessageD2Ev.exit367, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366: ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(128) %i.bn) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit367

_ZN7testing7MessageD2Ev.exit367:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.g ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
end_hunk_0
begin_hunk_1_@_ZN18Entity_Traits_TestIN10EntityBase9my_entityEE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.adi = load ptr, ptr %i.adh, align 8
  call void %i.adi(ptr noundef nonnull align 8 dereferenceable(128) %i.adf) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit756

_ZN7testing7MessageD2Ev.exit756:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i755, %bb.na, %bb.mx
  %.pn283.pn = phi { ptr, i32 } [ %i.adc, %bb.mx ], [ %.pn283, %bb.na ], [ %.pn283, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i755 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #20
  br label %bb.nx

bb.nb:                                            ; preds = %bb.mr
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #20
  store i32 262148, ptr %i.as, align 4, !tbaa !71
  call void @_ZN7testing8internal8EqHelper7CompareIN10EntityBase9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %103, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #20
  %i.adj = load i8, ptr %103, align 8, !tbaa !57, !range !58, !noundef !59
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %bb.nl, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.nd unwind label %bb.nh

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #20
  %i.adl = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i757 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i757, label %_ZNK7testing15AssertionResult15failure_messageEv.exit758, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit758

_ZNK7testing15AssertionResult15failure_messageEv.exit758: ; preds = %bb.ne, %bb.nd
  %i.ado = phi ptr [ %i.adn, %bb.ne ], [ @.str, %bb.nd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef %i.ado)
          to label %bb.nf unwind label %bb.ni

bb.nf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit758
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.ng unwind label %bb.nj

bb.ng:                                            ; preds = %bb.nf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #20
  %i.adp = load ptr, ptr %104, align 8, !tbaa !62 ; 3 uses
  %.not.i.i759 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i759, label %_ZN7testing7MessageD2Ev.exit761, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760: ; preds = %bb.ng
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !34
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8
  call void %i.ads(ptr noundef nonnull align 8 dereferenceable(128) %i.adp) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit761

_ZN7testing7MessageD2Ev.exit761:                  ; preds = %bb.ng, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #20
  br label %.critedge363

bb.nh:                                            ; preds = %bb.nc
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit764

bb.ni:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit758
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nf
  %i.adv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #20
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.pn286 = phi { ptr, i32 } [ %i.adv, %bb.nj ], [ %i.adu, %bb.ni ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #20
  %i.adw = load ptr, ptr %104, align 8, !tbaa !62 ; 3 uses
  %.not.i.i762 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i762, label %_ZN7testing7MessageD2Ev.exit764, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i763

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i763: ; preds = %bb.nk
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !34
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8
  call void %i.adz(ptr noundef nonnull align 8 dereferenceable(128) %i.adw) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit764

_ZN7testing7MessageD2Ev.exit764:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i763, %bb.nk, %bb.nh
  %.pn286.pn = phi { ptr, i32 } [ %i.adt, %bb.nh ], [ %.pn286, %bb.nk ], [ %.pn286, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i763 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #20
  br label %bb.nx

bb.nl:                                            ; preds = %bb.nb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #20
  store i32 262148, ptr %i.at, align 4, !tbaa !71
  call void @_ZN7testing8internal11CmpHelperNEIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %106, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.61, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #20
  %i.aea = load i8, ptr %106, align 8, !tbaa !57, !range !58, !noundef !59
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %bb.nv, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nn unwind label %bb.nr

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #20
  %i.aec = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i765 = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i765, label %_ZNK7testing15AssertionResult15failure_messageEv.exit766, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit766

_ZNK7testing15AssertionResult15failure_messageEv.exit766: ; preds = %bb.no, %bb.nn
  %i.aef = phi ptr [ %i.aee, %bb.no ], [ @.str, %bb.nn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef %i.aef)
          to label %bb.np unwind label %bb.ns

bb.np:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit766
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nq unwind label %bb.nt

bb.nq:                                            ; preds = %bb.np
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #20
  %i.aeg = load ptr, ptr %107, align 8, !tbaa !62 ; 3 uses
  %.not.i.i767 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i767, label %_ZN7testing7MessageD2Ev.exit769, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i768

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i768: ; preds = %bb.nq
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !34
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8
  call void %i.aej(ptr noundef nonnull align 8 dereferenceable(128) %i.aeg) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit769

_ZN7testing7MessageD2Ev.exit769:                  ; preds = %bb.nq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i768
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #20
  br label %bb.nv

bb.nr:                                            ; preds = %bb.nm
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit772

bb.ns:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit766
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nt:                                            ; preds = %bb.np
  %i.aem = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #20
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %.pn289 = phi { ptr, i32 } [ %i.aem, %bb.nt ], [ %i.ael, %bb.ns ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #20
  %i.aen = load ptr, ptr %107, align 8, !tbaa !62 ; 3 uses
  %.not.i.i770 = icmp eq ptr %i.aen, null
  br i1 %.not.i.i770, label %_ZN7testing7MessageD2Ev.exit772, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771: ; preds = %bb.nu
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !34
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8
  call void %i.aeq(ptr noundef nonnull align 8 dereferenceable(128) %i.aen) #20, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit772

_ZN7testing7MessageD2Ev.exit772:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771, %bb.nu, %bb.nr
  %.pn289.pn = phi { ptr, i32 } [ %i.aek, %bb.nr ], [ %.pn289, %bb.nu ], [ %.pn289, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #20
  br label %bb.nx

bb.nv:                                            ; preds = %bb.nl, %_ZN7testing7MessageD2Ev.exit769
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %bb.nw

.critedge363:                                     ; preds = %_ZN7testing7MessageD2Ev.exit761, %_ZN7testing7MessageD2Ev.exit753, %_ZN7testing7MessageD2Ev.exit745, %_ZN7testing7MessageD2Ev.exit737, %_ZN7testing7MessageD2Ev.exit729, %_ZN7testing7MessageD2Ev.exit721, %_ZN7testing7MessageD2Ev.exit713, %_ZN7testing7MessageD2Ev.exit705, %_ZN7testing7MessageD2Ev.exit697, %_ZN7testing7MessageD2Ev.exit689, %_ZN7testing7MessageD2Ev.exit681, %_ZN7testing7MessageD2Ev.exit673, %_ZN7testing7MessageD2Ev.exit665, %_ZN7testing7MessageD2Ev.exit657, %_ZN7testing7MessageD2Ev.exit649, %_ZN7testing7MessageD2Ev.exit641, %_ZN7testing7MessageD2Ev.exit633, %_ZN7testing7MessageD2Ev.exit625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %bb.nw

bb.nw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit617, %_ZN7testing7MessageD2Ev.exit609, %_ZN7testing7MessageD2Ev.exit601, %_ZN7testing7MessageD2Ev.exit593, %_ZN7testing7MessageD2Ev.exit584, %_ZN7testing15AssertionResultD2Ev.exit570, %_ZN7testing15AssertionResultD2Ev.exit551, %_ZN7testing15AssertionResultD2Ev.exit532, %_ZN7testing15AssertionResultD2Ev.exit513, %_ZN7testing15AssertionResultD2Ev.exit494, %_ZN7testing15AssertionResultD2Ev.exit476, %_ZN7testing15AssertionResultD2Ev.exit458, %_ZN7testing15AssertionResultD2Ev.exit439, %_ZN7testing15AssertionResultD2Ev.exit421, %_ZN7testing15AssertionResultD2Ev.exit402, %_ZN7testing15AssertionResultD2Ev.exit382, %_ZN7testing15AssertionResultD2Ev.exit, %bb.nv, %.critedge363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.nx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit772, %_ZN7testing7MessageD2Ev.exit764, %_ZN7testing7MessageD2Ev.exit756, %_ZN7testing7MessageD2Ev.exit748, %_ZN7testing7MessageD2Ev.exit740, %_ZN7testing7MessageD2Ev.exit732, %_ZN7testing7MessageD2Ev.exit724, %_ZN7testing7MessageD2Ev.exit716, %_ZN7testing7MessageD2Ev.exit708, %_ZN7testing7MessageD2Ev.exit700, %_ZN7testing7MessageD2Ev.exit692, %_ZN7testing7MessageD2Ev.exit684, %_ZN7testing7MessageD2Ev.exit676, %_ZN7testing7MessageD2Ev.exit668, %_ZN7testing7MessageD2Ev.exit660, %_ZN7testing7MessageD2Ev.exit652, %_ZN7testing7MessageD2Ev.exit644, %_ZN7testing7MessageD2Ev.exit636, %_ZN7testing7MessageD2Ev.exit628
  %.pn289.pn.pn = phi { ptr, i32 } [ %.pn289.pn, %_ZN7testing7MessageD2Ev.exit772 ], [ %.pn286.pn, %_ZN7testing7MessageD2Ev.exit764 ], [ %.pn283.pn, %_ZN7testing7MessageD2Ev.exit756 ], [ %.pn280.pn, %_ZN7testing7MessageD2Ev.exit748 ], [ %.pn277.pn, %_ZN7testing7MessageD2Ev.exit740 ], [ %.pn274.pn, %_ZN7testing7MessageD2Ev.exit732 ], [ %.pn271.pn, %_ZN7testing7MessageD2Ev.exit724 ], [ %.pn268.pn, %_ZN7testing7MessageD2Ev.exit716 ], [ %.pn265.pn, %_ZN7testing7MessageD2Ev.exit708 ], [ %.pn262.pn, %_ZN7testing7MessageD2Ev.exit700 ], [ %.pn259.pn, %_ZN7testing7MessageD2Ev.exit692 ], [ %.pn256.pn, %_ZN7testing7MessageD2Ev.exit684 ], [ %.pn253.pn, %_ZN7testing7MessageD2Ev.exit676 ], [ %.pn250.pn, %_ZN7testing7MessageD2Ev.exit668 ], [ %.pn247.pn, %_ZN7testing7MessageD2Ev.exit660 ], [ %.pn244.pn, %_ZN7testing7MessageD2Ev.exit652 ], [ %.pn241.pn, %_ZN7testing7MessageD2Ev.exit644 ], [ %.pn238.pn, %_ZN7testing7MessageD2Ev.exit636 ], [ %.pn235.pn, %_ZN7testing7MessageD2Ev.exit628 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %_ZN7testing7MessageD2Ev.exit620, %_ZN7testing7MessageD2Ev.exit612, %_ZN7testing7MessageD2Ev.exit604, %_ZN7testing7MessageD2Ev.exit596, %_ZN7testing7MessageD2Ev.exit587, %_ZN7testing7MessageD2Ev.exit573, %_ZN7testing7MessageD2Ev.exit554, %_ZN7testing7MessageD2Ev.exit535, %_ZN7testing7MessageD2Ev.exit516, %_ZN7testing7MessageD2Ev.exit497, %_ZN7testing7MessageD2Ev.exit479, %_ZN7testing7MessageD2Ev.exit461, %_ZN7testing7MessageD2Ev.exit442, %_ZN7testing7MessageD2Ev.exit424, %_ZN7testing7MessageD2Ev.exit405, %_ZN7testing7MessageD2Ev.exit385, %_ZN7testing7MessageD2Ev.exit367
  %.pn289.pn.pn.pn = phi { ptr, i32 } [ %.pn289.pn.pn, %bb.nx ], [ %.pn232.pn, %_ZN7testing7MessageD2Ev.exit620 ], [ %.pn229.pn, %_ZN7testing7MessageD2Ev.exit612 ], [ %.pn226.pn, %_ZN7testing7MessageD2Ev.exit604 ], [ %.pn223.pn, %_ZN7testing7MessageD2Ev.exit596 ], [ %.pn220.pn, %_ZN7testing7MessageD2Ev.exit587 ], [ %.pn217.pn, %_ZN7testing7MessageD2Ev.exit573 ], [ %.pn214.pn, %_ZN7testing7MessageD2Ev.exit554 ], [ %.pn211.pn, %_ZN7testing7MessageD2Ev.exit535 ], [ %.pn208.pn, %_ZN7testing7MessageD2Ev.exit516 ], [ %.pn205.pn, %_ZN7testing7MessageD2Ev.exit497 ], [ %.pn202.pn, %_ZN7testing7MessageD2Ev.exit479 ], [ %.pn199.pn, %_ZN7testing7MessageD2Ev.exit461 ], [ %.pn196.pn, %_ZN7testing7MessageD2Ev.exit442 ], [ %.pn193.pn, %_ZN7testing7MessageD2Ev.exit424 ], [ %.pn190.pn, %_ZN7testing7MessageD2Ev.exit405 ], [ %.pn187.pn, %_ZN7testing7MessageD2Ev.exit385 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit367 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn289.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN10EntityBase9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !71, !noalias !235
  %i.b = load i32, ptr %4, align 4, !tbaa !71, !noalias !235
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperNEIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !71
  %i.b = load i32, ptr %4, align 4, !tbaa !71
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_S6_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull @.str.52)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !64, !noalias !238
  %i.b = load i16, ptr %4, align 2, !tbaa !64, !noalias !238
  %i.c = icmp eq i16 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4)
  br label %_ZN7testing8internal11CmpHelperEQIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIN10EntityBase9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN7testing13PrintToStringIN10EntityBase9my_entityEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN7testing13PrintToStringIN10EntityBase9my_entityEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN10EntityBase9my_entityES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN10EntityBase9my_entityES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN10EntityBase9my_entityES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN10EntityBase9my_entityES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.r = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIN10EntityBase9my_entityEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !71
  %i.c = zext i32 %i.b to i64
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
          to label %_ZN7testing8internal21UniversalTersePrinterIN10EntityBase9my_entityEE5PrintERKS3_PSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIN10EntityBase9my_entityEE5PrintERKS3_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !20, !alias.scope !245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !26, !alias.scope !245
  store i8 0, ptr %i.e, align 8, !tbaa !25, !alias.scope !245
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66, !noalias !245 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !245 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN10EntityBase9my_entityEE5PrintERKS3_PSo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !245 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
end_hunk_1
