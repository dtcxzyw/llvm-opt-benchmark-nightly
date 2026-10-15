Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/sparse_set?download=true
inline.NumInlined: 24964
inline.NumDeleted: 2514
loop-unroll.NumCompletelyUnrolled: 152
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN7testing8internal21TypeParameterizedTestI9SparseSetNS0_11TemplateSelI23SparseSet_Contains_TestEENS0_5TypesIN13SparseSetBase9my_entityEJEEEE8RegisterEPKcRKNS0_12CodeLocationESC_SC_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EE:bb.a
bb.bb:                                            ; preds = %bb.ag
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.bc:                                            ; preds = %bb.an
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit101

bb.be:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %14, align 8, !tbaa !80   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.ev
  br i1 %i.hl, label %_ZN7testing8internal12CodeLocationD2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.be
  %i.hm = load i64, ptr %i.ev, align 8, !tbaa !81
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit101

_ZN7testing8internal12CodeLocationD2Ev.exit101:   ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.hi, %bb.bd ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99 ], [ %i.hj, %bb.be ] ; 2 uses
  %i.ho = load ptr, ptr %13, align 8, !tbaa !80   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit101
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !81
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.bc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ht = load ptr, ptr %11, align 8, !tbaa !80   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ek
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.hv = load i64, ptr %i.ek, align 8, !tbaa !81
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.hx = load ptr, ptr %12, align 8, !tbaa !80   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.el
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hz = load i64, ptr %i.el, align 8, !tbaa !81
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.bb
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.bb ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ib = load ptr, ptr %6, align 8, !tbaa !80    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.da
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.id = load i64, ptr %i.da, align 8, !tbaa !81
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ba
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ba ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.if = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.bz
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ih = load i64, ptr %i.bz, align 8, !tbaa !81
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.az
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.az ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %i.ij = load ptr, ptr %8, align 8, !tbaa !80    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ay
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.il = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ay
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.ay ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  %i.in = load ptr, ptr %9, align 8, !tbaa !80    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ac
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ip = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ax
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ax ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %i.ir = load ptr, ptr %10, align 8, !tbaa !80   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.a
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.it = load i64, ptr %i.a, align 8, !tbaa !81
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI23SparseSet_Contains_TestIN4entt6entityEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI23SparseSet_Contains_TestIN4entt6entityEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV23SparseSet_Contains_TestIN4entt6entityEE, i64 16), ptr %i.a, align 8, !tbaa !90
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23SparseSet_Contains_TestIN4entt6entityEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN23SparseSet_Contains_TestIN4entt6entityEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_sparse_set", align 8 ; 25 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
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
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.dn
  %.0.idx421 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.dn ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZN13SparseSetBase15deletion_policyE, i64 %.0.idx421
  %i.r = load i8, ptr %.0.ptr, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.s = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.c, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit, !prof !108

bb.c:                                             ; preds = %bb.b
  %i.u = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #28
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #28
  %i.v = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.b, align 8, !tbaa !120
  store i8 %i.r, ptr %i.c, align 8, !tbaa !121
  %.not.i.i.i = icmp eq i64 %.0.idx421, 2
  %i.w = select i1 %.not.i.i.i, i64 0, i64 1048575
  store i64 %i.w, ptr %i.d, align 8, !tbaa !122
  %i.x = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 3, i1 noundef zeroext false, ptr noundef null)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit unwind label %bb.f, !inline_history !5 ; 0 uses

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke { ptr, i64 } %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1048580, i1 noundef zeroext false, ptr noundef null)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit125 unwind label %bb.f, !inline_history !5 ; 0 uses

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit125: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !138 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !137 ; 10 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ugt i64 %i.ag, 2040
  br i1 %i.ah, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit125
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 2040
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i126, label %.thread536, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16380
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !148
  %i.am = xor i32 %i.al, -1048576
  %i.an = icmp ugt i32 %i.am, 1048574             ; 2 uses
  %i.ao = zext i1 %i.an to i8
  store i8 %i.ao, ptr %2, align 8, !tbaa !131
  store ptr null, ptr %i.f, align 8, !tbaa !184
  br i1 %i.an, label %.thread536, label %bb.g

bb.f:                                             ; preds = %bb.ci, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267.thread, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4pushES1_PKv.exit, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2ENS_15deletion_policyERKS2_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.g:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %5, align 8, !tbaa !80
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 811, ptr noundef %i.aq)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  %i.ar = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.au = load i64, ptr %i.as, align 8, !tbaa !81
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.aw = load ptr, ptr %3, align 8, !tbaa !136   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !134 ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i128, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge122

bb.m:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.n:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.o:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.bi, %bb.o ] ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.q
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !81
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #32
end_hunk_0
begin_hunk_1_@_ZN23SparseSet_Contains_TestIN4entt6entityEE8TestBodyEv:bb.a
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn90 = phi { ptr, i32 } [ %i.ib, %bb.bu ], [ %i.ia, %bb.bt ] ; 2 uses
  %i.ic = load ptr, ptr %25, align 8, !tbaa !80   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bv
  %i.if = load i64, ptr %i.id, align 8, !tbaa !81
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.bs
  %.pn90.pn = phi { ptr, i32 } [ %i.hz, %bb.bs ], [ %.pn90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.pn90, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.ih = load ptr, ptr %23, align 8, !tbaa !136  ; 3 uses
  %.not.i.i257 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i257, label %_ZN7testing7MessageD2Ev.exit259, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !90
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(128) %i.ih) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit259

_ZN7testing7MessageD2Ev.exit259:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.br
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.br ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn90.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.do

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit242.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit217.thread, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.il = load ptr, ptr %i.ad, align 8, !tbaa !144 ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.il, null
  br i1 %.not.i.i265, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit242.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i32, ptr %i.im, align 4, !tbaa !148
  %i.io = xor i32 %i.in, -1048576
  %i.ip = icmp ugt i32 %i.io, 1048574             ; 2 uses
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %26, align 8, !tbaa !131
  store ptr null, ptr %i.l, align 8, !tbaa !184
  br i1 %i.ip, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.ir = load ptr, ptr %29, align 8, !tbaa !80
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 819, ptr noundef %i.ir)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #28
  %i.is = load ptr, ptr %29, align 8, !tbaa !80   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %bb.ca
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !81
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.ix = load ptr, ptr %27, align 8, !tbaa !136  ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i271, label %_ZN7testing7MessageD2Ev.exit273, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !90
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit273

_ZN7testing7MessageD2Ev.exit273:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.jb = load ptr, ptr %i.l, align 8, !tbaa !134 ; 4 uses
  %.not.i.i274 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i274, label %_ZN7testing15AssertionResultD2Ev.exit278, label %bb.cb

bb.cb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit273
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !80 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275: ; preds = %bb.cb
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !81
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit278

_ZN7testing15AssertionResultD2Ev.exit278:         ; preds = %_ZN7testing7MessageD2Ev.exit273, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %.critedge122

bb.cc:                                            ; preds = %bb.bw
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit284

bb.cd:                                            ; preds = %bb.bx
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

bb.ce:                                            ; preds = %bb.by
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bz
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #28
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn94 = phi { ptr, i32 } [ %i.jk, %bb.cf ], [ %i.jj, %bb.ce ] ; 2 uses
  %i.jl = load ptr, ptr %29, align 8, !tbaa !80   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.cg
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !81
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %bb.cd
  %.pn94.pn = phi { ptr, i32 } [ %i.ji, %bb.cd ], [ %.pn94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ], [ %.pn94, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.jq = load ptr, ptr %27, align 8, !tbaa !136  ; 3 uses
  %.not.i.i282 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i282, label %_ZN7testing7MessageD2Ev.exit284, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !90
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jq) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit284

_ZN7testing7MessageD2Ev.exit284:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.cc
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.cc ], [ %.pn94.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %.pn94.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.do

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit242.thread, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.ju = load ptr, ptr %i.ad, align 8, !tbaa !144
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !148
  %i.jx = and i32 %i.jw, 1048575                  ; 2 uses
  %narrow.i.i = add nuw nsw i32 %i.jx, 1
  %i.jy = zext nneg i32 %narrow.i.i to i64
  %i.jz = zext nneg i32 %i.jx to i64
  %i.ka = load ptr, ptr %1, align 8, !tbaa !90
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %i.m, i64 %i.jy, ptr nonnull %i.m, i64 %i.jz)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE5eraseES1_.exit unwind label %bb.f, !inline_history !7

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE5eraseES1_.exit: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit267.thread
  %i.kd = load ptr, ptr %i.e, align 8, !tbaa !138 ; 3 uses
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !137 ; 4 uses
  %.not371 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not371, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit.thread, label %bb.ch

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit.thread: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE5eraseES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit341.thread549

bb.ch:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE5eraseES1_.exit
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i290, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i: ; preds = %bb.ch
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !148 ; 2 uses
  %i.ki = xor i32 %i.kh, 1048576
  %i.kj = icmp ult i32 %i.ki, 1048575
  br i1 %i.kj, label %bb.ci, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit

bb.ci:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i
  %i.kk = and i32 %i.kh, 1048575                  ; 2 uses
  %narrow.i.i.i = add nuw nsw i32 %i.kk, 1
  %i.kl = zext nneg i32 %narrow.i.i.i to i64
  %i.km = zext nneg i32 %i.kk to i64
  %i.kn = load ptr, ptr %1, align 8, !tbaa !90
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  invoke void %i.kp(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %i.m, i64 %i.kl, ptr nonnull %i.m, i64 %i.km)
          to label %._ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit_crit_edge unwind label %bb.f, !inline_history !233

._ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit_crit_edge: ; preds = %bb.ci
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !138
  %.pre422 = load ptr, ptr %i.a, align 8, !tbaa !137
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit: ; preds = %._ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit_crit_edge, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i, %bb.ch
  %38 = phi ptr [ %.pre422, %._ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit_crit_edge ], [ %i.ke, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i ], [ %i.ke, %bb.ch ] ; 4 uses
  %39 = phi ptr [ %.pre, %._ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit_crit_edge ], [ %i.kd, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i ], [ %i.kd, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %.not372 = icmp eq ptr %39, %38
  br i1 %.not372, label %_ZN7testing15AssertionResultD2Ev.exit341.thread549, label %bb.cj

bb.cj:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit
  %i.kq = load ptr, ptr %38, align 8, !tbaa !144  ; 2 uses
  %.not.i.i291 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i291, label %.thread537, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit293

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit293: ; preds = %bb.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !148
  %i.kt = icmp ugt i32 %i.ks, 1048574             ; 2 uses
  %i.ku = zext i1 %i.kt to i8
  store i8 %i.ku, ptr %30, align 8, !tbaa !131
  store ptr null, ptr %i.n, align 8, !tbaa !184
  br i1 %i.kt, label %.thread537, label %bb.ck

bb.ck:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit293
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.kv = load ptr, ptr %33, align 8, !tbaa !80
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 824, ptr noundef %i.kv)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #28
  %i.kw = load ptr, ptr %33, align 8, !tbaa !80   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.co
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !81
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.lb = load ptr, ptr %31, align 8, !tbaa !136  ; 3 uses
  %.not.i.i297 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i297, label %_ZN7testing7MessageD2Ev.exit299, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !90
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(128) %i.lb) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit299

_ZN7testing7MessageD2Ev.exit299:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.lf = load ptr, ptr %i.n, align 8, !tbaa !134 ; 4 uses
  %.not.i.i300 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i300, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit299
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !80 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301: ; preds = %bb.cp
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !81
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit304

_ZN7testing15AssertionResultD2Ev.exit304:         ; preds = %_ZN7testing7MessageD2Ev.exit299, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %.critedge122

bb.cq:                                            ; preds = %bb.ck
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit310

bb.cr:                                            ; preds = %bb.cl
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

bb.cs:                                            ; preds = %bb.cm
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cn
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #28
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn98 = phi { ptr, i32 } [ %i.lo, %bb.ct ], [ %i.ln, %bb.cs ] ; 2 uses
  %i.lp = load ptr, ptr %33, align 8, !tbaa !80   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.cu
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !81
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305, %bb.cr
  %.pn98.pn = phi { ptr, i32 } [ %i.lm, %bb.cr ], [ %.pn98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305 ], [ %.pn98, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.lu = load ptr, ptr %31, align 8, !tbaa !136  ; 3 uses
  %.not.i.i308 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i308, label %_ZN7testing7MessageD2Ev.exit310, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !90
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(128) %i.lu) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit310

_ZN7testing7MessageD2Ev.exit310:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.cq
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.ll, %bb.cq ], [ %.pn98.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.pn98.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.do

_ZN7testing15AssertionResultD2Ev.exit341.thread549: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !90
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i345

.thread537:                                       ; preds = %bb.cj, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit293
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.ly = load ptr, ptr %38, align 8, !tbaa !144  ; 2 uses
  %.not.i.i316 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i316, label %.lr.ph.i.i342.preheader, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit318

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit318: ; preds = %.thread537
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !148
  %i.mb = xor i32 %i.ma, 1048576
  %i.mc = icmp ugt i32 %i.mb, 1048574             ; 2 uses
  %i.md = zext i1 %i.mc to i8
  store i8 %i.md, ptr %34, align 8, !tbaa !131
  store ptr null, ptr %i.o, align 8, !tbaa !184
  br i1 %i.mc, label %.lr.ph.i.i342.preheader, label %bb.cv

bb.cv:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148)
          to label %bb.cx unwind label %bb.df

bb.cx:                                            ; preds = %bb.cw
  %i.me = load ptr, ptr %37, align 8, !tbaa !80
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 825, ptr noundef %i.me)
          to label %bb.cy unwind label %bb.dg

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  %i.mf = load ptr, ptr %37, align 8, !tbaa !80   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.cz
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !81
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.mk = load ptr, ptr %35, align 8, !tbaa !136  ; 3 uses
  %.not.i.i322 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i322, label %_ZN7testing7MessageD2Ev.exit324, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !90
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(128) %i.mk) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit324

_ZN7testing7MessageD2Ev.exit324:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !134 ; 4 uses
  %.not.i.i325 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i325, label %_ZN7testing15AssertionResultD2Ev.exit329, label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit324
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !80 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326: ; preds = %bb.da
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !81
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i326
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit329

_ZN7testing15AssertionResultD2Ev.exit329:         ; preds = %_ZN7testing7MessageD2Ev.exit324, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !90
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %i.mv = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit329, %bb.dc
  %.sroa.08.012.i.i = phi ptr [ %i.my, %bb.dc ], [ %i.mu, %_ZN7testing15AssertionResultD2Ev.exit329 ] ; 3 uses
  %i.mx = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i330 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i330, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef 16384) #32, !inline_history !145
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !144
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.mv
  br i1 %i.mz, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.dc, %_ZN7testing15AssertionResultD2Ev.exit329
  %i.na = load ptr, ptr %i.m, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.nb = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.ne) #32, !inline_history !145
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i:   ; preds = %bb.dd, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i1.i, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

bb.de:                                            ; preds = %bb.cv
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit336

bb.df:                                            ; preds = %bb.cw
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.dg:                                            ; preds = %bb.cx
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.cy
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn102 = phi { ptr, i32 } [ %i.nj, %bb.dh ], [ %i.ni, %bb.dg ] ; 2 uses
  %i.nk = load ptr, ptr %37, align 8, !tbaa !80   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.di
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !81
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.df
  %.pn102.pn = phi { ptr, i32 } [ %i.nh, %bb.df ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %.pn102, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.np = load ptr, ptr %35, align 8, !tbaa !136  ; 3 uses
  %.not.i.i334 = icmp eq ptr %i.np, null
  br i1 %.not.i.i334, label %_ZN7testing7MessageD2Ev.exit336, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !90
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(128) %i.np) #28, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit336

_ZN7testing7MessageD2Ev.exit336:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %bb.de
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.ng, %bb.de ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %.pn102.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.do

.lr.ph.i.i342.preheader:                          ; preds = %.thread537, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit318
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !90
  br label %.lr.ph.i.i342

.lr.ph.i.i342:                                    ; preds = %.lr.ph.i.i342.preheader, %bb.dk
  %.sroa.08.012.i.i343 = phi ptr [ %i.nu, %bb.dk ], [ %38, %.lr.ph.i.i342.preheader ] ; 3 uses
  %i.nt = load ptr, ptr %.sroa.08.012.i.i343, align 8, !tbaa !144 ; 2 uses
  %.not.i.i344 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i344, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i342
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef 16384) #32, !inline_history !145
  store ptr null, ptr %.sroa.08.012.i.i343, align 8, !tbaa !144
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.i.i342
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i343, i64 8 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %39
  br i1 %i.nv, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i345, label %.lr.ph.i.i342

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i345: ; preds = %bb.dk, %_ZN7testing15AssertionResultD2Ev.exit341.thread549
  %i.nw = load ptr, ptr %i.m, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i346 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i346, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i347, label %bb.dl

bb.dl:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i345
  %i.nx = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nw to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.oa) #32, !inline_history !145
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i347

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i347: ; preds = %bb.dl, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i345
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i1.i348 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i1.i348, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i347
  %i.oc = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.of) #32, !inline_history !145
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.0.add = add nuw nsw i64 %.0.idx421, 1         ; 2 uses
  %.not = icmp eq i64 %.0.add, 3
  br i1 %.not, label %.loopexit, label %bb.b

bb.do:                                            ; preds = %_ZN7testing7MessageD2Ev.exit336, %_ZN7testing7MessageD2Ev.exit310, %_ZN7testing7MessageD2Ev.exit284, %_ZN7testing7MessageD2Ev.exit259, %_ZN7testing7MessageD2Ev.exit234, %_ZN7testing7MessageD2Ev.exit209, %_ZN7testing7MessageD2Ev.exit184, %_ZN7testing7MessageD2Ev.exit159, %_ZN7testing7MessageD2Ev.exit134, %bb.f
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZN7testing7MessageD2Ev.exit336 ], [ %.pn98.pn.pn, %_ZN7testing7MessageD2Ev.exit310 ], [ %i.ap, %bb.f ], [ %.pn94.pn.pn, %_ZN7testing7MessageD2Ev.exit284 ], [ %.pn90.pn.pn, %_ZN7testing7MessageD2Ev.exit259 ], [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit234 ], [ %.pn82.pn.pn, %_ZN7testing7MessageD2Ev.exit209 ], [ %.pn78.pn.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %.pn74.pn.pn, %_ZN7testing7MessageD2Ev.exit159 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit134 ]
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn102.pn.pn.pn

.critedge122:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit304, %_ZN7testing15AssertionResultD2Ev.exit278, %_ZN7testing15AssertionResultD2Ev.exit253, %_ZN7testing15AssertionResultD2Ev.exit228, %_ZN7testing15AssertionResultD2Ev.exit203, %_ZN7testing15AssertionResultD2Ev.exit178, %_ZN7testing15AssertionResultD2Ev.exit153, %_ZN7testing15AssertionResultD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !90
  %i.og = load ptr, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %i.oh = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i353, label %.lr.ph.i.i350

.lr.ph.i.i350:                                    ; preds = %.critedge122, %bb.dq
  %.sroa.08.012.i.i351 = phi ptr [ %i.ok, %bb.dq ], [ %i.og, %.critedge122 ] ; 3 uses
  %i.oj = load ptr, ptr %.sroa.08.012.i.i351, align 8, !tbaa !144 ; 2 uses
  %.not.i.i352 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i352, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i350
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef 16384) #32, !inline_history !145
  store ptr null, ptr %.sroa.08.012.i.i351, align 8, !tbaa !144
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.lr.ph.i.i350
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i351, i64 8 ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.oh
  br i1 %i.ol, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i353, label %.lr.ph.i.i350

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i353: ; preds = %bb.dq, %.critedge122
  %i.om = load ptr, ptr %i.m, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i354 = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i.i354, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355, label %bb.dr

bb.dr:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i353
  %i.on = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.om to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.oq) #32, !inline_history !145
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355: ; preds = %bb.dr, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i353
  %i.or = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i1.i356 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i1.i356, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  %.sink543 = phi ptr [ %i.nf, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i ], [ %i.or, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355 ] ; 2 uses
  %i.os = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %.sink543 to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %.sink543, i64 noundef %i.ov) #32
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i355, %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dn, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 1048575
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = lshr i64 %i.b, 12                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit: ; preds = %bb.b
  %i.o = and i64 %i.b, 4095
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = and i32 %1, -1048576
  %i.r = load i32, ptr %i.p, align 4, !tbaa !148  ; 2 uses
  %i.s = xor i32 %i.r, %i.q
  %i.t = icmp ult i32 %i.s, 1048575
  br i1 %i.t, label %bb.c, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.c:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = and i32 %i.r, 1048575                    ; 2 uses
  %narrow.i.i = add nuw nsw i32 %i.v, 1
  %i.w = zext nneg i32 %narrow.i.i to i64
  %i.x = zext nneg i32 %i.v to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.u, i64 %i.w, ptr nonnull %i.u, i64 %i.x), !inline_history !7
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.ab = phi i1 [ false, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit ], [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI23SparseSet_Contains_TestIN13SparseSetBase9my_entityEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.125, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.126, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.127, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !90
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.128, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.o
end_hunk_1
