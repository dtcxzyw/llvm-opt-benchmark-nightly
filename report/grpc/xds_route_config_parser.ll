Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_route_config_parser?download=true
inline.NumInlined: 4860
inline.NumDeleted: 2409
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE12AssignStatusINS0_6StatusEEEvOT_:bb.a
_ZN4absl12lts_202505126StatusaSEOS1_.exit:        ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE5ClearEv.exit
  %i.z = trunc i64 %i.t to i1
  br i1 %i.z, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.aa = inttoptr i64 %i.t to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.j, %bb.i, %bb.l
  %.pr = load i64, ptr %0, align 8, !tbaa !101
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.ad = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.t, %_ZN4absl12lts_202505126StatusaSEOS1_.exit ]
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit, !prof !102

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core15XdsResourceType12ResourceDataEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource11VirtualHosteqERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !115    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = load ptr, ptr %1, align 8, !tbaa !115    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.b:                                             ; preds = %bb.a
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !62
  %i.u = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !62
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr %i.t, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !653

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141 ; 3 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !271 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !141
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !271 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.af, %i.al
  br i1 %i.am, label %bb.d, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.d:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit
  %.not9.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not9.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i4

.lr.ph.i.i.i.i.i4:                                ; preds = %bb.d, %bb.e
  %.011.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ao, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.an = tail call noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5RouteeqERKS1_(ptr noundef nonnull align 8 dereferenceable(264) %.0810.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.011.i.i.i.i.i)
  br i1 %i.an, label %bb.e, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i4
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 264 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 264
  %.not.i.i.i.i.i5 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not.i.i.i.i.i5, label %.loopexit, label %.lr.ph.i.i.i.i.i4, !llvm.loop !654

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = load i64, ptr %i.as, align 8, !tbaa !37
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.f:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not6.i.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader.i.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.be, %bb.g ], [ %i.az, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 32
  %i.bc = tail call noundef zeroext i1 @_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideEEbRKSt4pairIT_T0_ESF_(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.bb) ; 3 uses
  br i1 %i.bc, label %bb.g, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i) #34 ; 2 uses
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i) #34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ax
  br i1 %.not.i.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZSteqIN9grpc_core22XdsRouteConfigResource5RouteESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i4, %bb.g, %.lr.ph.i.i.i.i.i.i, %bb.a, %bb.f, %.loopexit, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit
  %i.bf = phi i1 [ false, %.lr.ph.i.i.i.i.i4 ], [ false, %bb.a ], [ false, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit ], [ false, %.loopexit ], [ true, %bb.f ], [ %i.bc, %bb.g ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i ]
  ret i1 %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5RouteeqERKS1_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK9grpc_core13StringMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.a, label %bb.b, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp eq i64 %i.i, %i.o
  br i1 %i.p, label %bb.c, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZNK9grpc_core13HeaderMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(114) %.0810.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(114) %.011.i.i.i.i.i.i)
  br i1 %i.q, label %bb.d, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 120
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !655

_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i8, ptr %i.v, align 4, !tbaa !186, !range !75, !noundef !76 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = load i8, ptr %i.x, align 4, !tbaa !186, !range !75, !noundef !76
  %2 = icmp ne i8 %i.w, %i.y                      ; 2 uses
  %i.z = icmp eq i8 %i.w, 0
  %brmerge.i.i = or i1 %i.z, %2
  %not..i.i = xor i1 %2, true
  %i.aa = load i32, ptr %i.t, align 8
  %i.ab = load i32, ptr %i.u, align 8
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %i.ad = select i1 %brmerge.i.i, i1 %not..i.i, i1 %i.ac
  br i1 %i.ad, label %bb.e, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.e:                                             ; preds = %_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !148
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !148 ; 4 uses
  switch i8 %i.ah, label %bb.g [
    i8 0, label %.split
    i8 1, label %bb.f
    i8 2, label %.split7
    i8 -1, label %.split8
  ]

.split:                                           ; preds = %bb.e
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.f:                                             ; preds = %bb.e
  %i.al = icmp eq i8 %i.aj, 1
  br i1 %i.al, label %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route13UnknownActionENS2_11RouteActionENS2_19NonForwardingActionEEEbRKSt7variantIJDpT_EESB_.exit, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

.split7:                                          ; preds = %bb.e
  %i.am = icmp eq i8 %i.aj, 2
  br i1 %i.am, label %bb.h, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

.split8:                                          ; preds = %bb.e
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %bb.h, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.g:                                             ; preds = %bb.e
  unreachable

_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route13UnknownActionENS2_11RouteActionENS2_19NonForwardingActionEEEbRKSt7variantIJDpT_EESB_.exit: ; preds = %bb.f
  %i.ao = tail call noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteActioneqERKS2_(ptr noundef nonnull align 8 dereferenceable(121) %i.ae, ptr noundef nonnull align 8 dereferenceable(121) %i.af)
  br i1 %i.ao, label %bb.h, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.h:                                             ; preds = %.split8, %.split7, %.split, %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route13UnknownActionENS2_11RouteActionENS2_19NonForwardingActionEEEbRKSt7variantIJDpT_EESB_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not6.i.i.i.i.i.i, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  br label %.lr.ph.i.i.i.i.i.i4

.lr.ph.i.i.i.i.i.i4:                              ; preds = %bb.j, %.lr.ph.i.i.i.i.preheader.i.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.ay, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.av, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 32
  %i.bb = tail call noundef zeroext i1 @_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideEEbRKSt4pairIT_T0_ESF_(ptr noundef nonnull align 8 dereferenceable(112) %i.az, ptr noundef nonnull align 8 dereferenceable(112) %i.ba) ; 3 uses
  br i1 %i.bb, label %bb.j, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i4
  %i.bc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i) #34 ; 2 uses
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i) #34
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i.i.i.i.i5, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit, label %.lr.ph.i.i.i.i.i.i4, !llvm.loop !14

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideESt4lessIS5_ESaISt4pairIKS5_S8_EEEbRKSt3mapIT_T0_T1_T2_ESM_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i.i.i.i4, %bb.f, %bb.b, %bb.a, %bb.i, %bb.h, %.split8, %.split7, %.split, %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route13UnknownActionENS2_11RouteActionENS2_19NonForwardingActionEEEbRKSt7variantIJDpT_EESB_.exit, %_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit
  %i.be = phi i1 [ false, %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route13UnknownActionENS2_11RouteActionENS2_19NonForwardingActionEEEbRKSt7variantIJDpT_EESB_.exit ], [ false, %_ZNK9grpc_core22XdsRouteConfigResource5Route8MatcherseqERKS2_.exit ], [ false, %.split8 ], [ false, %bb.b ], [ %i.bb, %bb.j ], [ false, %.split ], [ false, %.split7 ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.a ], [ %i.bb, %.lr.ph.i.i.i.i.i.i4 ], [ false, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %i.be
}

declare noundef zeroext i1 @_ZNK9grpc_core13StringMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK9grpc_core13HeaderMatchereqERKS0_(ptr noundef nonnull align 8 dereferenceable(114), ptr noundef nonnull align 8 dereferenceable(114)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteActioneqERKS2_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.642, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.j = load ptr, ptr %1, align 8, !tbaa !162    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %bb.b, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not10.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.e
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.j, %bb.b ] ; 4 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.d, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 72
  %i.p = load i8, ptr %i.o, align 8, !tbaa !165
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  %i.r = load i8, ptr %i.q, align 8, !tbaa !165   ; 3 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %bb.c
    i8 1, label %.split.i.i.i.i.i.i
    i8 -1, label %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEEbRKSt7variantIJDpT_EESC_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSB_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSB_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeadereqERKS4_(ptr noundef nonnull align 8 dereferenceable(81) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(81) %.012.i.i.i.i.i)
  br i1 %i.t, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.u = icmp eq i8 %i.r, 1
  br i1 %i.u, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  unreachable

_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEEbRKSt7variantIJDpT_EESC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = icmp eq i8 %i.r, -1
  br i1 %i.v, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i: ; preds = %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEEbRKSt7variantIJDpT_EESC_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSB_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80
  %i.x = load i8, ptr %i.w, align 8, !tbaa !250, !range !75, !noundef !76
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 80
  %i.z = load i8, ptr %i.y, align 8, !tbaa !250, !range !75, !noundef !76
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.e:                                             ; preds = %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 88
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !656

_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit: ; preds = %bb.e, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !136, !range !75, !noundef !76 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !136, !range !75, !noundef !76
  %3 = icmp ne i8 %i.ae, %i.ag                    ; 2 uses
  %i.ah = icmp eq i8 %i.ae, 0
  %brmerge.i = or i1 %i.ah, %3
  br i1 %brmerge.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource11RetryPolicyES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !173
  %i.al = load i32, ptr %i.ai, align 8, !tbaa !173
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !179
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !179
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %.split, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

.split:                                           ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  %i.au = load i64, ptr %i.as, align 8, !tbaa !657
  %i.av = icmp eq i64 %i.au, %.sroa.01.0.copyload.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = icmp eq i64 %i.ay, %.sroa.0.0.copyload.i.i.i
  %i.ba = select i1 %i.av, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.h, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

_ZSteqIN9grpc_core22XdsRouteConfigResource11RetryPolicyES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit
  br i1 %3, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.split, %_ZSteqIN9grpc_core22XdsRouteConfigResource11RetryPolicyES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.a, ptr %2, align 8, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !658
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS7_13ClusterWeightESaISA_EENS7_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESJ_EUlOT_T0_E_JRKSE_IJS8_SC_SD_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.be = load i8, ptr %i.a, align 1, !tbaa !83, !range !75, !noundef !76
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %i.bf, label %bb.i, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !225, !range !75, !noundef !76 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !225, !range !75, !noundef !76
  %4 = icmp ne i8 %i.bj, %i.bl                    ; 2 uses
  %i.bm = icmp eq i8 %i.bj, 0
  %brmerge.i7 = or i1 %i.bm, %4
  %not..i8 = xor i1 %4, true
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8
  %i.bn = load i64, ptr %i.bg, align 8
  %i.bo = icmp eq i64 %i.bn, %.sroa.0.0.copyload.i
  %i.bp = select i1 %brmerge.i7, i1 %not..i8, i1 %i.bo
  br i1 %i.bp, label %bb.j, label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !242, !range !75, !noundef !76
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !242, !range !75, !noundef !76
  %i.bu = icmp eq i8 %i.br, %i.bt
  br label %_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread

_ZSteqIN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.thread: ; preds = %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i, %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEEbRKSt7variantIJDpT_EESC_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSB_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.f, %bb.g, %bb.a, %.split, %bb.j, %bb.i, %bb.h, %_ZSteqIN9grpc_core22XdsRouteConfigResource11RetryPolicyES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit
  %i.bv = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZSteqIN9grpc_core22XdsRouteConfigResource11RetryPolicyES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit ], [ false, %.split ], [ %i.bu, %bb.j ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.c ], [ false, %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSB_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i ], [ false, %_ZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeaderENS4_9ChannelIdEEEbRKSt7variantIJDpT_EESC_.exit.i.i.i.i.i.i ], [ false, %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicyeqERKS3_.exit.i.i.i.i.i ]
  ret i1 %i.bv
}

declare noundef zeroext i1 @_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction10HashPolicy6HeadereqERKS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS7_13ClusterWeightESaISA_EENS7_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESJ_EUlOT_T0_E_JRKSE_IJS8_SC_SD_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !660, !nonnull !76, !align !251 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !154   ; 4 uses
  switch i8 %i.b, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 -1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !63
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.c:                                             ; preds = %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !62
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  %i.q = zext i1 %i.p to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.b, %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, %bb.c, %bb.d
  %.sink.i.i.i.i = phi i8 [ 1, %bb.c ], [ 0, %_ZSt3getILm0EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !661, !nonnull !76
  store i8 %.sink.i.i.i.i, ptr %i.r, align 1, !tbaa !83
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.f, 1
  br i1 %i.s, label %_ZSt3getILm1EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_.exit

_ZSt3getILm1EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160  ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !161  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !160
  %i.ab = load ptr, ptr %1, align 8, !tbaa !161   ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_.exit

bb.f:                                             ; preds = %_ZSt3getILm1EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i
  %i.ag = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalIPKN9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeightES8_EEbT_S9_T0_(ptr noundef %i.v, ptr noundef %i.u, ptr noundef %i.ab)
  %i.ah = zext i1 %i.ag to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.e, %_ZSt3getILm1EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, %bb.f
  %.sink.i.i.i.i10 = phi i8 [ %i.ah, %bb.f ], [ 0, %_ZSt3getILm1EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i ], [ 0, %bb.e ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !661, !nonnull !76
  store i8 %.sink.i.i.i.i10, ptr %i.ai, align 1, !tbaa !83
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.aj = icmp eq i8 %i.f, 2
  br i1 %i.aj, label %_ZSt3getILm2EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit

_ZSt3getILm2EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !63 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !63
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit

bb.h:                                             ; preds = %_ZSt3getILm2EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %1, align 8, !tbaa !62
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !62
  %bcmp.i.i.i.i.i.i12 = tail call i32 @bcmp(ptr %i.ar, ptr %i.aq, i64 %i.al)
  %i.as = icmp eq i32 %bcmp.i.i.i.i.i.i12, 0
  %i.at = zext i1 %i.as to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.g, %_ZSt3getILm2EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i, %bb.h, %bb.i
  %.sink.i.i.i.i11 = phi i8 [ 1, %bb.h ], [ 0, %_ZSt3getILm2EJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS3_13ClusterWeightESaIS6_EENS3_26ClusterSpecifierPluginNameEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSE_.exit.i.i.i.i ], [ %i.at, %bb.i ], [ 0, %bb.g ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !661, !nonnull !76
  store i8 %.sink.i.i.i.i11, ptr %i.au, align 1, !tbaa !83
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.av = icmp eq i8 %i.f, -1
  %i.aw = load ptr, ptr %0, align 8, !tbaa !661, !nonnull !76
  %i.ax = zext i1 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !83
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESP_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJN9grpc_core22XdsRouteConfigResource5Route11RouteAction11ClusterNameESt6vectorINS8_13ClusterWeightESaISB_EENS8_26ClusterSpecifierPluginNameEEEbRKSt7variantIJDpT_EESK_EUlOT_T0_E_RKSF_IJS9_SD_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt7__equalILb0EE5equalIPKN9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeightES8_EEbT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit
  %.014 = phi ptr [ %i.ae, %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit ], [ %2, %bb.a ] ; 6 uses
  %.0813 = phi ptr [ %i.ad, %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0813, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.b
  %i.g = load ptr, ptr %.014, align 8, !tbaa !62
  %i.h = load ptr, ptr %.0813, align 8, !tbaa !62
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0813, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !256
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !256
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0813, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.014, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.0813, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0813, i64 48 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.x, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.u, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 32
  %i.aa = tail call noundef zeroext i1 @_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideEEbRKSt4pairIT_T0_ESF_(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(112) %i.z)
  br i1 %i.aa, label %bb.e, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i) #34 ; 2 uses
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i) #34
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit: ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.0813, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 88
  %.not = icmp eq ptr %i.ad, %1
  br i1 %.not, label %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread, label %.lr.ph, !llvm.loop !662

_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit.thread: ; preds = %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph, %bb.c, %.lr.ph.i.i.i.i.i.i.i, %bb.a
  %.not11 = phi i1 [ false, %.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.a ], [ true, %_ZNK9grpc_core22XdsRouteConfigResource5Route11RouteAction13ClusterWeighteqERKS3_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %.lr.ph ], [ false, %bb.c ]
  ret i1 %.not11
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core22XdsRouteConfigResource20FilterConfigOverrideEEbRKSt4pairIT_T0_ESF_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.645, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !63
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !62
  %i.i = load ptr, ptr %0, align 8, !tbaa !62
  %bcmp.i = tail call i32 @bcmp(ptr %i.i, ptr %i.h, i64 %i.c)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !69 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !77
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !77
  %i.m = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.m, label %bb.c, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.n = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.n, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 %.sroa.01.0.copyload.i)
  %i.o = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.o, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.a, ptr %2, align 8, !tbaa !273
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !276
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEbRKSt7variantIJDpT_EESV_EUlOT_T0_E_JRKSQ_IJS4_bS8_SE_SM_SP_EEEEDcOSY_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.q), !inline_history !663
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.s = load i8, ptr %i.a, align 1, !tbaa !83, !range !75, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %3 = icmp eq i8 %i.s, 0
  br i1 %3, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !134  ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !134  ; 5 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne ptr %i.x, null
  br label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call { i64, ptr } %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u), !inline_history !664
  %i.ae = extractvalue { i64, ptr } %i.ad, 1
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call { i64, ptr } %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !664
  %i.aj = extractvalue { i64, ptr } %i.ai, 1
  %.not.i.i = icmp eq ptr %i.ae, %i.aj
  br i1 %.not.i.i, label %bb.h, label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !664
  br label %_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit

_ZNK9grpc_core22XdsRouteConfigResource20FilterConfigOverrideeqERKS1_.exit: ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ao = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ false, %bb.f ], [ false, %bb.g ], [ %i.y, %bb.e ], [ false, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ], [ %i.an, %bb.h ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEbRKSt7variantIJDpT_EESV_EUlOT_T0_E_JRKSQ_IJS4_bS8_SE_SM_SP_EEEEDcOSY_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.645, align 8            ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.645, align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !672, !nonnull !76, !align !251 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !82    ; 7 uses
  switch i8 %i.d, label %bb.u [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.k
    i8 5, label %bb.q
    i8 -1, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.h, 0
  %i.j = load ptr, ptr %0, align 8, !tbaa !673, !nonnull !76
  %..i.i.i.i = zext i1 %i.i to i8
  store i8 %..i.i.i.i, ptr %i.j, align 1, !tbaa !83
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %i.h, 1
  br i1 %i.k, label %_ZSt3getILm1EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i, label %bb.d

_ZSt3getILm1EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i: ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 8, !tbaa !83, !range !75, !noundef !76
  %i.m = load i8, ptr %1, align 8, !tbaa !83, !range !75, !noundef !76
  %i.n = icmp eq i8 %i.l, %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !673, !nonnull !76
  %i.p = zext i1 %i.n to i8
  store i8 %i.p, ptr %i.o, align 1, !tbaa !83
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !673, !nonnull !76
  store i8 0, ptr %i.q, align 1, !tbaa !83
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %i.h, 2
  br i1 %i.r, label %_ZSt3getILm2EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES11_S14_.exit

_ZSt3getILm2EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES11_S14_.exit

bb.f:                                             ; preds = %_ZSt3getILm2EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES11_S14_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %1, align 8, !tbaa !62
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !62
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.t)
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  %i.ab = zext i1 %i.aa to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES11_S14_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES11_S14_.exit: ; preds = %bb.e, %_ZSt3getILm2EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i, %bb.f, %bb.g
  %.sink.i.i.i.i = phi i8 [ 1, %bb.f ], [ 0, %_ZSt3getILm2EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i ], [ %i.ab, %bb.g ], [ 0, %bb.e ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !673, !nonnull !76
  store i8 %.sink.i.i.i.i, ptr %i.ac, align 1, !tbaa !83
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = icmp eq i8 %i.h, 3
  br i1 %i.ad, label %_ZSt3getILm3EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES11_S14_.exit

_ZSt3getILm3EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !63
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES11_S14_.exit

bb.i:                                             ; preds = %_ZSt3getILm3EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES11_S14_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %1, align 8, !tbaa !62
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !62
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.an = zext i1 %i.am to i8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES11_S14_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES11_S14_.exit: ; preds = %bb.h, %_ZSt3getILm3EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i, %bb.i, %bb.j
  %.sink.i.i.i.i16 = phi i8 [ 1, %bb.i ], [ 0, %_ZSt3getILm3EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i.i.i.i ], [ %i.an, %bb.j ], [ 0, %bb.h ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !673, !nonnull !76
  store i8 %.sink.i.i.i.i16, ptr %i.ao, align 1, !tbaa !83
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZSteqIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEbRKSt7variantIJDpT_EESW_EUlOT_T0_E_RKSR_IJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES11_S14_.exit

bb.k:                                             ; preds = %bb.a
  %i.ap = icmp eq i8 %i.h, 4
  br i1 %i.ap, label %_ZSt3getILm4EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i, label %bb.p

_ZSt3getILm4EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i: ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !37
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.l, label %_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EESJ_.exit.i

bb.l:                                             ; preds = %_ZSt3getILm4EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSQ_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not15.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not15.i, label %_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EESJ_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.017.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.br, %bb.o ] ; 4 uses
  %.sroa.011.016.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.bq, %bb.o ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !63 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.n, label %_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EESJ_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp eq i64 %i.be, 0
  br i1 %i.bi, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEbRKSt4pairIT_T0_ESF_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.n
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !62
  %bcmp.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %i.be), !inline_history !665
  %i.bl = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bl, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEbRKSt4pairIT_T0_ESF_.exit.i.i, label %_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EESJ_.exit.i

_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEbRKSt4pairIT_T0_ESF_.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.n
end_hunk_0
