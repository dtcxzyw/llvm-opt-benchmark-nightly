Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/wsload?download=true
inline.NumInlined: 12105
inline.NumDeleted: 5157
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN10connection10on_connectEN5boost6system10error_codeE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.fn = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !19
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNK5boost6system10error_codecvbEv.exit.thread
  ret void

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.n, %.critedge.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.s
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #35
  call void @_ZNSt12__shared_ptrI10connectionLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.ak ], [ %i.fu, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.fw = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.al
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !19
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn.pn, %bb.al ] ; 2 uses
  %i.gb = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.af
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.gd = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.gf = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.m
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.gh = load i64, ptr %i.m, align 8, !tbaa !19
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  %i.gj = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !19
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5boost5beast6detail18tuple_element_implILm0ESt10shared_ptrI10connectionEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !58
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !189
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !189
  br label %_ZN5boost5beast6detail18tuple_element_implILm0ESt10shared_ptrI10connectionEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5boost5beast6detail18tuple_element_implILm0ESt10shared_ptrI10connectionEED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZN5boost5beast6detail18tuple_element_implILm0ESt10shared_ptrI10connectionEED2Ev.exit

_ZN5boost5beast6detail18tuple_element_implILm0ESt10shared_ptrI10connectionEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

declare void @_ZN5boost4asio6detail28reactive_socket_service_base7do_openERNS2_24base_implementation_typeEiiiRNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::system::error_code") align 8, ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE22initiate_async_connectclINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISB_EEEEEEvOT_RKNS2_14basic_endpointIS3_EERKSD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::detail::initiate_post_with_executor", align 8 ; 7 uses
  %5 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %6 = alloca %"class.boost::asio::detail::binder1", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.b, 1
  %i.e = load i32, ptr %3, align 8
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread8

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.i = load <2 x i64>, ptr %1, align 8, !tbaa !123, !noalias !190
  store <2 x i64> %i.i, ptr %6, align 16, !tbaa !123, !alias.scope !190
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !193, !noalias !190
  store ptr null, ptr %i.l, align 8, !tbaa !59, !noalias !190
  store <2 x ptr> %i.m, ptr %i.j, align 16, !tbaa !193, !alias.scope !190
  store ptr null, ptr %i.k, align 8, !tbaa !70, !noalias !190
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.h) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZNK5boost4asio6detail27initiate_post_with_executorINS0_15any_io_executorEEclINS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES3_SK_E4typeEEE5valueEvE4typeEPNSO_IXntsr27is_work_dispatcher_requiredINSt5decayISM_E4typeENSV_ISK_E4typeES3_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.o

bb.c:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !58
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35, !inline_history !195
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35, !inline_history !195
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit, !prof !73

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit

_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.j

_ZNK5boost6system10error_codecvbEv.exit.thread8:  ; preds = %bb.b, %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147   ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  tail call void @_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE13async_connectINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISA_EEEENS0_15any_io_executorEEEvRNS5_19implementation_typeERKNS3_14basic_endpointIS4_EERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(81) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %i.ai, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.aj)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread8, %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !58
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !150
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !150
  br label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev.exit

_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE13async_connectINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISA_EEEENS0_15any_io_executorEEEvRNS5_19implementation_typeERKNS3_14basic_endpointIS4_EERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::asio::detail::reactive_socket_connect_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !196
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.c = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.b, i64 noundef 168, i64 noundef 8) ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %1, align 8, !tbaa !129
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEEC2ERKS8_iRSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !201
  %.pre20 = load ptr, ptr %i.g, align 8, !tbaa !202
  %.pre = load i16, ptr %2, align 4, !tbaa !19
  %i.h = icmp eq i16 %.pre, 2
  %..i.i = select i1 %i.h, i64 16, i64 28
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base19do_start_connect_opERNS2_24base_implementation_typeEPNS1_10reactor_opEbPKvmPFvPNS1_19scheduler_operationEbS8_ES8_(ptr noundef nonnull align 8 dereferenceable(33) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i1 noundef zeroext false, ptr noundef nonnull %2, i64 noundef %..i.i, ptr noundef nonnull @_ZN5boost4asio6detail13epoll_reactor30call_post_immediate_completionEPNS1_19scheduler_operationEbPKv, ptr noundef nonnull %.pre20)
          to label %_ZN5boost4asio6detail28reactive_socket_service_base16start_connect_opINS1_26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS8_EEEENS0_15any_io_executorEEEEEvRNS2_24base_implementation_typeEPT_bPKvmSN_PNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSK_12handler_typeENSK_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit unwind label %bb.d

_ZN5boost4asio6detail28reactive_socket_service_base16start_connect_opINS1_26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS8_EEEENS0_15any_io_executorEEEEEvRNS2_24base_implementation_typeEPT_bPKvmSN_PNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSK_12handler_typeENSK_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail28reactive_socket_service_base16start_connect_opINS1_26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS8_EEEENS0_15any_io_executorEEEEEvRNS2_24base_implementation_typeEPT_bPKvmSN_PNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSK_12handler_typeENSK_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail28reactive_socket_service_base16start_connect_opINS1_26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS8_EEEENS0_15any_io_executorEEEEEvRNS2_24base_implementation_typeEPT_bPKvmSN_PNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSK_12handler_typeENSK_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit18 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit18: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio6detail27initiate_post_with_executorINS0_15any_io_executorEEclINS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES3_SK_E4typeEEE5valueEvE4typeEPNSO_IXntsr27is_work_dispatcher_requiredINSt5decayISM_E4typeENSV_ISK_E4typeES3_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %6 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %7 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %8 = alloca %"class.boost::asio::detail::binder0", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail10blocking_tILi0EE5neverE, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !205
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail12relationship6fork_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_INS4_16outstanding_work9tracked_tILi0EEEEENSK_INSO_11untracked_tILi0EEEEENSK_IS7_EENSK_INS5_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail14relationship_tILi0EE4forkE, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !123, !noalias !208
  store <2 x i64> %i.a, ptr %8, align 16, !tbaa !123, !alias.scope !208
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !193, !noalias !208
  store ptr null, ptr %i.d, align 8, !tbaa !59, !noalias !208
  store <2 x ptr> %i.e, ptr %i.b, align 16, !tbaa !193, !alias.scope !208
  store ptr null, ptr %i.c, align 8, !tbaa !70, !noalias !208
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !194
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !58
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #35, !inline_history !211
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #35, !inline_history !211
  br label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit, !prof !73

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #35
  br label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit

_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.j:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ]
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder1<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>, boost::system::error_code>>, std::allocator<void>>::ptr", align 8 ; 6 uses
  %3 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::binder0", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %6 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214  ; 2 uses
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS9_EEEESB_EEEEEEvPv, ptr nonnull %1)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %.unpack.i.i.i = load i64, ptr %1, align 8, !tbaa !123 ; 2 uses
  %.elt3.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.unpack4.i.i.i = load i64, ptr %.elt3.i.i.i, align 8, !tbaa !123 ; 2 uses
  store i64 %.unpack.i.i.i, ptr %4, align 8, !tbaa !123
  %.repack5.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.unpack4.i.i.i, ptr %.repack5.i.i.i, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !59
  store ptr %i.n, ptr %i.l, align 8, !tbaa !59
  store ptr null, ptr %i.j, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %5, ptr %2, align 8, !tbaa !217
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %i.r, i64 noundef 72, i64 noundef 8)
          to label %.noexc9 unwind label %bb.j    ; 7 uses

.noexc9:                                          ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !221
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.unpack.i.i.i, ptr %i.u, align 8, !tbaa !123
  %.repack5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.unpack4.i.i.i, ptr %.repack5.i.i.i.i.i, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.k, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !59
  store ptr %i.n, ptr %i.w, align 8, !tbaa !59
  store ptr null, ptr %i.i, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !194
  store ptr @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS9_EEEESB_EEEESaIvEEEvPNS2_9impl_baseEb, ptr %i.s, align 8, !tbaa !222
  store ptr %i.s, ptr %3, align 8, !tbaa !224
  store ptr null, ptr %i.q, align 8, !tbaa !227
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS9_EEEESB_EEEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc9
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

bb.f:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %3, align 8, !tbaa !224   ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !222
  invoke void %i.ab(ptr noundef nonnull %i.aa, i1 noundef zeroext false)
          to label %_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #36
  unreachable

_ZN5boost4asio6detail7binder0INS1_7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS7_EEEES9_EEED2Ev.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.q

bb.j:                                             ; preds = %.noexc, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost4asio6detail17executor_functionD2Ev.exit11
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEEC2ERKS8_iRSD_RKSE_:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !256
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.s()
          to label %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i unwind label %bb.d, !inline_history !257

_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ @_ZTIv, %bb.a ], [ %i.t, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !258  ; 3 uses
  %i.x = icmp eq ptr %i.w, @_ZTSN5boost4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.x, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i
  %i.y = load i8, ptr %i.w, align 1, !tbaa !19
  %.not.i3.i.i = icmp eq i8 %i.y, 42
  br i1 %.not.i3.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i:                 ; preds = %bb.c
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(58) @_ZTSN5boost4asio10io_context19basic_executor_typeISaIvELm0EEE) #35
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i

_ZNKSt9type_infoeqERKS_.exit.thread.i.i:          ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i, %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i
  tail call void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #35
  br label %_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvEC2ERSD_RKSE_.exit

_ZNKSt9type_infoeqERKS_.exit.thread6.i.i:         ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i, %bb.c
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvEC2ERSD_RKSE_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #36
  unreachable

_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvEC2ERSD_RKSE_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i.i, %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  %i.a = add i64 %1, 3                            ; 3 uses
  %i.b = lshr i64 %i.a, 2                         ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !193    ; 6 uses
  %.not46 = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %.not46, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.preheader53.preheader
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = zext i8 %i.d to i64
  %.not47 = icmp samesign ugt i64 %i.b, %i.e
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = urem i64 %i.f, %2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread51, label %.thread

.thread51:                                        ; preds = %bb.e, %bb.c
  %.lcssa67 = phi i64 [ 0, %bb.c ], [ 1, %bb.e ]
  %.lcssa65 = phi ptr [ %i.c, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa67
  store ptr null, ptr %i.i, align 8, !tbaa !193
  %i.j = load i8, ptr %.lcssa65, align 1, !tbaa !19
  br label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %.not46.1 = icmp eq ptr %i.l, null
  br i1 %.not46.1, label %.preheader.1, label %bb.d

.thread.thread:                                   ; preds = %.preheader53.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193  ; 3 uses
  %.not46.175 = icmp eq ptr %i.n, null
  br i1 %.not46.175, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread.thread, %.thread
  %spec.select77 = phi ptr [ %i.n, %.thread.thread ], [ %i.c, %.thread ]
  %i.o = phi ptr [ %i.n, %.thread.thread ], [ %i.l, %.thread ] ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = zext i8 %i.p to i64
  %.not47.1 = icmp samesign ugt i64 %i.b, %i.q
  br i1 %.not47.1, label %.thread.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = urem i64 %i.r, %2
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.thread51, label %.thread.1

.thread.1:                                        ; preds = %bb.e, %bb.d
  %spec.select = zext i1 %.not46 to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.thread, %.thread.1
  %.lcssa63 = phi i64 [ %spec.select, %.thread.1 ], [ 0, %.thread ]
  %.lcssa = phi ptr [ %spec.select77, %.thread.1 ], [ %i.c, %.thread ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa63
  store ptr null, ptr %i.u, align 8, !tbaa !193
  tail call void @free(ptr noundef nonnull %.lcssa) #35
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.thread, %.preheader.1, %bb.a
  %i.v = and i64 %i.a, -4
  %i.w = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.x = tail call i64 @llvm.umax.i64(i64 %2, i64 16) ; 4 uses
  %i.y = urem i64 %i.w, %i.x                      ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = sub i64 %i.x, %i.y
  %i.ab = select i1 %i.z, i64 0, i64 %i.aa
  %i.ac = add i64 %i.ab, %i.w
  %i.ad = tail call noalias ptr @aligned_alloc(i64 noundef %i.x, i64 noundef %i.ac) #40 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 %i.x) ]
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.f, label %_ZN5boost4asio11aligned_newEmm.exit

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !tbaa !9
  invoke void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #37
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ae

_ZN5boost4asio11aligned_newEmm.exit:              ; preds = %.loopexit
  %i.af = icmp ult i64 %i.a, 1024
  %i.ag = trunc i64 %i.b to i8
  %i.ah = select i1 %i.af, i8 %i.ag, i8 0
  br label %bb.i

bb.i:                                             ; preds = %.thread51, %_ZN5boost4asio11aligned_newEmm.exit
  %.lcssa65.sink = phi ptr [ %.lcssa65, %.thread51 ], [ %i.ad, %_ZN5boost4asio11aligned_newEmm.exit ] ; 2 uses
  %.sink = phi i8 [ %i.j, %.thread51 ], [ %i.ah, %_ZN5boost4asio11aligned_newEmm.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa65.sink, i64 %1
  store i8 %.sink, ptr %i.ai, align 1, !tbaa !19
  ret ptr %.lcssa65.sink
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE11do_completeEPvPNS1_19scheduler_operationERKS8_m(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_connect_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>, boost::asio::any_io_executor>::ptr", align 8 ; 9 uses
  %5 = alloca %"class.boost::asio::detail::handler_work", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder1", align 16 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.d) #35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !15 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.f = and i64 %.sroa.5.0.copyload4.i, 1
  %i.g = or disjoint i64 %i.f, ptrtoint (ptr @_ZZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE11do_completeEPvPNS1_19scheduler_operationERKS8_mE3loc to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.g
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %.repack5.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load <2 x i64>, ptr %i.a, align 8, !tbaa !123
  store <2 x i64> %i.h, ptr %6, align 16, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !193
  store ptr null, ptr %i.l, align 8, !tbaa !59
  store <2 x ptr> %i.m, ptr %i.i, align 16, !tbaa !193
  store ptr null, ptr %i.j, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !194
  store ptr %6, ptr %4, align 8, !tbaa !196
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.unpack.i.i.i.i = load i64, ptr %6, align 16, !tbaa !123 ; 3 uses
  %.unpack3.i.i.i.i = load i64, ptr %.repack5.i.i, align 8, !tbaa !123
  %i.q = load ptr, ptr %i.i, align 16, !tbaa !70
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.unpack3.i.i.i.i ; 2 uses
  %i.s = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr i8, ptr %i.t, i64 %.unpack.i.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load ptr, ptr %i.v, align 8, !nosanitize !233
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_EclEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.x = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_EclEv.exit.i

_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_EclEv.exit.i: ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(2680) %i.r, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.n)
          to label %_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvE8completeINS1_7binder1ISD_S8_EEEEvRT_RSD_.exit unwind label %bb.i, !inline_history !260

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EEEEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvE8completeINS1_7binder1ISD_S8_EEEEvRT_RSD_.exit unwind label %bb.i

_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvE8completeINS1_7binder1ISD_S8_EEEEvRT_RSD_.exit: ; preds = %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_EclEv.exit.i, %bb.g
  fence release
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_EclEv.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.r

bb.j:                                             ; preds = %_ZN5boost4asio6detail12handler_workINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEvE8completeINS1_7binder1ISD_S8_EEEEvRT_RSD_.exit, %bb.b
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !59  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !58
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35, !inline_history !195
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35, !inline_history !195
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit, !prof !73

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35
  br label %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit

_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #36
  unreachable

_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret void

bb.r:                                             ; preds = %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.aa, %bb.i ]
  call void @_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEES8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit17 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #36
  unreachable

_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptrD2Ev.exit17: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #35
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !58
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !261
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !261
  br label %_ZN5boost4asio6detail26reactive_socket_connect_opINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEENS0_15any_io_executorEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12remove_timerERNSD_14per_timer_dataE:bb.a
  %i.ae = add i64 %i.b, -1
  %i.af = lshr i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.af
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !tbaa !15
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ah = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  br i1 %i.ah, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.aq, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %.0812.i = phi i64 [ %i.ak, %bb.g ], [ %i.b, %bb.f ] ; 4 uses
  %i.aj = add i64 %.0812.i, -1
  %i.ak = lshr i64 %i.aj, 1                       ; 6 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.0812.i ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !15
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.am, align 8, !tbaa !15
  %i.an = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.an, label %bb.g, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !703
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !703
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !705
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !703
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !705 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0812.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !706
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.0812.i, ptr %i.au, align 8, !tbaa !700
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ak
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !706
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.ak, ptr %i.ay, align 8, !tbaa !700
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.014.in23.i = shl i64 %i.b, 1                  ; 2 uses
  %.01424.i = or disjoint i64 %.014.in23.i, 1     ; 2 uses
  %i.az = ptrtoint ptr %i.ad to i64
  %i.ba = ptrtoint ptr %i.t to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = icmp ult i64 %.01424.i, %i.bc
  br i1 %i.bd, label %.lr.ph.i26, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit

.lr.ph.i26:                                       ; preds = %bb.h, %bb.k
  %i.be = phi i64 [ %i.ce, %bb.k ], [ %i.bc, %bb.h ]
  %i.bf = phi ptr [ %i.br, %bb.k ], [ %i.t, %bb.h ] ; 4 uses
  %.01427.i = phi i64 [ %.014.i, %bb.k ], [ %.01424.i, %bb.h ] ; 3 uses
  %.014.in26.i = phi i64 [ %.014.in.i, %bb.k ], [ %.014.in23.i, %bb.h ]
  %.01525.i = phi i64 [ %i.bl, %bb.k ], [ %i.b, %bb.h ] ; 3 uses
  %i.bg = add nuw i64 %.014.in26.i, 2             ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %i.be
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.01427.i ; 2 uses
  br i1 %i.bh, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %.lr.ph.i26
  %.sroa.0.0.copyload.i2.i.i19.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i26
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i27 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i.i28 = load i64, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bj = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i27, %.sroa.0.0.copyload.i2.i.i.i28
  %spec.select.i = select i1 %i.bj, i64 %.01427.i, i64 %i.bg
  %i.bk = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.copyload.i.i.i.i27, i64 %.sroa.0.0.copyload.i2.i.i.i28)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.copyload.i2.i.i19.i = phi i64 [ %.sroa.0.0.copyload.i2.i.i19.pre.i, %._crit_edge.i ], [ %i.bk, %bb.i ]
  %i.bl = phi i64 [ %.01427.i, %._crit_edge.i ], [ %spec.select.i, %bb.i ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.01525.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i18.i = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bn = icmp slt i64 %.sroa.0.0.copyload.i.i.i18.i, %.sroa.0.0.copyload.i2.i.i19.i
  br i1 %i.bn, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !703
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !703
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !705
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !703
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !705 ; 4 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.01525.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !706
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.01525.i, ptr %i.bv, align 8, !tbaa !700
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bl
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !706
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bl, ptr %i.bz, align 8, !tbaa !700
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.014.in.i = shl i64 %i.bl, 1                   ; 2 uses
  %.014.i = or disjoint i64 %.014.in.i, 1         ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.br to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 4                 ; 2 uses
  %i.cf = icmp ult i64 %.014.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i26, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit

_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit: ; preds = %bb.g, %.lr.ph.i, %bb.k, %bb.j, %bb.h, %bb.d, %bb.b, %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !708
  %i.ci = icmp eq ptr %i.ch, %1
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !709
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !708
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !679 ; 3 uses
  %.not24 = icmp eq ptr %i.cm, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !709 ; 3 uses
  br i1 %.not24, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %.pre, ptr %i.cn, align 8, !tbaa !709
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.n
  %.not25 = icmp eq ptr %.pre, null
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !679
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS4_EEEENS_4asio15any_io_executorESaIvEE8completeIJRS6_EEEvbDpOT_(ptr noundef nonnull align 8 dereferenceable(164) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.105", align 8    ; 4 uses
  %4 = alloca %"struct.boost::asio::async_result<boost::asio::append_t<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>, boost::system::error_code>, void ()>::init_wrapper", align 8 ; 7 uses
  %5 = alloca %"class.boost::asio::detail::initiate_dispatch_with_executor", align 8 ; 7 uses
  %6 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %7 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %8 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %9 = alloca %"class.boost::asio::append_t", align 16 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(164) %0)
  br i1 %1, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !710
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(113) %i.c) #35, !noalias !710
  invoke void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail10blocking_tILi0EE5neverE, i32 noundef 0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !710
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !123, !noalias !713
  store <2 x i64> %i.g, ptr %9, align 16, !tbaa !123, !alias.scope !713
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !193, !noalias !713
  store ptr null, ptr %i.j, align 8, !tbaa !59, !noalias !713
  store <2 x ptr> %i.k, ptr %i.h, align 16, !tbaa !193, !alias.scope !713
  store ptr null, ptr %i.i, align 8, !tbaa !70, !noalias !713
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !194
  invoke void @_ZNO5boost4asio12async_resultINS0_8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS6_EEEEJS8_EEEJFvvEEE12init_wrapperINS0_6detail31initiate_dispatch_with_executorINS0_15any_io_executorEEEEclISD_JNSI_19empty_work_functionEEEEvOT_St5tupleIJS8_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %.body.i

.body.i:                                          ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !58
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #35, !inline_history !716
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #35, !inline_history !716
  br label %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit, !prof !73

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #35
  br label %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit

_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !394, !range !335, !noundef !233
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit

bb.l:                                             ; preds = %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ah) #35
  store i8 0, ptr %i.ae, align 8, !tbaa !394
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit: ; preds = %_ZN5boost4asio8append_tINS_5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS5_EEEEJS7_EED2Ev.exit, %bb.l
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !394, !range !335, !noundef !233
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit7

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.al) #35
  store i8 0, ptr %i.ai, align 8, !tbaa !394
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit7

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit7: ; preds = %bb.m, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack.i.i = load i64, ptr %i.am, align 8, !tbaa !123 ; 3 uses
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !tbaa !123
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.unpack3.i.i ; 2 uses
  %i.aq = and i64 %.unpack.i.i, 1
  %.not.i.i.i.i.i8 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit7
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !9
  %i.as = getelementptr i8, ptr %i.ar, i64 %.unpack.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load ptr, ptr %i.at, align 8, !nosanitize !233
  br label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEEclIJRS5_EEEvDpOT_.exit

bb.p:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit7
  %i.av = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEEclIJRS5_EEEvDpOT_.exit

_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEEclIJRS5_EEEvDpOT_.exit: ; preds = %bb.o, %bb.p
  %i.aw = phi ptr [ %i.au, %bb.o ], [ %i.av, %bb.p ]
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(2680) %i.ap, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %2), !inline_history !717
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS3_EEEclIJRS5_EEEvDpOT_.exit, %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type12update_timerIS7_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(2544) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_weak_ptr", align 8 ; 5 uses
  %3 = alloca %"class.boost::bad_weak_ptr", align 8 ; 5 uses
  %4 = alloca %"class.boost::bad_weak_ptr", align 8 ; 5 uses
  %5 = alloca %"class.boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::impl_type::timeout_handler", align 8 ; 9 uses
  %6 = alloca %"class.boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::impl_type::timeout_handler", align 8 ; 9 uses
  %7 = alloca %"class.boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::impl_type::timeout_handler", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2308
  %i.b = load i32, ptr %i.a, align 4, !tbaa !537
  switch i32 %i.b, label %.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.q
    i32 2, label %bb.am
    i32 4, label %bb.ba
    i32 3, label %bb.ba
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !tbaa !15
  %.not67 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 9223372036854775807
  br i1 %.not67, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %.not68 = icmp eq i64 %i.e, 9223372036854775807
  br i1 %.not68, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !460  ; 2 uses
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #35 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = sub nuw nsw i64 9223372036854775807, %i.h
  %i.k = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %_ZN5boost4asio6detail18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS5_EEE3addERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSD_.exit.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = and i64 %i.h, 9223372036854775807
  %i.n = sub nsw i64 0, %i.m
  %i.o = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.n
  br i1 %i.p, label %_ZN5boost4asio6detail18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS5_EEE3addERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSD_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.o, %bb.f ], [ %i.k, %bb.e ]
  %i.r = add nsw i64 %i.q, %i.h
  br label %_ZN5boost4asio6detail18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS5_EEE3addERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSD_.exit.i.i

_ZN5boost4asio6detail18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS5_EEE3addERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSD_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ 9223372036854775807, %bb.e ], [ %i.r, %bb.g ], [ -9223372036854775808, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !452, !range !335, !noundef !233
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEE13expires_afterERKNS2_8durationIlSt5ratioILl1ELl1000000000EEEE.exit

bb.h:                                             ; preds = %_ZN5boost4asio6detail18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS5_EEE3addERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSD_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 104
end_hunk_2
begin_hunk_3_@_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail15work_dispatcherINS5_19empty_work_functionENS5_14append_handlerINS_5beast4http6detail13write_some_opINSB_8write_opINSB_12write_msg_opINS9_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS9_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISQ_EEEEEESL_Lb1ENSA_10empty_bodyENSA_12basic_fieldsISaIcEEEEESL_NSB_18serializer_is_doneELb1ESZ_S12_EESL_Lb1ESZ_S12_EEJSS_iEEESK_vEEEEvOT_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %2, align 8, !tbaa !224    ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5boost4asio6detail17executor_functionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !222
  invoke void %i.s(ptr noundef nonnull %i.r, i1 noundef zeroext false)
          to label %_ZN5boost4asio6detail17executor_functionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN5boost4asio6detail17executor_functionD2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %3, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 696
  %i.w = load i8, ptr %i.v, align 8, !tbaa !394, !range !335, !noundef !233
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit

bb.i:                                             ; preds = %_ZN5boost4asio6detail17executor_functionD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.y) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit

_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit: ; preds = %_ZN5boost4asio6detail17executor_functionD2Ev.exit, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.z) #35, !inline_history !1082
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.aa) #35, !inline_history !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.q

bb.j:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost4asio6detail17executor_functionD2Ev.exit10

bb.k:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !224   ; 3 uses
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %_ZN5boost4asio6detail17executor_functionD2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !222
  invoke void %i.ae(ptr noundef nonnull %i.ad, i1 noundef zeroext false)
          to label %_ZN5boost4asio6detail17executor_functionD2Ev.exit10 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #36
  unreachable

_ZN5boost4asio6detail17executor_functionD2Ev.exit10: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost4asio9execution12bad_executorE, i64 16), ptr %5, align 8, !tbaa !9
  invoke void @_ZN5boost15throw_exceptionINS_4asio9execution12bad_executorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #37
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.r

bb.q:                                             ; preds = %bb.c, %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.p, %_ZN5boost4asio6detail17executor_functionD2Ev.exit10
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5boost4asio6detail17executor_functionD2Ev.exit10 ], [ %i.ah, %bb.p ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load i8, ptr %i.b, align 8, !tbaa !394, !range !335, !noundef !233
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit

_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.f) #35, !inline_history !1082
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.g) #35, !inline_history !1082
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_functionC2INS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEEET_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::append_handler<boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::system::error_code, int>, boost::asio::any_io_executor>, std::allocator<void>>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %2, ptr %3, align 8, !tbaa !2419
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.c = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %i.b, i64 noundef 832, i64 noundef 8) ; 8 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2422
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !2423
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(816) %i.e, ptr noundef nonnull align 8 dereferenceable(816) %1)
          to label %bb.b unwind label %bb.d, !inline_history !2424

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68
  store i32 %i.j, ptr %i.h, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 744
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 760
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n) #35, !inline_history !2424
  store ptr @_ZN5boost4asio6detail17executor_function8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEEEvPNS2_9impl_baseEb, ptr %i.c, align 8, !tbaa !222
  store ptr %i.c, ptr %0, align 8, !tbaa !224
  store ptr null, ptr %i.a, align 8, !tbaa !2422
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #36
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit5 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #36
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit5: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22executor_function_view8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEEEEvPv(ptr noundef %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::binder0.395", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  call void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(760) %1, ptr noundef nonnull align 8 dereferenceable(816) %0), !inline_history !2431
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %1, align 8, !tbaa !9, !alias.scope !2432
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68, !noalias !2432
  store i32 %i.f, ptr %i.d, align 8, !tbaa !68, !alias.scope !2432
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !194
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(760) %1)
          to label %bb.b unwind label %bb.d, !inline_history !2431

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %1, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.j = load i8, ptr %i.i, align 8, !tbaa !394, !range !335, !noundef !233
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #35, !inline_history !2433
  br label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(760) dereferenceable(760) %1) #35, !inline_history !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.m

_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit: ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.n) #35, !inline_history !2433
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.o) #35, !inline_history !2433
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(760) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::append_handler<boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::system::error_code, int>>, std::allocator<void>>::ptr", align 8 ; 8 uses
  %3 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::binder0.395", align 8 ; 12 uses
  %5 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %6 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214  ; 2 uses
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEEEEvPv, ptr nonnull %1)
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(760) %4, ptr noundef nonnull align 8 dereferenceable(760) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %4, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 712 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 728 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.m = load i32, ptr %i.l, align 8, !tbaa !68
  store i32 %i.m, ptr %i.k, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %5, ptr %2, align 8, !tbaa !2434
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.k, !inline_history !2437

.noexc:                                           ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %i.q, i64 noundef 776, i64 noundef 8)
          to label %.noexc9 unwind label %bb.k, !inline_history !2437 ; 7 uses

.noexc9:                                          ; preds = %.noexc
  store ptr %i.r, ptr %i.p, align 8, !tbaa !2438
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !2439
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(760) %i.t, ptr noundef nonnull align 8 dereferenceable(760) %4)
          to label %bb.f unwind label %bb.e, !inline_history !2440

bb.e:                                             ; preds = %.noexc9
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #35, !inline_history !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %.body

bb.f:                                             ; preds = %.noexc9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 736
  %i.x = load i32, ptr %i.k, align 8, !tbaa !68
  store i32 %i.x, ptr %i.w, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !194
  store ptr @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEEEvPNS2_9impl_baseEb, ptr %i.r, align 8, !tbaa !222
  store ptr %i.r, ptr %3, align 8, !tbaa !224
  store ptr null, ptr %i.p, align 8, !tbaa !2438
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #35, !inline_history !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %3, align 8, !tbaa !224    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5boost4asio6detail17executor_functionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !222
  invoke void %i.aa(ptr noundef nonnull %i.z, i1 noundef zeroext false)
          to label %_ZN5boost4asio6detail17executor_functionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #36
  unreachable

_ZN5boost4asio6detail17executor_functionD2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %4, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 696
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !394, !range !335, !noundef !233
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit

bb.j:                                             ; preds = %_ZN5boost4asio6detail17executor_functionD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ag) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit

_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit: ; preds = %_ZN5boost4asio6detail17executor_functionD2Ev.exit, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ah) #35, !inline_history !1082
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.ai) #35, !inline_history !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.r

bb.k:                                             ; preds = %.noexc, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !224   ; 3 uses
  %.not.i10 = icmp eq ptr %i.al, null
  br i1 %.not.i10, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !222
  invoke void %i.am(ptr noundef nonnull %i.al, i1 noundef zeroext false)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #36
  unreachable

.body:                                            ; preds = %bb.m, %bb.l, %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.aj, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(760) dereferenceable(760) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost4asio9execution12bad_executorE, i64 16), ptr %6, align 8, !tbaa !9
  invoke void @_ZN5boost15throw_exceptionINS_4asio9execution12bad_executorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %6) #37
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.s

bb.r:                                             ; preds = %bb.c, %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit
  ret void

bb.s:                                             ; preds = %bb.q, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ap, %bb.q ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(760) dereferenceable(760) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.b = load i8, ptr %i.a, align 8, !tbaa !394, !range !335, !noundef !233
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit

_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.e) #35, !inline_history !1082
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.f) #35, !inline_history !1082
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !68
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %i.f, 1
  %i.i = load i32, ptr %1, align 8
  %i.j = icmp ne i32 %i.i, 0
  %or.cond.i.i.i.i = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1067, !nonnull !233, !align !482
  tail call void @_ZN5boost5beast4http10serializerILb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(391) %i.l, i64 noundef %i.d), !inline_history !2441
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !2442
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !394, !range !335, !noundef !233
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit

bb.c:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.r) #35, !inline_history !2442
  store i8 0, ptr %i.o, align 8, !tbaa !394
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit

_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5beast4http6detail8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESC_NS2_18serializer_is_doneELb1ESQ_ST_EclESJ_m(ptr noundef nonnull align 8 dereferenceable(576) %i.s, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %i.d), !inline_history !2442
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2439 ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.e = load i8, ptr %i.d, align 8, !tbaa !394, !range !335, !noundef !233
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.g) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEED2Ev.exit.i

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.h) #35, !inline_history !1082
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.i) #35, !inline_history !1082
  store ptr null, ptr %i.a, align 8, !tbaa !2439
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2438 ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.l, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.lcssa.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 776
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  store i8 %i.u, ptr %i.k, align 1, !tbaa !19
  store ptr %i.k, ptr %i.s, align 8, !tbaa !193
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.k) #35
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %4 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::append_handler<boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::system::error_code, int>>, std::allocator<void>>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::binder0.395", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %3, ptr %4, align 8, !tbaa !2434
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !2438
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !2439
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(760) %5, ptr noundef nonnull align 8 dereferenceable(760) %i.c)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %5, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 728 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  store i32 %i.h, ptr %i.f, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 736 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !194
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load i8, ptr %i.k, align 8, !tbaa !394, !range !335, !noundef !233
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 648
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #35, !inline_history !1082
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.o) #35, !inline_history !1082
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.p) #35, !inline_history !1082
  store ptr null, ptr %i.b, align 8, !tbaa !2439
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !2438 ; 5 uses
  %.not1.i = icmp eq ptr %.pre, null
  br i1 %.not1.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.k     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !193
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.lcssa.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  store i8 %i.z, ptr %.pre, align 1, !tbaa !19
  store ptr %.pre, ptr %i.x, align 8, !tbaa !193
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEEEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS18_m.exit.i

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %.pre) #35
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEEEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS18_m.exit.i

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEEEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS18_m.exit.i: ; preds = %.thread.i.i.i, %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !2438
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit: ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEEEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS18_m.exit.i, %bb.d
  br i1 %1, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !68
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ne i64 %i.ad, 1
  %i.ag = load i32, ptr %2, align 8
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.i.i.i.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 720
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1067, !nonnull !233, !align !482
  invoke void @_ZN5boost5beast4http10serializerILb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(391) %i.aj, i64 noundef %i.ab)
          to label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i unwind label %bb.k, !inline_history !2443

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i, %bb.h
  %i.ak = load ptr, ptr %5, align 8, !tbaa !9
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(760) %5)
          to label %.noexc9 unwind label %bb.k, !inline_history !2443

.noexc9:                                          ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 696 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !394, !range !335, !noundef !233
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEEclIJEEEvDpOT_.exit.i

bb.i:                                             ; preds = %.noexc9
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ap) #35, !inline_history !2442
  store i8 0, ptr %i.am, align 8, !tbaa !394
  br label %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEEclIJEEEvDpOT_.exit.i

_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEEclIJEEEvDpOT_.exit.i: ; preds = %bb.i, %.noexc9
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN5boost5beast4http6detail8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESC_NS2_18serializer_is_doneELb1ESQ_ST_EclESJ_m(ptr noundef nonnull align 8 dereferenceable(576) %i.aq, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %2, i64 noundef %i.ab)
          to label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit unwind label %bb.k, !inline_history !2443

_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit: ; preds = %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEEclIJEEEvDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN5boost4asio6detail14append_handlerINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opINS3_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISK_EEEEEESF_Lb1ENS4_10empty_bodyENS4_12basic_fieldsISaIcEEEEESF_NS5_18serializer_is_doneELb1EST_SW_EESF_Lb1EST_SW_EEJSM_iEEclIJEEEvDpOT_.exit.i, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i.i.i, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(760) dereferenceable(760) %5) #35
  br label %bb.n

bb.l:                                             ; preds = %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEEclEv.exit, %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptr5resetEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %5, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.au = load i8, ptr %i.at, align 8, !tbaa !394, !range !335, !noundef !233
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aw) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit

_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ax) #35, !inline_history !1082
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.ay) #35, !inline_history !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.ar, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS8_8write_opINS8_12write_msg_opINS6_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS6_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISN_EEEEEESI_Lb1ENS7_10empty_bodyENS7_12basic_fieldsISaIcEEEEESI_NS8_18serializer_is_doneELb1ESW_SZ_EESI_Lb1ESW_SZ_EEJSP_iEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::asio::detail::binder0.395", align 8 ; 15 uses
  %3 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %4 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::append_handler<boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, true, boost::beast::http::empty_body, boost::beast::http::basic_fields<std::allocator<char>>>, boost::system::error_code, int>, boost::asio::any_io_executor>, std::allocator<void>>::ptr", align 8 ; 9 uses
  %5 = alloca %"class.boost::asio::detail::work_dispatcher.393", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %3, ptr %4, align 8, !tbaa !2419
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !2422
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !2423
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(816) %5, ptr noundef nonnull align 8 dereferenceable(816) %i.c)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %5, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 712 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 728 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  store i32 %i.h, ptr %i.f, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 736 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !194
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 760 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l) #35
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEC2EOSZ_(ptr noundef nonnull align 8 dereferenceable(760) %2, ptr noundef nonnull align 8 dereferenceable(816) %5)
          to label %.noexc unwind label %bb.i, !inline_history !2431

.noexc:                                           ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEESD_NS2_18serializer_is_doneELb1ESR_SU_EESD_Lb1ESR_SU_EE, i64 16), ptr %2, align 8, !tbaa !9, !alias.scope !2450
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 728
  %i.o = load i32, ptr %i.f, align 8, !tbaa !68, !noalias !2450
  store i32 %i.o, ptr %i.n, align 8, !tbaa !68, !alias.scope !2450
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !194
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(760) %2)
          to label %bb.e unwind label %bb.g, !inline_history !2431

bb.e:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %2, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 696
  %i.r = load i8, ptr %i.q, align 8, !tbaa !394, !range !335, !noundef !233
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.t) #35, !inline_history !2433
  br label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit

bb.g:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4http6detail13write_some_opINS6_8write_opINS6_12write_msg_opINS4_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISL_EEEEEESG_Lb1ENS5_10empty_bodyENS5_12basic_fieldsISaIcEEEEESG_NS6_18serializer_is_doneELb1ESU_SX_EESG_Lb1ESU_SX_EEJSN_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(760) dereferenceable(760) %2) #35, !inline_history !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %.body

_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.v) #35, !inline_history !2433
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.w) #35, !inline_history !2433
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.d, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.u, %bb.g ]
  call void @_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %5) #35
  br label %bb.m

bb.j:                                             ; preds = %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vEclEv.exit, %bb.c
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %5, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !394, !range !335, !noundef !233
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 640
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ac) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit

_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit: ; preds = %bb.j, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ad) #35, !inline_history !1082
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.ae) #35, !inline_history !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #36
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opINS5_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISM_EEEEEESH_Lb1ENS6_10empty_bodyENS6_12basic_fieldsISaIcEEEEESH_NS7_18serializer_is_doneELb1ESV_SY_EESH_Lb1ESV_SY_EEJSO_iEEESG_vED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.m:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit8 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #36
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptrD2Ev.exit8: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2423 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISI_EEEEEESD_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESD_NS3_18serializer_is_doneELb1ESR_SU_EESC_SaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.f = load i8, ptr %i.e, align 8, !tbaa !394, !range !335, !noundef !233
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #35, !inline_history !1082
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.i) #35, !inline_history !1082
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS0_9websocket6streamINS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISH_EEEEEESC_Lb1ENS2_10empty_bodyENS2_12basic_fieldsISaIcEEEEESB_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.j) #35, !inline_history !1082
  store ptr null, ptr %i.a, align 8, !tbaa !2423
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINS9_8write_opINS9_12write_msg_opINS7_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS7_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISO_EEEEEESJ_Lb1ENS8_10empty_bodyENS8_12basic_fieldsISaIcEEEEESJ_NS9_18serializer_is_doneELb1ESX_S10_EESJ_Lb1ESX_S10_EEJSQ_iEEESI_vEESaIvEED2Ev.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2422 ; 5 uses
  %.not1 = icmp eq ptr %i.l, null
  br i1 %.not1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not3 = icmp eq ptr %i.m, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !193
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !193
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.lcssa.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 832
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  store i8 %i.v, ptr %i.l, align 1, !tbaa !19
  store ptr %i.l, ptr %i.t, align 8, !tbaa !193
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEESJ_vEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.l) #35
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEESJ_vEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEESJ_vEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit: ; preds = %bb.f, %.thread.i.i
  store ptr null, ptr %i.k, align 8, !tbaa !2422
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS_5beast4http6detail13write_some_opINSA_8write_opINSA_12write_msg_opINS8_9websocket6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb1EE12handshake_opINS8_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEESK_Lb1ENS9_10empty_bodyENS9_12basic_fieldsISaIcEEEEESK_NSA_18serializer_is_doneELb1ESY_S11_EESK_Lb1ESY_S11_EEJSR_iEEESJ_vEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit, %bb.d
  ret void
end_hunk_3
