Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/tracker?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1247
begin_hunk_0_@_ZNK7xgboost10collective12RabitTracker10WorkerArgsEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.df = load i64, ptr %i.v, align 8, !tbaa !52
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit33

_ZN7xgboost10JsonStringD2Ev.exit33:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.s

bb.p:                                             ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %.noexc.i18
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.r:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit22, %.noexc19
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bt
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.dm = load i64, ptr %i.bt, align 8, !tbaa !52
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.q
  %.pn10 = phi { ptr, i32 } [ %i.di, %bb.q ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.dj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.s

bb.s:                                             ; preds = %_ZN7xgboost10JsonStringD2Ev.exit33, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.dh, %bb.p ], [ %.pn.pn, %_ZN7xgboost10JsonStringD2Ev.exit33 ] ; 2 uses
  %i.do = atomicrmw add ptr %i.l, i32 -1 release, align 4
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.t, label %_ZN7xgboost4JsonD2Ev.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #12, !inline_history !5
  br label %_ZN7xgboost4JsonD2Ev.exit

_ZN7xgboost4JsonD2Ev.exit:                        ; preds = %bb.t, %bb.s, %bb.l, %bb.k
  %.pn10.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.k ], [ %i.cv, %bb.l ], [ %.pn10.pn, %bb.t ], [ %.pn10.pn, %bb.s ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective12RabitTracker4StopEv(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %3 = alloca %"struct.xgboost::collective::Result", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !386
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  store atomic i8 0, ptr %i.a seq_cst, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #12 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !387
  br label %bb.k

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !67, !alias.scope !388
  invoke void @_ZN7xgboost10collective9TCPSocket8ShutdownEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %2, ptr noundef nonnull align 4 dereferenceable(5) %i.f)
          to label %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" unwind label %bb.h

"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit": ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.i = load ptr, ptr %2, align 8, !noalias !389 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.i, null
  br i1 %.not.i.i6, label %bb.g, label %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %0, align 8, !tbaa !68, !alias.scope !389
  br label %_ZN7xgboost10collective6ResultD2Ev.exit11

bb.g:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  invoke void @_ZN7xgboost10collective9TCPSocket5CloseEv(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 4 dereferenceable(5) %i.f)
          to label %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" unwind label %bb.i

"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit": ; preds = %bb.g
  %.pr = load ptr, ptr %2, align 8, !tbaa !68     ; 3 uses
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZN7xgboost10collective6ResultD2Ev.exit11, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr) #12, !inline_history !4
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 56) #36, !inline_history !4
  br label %_ZN7xgboost10collective6ResultD2Ev.exit11

_ZN7xgboost10collective6ResultD2Ev.exit11:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i, %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit", %"_ZN7xgboost10collectivelsIZNS0_12RabitTracker4StopEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.k, %bb.h ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #12 ; 0 uses
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit11, %bb.e
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective14GetHostAddressEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %5 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.std::unique_ptr.37", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.xgboost::collective::SockAddrV4", align 8 ; 8 uses
  %.sroa.0291 = alloca %struct.sockaddr_in6, align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.xgboost::collective::SockAddrV6", align 4 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.xgboost::collective::SockAddrV6", align 4 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.xgboost::collective::SockAddress", align 4 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %struct.sockaddr_in, align 4       ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN7xgboost10collective11GetHostNameEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %4, ptr noundef %1)
  %i.h = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIP8addrinfoSt8functionIFvPS1_EEEC2IS5_vEES3_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS9_E4typeE.exit, label %.thread306

.thread306:                                       ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  store i64 %i.i, ptr %0, align 8, !tbaa !68
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZNSt10unique_ptrIP8addrinfoSt8functionIFvPS1_EEEC2IS5_vEES3_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS9_E4typeE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !418
  store i32 1, ptr %5, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvPP8addrinfoEZN7xgboost10collective14GetHostAddressEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.k, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr @"_ZNSt17_Function_handlerIFvPP8addrinfoEZN7xgboost10collective14GetHostAddressEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.l, align 8, !tbaa !156
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.m, align 8, !tbaa !421
  %i.n = invoke i32 @getaddrinfo(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %5, ptr noundef nonnull %i.f)
          to label %bb.b unwind label %bb.m       ; 2 uses

bb.b:                                             ; preds = %_ZNSt10unique_ptrIP8addrinfoSt8functionIFvPS1_EEEC2IS5_vEES3_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS9_E4typeE.exit
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.056377 = load ptr, ptr %i.f, align 8, !tbaa !159 ; 2 uses
  %.not83378 = icmp eq ptr %.056377, null
  br i1 %.not83378, label %.critedge131, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.w = call ptr @gai_strerror(i32 noundef %i.n) #12 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !57
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 %i.z, ptr %i.e, align 8, !tbaa !42
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc133 unwind label %bb.n  ; 2 uses

.noexc133:                                        ; preds = %.noexc.i
  store ptr %i.ab, ptr %8, align 8, !tbaa !59
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !42
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc133, %bb.e
  %i.ad = phi ptr [ %i.ab, %.noexc133 ], [ %i.x, %bb.e ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !52
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.w, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.af = load i64, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !60
  %i.ah = load ptr, ptr %8, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 27)
          to label %.noexc134 unwind label %bb.o  ; 6 uses

.noexc134:                                        ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !57, !alias.scope !422
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc134
  store ptr %i.al, ptr %7, align 8, !tbaa !59, !alias.scope !422
  %i.as = load i64, ptr %i.am, align 8, !tbaa !52
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !52, !alias.scope !422
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.at = phi i64 [ %i.ap, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !60, !alias.scope !422
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !59
  store i64 0, ptr %i.au, align 8, !tbaa !60
  store i8 0, ptr %i.am, align 8, !tbaa !52
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, i32 noundef 415)
          to label %.noexc136 unwind label %bb.p

.noexc136:                                        ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %.noexc.i135 unwind label %bb.k, !noalias !423 ; 7 uses

.noexc.i135:                                      ; preds = %.noexc136
  %i.ax = load ptr, ptr %3, align 8, !tbaa !59, !noalias !425 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %.noexc.i135
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !60, !noalias !425 ; 3 uses
  %i.bd = add nuw nsw i64 %i.bc, 1
  %i.be = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !noalias !423
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %.noexc.i135
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !52, !noalias !425
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !60, !noalias !425
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !52, !noalias !425
  br label %bb.l

bb.k:                                             ; preds = %.noexc136
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !59, !noalias !423 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.k
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !52, !noalias !423
  %i.bl = add i64 %i.bk, 1
end_hunk_0
begin_hunk_1_@_ZN7xgboost10collective14GetHostAddressEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.dk, i8 0, i64 28, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  store i64 %.sroa.026.0.copyload, ptr %i.dl, align 4
  %.sroa.6.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  store i64 %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx283, align 4, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  store i32 2, ptr %i.dm, align 4, !tbaa !93
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0285.0381, %.sroa.11.0380
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc149.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i ], [ %i.dj, %.noexc149.a ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.sroa.0285.0381, %.noexc149.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !162, !alias.scope !428
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, %.sroa.11.0380
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !399

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc149.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dj, %.noexc149.a ], [ %i.do, %.lr.ph.i.i.i.i.i ]
  %.not.i33.i.i = icmp eq ptr %.sroa.0285.0381, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0285.0381, i64 noundef %i.db) #36
  br label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %i.dh
  br label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV4EEEERS2_DpOT_.exit

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV4EEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.s
  %.sroa.21.5 = phi ptr [ %i.dp, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0379, %bb.s ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0380, %bb.s ] ; 2 uses
  %.sroa.0285.5 = phi ptr [ %i.dj, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV4EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0285.0381, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 28
  invoke void @_ZNK7xgboost10collective10SockAddrV44AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(16) %i.dq)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV4EEEERS2_DpOT_.exit
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !60
  %i.ds = icmp ugt i64 %i.dr, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  br i1 %i.ds, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge119.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  store ptr %i.p, ptr %10, align 8, !tbaa !57, !alias.scope !429
  %i.dt = load ptr, ptr %9, align 8, !tbaa !59, !noalias !429
  %i.du = load i32, ptr %i.dt, align 1            ; 2 uses
  store i32 %i.du, ptr %i.p, align 8
  store i64 4, ptr %i.q, align 8, !tbaa !60, !alias.scope !429
  store i8 0, ptr %i.r, align 4, !tbaa !52
  %.not308 = icmp eq i32 %i.du, 775369265
  br i1 %.not308, label %.critedge119.thread513, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.critedge119.thread513:                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %.critedge121

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.dv = invoke { i64, i64 } @_ZN7xgboost10collective10SockAddrV49InaddrAnyEv()
          to label %bb.x unwind label %bb.af      ; 2 uses

bb.x:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dw = extractvalue { i64, i64 } %i.dv, 0
  store i64 %i.dw, ptr %12, align 8
  %i.dx = extractvalue { i64, i64 } %i.dv, 1
  store i64 %i.dx, ptr %i.s, align 8
  invoke void @_ZNK7xgboost10collective10SockAddrV44AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.dy = load i64, ptr %i.o, align 8, !tbaa !60  ; 3 uses
  %i.dz = load i64, ptr %i.t, align 8, !tbaa !60  ; 2 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %11, align 8, !tbaa !59
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eb = icmp eq i64 %i.dy, 0
  %.pre413 = load ptr, ptr %11, align 8, !tbaa !59 ; 3 uses
  br i1 %i.eb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %9, align 8, !tbaa !59
  %bcmp.i.i150 = call i32 @bcmp(ptr %i.ec, ptr %.pre413, i64 %i.dy)
  %i.ed = icmp ne i32 %bcmp.i.i150, 0
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.z, %bb.aa
  %i.ee = phi ptr [ %.pre413, %bb.z ], [ %.pre413, %bb.aa ], [ %.pre, %._crit_edge ] ; 2 uses
  %.ph = phi i1 [ false, %bb.z ], [ %i.ed, %bb.aa ], [ true, %._crit_edge ] ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.u
  br i1 %i.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152: ; preds = %bb.ab
  %i.eg = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.eg)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ab
  %i.eh = load i64, ptr %i.u, align 8, !tbaa !52
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #36
  br label %bb.ac

.critedge119.thread:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %.critedge121

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %.pre414 = load ptr, ptr %10, align 8, !tbaa !59 ; 2 uses
  %i.ej = icmp eq ptr %.pre414, %i.p
  br i1 %i.ej, label %.critedge119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.ac
  %i.ek = load i64, ptr %i.p, align 8, !tbaa !52
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %.pre414, i64 noundef %i.el) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br i1 %.ph, label %bb.ad, label %.critedge121

.critedge119:                                     ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br i1 %.ph, label %bb.ad, label %.critedge121

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %.critedge119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ad
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !430
  %i.em = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.v
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.eo = load i64, ptr %i.v, align 8, !tbaa !52
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159

bb.ae:                                            ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV4EEEERS2_DpOT_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.af:                                            ; preds = %bb.x, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.es = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.p
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.af
  %i.eu = load i64, ptr %i.p, align 8, !tbaa !52
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.ag
  %.pn86 = phi { ptr, i32 } [ %i.ew, %bb.ag ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 2 uses
  %i.ex = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.v
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ah
  %i.ez = load i64, ptr %i.v, align 8, !tbaa !52
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.ae
  %.pn86.pn = phi { ptr, i32 } [ %i.eq, %bb.ae ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.pn86, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.ai:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0291)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0291, ptr noundef nonnull align 4 dereferenceable(28) %i.cw, i64 28, i1 false)
  %.not.i167 = icmp eq ptr %.sroa.11.0380, %.sroa.21.0379
  br i1 %.not.i167, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.0380, ptr noundef nonnull align 4 dereferenceable(28) %i.cw, i64 28, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.11.0380, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.11.0380, i64 44
  store i32 10, ptr %i.fc, align 4, !tbaa !93
  br label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fd = ptrtoint ptr %.sroa.11.0380 to i64
  %i.fe = ptrtoint ptr %.sroa.0285.0381 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775776
  br i1 %i.fg, label %bb.al, label %_ZNKSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12_M_check_lenEmPKc.exit.i.i168

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #34
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.ak
  %i.fh = sdiv exact i64 %i.ff, 48                ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i169, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 192153584101141162)
  %i.fl = select i1 %i.fj, i64 192153584101141162, i64 %i.fk ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i170)
  %i.fm = mul nuw nsw i64 %i.fl, 48
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #35
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12_M_check_lenEmPKc.exit.i.i168
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fo, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0291, i64 28, i1 false), !tbaa.struct !431
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 44
  store i32 10, ptr %i.fq, align 4, !tbaa !93
  %.not10.i.i.i.i.i171 = icmp eq ptr %.sroa.0285.0381, %.sroa.11.0380
  br i1 %.not10.i.i.i.i.i171, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i176, label %.lr.ph.i.i.i.i.i172

.lr.ph.i.i.i.i.i172:                              ; preds = %.noexc180, %.lr.ph.i.i.i.i.i172
  %.012.i.i.i.i.i173 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i172 ], [ %i.fn, %.noexc180 ] ; 2 uses
  %.0911.i.i.i.i.i174 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i172 ], [ %.sroa.0285.0381, %.noexc180 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.012.i.i.i.i.i173, ptr noundef nonnull align 4 dereferenceable(48) %.0911.i.i.i.i.i174, i64 48, i1 false), !tbaa.struct !162, !alias.scope !432
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i174, i64 48 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i173, i64 48 ; 2 uses
  %.not.i.i.i.i.i175 = icmp eq ptr %i.fr, %.sroa.11.0380
  br i1 %.not.i.i.i.i.i175, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i176, label %.lr.ph.i.i.i.i.i172, !llvm.loop !399

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i176: ; preds = %.lr.ph.i.i.i.i.i172, %.noexc180
  %.0.lcssa.i.i.i.i.i177 = phi ptr [ %i.fn, %.noexc180 ], [ %i.fs, %.lr.ph.i.i.i.i.i172 ]
  %.not.i33.i.i178 = icmp eq ptr %.sroa.0285.0381, null
  br i1 %.not.i33.i.i178, label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i176
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0285.0381, i64 noundef %i.ff) #36
  br label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i176
  %i.ft = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fl
  br label %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit

_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.aj
  %.sroa.21.6 = phi ptr [ %i.ft, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0379, %bb.aj ]
  %.0.lcssa.i.i.i.i.i177.pn = phi ptr [ %.0.lcssa.i.i.i.i.i177, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0380, %bb.aj ]
  %.sroa.0285.6 = phi ptr [ %i.fn, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE17_M_realloc_insertIJNS1_10SockAddrV6EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0285.0381, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0291)
  br label %bb.an

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12_M_check_lenEmPKc.exit.i.i168, %bb.al
  %lpad.loopexit.split-lp564 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0291)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

.critedge121:                                     ; preds = %.critedge119.thread513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %.critedge119.thread, %.critedge119
  %i.fu = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.v
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %.critedge121
  %i.fw = load i64, ptr %i.v, align 8, !tbaa !52
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %.critedge121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit
  %.sroa.21.1 = phi ptr [ %.sroa.21.6, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit ], [ %.sroa.21.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 5 uses
  %.0.lcssa.i.i.i.i.i177.pn.pn = phi ptr [ %.0.lcssa.i.i.i.i.i177.pn, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit ], [ %.0.lcssa.i.i.i.i.i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 2 uses
  %.sroa.0285.1 = phi ptr [ %.sroa.0285.6, %_ZNSt6vectorIN7xgboost10collective11SockAddressESaIS2_EE12emplace_backIJNS1_10SockAddrV6EEEERS2_DpOT_.exit ], [ %.sroa.0285.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 7 uses
  %.sroa.11.1 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i177.pn.pn, i64 48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.056382, i64 40
  %.056 = load ptr, ptr %i.fy, align 8, !tbaa !159 ; 2 uses
  %.not83 = icmp eq ptr %.056, null
  br i1 %.not83, label %.critedge123.preheader, label %bb.q, !llvm.loop !407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.ao:                                            ; preds = %.lr.ph387, %.critedge129
  %.sroa.0277.0386 = phi ptr [ %.sroa.0285.1, %.lr.ph387 ], [ %i.hr, %.critedge129 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0277.0386, i64 44
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !93
  %.not310 = icmp eq i32 %i.ga, 2
  br i1 %.not310, label %.critedge129, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  invoke void @_ZNK7xgboost10collective10SockAddrV64AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0277.0386)
          to label %bb.aq unwind label %bb.bb

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  invoke void @_ZN7xgboost10collective10SockAddrV69InaddrAnyEv(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::collective::SockAddrV6") align 4 %15)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK7xgboost10collective10SockAddrV64AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(28) %15)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.gb = load i64, ptr %i.cm, align 8, !tbaa !60 ; 3 uses
  %i.gc = load i64, ptr %i.cn, align 8, !tbaa !60
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.at, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185.thread

bb.at:                                            ; preds = %bb.as
  %i.ge = icmp eq i64 %i.gb, 0
  br i1 %i.ge, label %.critedge125, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185: ; preds = %bb.at
  %i.gf = load ptr, ptr %14, align 8, !tbaa !59
  %i.gg = load ptr, ptr %13, align 8, !tbaa !59
  %bcmp.i.i184 = call i32 @bcmp(ptr %i.gg, ptr %i.gf, i64 %i.gb)
  %.not311 = icmp eq i32 %bcmp.i.i184, 0
  br i1 %.not311, label %.critedge125, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185.thread: ; preds = %bb.as, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  invoke void @_ZN7xgboost10collective10SockAddrV68LoopbackEv(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::collective::SockAddrV6") align 4 %17)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185.thread
  invoke void @_ZNK7xgboost10collective10SockAddrV64AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(28) %17)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.gh = load i64, ptr %i.cm, align 8, !tbaa !60 ; 3 uses
  %i.gi = load i64, ptr %i.co, align 8, !tbaa !60 ; 2 uses
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.aw, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.av
  %.pre416 = load ptr, ptr %16, align 8, !tbaa !59
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gk = icmp eq i64 %i.gh, 0
  %.pre417 = load ptr, ptr %16, align 8, !tbaa !59 ; 3 uses
  br i1 %i.gk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = load ptr, ptr %13, align 8, !tbaa !59
  %bcmp.i.i186 = call i32 @bcmp(ptr %i.gl, ptr %.pre417, i64 %i.gh)
  %i.gm = icmp ne i32 %bcmp.i.i186, 0
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge415, %bb.aw, %bb.ax
  %i.gn = phi ptr [ %.pre417, %bb.aw ], [ %.pre417, %bb.ax ], [ %.pre416, %._crit_edge415 ] ; 2 uses
  %.ph305 = phi i1 [ false, %bb.aw ], [ %i.gm, %bb.ax ], [ true, %._crit_edge415 ]
  %i.go = icmp eq ptr %i.gn, %i.cp
  br i1 %i.go, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189: ; preds = %bb.ay
  %i.gp = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.a: ; preds = %bb.ay
  %i.gq = load i64, ptr %i.cp, align 8, !tbaa !52
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  br label %bb.az

.critedge125:                                     ; preds = %bb.at, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  br label %bb.az

bb.az:                                            ; preds = %.critedge125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.a
  %i.gs = phi i1 [ false, %.critedge125 ], [ %.ph305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.a ]
  %i.gt = load ptr, ptr %14, align 8, !tbaa !59   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.cq
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.a: ; preds = %bb.az
  %i.gv = load i64, ptr %i.cq, align 8, !tbaa !52
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.a: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br i1 %i.gs, label %bb.ba, label %.critedge127

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit195 unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit195: ; preds = %bb.ba
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !433
  %i.gx = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.cr
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit195
  %i.gz = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197

bb.bb:                                            ; preds = %bb.ap
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.bc:                                            ; preds = %bb.ar, %bb.aq
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.bd:                                            ; preds = %bb.au, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit185.thread
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.he = load ptr, ptr %14, align 8, !tbaa !59   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.cq
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.bd
  %i.hg = load i64, ptr %i.cq, align 8, !tbaa !52
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.bc
  %.pn91 = phi { ptr, i32 } [ %i.hc, %bb.bc ], [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.hd, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.pn93 = phi { ptr, i32 } [ %i.hi, %bb.be ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ] ; 2 uses
  %i.hj = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.cr
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.bf
  %i.hl = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bb
  %.pn93.pn = phi { ptr, i32 } [ %i.hb, %bb.bb ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %.pn93, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

.critedge127:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.a
  %i.hn = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.cr
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %.critedge127
  %i.hp = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #36
end_hunk_1
begin_hunk_2_@_ZSt4swapIN7xgboost10collective12RabitTracker11WorkerProxyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_:bb.a
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.m = load i64, ptr %i.g, align 8, !tbaa !52
  store i64 %i.m, ptr %i.e, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !60
  store ptr %i.g, ptr %i.d, align 8, !tbaa !59
  store i64 0, ptr %i.o, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !59
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !52
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !52
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre6 = load i64, ptr %.phi.trans.insert5, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ae = phi i64 [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !60
  store ptr %i.x, ptr %i.u, align 8, !tbaa !59
  store i64 0, ptr %i.af, align 8, !tbaa !60
  store i8 0, ptr %i.x, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !82
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !57
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !59
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !52
  store i64 %i.au, ptr %i.am, align 8, !tbaa !52
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !60
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !60
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !59
  store i64 0, ptr %i.aw, align 8, !tbaa !60
  store i8 0, ptr %i.ao, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !83
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !68
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !68
  store ptr null, ptr %i.bc, align 8, !tbaa !68
  %i.be = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #12 ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #12 ; 0 uses
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit.i, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i: ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bg) #12, !inline_history !4
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 56) #36, !inline_history !4
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.i

_ZN7xgboost10collective6ResultD2Ev.exit.i:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i, %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !52
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !59  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.v
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !52
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.e
  br i1 %i.bq, label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.br = load i64, ptr %i.e, align 8, !tbaa !52
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #36
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZN7xgboost10collective9TCPSocketD2Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(144) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS4_9WorkerCmpEEEEvT_SF_T0_(ptr %0, ptr %1, i8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"class.xgboost::collective::RabitTracker::WorkerProxy", align 8 ; 19 uses
  store i8 %2, ptr %3, align 1
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.h ] ; 20 uses
  %i.q = call noundef zeroext i1 @_ZN7xgboost10collective12RabitTracker9WorkerCmpclERKNS1_11WorkerProxyES5_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.022, ptr noundef nonnull align 8 dereferenceable(144) %0)
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i8 0, ptr %i.b, align 4, !tbaa !72
  %i.r = load i32, ptr %.sroa.0.022, align 4, !tbaa !69
  store i32 %i.r, ptr %4, align 8, !tbaa !69
  store i32 -1, ptr %.sroa.0.022, align 4, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 152 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !57
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 168 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 160
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.c, align 8, !tbaa !59
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !52
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn21, i64 160
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %5 = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %bb.d ]
  %6 = getelementptr inbounds nuw i8, ptr %.pn21, i64 160
  store i64 %5, ptr %i.e, align 8, !tbaa !60
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59
  store i64 0, ptr %6, align 8, !tbaa !60
  store i8 0, ptr %i.u, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn21, i64 184
  %i.ac = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ac, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn21, i64 200 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !57
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pn21, i64 216 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn21, i64 208
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !60 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !59
  %i.al = load i64, ptr %i.af, align 8, !tbaa !52
  store i64 %i.al, ptr %i.h, align 8, !tbaa !52
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pn21, i64 208
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %7 = phi i64 [ %.pre24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.e ]
  %8 = getelementptr inbounds nuw i8, ptr %.pn21, i64 208
  store i64 %7, ptr %i.i, align 8, !tbaa !60
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !59
  store i64 0, ptr %8, align 8, !tbaa !60
  store i8 0, ptr %i.af, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %.pn21, i64 232
  %i.an = load i32, ptr %i.am, align 8, !tbaa !82
  store i32 %i.an, ptr %i.j, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn21, i64 240 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !57
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn21, i64 256 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.pn21, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !60 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !59
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !52
  store i64 %i.aw, ptr %i.l, align 8, !tbaa !52
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %.pn21, i64 248
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8, !tbaa !60
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %9 = phi i64 [ %i.at, %bb.f ], [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i ]
  %10 = getelementptr inbounds nuw i8, ptr %.pn21, i64 248
  store i64 %9, ptr %i.m, align 8, !tbaa !60
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !59
  store i64 0, ptr %10, align 8, !tbaa !60
  store i8 0, ptr %i.aq, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn21, i64 272
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !83
  store i32 %i.ay, ptr %i.n, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %.pn21, i64 280 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !68
  store i64 %i.ba, ptr %i.o, align 8, !tbaa !68
  store ptr null, ptr %i.az, align 8, !tbaa !68
  %i.bb = ptrtoint ptr %.sroa.0.022 to i64
  %i.bc = sub i64 %i.bb, %i.p                     ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.pn21, i64 288
  %i.bf = udiv exact i64 %i.bc, 144
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.be, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -144 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -144 ; 2 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, ptr noundef nonnull align 8 dereferenceable(144) %i.bg) #12 ; 0 uses
  %i.bj = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bk = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !712

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %4) #12 ; 0 uses
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit.i, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i: ; preds = %.loopexit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bm) #12, !inline_history !4
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 56) #36, !inline_history !4
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.i

_ZN7xgboost10collective6ResultD2Ev.exit.i:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i, %.loopexit
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !59  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.l
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !52
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.h
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !52
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.d
  br i1 %i.bw, label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !52
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #36
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZN7xgboost10collective9TCPSocketD2Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(144) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i8, ptr %3, align 1, !tbaa !182
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS4_9WorkerCmpEEEEvT_T0_(ptr nonnull %.sroa.0.022, i8 %.sroa.0.0.copyload)
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, %bb.g
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 144 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit18, label %bb.b, !llvm.loop !713

.loopexit18:                                      ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS4_9WorkerCmpEEEEvT_T0_(ptr %0, i8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1 ; 2 uses
  %3 = alloca %"class.xgboost::collective::RabitTracker::WorkerProxy", align 8 ; 22 uses
  store i8 %1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !72
  %i.b = load i32, ptr %0, align 4, !tbaa !69
  store i32 %i.b, ptr %3, align 8, !tbaa !69
  store i32 -1, ptr %0, align 4, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.m = load i64, ptr %i.g, align 8, !tbaa !52
  store i64 %i.m, ptr %i.e, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !60
  store ptr %i.g, ptr %i.d, align 8, !tbaa !59
  store i64 0, ptr %i.o, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !59
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !52
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !52
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ae = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !60
  store ptr %i.x, ptr %i.u, align 8, !tbaa !59
  store i64 0, ptr %i.af, align 8, !tbaa !60
  store i8 0, ptr %i.x, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !82
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !57
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !59
end_hunk_2
