inline.NumInlined: 3659
inline.NumDeleted: 2069
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core14MakeOrphanableINS_12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerEJNS_13RefCountedPtrIS2_EERNS_8DurationEEEESt10unique_ptrIT_NS_16OrphanableDeleteEEDpOT0_:bb.a
bb.t:                                             ; preds = %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit32.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 acq_rel, align 8
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit6, !prof !51

bb.u:                                             ; preds = %bb.t
  %i.an = load ptr, ptr %.val28.i, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %.val28.i) #38, !inline_history !358
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit6

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit: ; preds = %bb.j, %bb.k
  %i.aq = load ptr, ptr %i.u, align 16, !tbaa !356
  call void %i.aq(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %4) #38, !inline_history !357
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.a, ptr %0, align 8, !tbaa !157
  ret void

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_117XdsOverrideHostLbEED2Ev.exit6: ; preds = %bb.u, %bb.t, %"_ZZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb9IdleTimerC1ENS_13RefCountedPtrIS1_EENS_8DurationEEN3$_0D2Ev.exit32.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #41
  resume { ptr, i32 } %.pn18.pn.pn.pn.i
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb16UpdateAddressMapERKNS3_25EndpointAddressesIteratorEE3$_0vJRKNS3_17EndpointAddressesEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.grpc_core::RefCountedStringValue", align 8 ; 4 uses
  %3 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 5 uses
  %4 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::vector.92", align 8    ; 14 uses
  %8 = alloca %"class.absl::lts_20250512::StatusOr.484", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.grpc_core::RefCountedStringValue", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !221    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 45, ptr nonnull @.str.48) ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i = trunc i64 %i.d to i32
  %i.e = and i64 %i.d, 4294967296
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.sroa.01.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.f = icmp eq i32 %.0.i.i.i.i.i.i, 2
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  %i.i = and i32 %i.h, 4
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core26xds_override_host_lb_traceE, i64 8) monotonic, align 8, !range !147, !noundef !148
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %"_ZSt6invokeIRKZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb16UpdateAddressMapERKNS0_25EndpointAddressesIteratorEE3$_0JRKNS0_17EndpointAddressesEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", !prof !51

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.16, i32 noundef 798) #42
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 22, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.d
  %i.l = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_117XdsOverrideHostLbEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.b)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 11, ptr nonnull @.str.43)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNK9grpc_core17EndpointAddresses8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 58, ptr nonnull @.str.44)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi59EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi59EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge.i.i.i.i unwind label %bb.k

.critedge.i.i.i.i:                                ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi59EEERS2_RAT__Kc.exit.i.i.i.i
  %i.n = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %"_ZSt6invokeIRKZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb16UpdateAddressMapERKNS0_25EndpointAddressesIteratorEE3$_0JRKNS0_17EndpointAddressesEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi59EEERS2_RAT__Kc.exit.i.i.i.i, %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i, %bb.i, %bb.h
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i ], [ %i.t, %bb.i ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.bw

bb.m:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !359 ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !362   ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 132               ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 288230376151711743
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #39
          to label %.noexc.i.i.i.i unwind label %bb.p

.noexc.i.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not355.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not355.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ak = shl nuw nsw i64 %i.ah, 5
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #37
          to label %.lr.ph.i.i.i.i unwind label %bb.p ; 3 uses

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !363
  store ptr %i.al, ptr %i.am, align 8, !tbaa !366
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ah
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !367
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %bb.q

._crit_edge.i.i.i.i:                              ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !363 ; 13 uses
  %.pre303.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !366 ; 4 uses
  %i.ar = ptrtoint ptr %.pre303.i.i.i.i to i64
  %i.as = ptrtoint ptr %.pre.i.i.i.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 5                 ; 5 uses
  %.not278.i.i.i.i = icmp eq ptr %.pre303.i.i.i.i, %.pre.i.i.i.i
  br i1 %.not278.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph275.i.i.i.i

.lr.ph275.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 32 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 64
  br label %bb.an

bb.p:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i.i.i, %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.q:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0184.0272.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.cw, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_Z23grpc_sockaddr_to_stringB5cxx11PK21grpc_resolved_addressb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.484") align 8 %8, ptr noundef nonnull %.sroa.0184.0272.i.i.i.i, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bq = load i64, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core26xds_override_host_lb_traceE, i64 8) monotonic, align 8, !range !147, !noundef !148
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.t, label %.critedge78.thread.i.i.i.i, !prof !51

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.16, i32 noundef 810) #42
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 22, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit86.i.i.i.i unwind label %bb.aa

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit86.i.i.i.i: ; preds = %bb.u
  %i.bu = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core12_GLOBAL__N_117XdsOverrideHostLbEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.b)
          to label %bb.v unwind label %bb.ab      ; 0 uses

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit86.i.i.i.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 48, ptr nonnull @.str.45)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.ab

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.v
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit.i.i.i.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.critedge78.i.i.i.i

bb.x:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.y:                                             ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.z:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit.i.i.i.i, %bb.v, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit86.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn63.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.ab ], [ %i.by, %bb.aa ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn63.pn.i.i.i.i = phi { ptr, i32 } [ %.pn63.i.i.i.i, %bb.ac ], [ %i.bx, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.ak

bb.ae:                                            ; preds = %bb.r
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !366 ; 7 uses
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !367
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !33
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ap
  br i1 %i.ce, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !43
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !20
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.ag
  %i.cj = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !35
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !43
  store i64 0, ptr %i.aq, align 8, !tbaa !35
  store i8 0, ptr %i.ap, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.cl, ptr %i.am, align 8, !tbaa !366
  br label %.critedge78.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.critedge78.i.i.i.i unwind label %bb.y

.critedge78.i.i.i.i:                              ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i, %bb.w
  %.pr.i.i.i.i = load i64, ptr %8, align 8, !tbaa !47 ; 2 uses
  %i.cm = icmp eq i64 %.pr.i.i.i.i, 1
  br i1 %i.cm, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, label %.critedge78.thread.i.i.i.i

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i: ; preds = %.critedge78.i.i.i.i
  %i.cn = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ap
  br i1 %i.co, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92.i.i.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i
  %i.cp = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #41
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i

.critedge78.thread.i.i.i.i:                       ; preds = %.critedge78.i.i.i.i, %bb.s
  %i.cr = phi i64 [ %.pr.i.i.i.i, %.critedge78.i.i.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  %i.cs = trunc i64 %i.cr to i1
  br i1 %i.cs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge78.thread.i.i.i.i
  %i.ct = inttoptr i64 %i.cr to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ct)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #40
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i, %bb.ai, %.critedge78.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0184.0272.i.i.i.i, i64 132 ; 2 uses
  %.not188.i.i.i.i = icmp eq ptr %i.cw, %i.ac
  br i1 %.not188.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.q

bb.ak:                                            ; preds = %bb.ad, %bb.y
  %.pn66.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.y ], [ %.pn63.pn.i.i.i.i, %bb.ad ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #38
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.x
  %.pn66.pn.i.i.i.i = phi { ptr, i32 } [ %.pn66.i.i.i.i, %bb.ak ], [ %i.bv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.bv

._crit_edge276.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.lr, %i.lq
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge276.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.dc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.lr, %._crit_edge276.i.i.i.i ] ; 3 uses
  %i.cx = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i93.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i93.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i93.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.lq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !368

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !363
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %._crit_edge276.i.i.i.i, %._crit_edge.i.i.i.i
  %i.dd = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.lr, %._crit_edge276.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !367
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.am, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %"_ZSt6invokeIRKZN9grpc_core12_GLOBAL__N_117XdsOverrideHostLb16UpdateAddressMapERKNS0_25EndpointAddressesIteratorEE3$_0JRKNS0_17EndpointAddressesEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i.i.i, %.lr.ph275.i.i.i.i
  %.047273.i.i.i.i = phi i64 [ 0, %.lr.ph275.i.i.i.i ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i.i.i ] ; 7 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.au, i64 %.047273.i.i.i.i) ; 3 uses
  %i.di = add i64 %umin, 576460752303423486
  %i.dj = and i64 %i.di, 576460752303423487       ; 2 uses
  %i.dk = add i64 %umin, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.047273.i.i.i.i, i64 %i.au) ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i, 5
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  store ptr %i.av, ptr %10, align 8, !tbaa !33, !alias.scope !375
  store i64 0, ptr %i.aw, align 8, !tbaa !35, !alias.scope !375
  store i8 0, ptr %i.av, align 8, !tbaa !20, !alias.scope !375
  %.not.i.i.i.i95.i.i.i.i = icmp eq i64 %.047273.i.i.i.i, 0
  br i1 %.not.i.i.i.i95.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = load i64, ptr %i.ax, align 8, !tbaa !35, !noalias !380 ; 3 uses
  %.not4349.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 1 ; 2 uses
  br i1 %.not4349.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i96.i.i.i.i.preheader

.lr.ph.i.i.i.i96.i.i.i.i.preheader:               ; preds = %bb.ao
  %xtraiter = and i64 %i.dk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i96.i.i.i.i.prol

.lr.ph.i.i.i.i96.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i96.i.i.i.i.preheader, %.lr.ph.i.i.i.i96.i.i.i.i.prol
  %i.dn = phi ptr [ %i.ds, %.lr.ph.i.i.i.i96.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ] ; 3 uses
  %.03751.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i96.i.i.i.i.prol ], [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ]
  %.03850.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i.i.i.i96.i.i.i.i.prol ], [ %i.dm, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i96.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ]
  %i.do = add i64 %.03850.i.i.i.i.i.i.i.i.prol, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.03751.i.i.i.i.i.i.i.i.prol, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !35, !noalias !380
  %i.dr = add i64 %i.do, %i.dq                    ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i96.i.i.i.i.prol, !llvm.loop !381

.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i96.i.i.i.i.prol, %.lr.ph.i.i.i.i96.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ], [ %i.dr, %.lr.ph.i.i.i.i96.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ], [ %i.ds, %.lr.ph.i.i.i.i96.i.i.i.i.prol ]
  %.03751.i.i.i.i.i.i.i.i.unr = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i96.i.i.i.i.prol ]
  %.03850.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dm, %.lr.ph.i.i.i.i96.i.i.i.i.preheader ], [ %i.dr, %.lr.ph.i.i.i.i96.i.i.i.i.prol ]
  %i.dt = icmp samesign ult i64 %i.dj, 7
  br i1 %i.dt, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i96.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i96.i.i.i.i, %bb.ao
  %.038.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.ao ], [ %.lcssa.unr, %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit ], [ %i.fb, %.lr.ph.i.i.i.i96.i.i.i.i ] ; 2 uses
  %.not44.i.i.i.i.i.i.i.i = icmp eq i64 %.038.lcssa.i.i.i.i.i.i.i.i, 0
  br i1 %.not44.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i, label %bb.ap

.lr.ph.i.i.i.i96.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i96.i.i.i.i
  %i.du = phi ptr [ %i.fc, %.lr.ph.i.i.i.i96.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit ] ; 9 uses
  %.03751.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i96.i.i.i.i ], [ %.03751.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit ]
  %.03850.i.i.i.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i96.i.i.i.i ], [ %.03850.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i96.i.i.i.i.prol.loopexit ]
  %i.dv = add i64 %.03850.i.i.i.i.i.i.i.i, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.03751.i.i.i.i.i.i.i.i, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !35, !noalias !380
  %i.dy = add i64 %i.dv, %i.dx
  %i.dz = add i64 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !35, !noalias !380
  %i.ec = add i64 %i.dz, %i.eb
  %i.ed = add i64 %i.ec, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !35, !noalias !380
  %i.eg = add i64 %i.ed, %i.ef
  %i.eh = add i64 %i.eg, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !35, !noalias !380
  %i.ek = add i64 %i.eh, %i.ej
  %i.el = add i64 %i.ek, 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  %i.en = load i64, ptr %i.em, align 8, !tbaa !35, !noalias !380
  %i.eo = add i64 %i.el, %i.en
  %i.ep = add i64 %i.eo, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 168
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !35, !noalias !380
  %i.es = add i64 %i.ep, %i.er
  %i.et = add i64 %i.es, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 200
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !35, !noalias !380
  %i.ew = add i64 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 224
  %i.ey = add i64 %i.ew, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 232
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !35, !noalias !380
  %i.fb = add i64 %i.ey, %i.fa                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 2 uses
  %.not43.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.fc, %i.dl
  br i1 %.not43.i.i.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i96.i.i.i.i, !llvm.loop !383

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %.038.lcssa.i.i.i.i.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i unwind label %bb.aq

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.fd = load ptr, ptr %10, align 8, !tbaa !43, !alias.scope !375 ; 2 uses
  %i.fe = load ptr, ptr %.pre.i.i.i.i, align 8, !tbaa !43, !noalias !380
  %i.ff = load i64, ptr %i.ax, align 8, !tbaa !35, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.fe, i64 %i.ff, i1 false)
  br i1 %.not4349.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i, label %.lr.ph55.preheader.i.i.i.i.i.i.i.i

.lr.ph55.preheader.i.i.i.i.i.i.i.i:               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i
  %i.fg = load i64, ptr %i.ax, align 8, !tbaa !35, !noalias !380
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg ; 3 uses
  %i.fi = and i64 %umin, 1
  %lcmp.mod166.not.not = icmp eq i64 %i.fi, 0
  br i1 %lcmp.mod166.not.not, label %.lr.ph55.i.i.i.i.i.i.i.i.prol, label %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph55.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph55.preheader.i.i.i.i.i.i.i.i
  store i8 44, ptr %i.fh, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !43, !noalias !380
  %i.fl = load i64, ptr %i.bn, align 8, !tbaa !35, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr align 1 %i.fk, i64 %i.fl, i1 false)
  %i.fm = load i64, ptr %i.bn, align 8, !tbaa !35, !noalias !380
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  br label %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph55.i.i.i.i.i.i.i.i.prol, %.lr.ph55.preheader.i.i.i.i.i.i.i.i
  %.unr168 = phi ptr [ %i.ay, %.lr.ph55.preheader.i.i.i.i.i.i.i.i ], [ %i.bo, %.lr.ph55.i.i.i.i.i.i.i.i.prol ]
  %.054.i.i.i.i.i.i.i.i.unr = phi ptr [ %.pre.i.i.i.i, %.lr.ph55.preheader.i.i.i.i.i.i.i.i ], [ %i.ay, %.lr.ph55.i.i.i.i.i.i.i.i.prol ]
  %.03153.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fh, %.lr.ph55.preheader.i.i.i.i.i.i.i.i ], [ %i.fn, %.lr.ph55.i.i.i.i.i.i.i.i.prol ]
  %i.fo = icmp eq i64 %i.dj, 0
  br i1 %i.fo, label %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %10, align 8, !tbaa !43, !alias.scope !375 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.av
  br i1 %i.fr, label %.body.i.i.i.i, label %.body.i.i.i.i.sink.split

.lr.ph55.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph55.i.i.i.i.i.i.i.i
  %i.fs = phi ptr [ %i.gg, %.lr.ph55.i.i.i.i.i.i.i.i ], [ %.unr168, %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.054.i.i.i.i.i.i.i.i = phi ptr [ %i.fz, %.lr.ph55.i.i.i.i.i.i.i.i ], [ %.054.i.i.i.i.i.i.i.i.unr, %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.03153.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph55.i.i.i.i.i.i.i.i ], [ %.03153.i.i.i.i.i.i.i.i.unr, %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store i8 44, ptr %.03153.i.i.i.i.i.i.i.i, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.03153.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !43, !noalias !380
  %i.fv = getelementptr inbounds nuw i8, ptr %.054.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !35, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %i.fu, i64 %i.fw, i1 false)
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !35, !noalias !380
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  store i8 44, ptr %i.fy, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !43, !noalias !380
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !35, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %i.gb, i64 %i.gd, i1 false)
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !35, !noalias !380
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %.not45.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.gg, %i.dl
  br i1 %.not45.i.i.i.i.i.i.i.i.1, label %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i.i.i, !llvm.loop !384

_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i: ; preds = %.lr.ph55.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph55.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.gh = add nuw i64 %.047273.i.i.i.i, 1         ; 5 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.047273.i.i.i.i, %i.au
  br i1 %exitcond.not.i.i.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i
  invoke void @_ZN4absl12lts_2025051213base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc103.i.i.i.i unwind label %bb.bq

.noexc103.i.i.i.i:                                ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %_ZN4absl12lts_202505127StrJoinINS0_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEES8_RKT_St17basic_string_viewIcS6_E.exit.i.i.i.i
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i.i, i64 %i.gh ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  store ptr %i.az, ptr %11, align 8, !tbaa !33, !alias.scope !391
  store i64 0, ptr %i.ba, align 8, !tbaa !35, !alias.scope !391
  store i8 0, ptr %i.az, align 8, !tbaa !20, !alias.scope !391
  %.not.i.i.i.i105.i.i.i.i = icmp eq i64 %i.au, %i.gh
  br i1 %.not.i.i.i.i105.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = sub nuw i64 %i.au, %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !35, !noalias !396 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %.not4349.i.i.i.i106.i.i.i.i = icmp eq i64 %i.gj, 1 ; 2 uses
  br i1 %.not4349.i.i.i.i106.i.i.i.i, label %._crit_edge.i.i.i.i111.i.i.i.i, label %.lr.ph.i.i.i.i107.i.i.i.i

._crit_edge.i.i.i.i111.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i107.i.i.i.i, %bb.at
  %.038.lcssa.i.i.i.i112.i.i.i.i = phi i64 [ %i.gl, %bb.at ], [ %i.gr, %.lr.ph.i.i.i.i107.i.i.i.i ] ; 2 uses
  %.not44.i.i.i.i113.i.i.i.i = icmp eq i64 %.038.lcssa.i.i.i.i112.i.i.i.i, 0
  br i1 %.not44.i.i.i.i113.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.au

.lr.ph.i.i.i.i107.i.i.i.i:                        ; preds = %bb.at, %.lr.ph.i.i.i.i107.i.i.i.i
  %i.gn = phi ptr [ %i.gs, %.lr.ph.i.i.i.i107.i.i.i.i ], [ %i.gm, %bb.at ] ; 2 uses
  %.03751.i.i.i.i108.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i107.i.i.i.i ], [ %i.gi, %bb.at ]
  %.03850.i.i.i.i109.i.i.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i107.i.i.i.i ], [ %i.gl, %bb.at ]
  %i.go = add i64 %.03850.i.i.i.i109.i.i.i.i, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.03751.i.i.i.i108.i.i.i.i, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !35, !noalias !396
  %i.gr = add i64 %i.go, %i.gq                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 2 uses
  %.not43.i.i.i.i110.i.i.i.i = icmp eq ptr %i.gs, %.pre303.i.i.i.i
  br i1 %.not43.i.i.i.i110.i.i.i.i, label %._crit_edge.i.i.i.i111.i.i.i.i, label %.lr.ph.i.i.i.i107.i.i.i.i, !llvm.loop !383

bb.au:                                            ; preds = %._crit_edge.i.i.i.i111.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.038.lcssa.i.i.i.i112.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i117.i.i.i.i unwind label %bb.av

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i117.i.i.i.i: ; preds = %bb.au
  %i.gt = load ptr, ptr %11, align 8, !tbaa !43, !alias.scope !391 ; 2 uses
  %i.gu = load ptr, ptr %i.gi, align 8, !tbaa !43, !noalias !396
  %i.gv = load i64, ptr %i.gk, align 8, !tbaa !35, !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr align 1 %i.gu, i64 %i.gv, i1 false)
  br i1 %.not4349.i.i.i.i106.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph55.preheader.i.i.i.i118.i.i.i.i

.lr.ph55.preheader.i.i.i.i118.i.i.i.i:            ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i117.i.i.i.i
  %i.gw = load i64, ptr %i.gk, align 8, !tbaa !35, !noalias !396
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  br label %.lr.ph55.i.i.i.i119.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %11, align 8, !tbaa !43, !alias.scope !391 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.az
  br i1 %i.ha, label %.body123.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i114.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i114.i.i.i.i: ; preds = %bb.av
  %i.hb = load i64, ptr %i.az, align 8, !tbaa !20, !alias.scope !391
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #41
  br label %.body123.i.i.i.i

.lr.ph55.i.i.i.i119.i.i.i.i:                      ; preds = %.lr.ph55.i.i.i.i119.i.i.i.i, %.lr.ph55.preheader.i.i.i.i118.i.i.i.i
  %i.hd = phi ptr [ %i.hk, %.lr.ph55.i.i.i.i119.i.i.i.i ], [ %i.gm, %.lr.ph55.preheader.i.i.i.i118.i.i.i.i ] ; 3 uses
  %.054.i.i.i.i120.i.i.i.i = phi ptr [ %i.hd, %.lr.ph55.i.i.i.i119.i.i.i.i ], [ %i.gi, %.lr.ph55.preheader.i.i.i.i118.i.i.i.i ]
  %.03153.i.i.i.i121.i.i.i.i = phi ptr [ %i.hj, %.lr.ph55.i.i.i.i119.i.i.i.i ], [ %i.gx, %.lr.ph55.preheader.i.i.i.i118.i.i.i.i ] ; 2 uses
  store i8 44, ptr %.03153.i.i.i.i121.i.i.i.i, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.03153.i.i.i.i121.i.i.i.i, i64 1 ; 2 uses
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !43, !noalias !396
  %i.hg = getelementptr inbounds nuw i8, ptr %.054.i.i.i.i120.i.i.i.i, i64 40 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !35, !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.he, ptr align 1 %i.hf, i64 %i.hh, i1 false)
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !35, !noalias !396
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 32 ; 2 uses
  %.not45.i.i.i.i122.i.i.i.i = icmp eq ptr %i.hk, %.pre303.i.i.i.i
  br i1 %.not45.i.i.i.i122.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph55.i.i.i.i119.i.i.i.i, !llvm.loop !384

.loopexit.i.i.i.i:                                ; preds = %.lr.ph55.i.i.i.i119.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i117.i.i.i.i, %._crit_edge.i.i.i.i111.i.i.i.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.hl = load ptr, ptr %7, align 8, !tbaa !363
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %.047273.i.i.i.i ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !35
  %i.hq = load i64, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.hr = icmp ne i64 %i.hq, 0                    ; 2 uses
  %i.hs = select i1 %i.hr, ptr @.str.46, ptr @.str.47
  %i.ht = zext i1 %i.hr to i64
  %i.hu = load ptr, ptr %10, align 8, !tbaa !43
  %i.hv = load i64, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.hw = icmp ne i64 %i.hv, 0                    ; 2 uses
  %i.hx = select i1 %i.hw, ptr @.str.46, ptr @.str.47
  %i.hy = zext i1 %i.hw to i64
  %i.hz = load ptr, ptr %11, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !397
  store i64 %i.hp, ptr %4, align 8, !noalias !397
  store ptr %i.hn, ptr %i.bb, align 8, !noalias !397
  store i64 %i.ht, ptr %i.bc, align 8, !noalias !397
  store ptr %i.hs, ptr %i.bd, align 8, !noalias !397
  store i64 %i.hq, ptr %i.be, align 8, !noalias !397
  store ptr %i.hu, ptr %i.bf, align 8, !noalias !397
  store i64 %i.hy, ptr %i.bg, align 8, !noalias !397
  store ptr %i.hx, ptr %i.bh, align 8, !noalias !397
  store i64 %i.hv, ptr %i.bi, align 8, !noalias !397
  store ptr %i.hz, ptr %i.bj, align 8, !noalias !397
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %4, i64 5)
          to label %bb.aw unwind label %bb.br

bb.aw:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !397
  %i.ia = load ptr, ptr %13, align 8, !tbaa !43
  %i.ib = load i64, ptr %i.bk, align 8, !tbaa !35
  invoke void @_ZN9grpc_core16RefCountedString4MakeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::RefCountedPtr.224") align 8 dereferenceable(8) %12, i64 %i.ib, ptr %i.ia)
          to label %_ZN9grpc_core21RefCountedStringValueC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i unwind label %bb.bs

_ZN9grpc_core21RefCountedStringValueC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aw
  %i.ic = load ptr, ptr %13, align 8, !tbaa !43   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.bl
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i: ; preds = %_ZN9grpc_core21RefCountedStringValueC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.ie = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i: ; preds = %_ZN9grpc_core21RefCountedStringValueC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %i.ig = load ptr, ptr %i.bm, align 8, !tbaa !400, !nonnull !148, !align !401 ; 4 uses
  %i.ih = load ptr, ptr %7, align 8, !tbaa !363
  %i.ii = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #37
          to label %.noexc137.i.i.i.i unwind label %bb.bt ; 9 uses

.noexc137.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %.047273.i.i.i.i ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 48 ; 7 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !33
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !43 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.io, ptr %i.a, align 8, !tbaa !176
  %i.ip = icmp ugt i64 %i.io, 15
  br i1 %i.ip, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.noexc137.i.i.i.i
end_hunk_0
