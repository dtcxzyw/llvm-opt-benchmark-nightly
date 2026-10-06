Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow4CrowIJEE14add_static_dirEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.l, ptr noundef nonnull align 1 dereferenceable(14) @.str.399, i64 14, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.m, align 8, !tbaa !166
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.n, align 2, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4crow6Router8new_ruleINS_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEERDaRKS8_(ptr noundef nonnull align 8 dereferenceable(3656) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4crow4CrowIJEE5routeILm5EEENSt13invoke_resultIDTadsr6RouterE15new_rule_taggedIXT_EEEJNS_6RouterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4typeESD_.exit unwind label %bb.i

_ZN4crow4CrowIJEE5routeILm5EEENSt13invoke_resultIDTadsr6RouterE15new_rule_taggedIXT_EEEJNS_6RouterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4typeESD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !160
  %i.r = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !166  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.t, ptr %i.a, align 8, !tbaa !162
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i20, label %._crit_edge.i.i19

.noexc.i20:                                       ; preds = %_ZN4crow4CrowIJEE5routeILm5EEENSt13invoke_resultIDTadsr6RouterE15new_rule_taggedIXT_EEEJNS_6RouterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4typeESD_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.j   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.v, ptr %4, align 8, !tbaa !164
  %i.w = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.w, ptr %i.q, align 8, !tbaa !165
  br label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %.noexc21, %_ZN4crow4CrowIJEE5routeILm5EEENSt13invoke_resultIDTadsr6RouterE15new_rule_taggedIXT_EEEJNS_6RouterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4typeESD_.exit
  %i.x = phi ptr [ %i.v, %.noexc21 ], [ %i.q, %_ZN4crow4CrowIJEE5routeILm5EEENSt13invoke_resultIDTadsr6RouterE15new_rule_taggedIXT_EEEJNS_6RouterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4typeESD_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i19
  %i.y = load i8, ptr %i.r, align 1, !tbaa !165
  store i8 %i.y, ptr %i.x, align 1, !tbaa !165
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i19
  %i.z = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !166
  %i.ab = load ptr, ptr %4, align 8, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  invoke void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.q, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #41
  br label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit

_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.ah = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.l
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !165
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  store i8 1, ptr %i.b, align 8, !tbaa !239
  %i.al = load ptr, ptr %1, align 8, !tbaa !164   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !165
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  ret void

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.h
  %i.at = load i64, ptr %i.e, align 8, !tbaa !165
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i20
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33

bb.k:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.q
  br i1 %i.az, label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.k
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !165
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #41
  br label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33

_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ %i.ax, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33, %bb.i
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_D2Ev.exit33 ], [ %i.av, %bb.i ] ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.l
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.l
  %i.be = load i64, ptr %i.l, align 8, !tbaa !165
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.bg = load ptr, ptr %1, align 8, !tbaa !164   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !165
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn8.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn8.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn8.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %.pn8.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6ServerINS_4CrowIJEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJEEC2EPS2_N4asio5local14basic_endpointINS8_15stream_protocolEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5tupleIJEEjhPv(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(120) %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.asio::local::basic_endpoint", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %10 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %11 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %12 = alloca %"class.crow::logger", align 8     ; 8 uses
  %13 = alloca %"class.std::error_code", align 8  ; 17 uses
  %14 = alloca %"class.crow::logger", align 8     ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.asio::detail::socket_option::boolean", align 4 ; 5 uses
  %17 = alloca %"class.crow::logger", align 8     ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.crow::logger", align 8     ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.crow::logger", align 8     ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %5, ptr %0, align 8, !tbaa !1084
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = add i32 %5, -1                           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i.i
  %.sink = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  %.sink.i = phi ptr [ %i.h, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  store ptr %.sink, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !387
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !1085
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  invoke void @_ZN4asio10io_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_23reactive_socket_serviceINS_5local15stream_protocolEEEEE, ptr %11, align 8, !tbaa !1086
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !1087
  %i.r = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_23reactive_socket_serviceINS_5local15stream_protocolEEENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  store ptr %i.r, ptr %i.o, align 8, !tbaa !349
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.u = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.v, align 8, !tbaa !572
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.w, align 8, !tbaa !351
  store i64 %i.u, ptr %i.t, align 8, !tbaa !663
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.t, ptr %i.x, align 8, !tbaa !350
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.y, align 8, !tbaa !574
  store i32 -1, ptr %i.s, align 8, !tbaa !485
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i8 0, ptr %i.z, align 4, !tbaa !488
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.aa, align 8, !tbaa !757
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ab, align 8, !tbaa !1088
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 0, ptr %i.ac, align 1, !tbaa !1089
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 3 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !1090
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i8 0, i64 40, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_18signal_set_serviceEEE, ptr %10, align 8, !tbaa !1086
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !1087
  %i.aj = invoke noundef nonnull align 8 dereferenceable(600) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_18signal_set_serviceENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !469
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.am, align 8, !tbaa !572
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.an, align 8, !tbaa !351
  store i64 %i.u, ptr %i.al, align 8, !tbaa !663
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !350
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.ap, align 8, !tbaa !574
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.aq, align 8, !tbaa !472
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEEE, ptr %9, align 8, !tbaa !1086
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !1087
  %i.au = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS7_EEEEEENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !398
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 -1, ptr %i.ax, align 8, !tbaa !453
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.ba, align 8, !tbaa !572
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.bb, align 8, !tbaa !351
  store i64 %i.u, ptr %i.az, align 8, !tbaa !663
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !350
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.bd, align 8, !tbaa !574
  store i64 0, ptr %i.av, align 8, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 0, ptr %i.be, align 8, !tbaa !395
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %i.bf, align 8, !tbaa !1091
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %6, ptr %i.bg, align 8, !tbaa !1092
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !160
  %i.bj = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !166 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !162
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc64 unwind label %bb.r   ; 2 uses

.noexc64:                                         ; preds = %.noexc.i
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !164
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !162
  store i64 %i.bo, ptr %i.bi, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc64, %bb.f
  %i.bp = phi ptr [ %i.bn, %.noexc64 ], [ %i.bi, %bb.f ] ; 2 uses
  switch i64 %i.bl, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !165
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !165
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.br = load i64, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !166
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !164
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %4, ptr %i.bw, align 8, !tbaa !2563
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %7, ptr %i.bx, align 8, !tbaa !2564
  %i.by = load i8, ptr %i.ad, align 2, !tbaa !1090, !range !274, !noundef !275
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.cb = icmp slt i32 %i.ca, 4
  br i1 %i.cb, label %bb.k, label %bb.cg

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %12)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 376
  store i32 3, ptr %i.cc, align 8, !tbaa !305
  %i.cd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i = icmp sgt i32 %i.cd, 3
  br i1 %.not.i, label %_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.424, i64 noundef 35)
          to label %_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit unwind label %bb.t ; 0 uses

_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit:           ; preds = %bb.l, %bb.m
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.cg

bb.n:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp
end_hunk_0
begin_hunk_1_@_ZN4crow6ServerINS_4CrowIJEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJEE3runEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %13, align 8, !tbaa !1112
  %i.hd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc72 unwind label %bb.cb  ; 3 uses

.noexc72:                                         ; preds = %bb.bn
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN4crow6ServerINS3_4CrowIJEEENS3_18UnixSocketAcceptorENS3_17UnixSocketAdaptorEJEE3runEvEUlvE0_EEEEEE, i64 16), ptr %i.hd, align 8, !tbaa !257
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = ptrtoint ptr %0 to i64
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !281
  store ptr %i.hd, ptr %1, align 8, !tbaa !1114
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc72
  %i.hg = load ptr, ptr %1, align 8, !tbaa !1114  ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i71, label %bb.bq, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.bo
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !257
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #40, !inline_history !2590
  br label %bb.bq

bb.bp:                                            ; preds = %.noexc72
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %1, align 8, !tbaa !1114  ; 3 uses
  %.not.i5.i = icmp eq ptr %i.hl, null
  br i1 %.not.i5.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.bp
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !257
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl) #40, !inline_history !2590
  br label %.body

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.br unwind label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %.sroa.0.0.copyload.i.i = load i64, ptr %13, align 8, !tbaa !162
  %.not.i73 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i73, label %_ZNSt6threadD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt9terminatev() #42
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.hp = load ptr, ptr %4, align 8, !tbaa !1115  ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hp, %i.hr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadD2Ev.exit, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ij, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i ], [ %i.hp, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.hu, align 8, !tbaa !314
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !315
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !257
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #40, !inline_history !109
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !257
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #40, !inline_history !109
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hx, %bb.bw ], [ %i.ih, %bb.bx ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ii, label %bb.by, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, !prof !316

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #40
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i:       ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bu, %.lr.ph.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ij, %i.hr
  br i1 %.not.i.i.i74, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !1115
  br label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6threadD2Ev.exit
  %i.ik = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hp, %_ZNSt6threadD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1102
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #41
  br label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ca

bb.ca:                                            ; preds = %bb.b, %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit, %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit
  ret void

bb.cb:                                            ; preds = %bb.bn
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.bq
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %13, align 8, !tbaa !162
  %.not.i76 = icmp eq i64 %.sroa.0.0.copyload.i.i75, 0
  br i1 %.not.i76, label %.body, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZSt9terminatev() #42
  unreachable

.body:                                            ; preds = %bb.cc, %bb.cb, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.bp
  %.pn29 = phi { ptr, i32 } [ %i.hk, %bb.bp ], [ %i.iq, %bb.cb ], [ %i.hk, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.ir, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.ce

bb.ce:                                            ; preds = %.body, %bb.bm, %bb.bl, %bb.bf, %bb.an, %bb.am, %bb.al, %bb.ah
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ah ], [ %.pn29, %.body ], [ %i.ek, %bb.al ], [ %i.hc, %bb.bm ], [ %.pn27, %bb.bl ], [ %.pn.pn.pn, %bb.bf ], [ %i.em, %bb.an ], [ %i.el, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZNSt6vectorISt6futureIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.cf

bb.cf:                                            ; preds = %bb.u, %bb.ce, %bb.e
  %.pn36 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.cn, %bb.u ], [ %.pn31.pn, %bb.ce ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6ServerINS_4CrowIJEEENS_11TCPAcceptorENS_13SocketAdaptorEJEEC2EPS2_N4asio2ip14basic_endpointINS8_3tcpEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5tupleIJEEjhPv(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(28) %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %9 = alloca %"class.asio::ip::address", align 4 ; 9 uses
  %10 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %12 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %13 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %14 = alloca %"class.crow::logger", align 8     ; 8 uses
  %15 = alloca %"class.std::error_code", align 8  ; 17 uses
  %16 = alloca %"class.crow::logger", align 8     ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.asio::detail::socket_option::boolean", align 4 ; 5 uses
  %19 = alloca %"class.crow::logger", align 8     ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.crow::logger", align 8     ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.crow::logger", align 8     ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %5, ptr %0, align 8, !tbaa !1119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = add i32 %5, -1                           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i.i
  %.sink = phi ptr [ %i.f, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  %.sink.i = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.a ]
  store ptr %.sink, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.sink.i, ptr %i.i, align 8, !tbaa !387
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.h, align 8, !tbaa !1085
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  invoke void @_ZN4asio10io_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_23reactive_socket_serviceINS_2ip3tcpEEEEE, ptr %13, align 8, !tbaa !1086
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1087
  %i.q = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_23reactive_socket_serviceINS_2ip3tcpEEENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  store ptr %i.q, ptr %i.n, align 8, !tbaa !505
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.u = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.v, align 8, !tbaa !572
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.w, align 8, !tbaa !351
  store i64 %i.u, ptr %i.t, align 8, !tbaa !663
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.t, ptr %i.x, align 8, !tbaa !350
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.y, align 8, !tbaa !574
  store i32 -1, ptr %i.r, align 8, !tbaa !485
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i8 0, ptr %i.z, align 4, !tbaa !488
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.aa, align 8, !tbaa !757
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ab, align 8, !tbaa !1120
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 0, ptr %i.ac, align 1, !tbaa !1121
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 3 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !1122
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i8 0, i64 40, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_18signal_set_serviceEEE, ptr %12, align 8, !tbaa !1086
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !1087
  %i.aj = invoke noundef nonnull align 8 dereferenceable(600) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_18signal_set_serviceENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !469
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.am, align 8, !tbaa !572
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.an, align 8, !tbaa !351
  store i64 %i.u, ptr %i.al, align 8, !tbaa !663
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !350
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.ap, align 8, !tbaa !574
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.aq, align 8, !tbaa !472
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEEE, ptr %11, align 8, !tbaa !1086
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !1087
  %i.au = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS7_EEEEEENS_10io_contextEEEPNS_17execution_context7serviceEPv, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !398
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 -1, ptr %i.ax, align 8, !tbaa !453
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.ba, align 8, !tbaa !572
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.bb, align 8, !tbaa !351
  store i64 %i.u, ptr %i.az, align 8, !tbaa !663
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !350
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.bd, align 8, !tbaa !574
  store i64 0, ptr %i.av, align 8, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 0, ptr %i.be, align 8, !tbaa !395
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %i.bf, align 8, !tbaa !1123
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %6, ptr %i.bg, align 8, !tbaa !1124
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !160
  %i.bj = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !166 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !162
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.r   ; 2 uses

.noexc64:                                         ; preds = %.noexc.i
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !164
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.bo, ptr %i.bi, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc64, %bb.f
  %i.bp = phi ptr [ %i.bn, %.noexc64 ], [ %i.bi, %bb.f ] ; 2 uses
  switch i64 %i.bl, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !165
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !165
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.br = load i64, ptr %i.a, align 8, !tbaa !162 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !166
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !164
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %4, ptr %i.bw, align 8, !tbaa !2613
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %7, ptr %i.bx, align 8, !tbaa !2614
  %i.by = load i8, ptr %i.ad, align 2, !tbaa !1122, !range !274, !noundef !275
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.cb = icmp slt i32 %i.ca, 4
  br i1 %i.cb, label %bb.k, label %bb.ci

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %14)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 376
  store i32 3, ptr %i.cc, align 8, !tbaa !305
  %i.cd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i = icmp sgt i32 %i.cd, 3
  br i1 %.not.i, label %_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.424, i64 noundef 35)
          to label %_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit unwind label %bb.t ; 0 uses

_ZN4crow6loggerlsIA36_cEERS0_RKT_.exit:           ; preds = %bb.l, %bb.m
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.ci

bb.n:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4crow9Blueprint15new_rule_taggedILm5EEERNS_11black_magic9argumentsIXT_EE4type6rebindINS_10TaggedRuleEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.aq

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.e
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !165
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aa
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.ef = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ec, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.633", align 16 ; 10 uses
  %3 = alloca %class.anon.639, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !160
  %i.b = load ptr, ptr %1, align 8, !tbaa !164    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  %i.i = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.i, ptr %i.a, align 8, !tbaa !165
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166
  br label %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.m, align 8, !tbaa !166
  store ptr %i.c, ptr %1, align 8, !tbaa !164
  store i64 0, ptr %i.l, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %.noexc unwind label %bb.g     ; 5 uses

.noexc:                                           ; preds = %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.j, %i.a
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.t, i1 false)
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %i.p, align 8, !tbaa !164
  %i.u = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.u, ptr %i.q, align 8, !tbaa !165
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.k, ptr %i.w, align 8, !tbaa !166
  store ptr %i.a, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.m, align 8, !tbaa !166
  store i8 0, ptr %i.a, align 8, !tbaa !165
  store ptr %i.p, ptr %2, align 16, !tbaa !179
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !178
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !179
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !179 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %i.v, align 16, !tbaa !179
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E9_M_invokeERKSt9_Any_dataS2_S4_OSA_, ptr %i.y, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit

bb.d:                                             ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  %.pre6 = load ptr, ptr %3, align 8, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.ae = icmp eq ptr %.pre6, %i.a
  br i1 %i.ae, label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre6, i64 noundef %i.ag) #41
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit

_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit: ; preds = %bb.f, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.g:                                             ; preds = %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq ptr %i.j, %i.a
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4: ; preds = %bb.g
  %i.aj = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.g
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.al) #41
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5

_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router11validate_bpEv(ptr noundef nonnull align 8 dereferenceable(3656) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.crow::detail::middleware_indices", align 8 ; 9 uses
  %2 = alloca %"class.std::vector.22", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1132 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !322  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds i8, ptr null, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !323
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4crow9BlueprintEE8allocateEmPKv.exit.i.i.i.i, !prof !316

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN4crow9BlueprintEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #43
          to label %.noexc4 unwind label %bb.j    ; 5 uses

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIPN4crow9BlueprintEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.l, ptr %2, align 8, !tbaa !322
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1132
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !323
  %i.p = icmp samesign ugt i64 %i.g, 8
  br i1 %i.p, label %bb.c, label %bb.d, !prof !1133

bb.c:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4
  %i.q = icmp eq i64 %i.g, 8
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !1065
  store ptr %i.r, ptr %i.l, align 8, !tbaa !1065
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread
  %i.s = phi ptr [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.j, %.thread ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.i, %.thread ]
  %i.u = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.h, %.thread ]
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1132
  invoke void @_ZN4crow6Router11validate_bpESt6vectorIPNS_9BlueprintESaIS3_EERNS_6detail18middleware_indicesE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %2, align 8, !tbaa !322    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !323
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #41
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  %i.aa = load ptr, ptr %1, align 8, !tbaa !240   ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i5, label %_ZN4crow6detail18middleware_indicesD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !241
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #41
  br label %_ZN4crow6detail18middleware_indicesD2Ev.exit

_ZN4crow6detail18middleware_indicesD2Ev.exit:     ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIPN4crow9BlueprintEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7

bb.k:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !322   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !323
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #41
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ah, %bb.l ]
  %i.an = load ptr, ptr %1, align 8, !tbaa !240   ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i8, label %_ZN4crow6detail18middleware_indicesD2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !241
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #41
  br label %_ZN4crow6detail18middleware_indicesD2Ev.exit9

_ZN4crow6detail18middleware_indicesD2Ev.exit9:    ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit7, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN4crow8BaseRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.c, !inline_history !2665 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42, !inline_history !2665
  unreachable

_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4crow8BaseRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(184) %0) #40, !inline_history !2665
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8validateEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %.not.i.not = icmp eq i64 %i.c, 0
  br i1 %.not.i.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.256, i64 noundef 0, i64 noundef 0) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !165
  %.not = icmp eq i8 %i.e, 47
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.253)
          to label %bb.d unwind label %bb.e

end_hunk_2
begin_hunk_3_@_ZN4crow14routing_paramsC2ERKS0_:bb.a
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.z
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !160
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !164 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !166  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.e, ptr %i.a, align 8, !tbaa !162
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !164
  %i.h = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.h, ptr %i.b, align 8, !tbaa !165
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !165
  store i8 %i.j, ptr %i.i, align 1, !tbaa !165
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !166
  %i.m = load ptr, ptr %.014, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3253

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #40 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #42
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind noalias writable sret(%"struct.crow::routing_handle_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.crow::routing_params", align 8 ; 26 uses
  %8 = alloca %"class.std::vector.209", align 8   ; 15 uses
  %9 = alloca %"struct.crow::routing_params", align 8 ; 21 uses
  %10 = alloca %"struct.crow::routing_params", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %18 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %19 = alloca %"struct.crow::routing_params", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  %i.f = icmp eq ptr %5, null                     ; 12 uses
  %spec.store.select = select i1 %i.f, ptr %7, ptr %5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.g = icmp eq ptr %6, null                     ; 7 uses
  %spec.store.select27 = select i1 %i.g, ptr %8, ptr %6 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, i8 0, i64 96, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !166
  %i.j = icmp eq i64 %4, %i.i
  br i1 %i.j, label %_ZNSt6vectorImSaImEEaSEOS1_.exit, label %bb.t

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.k = load ptr, ptr %spec.store.select27, align 8, !tbaa !1406 ; 5 uses
  %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.l = load ptr, ptr %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select27, i8 0, i64 24, i1 false)
  %i.m = load i64, ptr %3, align 8, !tbaa !526
  %i.n = load ptr, ptr %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471 ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.q = icmp ugt ptr %i.n, inttoptr (i64 9223372036854775800 to ptr)
  br i1 %i.q, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !316

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43
          to label %.noexc240 unwind label %bb.o  ; 2 uses

.noexc240:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i
  %i.s = icmp ule ptr %i.n, inttoptr (i64 8 to ptr)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.o
  %i.u = icmp ne ptr %i.n, inttoptr (i64 8 to ptr)
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

_ZNSt6vectorImSaImEEC2ERKS1_.exit:                ; preds = %.noexc240, %.thread
  %i.v = phi ptr [ %i.p, %.thread ], [ %i.t, %.noexc240 ] ; 3 uses
  %i.w = phi ptr [ null, %.thread ], [ %i.r, %.noexc240 ] ; 9 uses
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(96) %spec.store.select)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  store i8 0, ptr %0, align 8, !tbaa !1466
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.x, align 8, !tbaa !1465
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i241 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i.i241, label %.thread658, label %bb.d

.thread658:                                       ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds i8, ptr null, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.y, align 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !316

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc243 unwind label %bb.q

.noexc243:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #43
          to label %.noexc244 unwind label %bb.q  ; 5 uses

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !1406
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1471
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !1407
  %i.ak = icmp samesign ugt i64 %i.ab, 8
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !1133

bb.e:                                             ; preds = %.noexc244
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %.noexc244
  %i.al = icmp eq i64 %i.ab, 8
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.w, align 8, !tbaa !162
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %.thread658, %bb.g, %bb.f, %bb.e
  %i.an = phi ptr [ %i.aj, %bb.g ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ], [ %i.ae, %.thread658 ]
  %i.ao = phi ptr [ %i.ai, %bb.g ], [ %i.ai, %bb.f ], [ %i.ai, %bb.e ], [ %i.ad, %.thread658 ]
  %i.ap = phi ptr [ %i.ah, %bb.g ], [ %i.ah, %bb.f ], [ %i.ah, %bb.e ], [ %i.ac, %.thread658 ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1471
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i242, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !1407
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #41
  br label %.body

_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit: ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !569 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !570 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ay, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit ] ; 3 uses
  %i.bb = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !165
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i245 = icmp eq ptr %i.bg, %i.ba
  br i1 %.not.i.i.i.i245, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ax, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit
  %i.bh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ay, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !571
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1404
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.k, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i246, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1407
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i246

_ZNSt6vectorImSaImEED2Ev.exit.i246:               ; preds = %bb.l, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.cb = load ptr, ptr %10, align 8, !tbaa !1409 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i3.i, label %_ZN4crow14routing_paramsD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i246
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1410
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #41
  br label %_ZN4crow14routing_paramsD2Ev.exit

_ZN4crow14routing_paramsD2Ev.exit:                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i246, %bb.m
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4crow14routing_paramsD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cj, %bb.q ], [ %i.ar, %bb.i ], [ %i.ar, %bb.h ]
  call void @_ZN4crow14routing_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #40
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn236 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ci, %bb.p ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorImSaImEED2Ev.exit248, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = ptrtoint ptr %i.v to i64
  %i.cl = ptrtoint ptr %i.w to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cm) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.t:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1140 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1140 ; 2 uses
  %.not939 = icmp eq ptr %i.co, %i.cq
  br i1 %.not939, label %._crit_edge948.thread, label %.lr.ph947
end_hunk_3
begin_hunk_4_@_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE:bb.a
  %i.tg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tf) #43
          to label %.noexc367 unwind label %.loopexit712 ; 4 uses

.noexc367:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i360
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 %i.sy ; 2 uses
  store i64 %i.sr, ptr %i.th, align 8, !tbaa !162
  %i.ti = icmp sgt i64 %i.sy, 0
  br i1 %i.ti, label %bb.ek, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i363

bb.ek:                                            ; preds = %.noexc367
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tg, ptr align 8 %i.sv, i64 %i.sy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i363

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i363: ; preds = %bb.ek, %.noexc367
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %.not.i17.i.i364 = icmp eq ptr %i.sv, null
  br i1 %.not.i17.i.i364, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i365, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i363
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.sy) #41
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i365

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i365: ; preds = %bb.el, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i363
  store ptr %i.tg, ptr %spec.store.select27, align 8, !tbaa !1406
  store ptr %i.tj, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.te
  store ptr %i.tk, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit368

.loopexit712:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i360
  %lpad.loopexit714 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

.loopexit.split-lp713:                            ; preds = %bb.ee, %bb.ej
  %lpad.loopexit.split-lp715 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

_ZNSt6vectorImSaImEE9push_backERKm.exit368:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i365, %bb.eh, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.tl = load i64, ptr %i.sh, align 8, !tbaa !166
  %i.tm = add i64 %i.tl, %4
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %18, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0469.0943, i64 noundef %i.tm, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select27)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit368
  %i.tn = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !1469
  %i.to = load ptr, ptr %i.dq, align 8, !tbaa !1407
  %.not.i.i.i.i.i.i369 = icmp eq ptr %.sroa.0.0940, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i369, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i370, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tp = ptrtoint ptr %.sroa.34.0942 to i64
  %i.tq = ptrtoint ptr %.sroa.0.0940 to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0940, i64 noundef %i.tr) #41
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i370

_ZNSt6vectorImSaImEEaSEOS1_.exit.i370:            ; preds = %bb.en, %bb.em
  %i.ts = load i64, ptr %i.dr, align 8, !tbaa !1465 ; 2 uses
  %i.tt = add i64 %.0653.fr945, -1
  %i.tu = add i64 %i.ts, -1
  %or.cond667.not = icmp ult i64 %i.tu, %i.tt
  br i1 %or.cond667.not, label %bb.eo, label %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit373

bb.eo:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i370
  %i.tv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4crow14routing_paramsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.ds) #40 ; 0 uses
  br label %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit373

_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit373: ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i370, %bb.eo
  %.10657 = phi i64 [ %.0653.fr945, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i370 ], [ %i.ts, %bb.eo ]
  %i.tw = load ptr, ptr %spec.store.select27, align 8, !tbaa !1469
  %i.tx = load ptr, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1469 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit373
  %i.tz = getelementptr inbounds i8, ptr %i.tx, i64 -8
  store ptr %i.tz, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  br label %bb.er

bb.eq:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit368
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.er:                                            ; preds = %bb.ep, %_ZZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEEENKUlRNS_21routing_handle_resultEE_clESJ_.exit373
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %18) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %.preheader, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, %bb.er, %bb.dh, %bb.ec, %bb.u, %._crit_edge, %bb.dg, %bb.ci, %switch.early.test239, %bb.bn, %bb.as, %bb.aq, %switch.early.test
  %.4 = phi i64 [ %.0653.fr945, %bb.u ], [ %.10657, %bb.er ], [ %.0653.fr945, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ %.1654, %bb.aq ], [ %.0653.fr945, %switch.early.test ], [ %.2, %bb.bn ], [ %.0653.fr945, %bb.as ], [ %.3655, %bb.ci ], [ %.0653.fr945, %switch.early.test239 ], [ %.0653.fr945, %._crit_edge ], [ %.8, %bb.dg ], [ %.0653.fr945, %bb.dh ], [ %.9, %bb.ec ], [ %.0653.fr945, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %.0653.fr945, %.preheader ]
  %.sroa.34.4 = phi ptr [ %.sroa.34.0942, %bb.u ], [ %i.to, %bb.er ], [ %.sroa.34.0942, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ %.sroa.34.1, %bb.aq ], [ %.sroa.34.0942, %switch.early.test ], [ %.sroa.34.2, %bb.bn ], [ %.sroa.34.0942, %bb.as ], [ %.sroa.34.3, %bb.ci ], [ %.sroa.34.0942, %switch.early.test239 ], [ %.sroa.34.0942, %._crit_edge ], [ %i.oo, %bb.dg ], [ %.sroa.34.0942, %bb.dh ], [ %i.rm, %bb.ec ], [ %.sroa.34.0942, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %.sroa.34.0942, %.preheader ] ; 3 uses
  %.10 = phi i1 [ %.0175944, %bb.u ], [ true, %bb.er ], [ %.0175944, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ %.1, %bb.aq ], [ %.0175944, %switch.early.test ], [ %.3, %bb.bn ], [ %.0175944, %bb.as ], [ %.5, %bb.ci ], [ %.0175944, %switch.early.test239 ], [ %.0175944, %._crit_edge ], [ true, %bb.dg ], [ %.0175944, %bb.dh ], [ true, %bb.ec ], [ %.0175944, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %.0175944, %.preheader ] ; 2 uses
  %i.ub = phi <2 x ptr> [ %i.dt, %bb.u ], [ %i.tn, %bb.er ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ %i.gs, %bb.aq ], [ %i.dt, %switch.early.test ], [ %i.jn, %bb.bn ], [ %i.dt, %bb.as ], [ %i.mg, %bb.ci ], [ %i.dt, %switch.early.test239 ], [ %i.dt, %._crit_edge ], [ %i.on, %bb.dg ], [ %i.dt, %bb.dh ], [ %i.rl, %bb.ec ], [ %i.dt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %i.dt, %.preheader ] ; 3 uses
  %i.uc = extractelement <2 x ptr> %i.ub, i64 0   ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0469.0943, i64 80 ; 2 uses
  %.0653.fr = freeze i64 %.4                      ; 3 uses
  %.not = icmp eq ptr %i.ud, %i.cq
  br i1 %.not, label %._crit_edge948, label %bb.u

._crit_edge948.thread:                            ; preds = %bb.t, %._crit_edge948
  %.0653.fr.lcssa1260 = phi i64 [ %.0653.fr, %._crit_edge948 ], [ 0, %bb.t ] ; 2 uses
  %.sroa.34.0.lcssa1259 = phi ptr [ %.sroa.34.4, %._crit_edge948 ], [ null, %bb.t ]
  %.sroa.0.0.lcssa1258 = phi ptr [ %i.uc, %._crit_edge948 ], [ null, %bb.t ] ; 3 uses
  %i.ue = load ptr, ptr %spec.store.select27, align 8, !tbaa !1406
  %spec.store.select27.sroa.sel578.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel578.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel578.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.uf = load ptr, ptr %spec.store.select27.sroa.sel578.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471
  %spec.store.select27.sroa.sel581.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel581.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel581.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.ug = load ptr, ptr %spec.store.select27.sroa.sel581.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407 ; 2 uses
  %.not.i.i.i.i.i374 = icmp eq ptr %.sroa.0.0.lcssa1258, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select27, i8 0, i64 24, i1 false)
  %i.uh = insertelement <2 x ptr> poison, ptr %i.ue, i64 0
  %i.ui = insertelement <2 x ptr> %i.uh, ptr %i.uf, i64 1 ; 2 uses
  br i1 %.not.i.i.i.i.i374, label %_ZNSt6vectorImSaImEEaSEOS1_.exit375, label %bb.es

bb.es:                                            ; preds = %._crit_edge948.thread
  %i.uj = ptrtoint ptr %.sroa.34.0.lcssa1259 to i64
  %i.uk = ptrtoint ptr %.sroa.0.0.lcssa1258 to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa1258, i64 noundef %i.ul) #41
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit375

_ZNSt6vectorImSaImEEaSEOS1_.exit375:              ; preds = %bb.es, %._crit_edge948.thread, %._crit_edge948
  %.0653.fr.lcssa1261 = phi i64 [ %.0653.fr, %._crit_edge948 ], [ %.0653.fr.lcssa1260, %._crit_edge948.thread ], [ %.0653.fr.lcssa1260, %bb.es ]
  %.sroa.34.5 = phi ptr [ %.sroa.34.4, %._crit_edge948 ], [ %i.ug, %._crit_edge948.thread ], [ %i.ug, %bb.es ] ; 5 uses
  %i.um = phi <2 x ptr> [ %i.ub, %._crit_edge948 ], [ %i.ui, %._crit_edge948.thread ], [ %i.ui, %bb.es ] ; 2 uses
  %i.un = extractelement <2 x ptr> %i.um, i64 1   ; 2 uses
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = extractelement <2 x ptr> %i.um, i64 0   ; 9 uses
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = sub i64 %i.uo, %i.uq                    ; 7 uses
  %.not.i.i.i.i376 = icmp eq ptr %i.un, %i.up
  br i1 %.not.i.i.i.i376, label %.thread660, label %bb.et

.thread660:                                       ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit375
  %i.us = getelementptr inbounds i8, ptr null, i64 %i.ur
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit381

bb.et:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit375
  %i.ut = icmp ugt i64 %i.ur, 9223372036854775800
  br i1 %i.ut, label %.noexc.i.i378, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i377, !prof !316

.noexc.i.i378:                                    ; preds = %bb.et
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc379 unwind label %bb.fj

.noexc379:                                        ; preds = %.noexc.i.i378
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i377: ; preds = %bb.et
  %i.uu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ur) #43
          to label %.noexc380 unwind label %bb.fj ; 6 uses

.noexc380:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i377
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.ur ; 3 uses
  %i.uw = icmp samesign ugt i64 %i.ur, 8
  br i1 %i.uw, label %bb.eu, label %bb.ev, !prof !1133

bb.eu:                                            ; preds = %.noexc380
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uu, ptr align 8 %i.up, i64 %i.ur, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit381

bb.ev:                                            ; preds = %.noexc380
  %i.ux = icmp eq i64 %i.ur, 8
  br i1 %i.ux, label %bb.ew, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit381

bb.ew:                                            ; preds = %bb.ev
  %i.uy = load i64, ptr %i.up, align 8, !tbaa !162
  store i64 %i.uy, ptr %i.uu, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit381

_ZNSt6vectorImSaImEEC2ERKS1_.exit381:             ; preds = %bb.ew, %bb.ev, %bb.eu, %.thread660
  %i.uz = phi ptr [ %i.uv, %bb.eu ], [ %i.uv, %bb.ev ], [ %i.uv, %bb.ew ], [ %i.us, %.thread660 ] ; 3 uses
  %i.va = phi ptr [ %i.uu, %bb.eu ], [ %i.uu, %bb.ev ], [ %i.uu, %bb.ew ], [ null, %.thread660 ] ; 9 uses
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %19, ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.ex unwind label %bb.fk

bb.ex:                                            ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit381
  store i8 0, ptr %0, align 8, !tbaa !1466
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0653.fr.lcssa1261, ptr %i.vb, align 8, !tbaa !1465
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.vd = ptrtoint ptr %i.uz to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i382 = icmp eq ptr %i.uz, %i.va
  br i1 %.not.i.i.i.i.i382, label %.thread661, label %bb.ey

.thread661:                                       ; preds = %bb.ex
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vh = getelementptr inbounds i8, ptr null, i64 %i.vf ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.vc, align 8
  store ptr %i.vh, ptr %i.vi, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384

bb.ey:                                            ; preds = %bb.ex
  %i.vj = icmp ugt i64 %i.vf, 9223372036854775800
  br i1 %i.vj, label %.noexc.i.i.i387, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i383, !prof !316

.noexc.i.i.i387:                                  ; preds = %bb.ey
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc388 unwind label %bb.fl

.noexc388:                                        ; preds = %.noexc.i.i.i387
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i383: ; preds = %bb.ey
  %i.vk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vf) #43
          to label %.noexc389 unwind label %bb.fl ; 5 uses

.noexc389:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i383
  store ptr %i.vk, ptr %i.vc, align 8, !tbaa !1406
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.vk, ptr %i.vl, align 8, !tbaa !1471
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vf ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !1407
  %i.vo = icmp samesign ugt i64 %i.vf, 8
  br i1 %i.vo, label %bb.ez, label %bb.fa, !prof !1133

bb.ez:                                            ; preds = %.noexc389
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vk, ptr align 8 %i.va, i64 %i.vf, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384

bb.fa:                                            ; preds = %.noexc389
  %i.vp = icmp eq i64 %i.vf, 8
  br i1 %i.vp, label %bb.fb, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384

bb.fb:                                            ; preds = %bb.fa
  %i.vq = load i64, ptr %i.va, align 8, !tbaa !162
  store i64 %i.vq, ptr %i.vk, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384:           ; preds = %.thread661, %bb.fb, %bb.fa, %bb.ez
  %i.vr = phi ptr [ %i.vn, %bb.fb ], [ %i.vn, %bb.fa ], [ %i.vn, %bb.ez ], [ %i.vi, %.thread661 ]
  %i.vs = phi ptr [ %i.vm, %bb.fb ], [ %i.vm, %bb.fa ], [ %i.vm, %bb.ez ], [ %i.vh, %.thread661 ]
  %i.vt = phi ptr [ %i.vl, %bb.fb ], [ %i.vl, %bb.fa ], [ %i.vl, %bb.ez ], [ %i.vg, %.thread661 ]
  store ptr %i.vs, ptr %i.vt, align 8, !tbaa !1471
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.vu, ptr noundef nonnull align 8 dereferenceable(96) %19)
          to label %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392 unwind label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384
  %i.vv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vw = load ptr, ptr %i.vc, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i.i385 = icmp eq ptr %i.vw, null
  br i1 %.not.i.i.i.i385, label %.body390, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vx = load ptr, ptr %i.vr, align 8, !tbaa !1407
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %i.vw to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %i.vw, i64 noundef %i.wa) #41
  br label %.body390

_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392: ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i384
  %i.wb = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !569 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !570 ; 2 uses
  %.not4.i.i.i.i393 = icmp eq ptr %i.wc, %i.we
  br i1 %.not4.i.i.i.i393, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i401, label %.lr.ph.i.i.i.i394

.lr.ph.i.i.i.i394:                                ; preds = %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397
  %.05.i.i.i.i395 = phi ptr [ %i.wk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397 ], [ %i.wc, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392 ] ; 3 uses
  %i.wf = load ptr, ptr %.05.i.i.i.i395, align 8, !tbaa !164 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i395, i64 16 ; 2 uses
  %i.wh = icmp eq ptr %i.wf, %i.wg
  br i1 %i.wh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i396: ; preds = %.lr.ph.i.i.i.i394
  %i.wi = load i64, ptr %i.wg, align 8, !tbaa !165
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wj) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397: ; preds = %.lr.ph.i.i.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i396
  %i.wk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i395, i64 32 ; 2 uses
  %.not.i.i.i.i398 = icmp eq ptr %i.wk, %i.we
  br i1 %.not.i.i.i.i398, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i399, label %.lr.ph.i.i.i.i394, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i399: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i397
  %.pr.i.i400 = load ptr, ptr %i.wb, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i401

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i401: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i399, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392
  %i.wl = phi ptr [ %.pr.i.i400, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i399 ], [ %i.wc, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit392 ] ; 3 uses
  %.not.i.i1.i.i402 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i1.i.i402, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i403, label %bb.fe

bb.fe:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i401
  %i.wm = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !571
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i403

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i403: ; preds = %bb.fe, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i401
  %i.wr = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i1.i404 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i1.i404, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i405, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i403
  %i.wt = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !1404
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.ws, i64 noundef %i.wx) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i405

_ZNSt6vectorIdSaIdEED2Ev.exit.i405:               ; preds = %bb.ff, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i403
  %i.wy = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i2.i406 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i2.i406, label %_ZNSt6vectorImSaImEED2Ev.exit.i407, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i405
  %i.xa = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !1407
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = ptrtoint ptr %i.wz to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xe) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i407

_ZNSt6vectorImSaImEED2Ev.exit.i407:               ; preds = %bb.fg, %_ZNSt6vectorIdSaIdEED2Ev.exit.i405
  %i.xf = load ptr, ptr %19, align 8, !tbaa !1409 ; 3 uses
  %.not.i.i.i3.i408 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i3.i408, label %_ZN4crow14routing_paramsD2Ev.exit410, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i407
  %i.xg = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !1410
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #41
  br label %_ZN4crow14routing_paramsD2Ev.exit410

_ZN4crow14routing_paramsD2Ev.exit410:             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i407, %bb.fh
  %.not.i.i.i411 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i411, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZN4crow14routing_paramsD2Ev.exit410
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.fj:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i377, %.noexc.i.i378
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.fk:                                            ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit381
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i383, %.noexc.i.i.i387
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %.body390

.body390:                                         ; preds = %bb.fc, %bb.fd, %bb.fl
  %eh.lpad-body391 = phi { ptr, i32 } [ %i.xn, %bb.fl ], [ %i.vv, %bb.fd ], [ %i.vv, %bb.fc ]
  call void @_ZN4crow14routing_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #40
  br label %bb.fm

bb.fm:                                            ; preds = %.body390, %bb.fk
  %.pn = phi { ptr, i32 } [ %eh.lpad-body391, %.body390 ], [ %i.xm, %bb.fk ] ; 2 uses
  %.not.i.i.i413 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorImSaImEED2Ev.exit248, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xo = ptrtoint ptr %i.uz to i64
  %i.xp = ptrtoint ptr %i.va to i64
  %i.xq = sub i64 %i.xo, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.xq) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.fi, %_ZN4crow14routing_paramsD2Ev.exit410, %bb.n, %_ZN4crow14routing_paramsD2Ev.exit
  %.sroa.0.6 = phi ptr [ %i.k, %bb.n ], [ %i.k, %_ZN4crow14routing_paramsD2Ev.exit ], [ %i.up, %_ZN4crow14routing_paramsD2Ev.exit410 ], [ %i.up, %bb.fi ] ; 3 uses
  %.sroa.34.6 = phi ptr [ %i.l, %bb.n ], [ %i.l, %_ZN4crow14routing_paramsD2Ev.exit ], [ %.sroa.34.5, %_ZN4crow14routing_paramsD2Ev.exit410 ], [ %.sroa.34.5, %bb.fi ]
  %i.xr = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !569 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !570 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEv:bb.a
  %.not.i.i152 = icmp eq ptr %i.os, null
  br i1 %.not.i.i152, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 4 uses
  %i.ou = load atomic i64, ptr %i.ot acquire, align 8 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 4294967297
  %i.ow = trunc i64 %i.ou to i32                  ; 2 uses
  br i1 %i.ov, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.ot, align 8, !tbaa !314
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store i32 0, ptr %i.ox, align 4, !tbaa !315
  %i.oy = load ptr, ptr %i.os, align 8, !tbaa !257
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #40, !inline_history !125
  %i.pb = load ptr, ptr %i.os, align 8, !tbaa !257
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #40, !inline_history !125
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.pe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i153 = icmp eq i8 %i.pe, 0
  br i1 %.not.i.i.i153, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pf = add nsw i32 %i.ow, -1
  store i32 %i.pf, ptr %i.ot, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.pg = atomicrmw volatile add ptr %i.ot, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i = phi i32 [ %i.ow, %bb.ck ], [ %i.pg, %bb.cl ]
  %i.ph = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ph, label %bb.cm, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.ce, %bb.cd, %bb.cc
  %.pn34 = phi { ptr, i32 } [ %i.oi, %bb.ce ], [ %i.og, %bb.cc ], [ %i.oh, %bb.cd ], [ %i.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.oj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %common.resume

bb.cn:                                            ; preds = %bb.bh
  call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE16complete_requestEv(ptr noundef nonnull align 8 dereferenceable(5176) %0)
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cn, %bb.t
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow4CrowIJEE6handleERNS_7requestERNS_8responseERSt10unique_ptrINS_21routing_handle_resultESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(4016) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.crow::routing_handle_result", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %3, align 8, !tbaa !1398   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %4, ptr noundef nonnull align 8 dereferenceable(137) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1471 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1406 ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.n, label %.noexc.i.i.i, label %bb.c, !prof !316

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #43 ; 5 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !1406
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1471
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1407
  %i.s = icmp samesign ugt i64 %i.j, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !1133

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.j, 8
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !162
  store i64 %i.u, ptr %i.o, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %.thread6, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.m, %.thread6 ]
  %i.w = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.l, %.thread6 ]
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %.thread6 ]
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1471
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %_ZN4crow21routing_handle_resultC2ERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1407
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #41
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN4crow21routing_handle_resultC2ERKS0_.exit:     ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1467
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !1467
  invoke void @_ZN4crow6Router6handleINS_4CrowIJEEEEEvRNS_7requestERNS_8responseENS_21routing_handle_resultE(ptr noundef nonnull align 8 dereferenceable(3656) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(144) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN4crow21routing_handle_resultC2ERKS0_.exit
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %4) #40
  ret void

bb.j:                                             ; preds = %_ZN4crow21routing_handle_resultC2ERKS0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router14handle_upgradeIRNS_17UnixSocketAdaptorEEEvRKNS_7requestERNS_8responseEOT_(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %6 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %7 = alloca %"class.crow::logger", align 8      ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"struct.crow::response", align 8   ; 20 uses
  %10 = alloca %"class.crow::logger", align 8     ; 9 uses
  %11 = alloca %"struct.crow::response", align 8  ; 20 uses
  %12 = alloca %"class.crow::logger", align 8     ; 9 uses
  %13 = alloca %"struct.crow::response", align 8  ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.crow::logger", align 8     ; 13 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr173, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1465 ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %.056.add = add nuw nsw i64 %.056.idx174, 104   ; 2 uses
  %.not59 = icmp eq i64 %.056.add, 3576
  br i1 %.not59, label %.critedge73, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.056.idx174 = phi i64 [ 40, %.preheader ], [ %.056.add, %bb.c ] ; 2 uses
  %.056.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.056.idx174
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1465
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !305
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.473, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre187 = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre188 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.r = icmp slt i32 %.pre187, %.pre188
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre189 = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.w = icmp slt i32 %.pre189, %.pre190
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3313)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !568

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !551, !noalias !3313 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !160, !alias.scope !3313
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3313
  store i64 %i.af, ptr %i.a, align 8, !tbaa !162, !noalias !3313
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i, label %._crit_edge.i.i.i
end_hunk_5
