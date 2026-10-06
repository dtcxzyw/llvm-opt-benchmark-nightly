Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_any?download=true
inline.NumInlined: 12266
inline.NumDeleted: 2071
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN33MetaAny_VoidMoveConstruction_Test8TestBodyEv:bb.a
bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i111, label %_ZNK7testing15AssertionResult15failure_messageEv.exit112, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit112

_ZNK7testing15AssertionResult15failure_messageEv.exit112: ; preds = %bb.ag, %bb.af
  %i.cp = phi ptr [ %i.co, %bb.ag ], [ @.str.87, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 991, ptr noundef %i.cp)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit112
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cq = load ptr, ptr %10, align 8, !tbaa !93   ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i113, label %_ZN7testing7MessageD2Ev.exit115, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114: ; preds = %bb.ai
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #26, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit115

_ZN7testing7MessageD2Ev.exit115:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit112
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn39 = phi { ptr, i32 } [ %i.cw, %bb.al ], [ %i.cv, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cx = load ptr, ptr %10, align 8, !tbaa !93   ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.am
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #26, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.am, %bb.aj
  %.pn39.pn = phi { ptr, i32 } [ %i.cu, %bb.aj ], [ %.pn39, %bb.am ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.au

bb.an:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit, %_ZN7testing7MessageD2Ev.exit115
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !94 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i119, label %_ZN7testing15AssertionResultD2Ev.exit123, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !91 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.ao
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !64
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit123

_ZN7testing15AssertionResultD2Ev.exit123:         ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit93, %_ZN7testing15AssertionResultD2Ev.exit123
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i124, label %_ZN4entt8meta_anyD2Ev.exit125, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit125 unwind label %bb.ar, !inline_history !0

bb.ar:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit125:                    ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i126, label %_ZN4entt8meta_anyD2Ev.exit127, label %bb.as

bb.as:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit125
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt8meta_anyD2Ev.exit127 unwind label %bb.at, !inline_history !0

bb.at:                                            ; preds = %bb.as
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit127:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit125, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %_ZN4entt8meta_anyD2Ev.exit110
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %.pn37, %_ZN4entt8meta_anyD2Ev.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.z
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.au ], [ %.pn33.pn.pn, %bb.z ]
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i128, label %_ZN4entt8meta_anyD2Ev.exit129, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit129 unwind label %bb.ax, !inline_history !0

bb.ax:                                            ; preds = %bb.aw
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit129:                    ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i130, label %_ZN4entt8meta_anyD2Ev.exit131, label %bb.ay

bb.ay:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit129
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt8meta_anyD2Ev.exit131 unwind label %bb.az, !inline_history !0

bb.az:                                            ; preds = %bb.ay
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit131:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit129, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn39.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31MetaAny_VoidMoveAssignment_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::meta_any", align 8    ; 16 uses
  %2 = alloca %"class.entt::meta_any", align 8    ; 25 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %8 = alloca %"class.entt::meta_type", align 8   ; 7 uses
  %9 = alloca %"class.entt::meta_type", align 8   ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %13 = alloca %"class.entt::meta_any", align 8   ; 14 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt8meta_anyC2IvJEEESt15in_place_type_tIT_EDpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
  %.pre = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  br label %_ZN4entt8meta_anyC2IvJEEESt15in_place_type_tIT_EDpOT0_.exit

_ZN4entt8meta_anyC2IvJEEESt15in_place_type_tIT_EDpOT0_.exit: ; preds = %bb.a, %bb.b
  %16 = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.d, align 8, !tbaa !62
  store i32 1219850847, ptr %i.f, align 8, !tbaa !63
  store ptr null, ptr %i.e, align 8, !tbaa !73
  store i8 0, ptr %i.g, align 4, !tbaa !74
  store ptr null, ptr %1, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEvEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.j, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.not.i.i50 = icmp eq ptr %16, null
  br i1 %.not.i.i50, label %bb.c, label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread

_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread: ; preds = %_ZN4entt8meta_anyC2IvJEEESt15in_place_type_tIT_EDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.k, align 8, !tbaa !62
  store i32 1219850847, ptr %i.m, align 8, !tbaa !63
  store ptr null, ptr %i.l, align 8, !tbaa !73
  store i8 0, ptr %i.n, align 4, !tbaa !74
  store ptr null, ptr %2, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %16, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEvEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.q, align 8, !tbaa !86
  br label %bb.h

bb.c:                                             ; preds = %_ZN4entt8meta_anyC2IvJEEESt15in_place_type_tIT_EDpOT0_.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i unwind label %bb.g

_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i: ; preds = %bb.c
  %.pre140 = load i8, ptr %i.g, align 4, !tbaa !74 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.s, align 8, !tbaa !62
  store i32 1219850847, ptr %i.u, align 8, !tbaa !63
  store ptr null, ptr %i.t, align 8, !tbaa !73
  store i8 0, ptr %i.v, align 4, !tbaa !74
  store ptr null, ptr %2, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store ptr %i.r, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEvEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.y, align 8, !tbaa !86
  switch i8 %.pre140, label %bb.e [
    i8 2, label %bb.d
    i8 0, label %bb.h
  ]

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.aa = invoke noundef ptr %i.z(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %._crit_edge unwind label %bb.f ; 0 uses

._crit_edge:                                      ; preds = %bb.d
  %.pre141 = load i8, ptr %i.g, align 4, !tbaa !74
  br label %bb.h

bb.e:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.ab = load ptr, ptr %1, align 8, !tbaa !95
  store ptr null, ptr %1, align 8, !tbaa !95
  store ptr %i.ab, ptr %2, align 8, !tbaa !64
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4entt8meta_anyD2Ev.exit136

bb.h:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread, %._crit_edge, %bb.e, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.af = phi ptr [ %i.y, %._crit_edge ], [ %i.y, %bb.e ], [ %i.y, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.q, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ] ; 2 uses
  %i.ag = phi ptr [ %i.x, %._crit_edge ], [ %i.x, %bb.e ], [ %i.x, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.p, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ] ; 2 uses
  %i.ah = phi ptr [ %i.w, %._crit_edge ], [ %i.w, %bb.e ], [ %i.w, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.o, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.v, %._crit_edge ], [ %i.v, %bb.e ], [ %i.v, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.n, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ] ; 2 uses
  %i.aj = phi ptr [ %i.u, %._crit_edge ], [ %i.u, %bb.e ], [ %i.u, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.m, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ]
  %i.ak = phi ptr [ %i.t, %._crit_edge ], [ %i.t, %bb.e ], [ %i.t, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.l, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ] ; 3 uses
  %i.al = phi ptr [ %i.s, %._crit_edge ], [ %i.s, %bb.e ], [ %i.s, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ %i.k, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ]
  %i.am = phi i8 [ %.pre141, %._crit_edge ], [ %.pre140, %bb.e ], [ %.pre140, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i ], [ 0, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i.thread ]
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !62
  store ptr %i.an, ptr %i.al, align 8, !tbaa !62
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !73
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !73
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !63
  store i32 %i.ap, ptr %i.aj, align 8, !tbaa !63
  store i8 %i.am, ptr %i.ai, align 4, !tbaa !74
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !72
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !120 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !120
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !87
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !95  ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !95
  store ptr %i.as, ptr %i.af, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.at = icmp ne ptr %i.as, null                 ; 2 uses
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %3, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !85
  br i1 %i.at, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1002, ptr noundef %i.aw)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  %i.ax = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !64
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bc = load ptr, ptr %4, align 8, !tbaa !93    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !94 ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i72, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit71
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73: ; preds = %bb.n
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !64
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit76

_ZN7testing15AssertionResultD2Ev.exit76:          ; preds = %_ZN7testing7MessageD2Ev.exit71, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.bk

bb.o:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit82

bb.p:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.q:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn30 = phi { ptr, i32 } [ %i.bp, %bb.r ], [ %i.bo, %bb.q ] ; 2 uses
  %i.bq = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.s
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !64
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.p
  %.pn30.pn = phi { ptr, i32 } [ %i.bn, %bb.p ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn30, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bv = load ptr, ptr %4, align 8, !tbaa !93    ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.bv, null
end_hunk_0
