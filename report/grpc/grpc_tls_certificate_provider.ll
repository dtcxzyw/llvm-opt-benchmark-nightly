Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/grpc_tls_certificate_provider?download=true
inline.NumInlined: 2488
inline.NumDeleted: 1246
begin_hunk_0_@_ZN9grpc_core30FileWatcherCertificateProvider28ReadRootCertificatesFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.j, null              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.n = select i1 %.not.i.i, ptr %i.m, ptr %i.l  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = and i64 %i.p, 255
  %i.r = select i1 %.not.i.i, i64 %i.q, i64 %i.p  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !29
  %i.t = icmp eq ptr %i.n, null
  %i.u = icmp ne i64 %i.r, 0
  %or.cond.i.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #40
          to label %.noexc10 unwind label %bb.p

.noexc10:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.r, ptr %i.a, align 8, !tbaa !80
  %i.v = icmp ugt i64 %i.r, 15
  br i1 %i.v, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.k
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.p   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i
  store ptr %i.w, ptr %5, align 8, !tbaa !31
  %i.x = load i64, ptr %i.a, align 8, !tbaa !80
  store i64 %i.x, ptr %i.s, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %bb.k
  %i.y = phi ptr [ %i.w, %.noexc11 ], [ %i.s, %bb.k ] ; 2 uses
  switch i64 %i.r, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.n, align 1, !tbaa !33
  store i8 %i.z, ptr %i.y, align 1, !tbaa !33
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %5, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !29
  %i.af = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !32 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  store ptr %i.af, ptr %0, align 8, !tbaa !31
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !33
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !33
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = phi i64 [ %i.ah, %bb.o ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.an, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.q

bb.p:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %i.ap = load i64, ptr %3, align 8, !tbaa !75    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.u

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !176 ; 4 uses
  %i.at = icmp ugt ptr %i.as, inttoptr (i64 1 to ptr)
  br i1 %i.at, label %bb.r, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.r:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.au = atomicrmw sub ptr %i.as, i64 1 acq_rel, align 8
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.s, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !180
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.t, !inline_history !6

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.ba = trunc i64 %i.ap to i1
  br i1 %i.ba, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = inttoptr i64 %i.ap to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.r, %bb.s, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.x:                                             ; preds = %bb.p, %bb.h
  %.pn7.pn = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %.pn, %bb.h ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core30FileWatcherCertificateProvider32ReadIdentityKeyCertPairFromFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.93", align 8 ; 14 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %12 = alloca %"class.absl::lts_20250512::StatusOr.93", align 8 ; 14 uses
  %13 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::vector", align 8      ; 12 uses
  %17 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %18 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %19 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %.promoted = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted233 = load ptr, ptr %i.s, align 8
  %.promoted265 = load ptr, ptr %i.u, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %i.x = phi ptr [ %.promoted265, %bb.a ], [ %i.gf, %.thread ] ; 30 uses
  %i.y = phi ptr [ %.promoted233, %bb.a ], [ %i.gg, %.thread ] ; 30 uses
  %.048232 = phi i32 [ 0, %bb.a ], [ %i.gi, %.thread ]
  %i.z = phi ptr [ %.promoted, %bb.a ], [ %i.gh, %.thread ] ; 30 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store i64 0, ptr %i.f, align 8, !tbaa !80
  call void @_ZN9grpc_core23GetFileModificationTimeEPKcPl(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %7, ptr noundef %i.aa, ptr noundef nonnull %i.f)
  %i.ab = load i64, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #37
  unreachable

_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit: ; preds = %bb.b, %bb.c
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str, i32 noundef 362) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 46, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit: ; preds = %bb.e
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.thread

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit, %bb.f, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ct

bb.h:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 0, ptr %i.e, align 8, !tbaa !80
  call void @_ZN9grpc_core23GetFileModificationTimeEPKcPl(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %6, ptr noundef %i.ak, ptr noundef nonnull %i.e)
  %i.al = load i64, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit77, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = inttoptr i64 %i.al to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit77 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit77: ; preds = %bb.h, %bb.i
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str, i32 noundef 369) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 46, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit78 unwind label %bb.m

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit78: ; preds = %bb.k
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit78
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit79 unwind label %bb.m

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit79: ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80 unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit79
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.thread

bb.m:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit79, %bb.l, %bb.k, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit78
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.ct

bb.n:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_119GetModificationTimeEPKc.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZN9grpc_core8LoadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.93") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.au = load i64, ptr %10, align 8, !tbaa !75
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str, i32 noundef 376) #35
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 13, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.p
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.t       ; 2 uses

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 9, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.q
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit81 unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit81: ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82 unwind label %bb.t

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit81
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ch

bb.s:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit81, %bb.r, %bb.q, %bb.p, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.az, %bb.t ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.co

bb.v:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZN9grpc_core8LoadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.93") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %12, align 8, !tbaa !75
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str, i32 noundef 383) #35
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 13, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit83 unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit83: ; preds = %bb.y
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit83
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 9, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit84 unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit84: ; preds = %bb.z
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.ad     ; 2 uses

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit84
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit85 unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit85: ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86 unwind label %bb.ad

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit85
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.by

bb.ab:                                            ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.cg

bb.ac:                                            ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit85, %bb.aa, %bb.z, %bb.y, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit84, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit83
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #36
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn52 = phi { ptr, i32 } [ %i.bg, %bb.ad ], [ %i.bf, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.cf

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.bh = load i64, ptr %10, align 8, !tbaa !75
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ah, label %bb.ag, !prof !77

bb.ag:                                            ; preds = %bb.af
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %10) #40
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.bj, null             ; 2 uses
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = select i1 %.not.i.i, ptr %i.i, ptr %i.bk ; 3 uses
  %i.bm = load i64, ptr %i.j, align 8             ; 2 uses
  %i.bn = and i64 %i.bm, 255
  %i.bo = select i1 %.not.i.i, i64 %i.bn, i64 %i.bm ; 5 uses
  store ptr %i.k, ptr %14, align 8, !tbaa !29
  %i.bp = icmp eq ptr %i.bl, null
  %i.bq = icmp ne i64 %i.bo, 0
  %or.cond.i.i.i = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #40
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.bo, ptr %i.d, align 8, !tbaa !80
  %i.br = icmp ugt i64 %i.bo, 15
  br i1 %i.br, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc88 unwind label %.loopexit ; 2 uses

.noexc88:                                         ; preds = %.noexc.i.i.i
  store ptr %i.bs, ptr %14, align 8, !tbaa !31
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !80
  store i64 %i.bt, ptr %i.k, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc88, %bb.aj
  %i.bu = phi ptr [ %i.bs, %.noexc88 ], [ %i.k, %bb.aj ] ; 2 uses
  switch i64 %i.bo, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bv = load i8, ptr %i.bl, align 1, !tbaa !33
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !33
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bl, i64 %i.bo, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !80  ; 2 uses
  store i64 %i.bw, ptr %i.l, align 8, !tbaa !32
  %i.bx = load ptr, ptr %14, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.bz = load i64, ptr %12, align 8, !tbaa !75
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ao, label %bb.an, !prof !77

bb.an:                                            ; preds = %bb.am
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %12) #40
          to label %.noexc89 unwind label %bb.bc

.noexc89:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !176
  %.not.i.i91 = icmp eq ptr %i.cb, null           ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8
  %i.cd = select i1 %.not.i.i91, ptr %i.o, ptr %i.cc ; 3 uses
  %i.ce = load i64, ptr %i.p, align 8             ; 2 uses
  %i.cf = and i64 %i.ce, 255
  %i.cg = select i1 %.not.i.i91, i64 %i.cf, i64 %i.ce ; 5 uses
  store ptr %i.q, ptr %15, align 8, !tbaa !29
  %i.ch = icmp eq ptr %i.cd, null
  %i.ci = icmp ne i64 %i.cg, 0
  %or.cond.i.i.i97 = and i1 %i.ch, %i.ci
  br i1 %or.cond.i.i.i97, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #40
          to label %.noexc100 unwind label %.loopexit.split-lp148

.noexc100:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !80
  %i.cj = icmp ugt i64 %i.cg, 15
  br i1 %i.cj, label %.noexc.i.i.i99, label %._crit_edge.i.i.i.i98

.noexc.i.i.i99:                                   ; preds = %bb.aq
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc101 unwind label %.loopexit147 ; 2 uses

.noexc101:                                        ; preds = %.noexc.i.i.i99
  store ptr %i.ck, ptr %15, align 8, !tbaa !31
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !80
  store i64 %i.cl, ptr %i.q, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i98

._crit_edge.i.i.i.i98:                            ; preds = %.noexc101, %bb.aq
  %i.cm = phi ptr [ %i.ck, %.noexc101 ], [ %i.q, %bb.aq ] ; 2 uses
  switch i64 %i.cg, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i98
  %i.cn = load i8, ptr %i.cd, align 1, !tbaa !33
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !33
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.cd, i64 %i.cg, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i.i98
  %i.co = load i64, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  store i64 %i.co, ptr %i.r, align 8, !tbaa !32
  %i.cp = load ptr, ptr %15, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.cr = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.au unwind label %bb.bd     ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.cs = load ptr, ptr %2, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !80
  invoke void @_ZN9grpc_core23GetFileModificationTimeEPKcPl(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef %i.cs, ptr noundef nonnull %i.b)
          to label %.noexc103 unwind label %bb.be

.noexc103:                                        ; preds = %bb.au
  %i.ct = load i64, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.cu = trunc i64 %i.ct to i1
  br i1 %i.cu, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.noexc103
  %i.cv = inttoptr i64 %i.ct to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cv)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #37
  unreachable

bb.ax:                                            ; preds = %bb.av, %.noexc103
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not = icmp eq i64 %i.ag, %i.cy
  br i1 %.not, label %bb.bi, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str, i32 noundef 395) #35
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 44, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit unwind label %bb.bg

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit: ; preds = %bb.az
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ba unwind label %bb.bg     ; 2 uses

bb.ba:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 35, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.bg

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %bb.ba
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108 unwind label %bb.bg

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.bu

bb.bb:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

.loopexit:                                        ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.bc:                                            ; preds = %bb.an
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

.loopexit147:                                     ; preds = %.noexc.i.i.i99
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

.loopexit.split-lp148:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.bd:                                            ; preds = %bb.at
  %i.dc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.bx

bb.be:                                            ; preds = %bb.au
  %i.dd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.bx

bb.bf:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %bb.ba, %bb.az, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #36
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn62 = phi { ptr, i32 } [ %i.df, %bb.bg ], [ %i.de, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.bx

bb.bi:                                            ; preds = %bb.ax
  %i.dg = load ptr, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 0, ptr %i.a, align 8, !tbaa !80
  invoke void @_ZN9grpc_core23GetFileModificationTimeEPKcPl(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, ptr noundef %i.dg, ptr noundef nonnull %i.a)
          to label %.noexc109 unwind label %bb.bp

.noexc109:                                        ; preds = %bb.bi
  %i.dh = load i64, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.di = trunc i64 %i.dh to i1
  br i1 %i.di, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.noexc109
  %i.dj = inttoptr i64 %i.dh to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dj)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj, %.noexc109
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not58 = icmp eq i64 %i.aq, %i.dm
  br i1 %.not58, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str, i32 noundef 402) #35
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 44, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit112 unwind label %bb.br

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit112: ; preds = %bb.bn
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bo unwind label %bb.br     ; 2 uses

bb.bo:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit112
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 35, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit114 unwind label %bb.br

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit114: ; preds = %bb.bo
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116 unwind label %bb.br

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit114
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bi
  %i.do = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bm
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  br label %bb.bs

bb.br:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit114, %bb.bo, %bb.bn, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit112
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.u, align 8
  store ptr %i.z, ptr %0, align 8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #36
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn59 = phi { ptr, i32 } [ %i.dq, %bb.br ], [ %i.dp, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bl
  %i.dr = load ptr, ptr %16, align 8, !tbaa !100
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.dt = load ptr, ptr %i.v, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.w, align 8, !tbaa !84
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116, %bb.bt, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108
  %i.du = phi ptr [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108 ], [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116 ], [ %i.dt, %bb.bt ] ; 2 uses
  %i.dv = phi ptr [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108 ], [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116 ], [ %i.ds, %bb.bt ] ; 2 uses
  %i.dw = phi ptr [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108 ], [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116 ], [ %i.dr, %bb.bt ] ; 2 uses
  %i.dx = phi i1 [ true, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit108 ], [ true, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit116 ], [ false, %bb.bt ]
  %i.dy = load ptr, ptr %16, align 8, !tbaa !100
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !101
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9grpc_core14PemKeyCertPairEEEvT_S5_(ptr noundef %i.dy, ptr noundef %i.dz)
          to label %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.bw

_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.bu
  %i.ea = load ptr, ptr %16, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i
  %i.eb = load ptr, ptr %i.v, align 8, !tbaa !102
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #38
  br label %_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.dv, ptr %i.s, align 8
  store ptr %i.du, ptr %i.u, align 8
  store ptr %i.dw, ptr %0, align 8
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #37
  unreachable

_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.eh = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.q
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev.exit
  %i.ej = load i64, ptr %i.q, align 8, !tbaa !33
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.el = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.k
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.en = load i64, ptr %i.k, align 8, !tbaa !33
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.by

bb.bx:                                            ; preds = %bb.be, %bb.bh, %bb.bs, %bb.bp, %bb.bd
  %.pn62.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.bd ], [ %.pn62, %bb.bh ], [ %i.dd, %bb.be ], [ %.pn59, %bb.bs ], [ %i.do, %bb.bp ] ; 2 uses
  call void @_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.ep = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.q
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.bx
  %i.er = load i64, ptr %i.q, align 8, !tbaa !33
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.bx, %.loopexit147, %.loopexit.split-lp148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.bc
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.bc ], [ %.pn62.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp148 ], [ %lpad.loopexit149, %.loopexit147 ], [ %.pn62.pn.pn, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.et = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.k
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !33
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.bb
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.bb ], [ %.pn62.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn62.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.cf

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86
  %i.ex = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86 ] ; 3 uses
  %i.ey = phi ptr [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86 ] ; 3 uses
  %i.ez = phi ptr [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86 ] ; 3 uses
  %.243 = phi i1 [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ true, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit86 ]
  %i.fa = load i64, ptr %12, align 8, !tbaa !75   ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.cc

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.by
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !176 ; 4 uses
  %i.fd = icmp ugt ptr %i.fc, inttoptr (i64 1 to ptr)
  br i1 %i.fd, label %bb.bz, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.bz:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.fe = atomicrmw sub ptr %i.fc, i64 1 acq_rel, align 8
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.ca, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !180
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.cb, !inline_history !6

bb.cb:                                            ; preds = %bb.ca
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.ey, ptr %i.s, align 8
  store ptr %i.ex, ptr %i.u, align 8
  store ptr %i.ez, ptr %0, align 8
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #37
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.fk = trunc i64 %i.fa to i1
  br i1 %i.fk, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fl = inttoptr i64 %i.fa to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fl)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.ey, ptr %i.s, align 8
  store ptr %i.ex, ptr %i.u, align 8
  store ptr %i.ez, ptr %0, align 8
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #37
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.bz, %bb.ca, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ch

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.ae
  %.pn62.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn52, %bb.ae ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #34
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ab
  %.pn62.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn, %bb.cf ], [ %i.be, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.co

bb.ch:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82
  %i.fo = phi ptr [ %i.ex, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit ], [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82 ] ; 4 uses
  %i.fp = phi ptr [ %i.ey, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit ], [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82 ] ; 4 uses
  %i.fq = phi ptr [ %i.ez, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit ], [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82 ] ; 4 uses
  %.344 = phi i1 [ %.243, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit ], [ true, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit82 ]
  %i.fr = load i64, ptr %10, align 8, !tbaa !75   ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i126, label %bb.cl

_ZN4absl12lts_202505126StatusD2Ev.exit.i126:      ; preds = %bb.ch
  %i.ft = load ptr, ptr %i.g, align 8, !tbaa !176 ; 4 uses
  %i.fu = icmp ugt ptr %i.ft, inttoptr (i64 1 to ptr)
  br i1 %i.fu, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i126
  %i.fv = atomicrmw sub ptr %i.ft, i64 1 acq_rel, align 8
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !180
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.ft)
          to label %bb.cp unwind label %bb.ck, !inline_history !6

bb.ck:                                            ; preds = %bb.cj
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.fp, ptr %i.s, align 8
  store ptr %i.fo, ptr %i.u, align 8
  store ptr %i.fq, ptr %0, align 8
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #37
  unreachable

bb.cl:                                            ; preds = %bb.ch
  %i.gb = trunc i64 %i.fr to i1
  br i1 %i.gb, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gc = inttoptr i64 %i.fr to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gc)
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.fp, ptr %i.s, align 8
  store ptr %i.fo, ptr %i.u, align 8
  store ptr %i.fq, ptr %0, align 8
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #37
  unreachable

bb.co:                                            ; preds = %bb.cg, %bb.u
  %.pn62.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %.pn, %bb.u ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.ci, %_ZN4absl12lts_202505126StatusD2Ev.exit.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br i1 %.344, label %.thread, label %.loopexit152

.thread:                                          ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %bb.cp
  %i.gf = phi ptr [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80 ], [ %i.x, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.fo, %bb.cp ] ; 2 uses
  %i.gg = phi ptr [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80 ], [ %i.y, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.fp, %bb.cp ] ; 2 uses
  %i.gh = phi ptr [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit80 ], [ %i.z, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.fq, %bb.cp ] ; 2 uses
  %i.gi = add nuw nsw i32 %.048232, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gi, 3
  br i1 %exitcond.not, label %bb.cq, label %bb.b, !llvm.loop !291

bb.cq:                                            ; preds = %.thread
  store ptr %i.gg, ptr %i.s, align 8
  store ptr %i.gf, ptr %i.u, align 8
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str, i32 noundef 409) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 66, ptr nonnull @.str.15)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit unwind label %bb.cr

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit: ; preds = %bb.cq
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit130 unwind label %bb.cr

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit130: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  store i8 0, ptr %i.w, align 8, !tbaa !84
  br label %bb.cs

bb.cr:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit, %bb.cq
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.ct

.loopexit152:                                     ; preds = %bb.cp
  store ptr %i.fp, ptr %i.s, align 8
  store ptr %i.fo, ptr %i.u, align 8
  store ptr %i.fq, ptr %0, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit152, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit130
  ret void

bb.ct:                                            ; preds = %bb.g, %bb.co, %bb.m, %bb.cr
  %.pn75 = phi { ptr, i32 } [ %i.gj, %bb.cr ], [ %i.aj, %bb.g ], [ %i.at, %bb.m ], [ %.pn62.pn.pn.pn.pn.pn.pn.pn, %bb.co ]
  resume { ptr, i32 } %.pn75
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !84, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !84
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9grpc_core14PemKeyCertPairEEEvT_S5_(ptr noundef %i.d, ptr noundef %i.f)
          to label %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i.i.i.i unwind label %bb.d

_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #38
  br label %_ZNSt17_Optional_payloadISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

_ZNSt17_Optional_payloadISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN9grpc_core14PemKeyCertPairES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN9grpc_core12_GLOBAL__N_122HasRootCertInfoChangedERKN4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15SpiffeBundleMapEEEEEESH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !75     ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !75     ; 3 uses
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, %i.a
  %i.e = and i64 %i.d, 1
  %or.cond.not.i.i = icmp eq i64 %i.e, 0
  br i1 %or.cond.not.i.i, label %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit:  ; preds = %bb.b
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = tail call noundef zeroext i1 @_ZNK4absl12lts_2025051215status_internal9StatusRepeqERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.g)
  br i1 %i.h, label %thread-pre-split, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

thread-pre-split:                                 ; preds = %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit
  %.pr = load i64, ptr %0, align 8, !tbaa !75
  br label %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15

_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15: ; preds = %bb.a, %thread-pre-split
  %i.i = phi i64 [ %.pr, %thread-pre-split ], [ %i.a, %bb.a ]
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit: ; preds = %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 7 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = load i64, ptr %1, align 8, !tbaa !75
  %i.n = icmp eq i64 %i.m, 1                      ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit
  br i1 %i.n, label %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit9, label %bb.d, !prof !77

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %1) #40
  unreachable

_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit9: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104
  %i.q = icmp ne ptr %i.p, null
  br label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.e:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit
  br i1 %i.n, label %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit10, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %1) #40
  unreachable

_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit10: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 6 uses
  %.not.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i11, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit, label %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13

_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13: ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.w = load i8, ptr %i.v, align 8, !tbaa !89    ; 3 uses
  switch i8 %i.u, label %bb.m [
    i8 0, label %bb.g
    i8 1, label %bb.j
    i8 -1, label %bb.l
  ]

bb.g:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZSt3getILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

_ZSt3getILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.h:                                             ; preds = %_ZSt3getILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !31
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.ae, i64 %i.z)
  %i.ag = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.j:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13
  %i.ah = icmp eq i8 %i.w, 1
  br i1 %i.ah, label %_ZSt3getILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

_ZSt3getILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !69
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.k:                                             ; preds = %_ZSt3getILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.as = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12SpiffeBundleEEESE_EEbT_SF_T0_(ptr %i.ao, ptr nonnull %i.ap, ptr %i.ar)
  %i.at = xor i1 %i.as, true
  br label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.l:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13
  %i.au = icmp ne i8 %i.w, -1
  br label %_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit

bb.m:                                             ; preds = %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit13
  unreachable

_ZStneIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEbRKSt7variantIJDpT_EESD_.exit: ; preds = %bb.b, %bb.l, %bb.k, %_ZSt3getILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.h, %_ZSt3getILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i, %bb.g, %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit10, %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15, %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit, %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit9
  %.0 = phi i1 [ true, %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit ], [ %i.q, %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit9 ], [ false, %_ZN4absl12lts_20250512neERKNS0_6StatusES3_.exit.thread15 ], [ true, %bb.j ], [ true, %_ZNKR4absl12lts_202505128StatusOrISt10shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEEEEdeEv.exit10 ], [ %i.au, %bb.l ], [ true, %bb.g ], [ false, %bb.h ], [ true, %_ZSt3getILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i ], [ %i.ag, %bb.i ], [ %i.at, %bb.k ], [ true, %_ZSt3getILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKSC_.exit.i.i.i.i.i.i.i ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i32 noundef, i64, ptr, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load i64, ptr %.05.i.i, align 8, !tbaa !75 ; 2 uses
end_hunk_0
