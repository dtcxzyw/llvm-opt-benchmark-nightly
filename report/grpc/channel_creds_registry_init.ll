Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel_creds_registry_init?download=true
inline.NumInlined: 1717
inline.NumDeleted: 924
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core22XdsChannelCredsFactory6Config10ParseProtoESt17basic_string_viewIcSt11char_traitsIcEERKSt3mapINSt7__cxx1112basic_stringIcS4_SaIcEEENS_33CertificateProviderStoreInterface16PluginDefinitionESt4lessISA_ESaISt4pairIKSA_SC_EEEPNS_16ValidationErrorsE:bb.a
  %i.ch = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ad, label %_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit60, !prof !31

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !311
  br label %_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit60

bb.ae:                                            ; preds = %bb.d, %_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.a)
          to label %_ZN3upb5ArenaD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #32
  unreachable

_ZN3upb5ArenaD2Ev.exit:                           ; preds = %bb.ae
  ret void

_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit60: ; preds = %bb.ad, %bb.ac, %bb.h
  %.pn33 = phi { ptr, i32 } [ %.pn29.pn, %bb.ad ], [ %i.w, %bb.h ], [ %.pn29.pn, %bb.ac ]
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.a)
          to label %_ZN3upb5ArenaD2Ev.exit63 unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit60
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #32
  unreachable

_ZN3upb5ArenaD2Ev.exit63:                         ; preds = %_ZN9grpc_core13RefCountedPtrINS_22XdsChannelCredsFactory6ConfigEED2Ev.exit60
  resume { ptr, i32 } %.pn33
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core22XdsChannelCredsFactory6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9grpc_core22XdsChannelCredsFactory6ConfigE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !6
  br label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core22XdsChannelCredsFactory6ConfigD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9grpc_core22XdsChannelCredsFactory6ConfigE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9grpc_core22XdsChannelCredsFactory6ConfigD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN9grpc_core22XdsChannelCredsFactory6ConfigD2Ev.exit, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !315
  br label %_ZN9grpc_core22XdsChannelCredsFactory6ConfigD2Ev.exit

_ZN9grpc_core22XdsChannelCredsFactory6ConfigD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK9grpc_core22XdsChannelCredsFactory6Config4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret { i64, ptr } { i64 0, ptr @.str.44 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK9grpc_core22XdsChannelCredsFactory6Config10proto_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret { i64, ptr } { i64 71, ptr @.str.47 }
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core22XdsChannelCredsFactory6Config6EqualsERKNS_18ChannelCredsConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 4 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  %.mux = select i1 %i.c, i1 %i.f, i1 false
  br i1 %brmerge, label %_ZNK9grpc_core18ChannelCredsConfigeqERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { i64, ptr } %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.b), !inline_history !316 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { i64, ptr } %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !316 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1
  %i.s = icmp eq i64 %i.k, %i.q
  br i1 %i.s, label %bb.c, label %_ZNK9grpc_core18ChannelCredsConfigeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.l, ptr %i.r, i64 %i.k)
  %i.u = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.u, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNK9grpc_core18ChannelCredsConfigeqERKS0_.exit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !316
  br label %_ZNK9grpc_core18ChannelCredsConfigeqERKS0_.exit

_ZNK9grpc_core18ChannelCredsConfigeqERKS0_.exit:  ; preds = %bb.a, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %.0 = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.mux, %bb.a ], [ %i.y, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core22XdsChannelCredsFactory6Config8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 16, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.51, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 4 uses
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.52, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.f, align 2, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { i64, ptr } %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.q = load ptr, ptr %6, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !319
  store i64 6, ptr %2, align 8, !noalias !319
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.53, ptr %i.t, align 8, !noalias !319
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.k, ptr %i.u, align 8, !noalias !319
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %i.v, align 8, !noalias !319
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 9, ptr %i.w, align 8, !noalias !319
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.54, ptr %i.x, align 8, !noalias !319
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.s, ptr %i.y, align 8, !noalias !319
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.q, ptr %i.z, align 8, !noalias !319
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.aa, align 8, !noalias !319
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.27, ptr %i.ab, align 8, !noalias !319
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %2, i64 5)
          to label %_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_.exit unwind label %.thread

_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !319
  %.pre = load ptr, ptr %5, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre102 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_.exit
  %i.ac = phi i64 [ 6, %._crit_edge.i.i ], [ %.pre102, %_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_.exit ]
  %i.ad = phi ptr [ %i.d, %._crit_edge.i.i ], [ %.pre, %_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_.exit ]
  store i64 %i.ac, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i64 1, ptr %7, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.27, ptr %i.af, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ag = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  br i1 %.not, label %.critedge42, label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %.critedge
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge42

.critedge42:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ar = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.e
  %i.au = load i64, ptr %i.as, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br i1 %.not, label %.critedge44, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.e
  br i1 %.not, label %.critedge44, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.aw = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %.critedge44.sink.split, label %.critedge44.sink.split.sink.split

.thread:                                          ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %.thread
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !26
  %8 = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %8) #30
  br label %.critedge44.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.a: ; preds = %.thread
  %i.be = load i64, ptr %i.r, align 8, !tbaa !39
  %9 = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %9)
  br label %.critedge44.sink.split

.critedge44.sink.split.sink.split:                ; preds = %bb.f
  %10 = load i64, ptr %i.ax, align 8, !tbaa !26
  %i.bf = add i64 %10, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bf) #30
  br label %.critedge44.sink.split

.critedge44.sink.split:                           ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread, %.critedge44.sink.split.sink.split
  %.pn.pn.pn.pn.pn.pn84.ph = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.a ], [ %i.aq, %.critedge44.sink.split.sink.split ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.aq, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge44

.critedge44:                                      ; preds = %.critedge44.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn.pn.pn.pn.pn.pn84 = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn.pn.pn.pn.pn.pn84.ph, %.critedge44.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn84
}

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(1928) ptr @_ZN9grpc_core17CoreConfiguration19BuildNewAndMaybeSetEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core20ChannelCredsRegistryI24grpc_channel_credentialsE18CreateChannelCredsENS_13RefCountedPtrIKNS_18ChannelCredsConfigEEERNS_33CertificateProviderStoreInterfaceE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::RefCountedPtr.210") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::RefCountedPtr.209", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !88     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !91
  br label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 4 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !36 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.sroa.01.0.copyload.i.i.i.i) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !78
  %i.n = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.p = sub i64 %.sroa.01.0.copyload.i.i.i.i, %i.g
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.r, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.s, align 8, !tbaa !36 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i, i64 %i.g) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !78
  %i.u = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.w = sub i64 %i.g, %.sroa.0.0.copyload.i.i.i
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit

_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread, label %bb.f

_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.c, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call { i64, ptr } %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.y) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not10.i.i.i3 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i3, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40.thread, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15
  %.012.i.i.i8 = phi ptr [ %.1.i.i.i20, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15 ], [ %i.ag, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread ] ; 4 uses
  %.0811.i.i.i9 = phi ptr [ %.19.i.i.i17, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15 ], [ %i.ah, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i8, i64 32
  %.sroa.01.0.copyload.i.i.i.i10 = load i64, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i11 = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.sroa.01.0.copyload.i.i.i.i10) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i11, 0
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i12

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i4
  %.sroa.22.0..sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.012.i.i.i8, i64 40
  %.sroa.22.0.copyload.i.i.i.i14 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i13, align 8, !tbaa !78
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i14, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i.i11) #28 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i36, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i36: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i12, %.lr.ph.i.i.i4
  %i.am = sub i64 %.sroa.01.0.copyload.i.i.i.i10, %i.ad
  %spec.select7.i.i.i.i.i.i.i37 = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i.i38 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i37, i64 2147483647)
  %.0.i4.i.i.i.i.i.i39 = trunc nsw i64 %.08.i.i.i.i.i.i.i38 to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i12
  %.0.i.i.i.i.i.i16 = phi i32 [ %.0.i4.i.i.i.i.i.i39, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i36 ], [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i12 ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i16, 0       ; 2 uses
  %.19.i.i.i17 = select i1 %i.an, ptr %.0811.i.i.i9, ptr %.012.i.i.i8 ; 5 uses
  %.1.in.v.i.i.i18 = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i8, i64 %.1.in.v.i.i.i18
  %.1.i.i.i20 = load ptr, ptr %.1.in.i.i.i19, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %.1.i.i.i20, null
  br i1 %.not.i.i.i21, label %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i22, label %.lr.ph.i.i.i4, !llvm.loop !7

_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i22: ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i.i15
  %i.ao = icmp eq ptr %.19.i.i.i17, %i.ah
  br i1 %i.ao, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i17, i64 32
  %.sroa.0.0.copyload.i.i.i23 = load i64, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
  %.sroa.speculated.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i23, i64 %i.ad) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i.i.i24, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i32, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25: ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %.19.i.i.i17, i64 40
  %.sroa.2.0.copyload.i.i.i27 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i26, align 8, !tbaa !78
  %i.ar = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %.sroa.2.0.copyload.i.i.i27, i64 noundef %.sroa.speculated.i.i.i.i.i24) #28 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i32, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i32: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %bb.e
  %i.at = sub i64 %i.ad, %.sroa.0.0.copyload.i.i.i23
  %spec.select7.i.i.i.i.i.i33 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i.i.i34 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i33, i64 2147483647)
  %.0.i4.i.i.i.i.i35 = trunc nsw i64 %.08.i.i.i.i.i.i34 to i32
  br label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40

_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i32
  %.0.i.i.i.i.i29 = phi i32 [ %.0.i4.i.i.i.i.i35, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i32 ], [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25 ]
  %i.au = icmp slt i32 %.0.i.i.i.i.i29, 0
  br i1 %i.au, label %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40.thread, label %bb.f

_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40.thread: ; preds = %_ZNKSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEEESt10_Select1stISC_ESt4lessIS3_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i22, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.thread, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40
  store ptr null, ptr %0, align 8, !tbaa !91
  br label %_ZN9grpc_core13RefCountedPtrIKNS_18ChannelCredsConfigEED2Ev.exit

bb.f:                                             ; preds = %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit
  %.sroa.047.0 = phi ptr [ %.19.i.i.i17, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit40 ], [ %.19.i.i.i, %_ZNKSt3mapISt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIN9grpc_core19ChannelCredsFactoryI24grpc_channel_credentialsEEESt4lessIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !88
  store ptr %i.ax, ptr %4, align 8, !tbaa !88
  store ptr null, ptr %2, align 8, !tbaa !88
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr dead_on_unwind writable sret(%"class.grpc_core::RefCountedPtr.210") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %4, align 8, !tbaa !88    ; 4 uses
  %.not.i = icmp eq ptr %i.bb, null
end_hunk_0
