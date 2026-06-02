inline.NumInlined: 7692
inline.NumDeleted: 1577
begin_hunk_0_@_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE:bb.a
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.y = load i8, ptr %i.r, align 1, !tbaa !17
  store i8 %i.y, ptr %i.x, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.z = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !63
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ad, align 8, !tbaa !1788
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

declare noundef ptr @_ZNK16OpenColorIO_v2_54Look7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK16OpenColorIO_v2_54Look15getProcessSpaceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK16OpenColorIO_v2_54Look14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_125saveInterchangeAttributesERN4YAML7EmitterERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !749
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 32)
  %i.e = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str.164) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 33) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 30) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !747  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not2425 = icmp eq ptr %i.i, %i.j
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.b
  %i.l = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 31) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.sroa.021.026 = phi ptr [ %i.i, %.lr.ph ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 64
  %.val = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.sroa.021.026, i64 72
  %.val14 = load i64, ptr %i.n, align 8, !tbaa !63
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116SanitizeNewlinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr %.val, i64 %.val14)
  %i.o = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 32)
          to label %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit unwind label %bb.e

_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 32
  %i.q = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef 33)
          to label %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit15 unwind label %bb.e ; 0 uses

_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit15: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 10, i64 noundef 0) #26
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit16, label %bb.d

bb.d:                                             ; preds = %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit15
  %i.t = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 8)
          to label %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit16 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit16, %bb.d, %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.k, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.u

_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit16: ; preds = %bb.d, %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit15
  %i.z = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit17 unwind label %bb.e ; 0 uses

_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit17: ; preds = %_ZN4YAMLlsERNS_7EmitterENS_13EMITTER_MANIPE.exit16
  %i.aa = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit17
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ae = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.026) #31 ; 2 uses
  %.not24 = icmp eq ptr %i.ae, %i.j
  br i1 %.not24, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @_ZNK16OpenColorIO_v2_54Look24getInterchangeAttributesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZNK16OpenColorIO_v2_54Look12getTransformEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.138") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterESt10shared_ptrIKNS_9TransformEEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.YAML::_Tag", align 8       ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.YAML::_Tag", align 8       ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.YAML::_Tag", align 8      ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"struct.YAML::_Tag", align 8      ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"struct.YAML::_Tag", align 8      ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %23 = alloca %"class.std::shared_ptr.251", align 8 ; 10 uses
  %24 = alloca %"class.std::shared_ptr.251", align 8 ; 4 uses
  %25 = alloca %"class.std::shared_ptr.254", align 8 ; 10 uses
  %26 = alloca %"class.std::shared_ptr.257", align 8 ; 10 uses
  %27 = alloca %"class.std::shared_ptr.257", align 8 ; 5 uses
  %28 = alloca %"class.std::shared_ptr.260", align 8 ; 10 uses
  %29 = alloca %"class.std::shared_ptr.260", align 8 ; 4 uses
  %30 = alloca %"class.std::shared_ptr.263", align 8 ; 10 uses
  %31 = alloca %"class.std::shared_ptr.263", align 8 ; 4 uses
  %32 = alloca %"class.std::shared_ptr.266", align 8 ; 10 uses
  %33 = alloca %"class.std::shared_ptr.266", align 8 ; 5 uses
  %34 = alloca %"class.std::shared_ptr.269", align 8 ; 8 uses
  %35 = alloca %"class.std::shared_ptr.269", align 8 ; 5 uses
  %36 = alloca %"class.std::shared_ptr.272", align 8 ; 8 uses
  %37 = alloca %"class.std::shared_ptr.272", align 8 ; 5 uses
  %38 = alloca %"class.std::shared_ptr.275", align 8 ; 8 uses
  %39 = alloca %"class.std::shared_ptr.275", align 8 ; 5 uses
  %40 = alloca %"class.std::shared_ptr.278", align 8 ; 8 uses
  %41 = alloca %"class.std::shared_ptr.278", align 8 ; 5 uses
  %42 = alloca %"class.std::shared_ptr.281", align 8 ; 8 uses
  %43 = alloca %"class.std::shared_ptr.281", align 8 ; 5 uses
  %44 = alloca %"class.std::shared_ptr.284", align 8 ; 8 uses
  %45 = alloca %"class.std::shared_ptr.284", align 8 ; 5 uses
  %46 = alloca %"class.std::shared_ptr.287", align 8 ; 8 uses
  %47 = alloca %"class.std::shared_ptr.287", align 8 ; 5 uses
  %48 = alloca %"class.std::shared_ptr.290", align 8 ; 8 uses
  %49 = alloca %"class.std::shared_ptr.290", align 8 ; 5 uses
  %50 = alloca %"class.std::shared_ptr.293", align 8 ; 8 uses
  %51 = alloca %"class.std::shared_ptr.293", align 8 ; 5 uses
  %52 = alloca %"class.std::shared_ptr.296", align 8 ; 8 uses
  %53 = alloca %"class.std::shared_ptr.296", align 8 ; 5 uses
  %54 = alloca %"class.std::shared_ptr.299", align 8 ; 8 uses
  %55 = alloca %"class.std::shared_ptr.299", align 8 ; 5 uses
  %56 = alloca %"class.std::shared_ptr.302", align 8 ; 8 uses
  %57 = alloca %"class.std::shared_ptr.302", align 8 ; 5 uses
  %58 = alloca %"class.std::shared_ptr.305", align 8 ; 8 uses
  %59 = alloca %"class.std::shared_ptr.305", align 8 ; 5 uses
  %60 = alloca %"class.std::shared_ptr.308", align 8 ; 8 uses
  %61 = alloca %"class.std::shared_ptr.308", align 8 ; 5 uses
  %62 = alloca %"class.std::shared_ptr.311", align 8 ; 8 uses
  %63 = alloca %"class.std::shared_ptr.311", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.e = load ptr, ptr %1, align 8, !tbaa !418, !noalias !1797 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread550, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_519AllocationTransformE, i64 0) #26, !noalias !1797 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread550, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %23, align 8, !tbaa !1798, !alias.scope !1797
  %i.h = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7, !noalias !1797 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !7, !alias.scope !1797
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !1797
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !1797
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3, !noalias !1797
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread550: ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false), !alias.scope !1797
  br label %bb.aj

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !1797 ; 0 uses
  %.pr.pre = load ptr, ptr %23, align 8, !tbaa !1798 ; 2 uses
  %.not = icmp eq ptr %.pr.pre, null
  br i1 %.not, label %bb.aj, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.c, %bb.e, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.p = phi ptr [ %.pr.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.c ]
  store ptr %i.p, ptr %24, align 8, !tbaa !1798
  %i.q = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !7
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519AllocationTransformEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519AllocationTransformEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519AllocationTransformEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_519AllocationTransformEEC2ERKS3_.exit: ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.y, ptr %21, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 19, ptr %i.d, align 8, !tbaa !72
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.n   ; 2 uses

.noexc.i:                                         ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519AllocationTransformEEC2ERKS3_.exit
  store ptr %i.z, ptr %21, align 8, !tbaa !19
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !72  ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.z, ptr noundef nonnull align 1 dereferenceable(19) @.str.188, i64 19, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !63
  %i.ac = load ptr, ptr %21, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !1800
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ae, ptr %19, align 8, !tbaa !62, !noalias !1800
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !63, !noalias !1800
  store i8 0, ptr %i.ae, align 8, !tbaa !17, !noalias !1800
  invoke void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %20, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ag = load ptr, ptr %19, align 8, !tbaa !19, !noalias !1800 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !17, !noalias !1800
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.j:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %19, align 8, !tbaa !19, !noalias !1800 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !17, !noalias !1800
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !1800
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !1800
  %i.ap = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(68) %20)
          to label %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i unwind label %bb.o ; 0 uses

_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i
  %i.aw = load ptr, ptr %20, align 8, !tbaa !19   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4YAML4_TagD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZN4YAML4_TagD2Ev.exit.i

_ZN4YAML4_TagD2Ev.exit.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.bb = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.y
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterESt10shared_ptrIKNS_9TransformEEj:bb.a
  %cond.i.i = icmp eq i32 %i.da, 1
  br i1 %cond.i.i, label %bb.u, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i

bb.u:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_19AllocationTransformEvEERKS_IT_E.exit.i
  %i.db = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 32)
          to label %.noexc40.i unwind label %bb.ab

.noexc40.i:                                       ; preds = %bb.u
  %i.dc = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull @.str.212)
          to label %.noexc41.i unwind label %bb.ab ; 0 uses

.noexc41.i:                                       ; preds = %.noexc40.i
  %i.dd = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 33)
          to label %.noexc42.i unwind label %bb.ab

.noexc42.i:                                       ; preds = %.noexc41.i
  %i.de = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, i32 noundef 28)
          to label %.noexc43.i unwind label %bb.ab ; 0 uses

.noexc43.i:                                       ; preds = %.noexc42.i
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #26, !inline_history !1803
  %i.dj = invoke noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.di)
          to label %.noexc44.i unwind label %bb.ab

.noexc44.i:                                       ; preds = %.noexc43.i
  %i.dk = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.dj)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i unwind label %bb.ab ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i: ; preds = %.noexc44.i, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_19AllocationTransformEvEERKS_IT_E.exit.i
  %i.dl = load ptr, ptr %i.cp, align 8, !tbaa !7  ; 8 uses
  %.not.i.i46.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i46.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dm, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !13
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !1804
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !1804
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i47.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i47.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.dp, %bb.y ], [ %i.dz, %bb.z ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.aa, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !18

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w, %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.eb = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 31)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterESt10shared_ptrIKNS_19AllocationTransformEE.exit unwind label %bb.ai ; 0 uses

bb.ab:                                            ; preds = %.noexc44.i, %.noexc43.i, %.noexc42.i, %.noexc41.i, %.noexc40.i, %bb.u
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterESt10shared_ptrIKNS_19AllocationTransformEE.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !7   ; 8 uses
  %.not.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterESt10shared_ptrIKNS_19AllocationTransformEE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 4 uses
  %i.ef = load atomic i64, ptr %i.ee acquire, align 8 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 4294967297
  %i.eh = trunc i64 %i.ef to i32                  ; 2 uses
  br i1 %i.eg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ee, align 8, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 0, ptr %i.ei, align 4, !tbaa !13
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #26, !inline_history !1805
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #26, !inline_history !1805
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i105 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i105, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = add nsw i32 %i.eh, -1
  store i32 %i.eq, ptr %i.ee, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.er = atomicrmw volatile add ptr %i.ee, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.eh, %bb.af ], [ %i.er, %bb.ag ]
  %i.es = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.es, label %bb.ah, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc23.i, %bb.k, %.noexc99, %.noexc98, %.noexc97, %.noexc96, %.noexc95, %.noexc94, %.noexc93, %.noexc92, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i, %bb.p, %bb.ab, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %i.et, %bb.ai ], [ %i.ec, %bb.ab ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i ], [ %lpad.phi56.i, %bb.p ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519AllocationTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #26
  br label %bb.nc

bb.aj:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread550, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19AllocationTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.eu = load ptr, ptr %1, align 8, !tbaa !418, !noalias !1812 ; 3 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_516BuiltinTransformEEC2IKNS0_9TransformEEERKS_IT_EPS2_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = tail call ptr @__dynamic_cast(ptr nonnull %i.eu, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_516BuiltinTransformE, i64 0) #26, !noalias !1812 ; 4 uses
  %.not.not.i.i106 = icmp eq ptr %i.ew, null
  br i1 %.not.not.i.i106, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_516BuiltinTransformEEC2IKNS0_9TransformEEERKS_IT_EPS2_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ew, ptr %25, align 8, !tbaa !1813, !alias.scope !1812
  %i.ex = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !7, !noalias !1812 ; 3 uses
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !7, !alias.scope !1812
  %.not.i.i.i.i.i107 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i107, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !1812
  %.not.i.i.i.i.i.i108 = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i.i.i108, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !1812
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !3, !noalias !1812
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIKN16OpenColorIO_v2_516BuiltinTransformEEC2IKNS0_9TransformEEERKS_IT_EPS2_.exit.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false), !alias.scope !1812
  br label %bb.be

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split: ; preds = %bb.am
  %i.fe = atomicrmw volatile add ptr %i.fa, i32 1 acq_rel, align 4, !noalias !1812 ; 0 uses
  %.pr376.pre = load ptr, ptr %25, align 8, !tbaa !1813 ; 2 uses
  %i.ff = icmp eq ptr %.pr376.pre, null
  br i1 %i.ff, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split._crit_edge, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split._crit_edge: ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %.pre = load ptr, ptr %1, align 8, !tbaa !418, !noalias !1815
  br label %bb.be

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread: ; preds = %bb.al, %bb.an, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %i.fg = phi ptr [ %.pr376.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split ], [ %i.ew, %bb.an ], [ %i.ew, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.fh, ptr %17, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 16, ptr %i.c, align 8, !tbaa !72
  %i.fi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i110 unwind label %bb.ba ; 2 uses

.noexc.i110:                                      ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread
  store ptr %i.fi, ptr %17, align 8, !tbaa !19
  %i.fj = load i64, ptr %i.c, align 8, !tbaa !72  ; 3 uses
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fi, ptr noundef nonnull align 1 dereferenceable(16) @.str.189, i64 16, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !63
  %i.fl = load ptr, ptr %17, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !1820
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fn, ptr %15, align 8, !tbaa !62, !noalias !1820
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.fo, align 8, !tbaa !63, !noalias !1820
  store i8 0, ptr %i.fn, align 8, !tbaa !17, !noalias !1820
  invoke void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %16, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 0)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc.i110
  %i.fp = load ptr, ptr %15, align 8, !tbaa !19, !noalias !1820 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fn
  br i1 %i.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116: ; preds = %bb.ao
  %i.fr = load i64, ptr %i.fn, align 8, !tbaa !17, !noalias !1820
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i135

bb.ap:                                            ; preds = %.noexc.i110
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %15, align 8, !tbaa !19, !noalias !1820 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fn
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i111: ; preds = %bb.ap
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !17, !noalias !1820
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i112: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !1820
  br label %.body.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i135: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !1820
  %i.fy = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(68) %16)
          to label %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i117 unwind label %bb.bb ; 0 uses

_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i117:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i135
  %i.fz = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !19 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i117
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !17
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118: ; preds = %_ZN4YAMLlsERNS_7EmitterERKNS_4_TagE.exit.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i
  %i.gf = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZN4YAML4_TagD2Ev.exit.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !17
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #27
  br label %_ZN4YAML4_TagD2Ev.exit.i120

_ZN4YAML4_TagD2Ev.exit.i120:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i119
  %i.gk = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fh
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %_ZN4YAML4_TagD2Ev.exit.i120
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !17
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122: ; preds = %_ZN4YAML4_TagD2Ev.exit.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.go = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 28)
          to label %.noexc136 unwind label %bb.bd

.noexc136:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122
  %i.gp = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %i.go, i32 noundef 30)
          to label %.noexc137 unwind label %bb.bd ; 0 uses

.noexc137:                                        ; preds = %.noexc136
  %i.gq = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 32)
          to label %.noexc138 unwind label %bb.bd

.noexc138:                                        ; preds = %.noexc137
  %i.gr = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gq, ptr noundef nonnull @.str.213)
          to label %.noexc139 unwind label %bb.bd ; 0 uses

.noexc139:                                        ; preds = %.noexc138
  %i.gs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 33)
          to label %.noexc140 unwind label %bb.bd

.noexc140:                                        ; preds = %.noexc139
  %i.gt = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %i.gs, i32 noundef 28)
          to label %.noexc141 unwind label %bb.bd

.noexc141:                                        ; preds = %.noexc140
  %i.gu = load ptr, ptr %i.fg, align 8, !tbaa !14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call noundef ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.fg) #26, !inline_history !1823
  %i.gy = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, ptr noundef %i.gx)
          to label %.noexc142 unwind label %bb.bd ; 0 uses

.noexc142:                                        ; preds = %.noexc141
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %64 = load ptr, ptr %25, align 8, !tbaa !1813   ; 3 uses
  store ptr %64, ptr %18, align 8, !tbaa !418
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.ex, align 8, !tbaa !7  ; 3 uses
  store ptr %i.ha, ptr %i.gz, align 8, !tbaa !7
  %.not.i.i.i.i123 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i123, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc142
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 3 uses
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i124 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i.i.i124, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.hf = atomicrmw volatile add ptr %i.hb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i132 = load ptr, ptr %18, align 8, !tbaa !418
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i: ; preds = %bb.as, %bb.ar, %.noexc142
  %i.hg = phi ptr [ %64, %.noexc142 ], [ %64, %bb.ar ], [ %.pre.i132, %bb.as ] ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call noundef i32 %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #26, !inline_history !1824
  %cond.i.i125 = icmp eq i32 %i.hk, 1
  br i1 %cond.i.i125, label %bb.at, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i126

bb.at:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i
  %i.hl = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 32)
          to label %.noexc19.i unwind label %bb.bc

.noexc19.i:                                       ; preds = %bb.at
  %i.hm = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hl, ptr noundef nonnull @.str.212)
          to label %.noexc20.i unwind label %bb.bc ; 0 uses

.noexc20.i:                                       ; preds = %.noexc19.i
  %i.hn = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 33)
          to label %.noexc21.i unwind label %bb.bc

.noexc21.i:                                       ; preds = %.noexc20.i
  %i.ho = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %i.hn, i32 noundef 28)
          to label %.noexc22.i unwind label %bb.bc ; 0 uses

.noexc22.i:                                       ; preds = %.noexc21.i
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef i32 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #26, !inline_history !1824
  %i.ht = invoke noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.hs)
          to label %.noexc23.i131 unwind label %bb.bc

.noexc23.i131:                                    ; preds = %.noexc22.i
  %i.hu = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAMLlsERNS_7EmitterEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.ht)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i126 unwind label %bb.bc ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i126: ; preds = %.noexc23.i131, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IKNS0_16BuiltinTransformEvEERKS_IT_E.exit.i
  %i.hv = load ptr, ptr %i.gz, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i127 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i127, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130, label %bb.au

bb.au:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i126
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 4 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 4294967297
  %i.hz = trunc i64 %i.hx to i32                  ; 2 uses
  br i1 %i.hy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hw, align 8, !tbaa !11
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !13
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #26, !inline_history !1825
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !14
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #26, !inline_history !1825
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130

bb.aw:                                            ; preds = %bb.au
  %i.ih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i25.i = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i.i25.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ii = add nsw i32 %i.hz, -1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

bb.ay:                                            ; preds = %bb.aw
  %i.ij = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i129 = phi i32 [ %i.hz, %bb.ax ], [ %i.ij, %bb.ay ]
  %i.ik = icmp eq i32 %.0.i.i.i.i.i129, 1
  br i1 %i.ik, label %bb.az, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130, !prof !18

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128, %bb.av, %_ZN16OpenColorIO_v2_512_GLOBAL__N_126EmitBaseTransformKeyValuesERN4YAML7EmitterERKSt10shared_ptrIKNS_9TransformEE.exit.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.il = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 31)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_14saveERN4YAML7EmitterERKSt10shared_ptrIKNS_16BuiltinTransformEE.exit unwind label %bb.bd ; 0 uses

bb.ba:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split.thread
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i135
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML4_TagD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #26
  br label %.body.i113

.body.i113:                                       ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i112
  %.pn.i114 = phi { ptr, i32 } [ %i.in, %bb.bb ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i112 ] ; 2 uses
  %i.io = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.fh
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %.body.i113
  %i.iq = load i64, ptr %i.fh, align 8, !tbaa !17
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %.body.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.ba
  %.pn.pn.i109 = phi { ptr, i32 } [ %i.im, %bb.ba ], [ %.pn.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %.pn.i114, %.body.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body144

bb.bc:                                            ; preds = %.noexc23.i131, %.noexc22.i, %.noexc21.i, %.noexc20.i, %.noexc19.i, %bb.at
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body144

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i130, %.noexc141, %.noexc140, %.noexc139, %.noexc138, %.noexc137, %.noexc136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.be:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split._crit_edge, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_516BuiltinTransformEEC2IKNS0_9TransformEEERKS_IT_EPS2_.exit.i.i
  %i.iu = phi ptr [ %.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_16BuiltinTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split._crit_edge ], [ %i.eu, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_516BuiltinTransformEEC2IKNS0_9TransformEEERKS_IT_EPS2_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread553, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iw = tail call ptr @__dynamic_cast(ptr nonnull %i.iu, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #26, !noalias !1815 ; 4 uses
  %.not.not.i.i146 = icmp eq ptr %i.iw, null
  br i1 %.not.not.i.i146, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread553, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.iw, ptr %26, align 8, !tbaa !1828, !alias.scope !1815
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !7, !noalias !1815 ; 3 uses
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !7, !alias.scope !1815
  %.not.i.i.i.i.i147 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i.i147, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 3 uses
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !1815
  %.not.i.i.i.i.i.i148 = icmp eq i8 %i.jb, 0
  br i1 %.not.i.i.i.i.i.i148, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !3, !noalias !1815
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !3, !noalias !1815
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread553: ; preds = %bb.be, %bb.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false), !alias.scope !1815
  br label %bb.dk

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.bh
  %i.je = atomicrmw volatile add ptr %i.ja, i32 1 acq_rel, align 4, !noalias !1815 ; 0 uses
  %.pr377.pre = load ptr, ptr %26, align 8, !tbaa !1828 ; 2 uses
  %.not382 = icmp eq ptr %.pr377.pre, null
  br i1 %.not382, label %bb.dk, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.bg, %bb.bi, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.jf = phi ptr [ %.pr377.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.iw, %bb.bi ], [ %i.iw, %bb.bg ]
  store ptr %i.jf, ptr %27, align 8, !tbaa !1828
  %i.jg = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !7  ; 3 uses
  store ptr %i.ji, ptr %i.jg, align 8, !tbaa !7
  %.not.i.i.i149 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i149, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CDLTransformEEC2ERKS3_.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12CDLTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i150 = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i150, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CDLTransformEEC2ERKS3_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.jn = atomicrmw volatile add ptr %i.jj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CDLTransformEEC2ERKS3_.exit

end_hunk_1
