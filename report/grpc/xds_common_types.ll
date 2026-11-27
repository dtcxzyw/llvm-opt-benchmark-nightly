Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_common_types?download=true
inline.NumInlined: 1910
inline.NumDeleted: 995
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstance8ToStringB5cxx11Ev:bb.a
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.h, ptr %i.g)
          to label %.thread unwind label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.g

.thread:                                          ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.thread
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.2)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.q, %bb.f ], [ %i.n, %bb.e ]
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 17, ptr nonnull @.str.3)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = load i64, ptr %i.t, align 8, !tbaa !17
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.w, ptr %i.v)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %.thread, %bb.h, %bb.e
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.4)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstance5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  store i8 123, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i8, ptr %i.d, align 8, !tbaa !20
  switch i8 %i.e, label %bb.g [
    i8 -1, label %bb.b
    i8 0, label %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread"
    i8 1, label %bb.c
    i8 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.57, ptr %i.g, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #25
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 22, ptr nonnull @.str.58)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstance8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(65) %1)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.noexc24
  %i.h = load ptr, ptr %2, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.j, ptr %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc25
  %i.k = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON9grpc_core12OverloadTypeIJZNKS5_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS8_8ToStringB5cxx11EvE3$_1ZNKS8_8ToStringB5cxx11EvE3$_2EEERKSt7variantIJSt9monostateNS7_33CertificateProviderPluginInstanceENS8_15SystemRootCertsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESD_SK_.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON9grpc_core12OverloadTypeIJZNKS5_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS8_8ToStringB5cxx11EvE3$_1ZNKS8_8ToStringB5cxx11EvE3$_2EEERKSt7variantIJSt9monostateNS7_33CertificateProviderPluginInstanceENS8_15SystemRootCertsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESD_SK_.exit.i.i.i"

bb.e:                                             ; preds = %.noexc25
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON9grpc_core12OverloadTypeIJZNKS5_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS8_8ToStringB5cxx11EvE3$_1ZNKS8_8ToStringB5cxx11EvE3$_2EEERKSt7variantIJSt9monostateNS7_33CertificateProviderPluginInstanceENS8_15SystemRootCertsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESD_SK_.exit.i.i.i": ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit"

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 28, ptr nonnull @.str.59)
          to label %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.a
  unreachable

"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit": ; preds = %bb.f, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON9grpc_core12OverloadTypeIJZNKS5_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS8_8ToStringB5cxx11EvE3$_1ZNKS8_8ToStringB5cxx11EvE3$_2EEERKSt7variantIJSt9monostateNS7_33CertificateProviderPluginInstanceENS8_15SystemRootCertsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESD_SK_.exit.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.p, label %bb.h

"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread": ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.p, label %.thread

bb.h:                                             ; preds = %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit"
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.2)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread", %bb.h
  %i.af = phi ptr [ %i.v, %bb.h ], [ %i.aa, %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread" ]
  %i.ag = phi ptr [ %i.x, %bb.h ], [ %i.ac, %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread" ]
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 25, ptr nonnull @.str.5)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.thread
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !85 ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 3 uses
  %.not46 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not46, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK9grpc_core13StringMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(49) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %3, align 8, !tbaa !18
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !17
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.am, ptr %i.al)
          to label %bb.l unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.l
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %.not.peel = icmp eq ptr %i.ar, %i.ai
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.6)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.038.047 = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.2)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK9grpc_core13StringMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(49) %.sroa.038.047)
          to label %bb.n unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %3, align 8, !tbaa !18
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !17
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.at, ptr %i.as)
          to label %bb.o unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ak
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.038.047, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.ai
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !83

.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ak
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.f, %.noexc24, %bb.c, %bb.b, %bb.h, %.thread, %bb.p, %._crit_edge
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit.thread", %._crit_edge, %"_ZN9grpc_core5MatchIJZNKS_16CommonTlsContext28CertificateValidationContext8ToStringB5cxx11EvE3$_0ZNKS2_8ToStringB5cxx11EvE3$_1ZNKS2_8ToStringB5cxx11EvE3$_2ESt9monostateJNS1_33CertificateProviderPluginInstanceENS2_15SystemRootCertsEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSD_DpT1_EESB_.exit"
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.4)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn20 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.body
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  resume { ptr, i32 } %.pn20
}

declare void @_ZNK9grpc_core13StringMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK9grpc_core16CommonTlsContext28CertificateValidationContext5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core16CommonTlsContext8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  store i8 123, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i64 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 34, ptr nonnull @.str.7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK9grpc_core16CommonTlsContext33CertificateProviderPluginInstance8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.n, ptr %i.l)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !14
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  br label %.thread

bb.f:                                             ; preds = %bb.q, %bb.k, %bb.j, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !14
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.af, %i.ah
  %i.aj = select i1 %i.ad, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.q, label %bb.k
end_hunk_0
