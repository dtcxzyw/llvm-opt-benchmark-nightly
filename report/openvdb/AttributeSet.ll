Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeSet?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.ao, %bb.f ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ar = call ptr @__cxa_begin_catch(ptr %.1) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %2) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.as, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #34
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.l
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.at

bb.m:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor11groupOffsetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = tail call { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.y)
  ret { i64, i8 } %i.ay

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10groupIndexEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 noundef %1)
  ret { i64, i8 } %i.b
}

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor10groupIndexEm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(240) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4761 = icmp eq ptr %i.d, %i.e
  br i1 %.not4761, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = ptrtoint ptr %.sroa.11.1 to i64
  %i.h = ptrtoint ptr %.sroa.034.1 to i64         ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.x, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.034.065 = phi ptr [ null, %.lr.ph ], [ %.sroa.034.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.031.064 = phi ptr [ %i.d, %.lr.ph ], [ %i.bc, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.16.063 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.11.062 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.031.064, i64 64 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.l ; 4 uses
  %i.o = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, !prof !106

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !115
  store ptr @.str.44, ptr %i.a, align 8, !tbaa !110, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !115
  store ptr @.str.45, ptr %i.b, align 8, !tbaa !110, !noalias !115
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IPKcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !115
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, ptr nonnull @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  br label %.body

_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit: ; preds = %bb.e, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 8), align 8, !tbaa !50
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.g
  %i.y = load ptr, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, align 8, !tbaa !46
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !46
  %bcmp.i.i = call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.u)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 40), align 8, !tbaa !50
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit: ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 32), align 8, !tbaa !46
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !46
  %bcmp.i4.i = call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ad)
  %i.aj = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.aj, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46: ; preds = %bb.h, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.not.i17 = icmp eq ptr %.sroa.11.062, %.sroa.16.063
  br i1 %.not.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !56
  store i64 %i.ak, ptr %.sroa.11.062, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.11.062, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.j:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread46
  %i.am = ptrtoint ptr %.sroa.16.063 to i64
  %i.an = ptrtoint ptr %.sroa.034.065 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #31
          to label %.noexc18 unwind label %.loopexit ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !56
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !56
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc18
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %.sroa.034.065, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.034.065, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.065, i64 noundef %i.ao) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.i, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.sroa.11.1 = phi ptr [ %i.al, %bb.i ], [ %.sroa.11.062, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.062, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.11.062, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.11.062, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 5 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.063, %bb.i ], [ %.sroa.16.063, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.16.063, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.16.063, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.16.063, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 4 uses
  %.sroa.034.1 = phi ptr [ %.sroa.034.065, %bb.i ], [ %.sroa.034.065, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.aw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.034.065, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.034.065, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.034.065, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ] ; 9 uses
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.031.064) #35 ; 2 uses
  %.not47 = icmp eq ptr %i.bc, %i.e
  br i1 %.not47, label %._crit_edge, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.sroa.034.0.lcssa93 = phi ptr [ %.sroa.034.1, %._crit_edge ], [ null, %bb.a ]
  %.sroa.16.0.lcssa91 = phi ptr [ %.sroa.16.1, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !50
  store i8 0, ptr %i.bd, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.22, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.r

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #33 ; 0 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.v

bb.p:                                             ; preds = %.noexc26, %bb.y
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %._crit_edge.thread
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.r:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.br, %bb.s ], [ %i.bq, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #33
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.bp, %bb.q ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bs = call ptr @__cxa_begin_catch(ptr %.1) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %2) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.bt, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #34
          to label %bb.aa unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bd
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.w
  %i.bx = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.body

bb.x:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.034.1, %.sroa.11.1
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.034.1, ptr %.sroa.11.1, i64 noundef %i.cb)
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %bb.y
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.034.1, ptr %.sroa.11.1)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %bb.p

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.x, %.noexc26
  %i.cc = lshr i64 %1, 3
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.1, i64 %i.cc
  %i.ce = trunc i64 %1 to i8
  %i.cf = and i8 %i.ce, 7
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.ch = ptrtoint ptr %.sroa.16.1 to i64
  %i.ci = sub i64 %i.ch, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.1, i64 noundef %i.ci) #32
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.cg, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %i.cf, 1
  ret { i64, i8 } %.fca.1.insert

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.p
  %.sroa.16.056 = phi ptr [ %.sroa.16.1, %bb.p ], [ %.sroa.16.0.lcssa91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.sroa.16.063, %bb.f ], [ %.sroa.16.063, %.loopexit ], [ %.sroa.16.063, %.loopexit.split-lp ]
  %.sroa.034.051 = phi ptr [ %.sroa.034.1, %bb.p ], [ %.sroa.034.0.lcssa93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.sroa.034.065, %bb.f ], [ %.sroa.034.065, %.loopexit ], [ %.sroa.034.065, %.loopexit.split-lp ] ; 3 uses
  %.pn15 = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.s, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %.sroa.034.051, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorImSaImEED2Ev.exit30, label %bb.z

bb.z:                                             ; preds = %.body
  %i.cj = ptrtoint ptr %.sroa.16.056 to i64
  %i.ck = ptrtoint ptr %.sroa.034.051 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.051, i64 noundef %i.cl) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit30

_ZNSt6vectorImSaImEED2Ev.exit30:                  ; preds = %.body, %bb.z
  resume { ptr, i32 } %.pn15

bb.aa:                                            ; preds = %bb.v
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet21groupAttributeIndicesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.c, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 32
  %i.k = tail call noundef ptr @_ZNK7openvdb5v13_06points12AttributeSet8getConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.l = invoke noundef zeroext i1 @_ZNK7openvdb5v13_06points14AttributeArray6isTypeINS1_19TypedAttributeArrayIhNS1_10GroupCodecEEEEEbv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit unwind label %.loopexit

_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  store i64 %i.n, ptr %i.h, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !118
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31
          to label %.noexc8 unwind label %.loopexit ; 4 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !56
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !56
  %i.ac = icmp sgt i64 %i.r, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !121
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i9 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.g to i64
  %i.ag = ptrtoint ptr %i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ah) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit
  %i.ai = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ]
  %i.aj = phi ptr [ %i.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.o, %bb.d ], [ %i.h, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ]
  %i.ak = phi ptr [ %i.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %_ZN7openvdb5v13_06points7isGroupERKNS1_14AttributeArrayE.exit ] ; 2 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.016) #35 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet8isSharedEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f monotonic, align 8
  %i.h = icmp ne i32 %i.g, 1
  br label %_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit

_ZNKSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet15appendAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIS8_S8_EjbPKNS0_8MetadataE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  call void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15duplicateAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairIS9_S9_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor15setDefaultValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8MetadataE(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 4 uses
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e
  %i.q = sub i64 %i.l, %i.i
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.e, !llvm.loop !101

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.s, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.i) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.z = sub i64 %i.i, %i.u
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !102
  br label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.d
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ -1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i ], [ -1, %bb.d ], [ -1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ]
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8
  invoke void @_ZN7openvdb5v13_06points12AttributeSet15appendAttributeERKNS2_10DescriptorERSt10shared_ptrIS3_EmjbPKNS0_8MetadataEPKNS1_14AttributeArray18ScopedRegistryLockE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(240) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %.0.i, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef null)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEE:bb.a
_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.k:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet21removeAttributeUnsafeEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.18") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not = icmp ult i64 %2, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !55
  store ptr null, ptr %i.i, align 8, !tbaa !147
  store ptr null, ptr %i.j, align 8, !tbaa !17
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector.63", align 8    ; 17 uses
  %5 = alloca %"class.std::map", align 8          ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor8appendToERSt6vectorINS2_4Util11NameAndTypeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.bs, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.i = load ptr, ptr %4, align 8, !tbaa !126    ; 2 uses
  %.not239 = icmp eq ptr %i.h, %i.i
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit61, %.preheader
  %.sroa.0139.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0139.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 10 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.17.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 4 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 4 uses
  %.sroa.0151.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0151.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 9 uses
  invoke fastcc void @_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesINS1_12AttributeSet4Util11NameAndTypeEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ad unwind label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit61
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.cy, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ]
  %storemerge212 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 13 uses
  %.sroa.0151.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.0151.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 12 uses
  %.sroa.11.0210 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 10 uses
  %.sroa.14.0209 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 7 uses
  %.sroa.17.0208 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 12 uses
  %.sroa.12.0206 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 9 uses
  %.sroa.0139.0205 = phi ptr [ null, %.lr.ph ], [ %.sroa.0139.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit61 ] ; 14 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %storemerge212 ; 4 uses
  %i.n = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, !prof !106

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !150
  store ptr @.str.44, ptr %i.a, align 8, !tbaa !110, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !150
  store ptr @.str.45, ptr %i.b, align 8, !tbaa !110, !noalias !150
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IPKcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !150
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, ptr nonnull @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11) #33
  br label %.body

_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit: ; preds = %bb.g, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 8), align 8, !tbaa !50
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.i:                                             ; preds = %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.i
  %i.y = load ptr, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, align 8, !tbaa !46
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !46
  %bcmp.i.i = call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.u)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 40), align 8, !tbaa !50
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11, i64 32), align 8, !tbaa !46
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !46
  %bcmp.i4.i = call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ad)
  %i.aj = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.aj, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160: ; preds = %bb.j, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %.not.i50 = icmp eq ptr %.sroa.11.0210, %.sroa.14.0209
  br i1 %.not.i50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160
  store i64 %storemerge212, ptr %.sroa.11.0210, align 8, !tbaa !56
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread160
  %i.ak = ptrtoint ptr %.sroa.11.0210 to i64
  %i.al = ptrtoint ptr %.sroa.0151.0211 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #31
          to label %.noexc51 unwind label %.loopexit ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store i64 %storemerge212, ptr %i.av, align 8, !tbaa !56
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0151.0211, i64 %i.am, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc51
  %.not.i17.i.i = icmp eq ptr %.sroa.0151.0211, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0211, i64 noundef %i.am) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %.sroa.14.5 = phi ptr [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.14.0209, %bb.k ] ; 6 uses
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0210, %bb.k ]
  %.sroa.0151.5 = phi ptr [ %i.au, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0151.0211, %bb.k ] ; 6 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 4 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !149   ; 4 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !149 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = ashr i64 %i.bc, 5                       ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bf = and i64 %i.bc, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %i.bs, %bb.t ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.br, %bb.t ] ; 9 uses
  %i.bg = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !56
  %i.bh = icmp eq i64 %i.bg, %storemerge212
  br i1 %i.bh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !56
  %i.bk = icmp eq i64 %i.bj, %storemerge212
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !56
  %i.bn = icmp eq i64 %i.bm, %storemerge212
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !56
  %i.bq = icmp eq i64 %i.bp, %storemerge212
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bs = add nsw i64 %.052.i.i.i, -1
  %i.bt = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bt, label %bb.p, label %._crit_edge.loopexit.i.i.i, !llvm.loop !153

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.t
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ba, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ay, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.bu = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bu, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61 [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !56
  %i.bw = icmp eq i64 %i.bv, %storemerge212
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.v
  %.sroa.032.1.i.i.i = phi ptr [ %i.bx, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.by = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !56
  %i.bz = icmp eq i64 %i.by, %storemerge212
  br i1 %i.bz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.w
  %.sroa.032.2.i.i.i = phi ptr [ %i.ca, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cb = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !56
  %i.cc = icmp eq i64 %i.cb, %storemerge212
  %spec.select.i.i.i = select i1 %i.cc, ptr %.sroa.032.2.i.i.i, ptr %i.az
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317.a: ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319: ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317.a, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.u
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.u ], [ %i.cf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit319 ], [ %i.ce, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit317.a ], [ %i.cd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.p ]
  %.not166 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.az
  br i1 %.not166, label %_ZNSt6vectorImSaImEE9push_backERKm.exit61, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit
  %.not.i52 = icmp eq ptr %.sroa.12.0206, %.sroa.17.0208
  br i1 %.not.i52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %storemerge212, ptr %.sroa.12.0206, align 8, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.12.0206, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

bb.z:                                             ; preds = %bb.x
  %i.ch = ptrtoint ptr %.sroa.17.0208 to i64
  %i.ci = ptrtoint ptr %.sroa.0139.0205 to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.aa, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc59.a unwind label %.loopexit.split-lp

.noexc59.a:                                       ; preds = %bb.aa
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53: ; preds = %bb.z
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i54, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #31
          to label %.noexc60 unwind label %.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i64 %storemerge212, ptr %i.cs, align 8, !tbaa !56
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.ab, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56

bb.ab:                                            ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %.sroa.0139.0205, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56: ; preds = %bb.ab, %.noexc60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i57 = icmp eq ptr %.sroa.0139.0205, null
  br i1 %.not.i17.i.i57, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0139.0205, i64 noundef %i.cj) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58: ; preds = %bb.ac, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i56
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit61

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53
  %.sroa.14.1.ph = phi ptr [ %.sroa.11.0210, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.14.5, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53 ]
  %.sroa.0151.1.ph = phi ptr [ %.sroa.0151.0211, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0151.5, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i53 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m, %bb.aa
  %.sroa.14.1.ph167 = phi ptr [ %.sroa.14.5, %bb.aa ], [ %.sroa.11.0210, %bb.m ]
  %.sroa.0151.1.ph168 = phi ptr [ %.sroa.0151.5, %bb.aa ], [ %.sroa.0151.0211, %bb.m ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEE9push_backERKm.exit61:        ; preds = %._crit_edge.i.i.i, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58, %bb.y, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit
  %.sroa.0139.1 = phi ptr [ %.sroa.0139.0205, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.0139.0205, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.0139.0205, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.0139.0205, %bb.y ], [ %i.cr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.0139.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.0139.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.0139.0205, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0206, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.12.0206, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.12.0206, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %i.cg, %bb.y ], [ %i.cu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.12.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.12.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.12.0206, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0208, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.17.0208, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.17.0208, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.17.0208, %bb.y ], [ %i.cv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.17.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.17.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.17.0208, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0209, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.14.5, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.14.0209, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.14.5, %bb.y ], [ %.sroa.14.5, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.14.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.14.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.14.5, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0210, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.11.2, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.11.0210, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.11.2, %bb.y ], [ %.sroa.11.2, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.11.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.11.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.11.2, %._crit_edge.i.i.i ]
  %.sroa.0151.2 = phi ptr [ %.sroa.0151.0211, %_ZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11Ev.exit ], [ %.sroa.0151.5, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ], [ %.sroa.0151.0211, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit ], [ %.sroa.0151.5, %bb.y ], [ %.sroa.0151.5, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i58 ], [ %.sroa.0151.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.sroa.0151.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.sroa.0151.5, %._crit_edge.i.i.i ] ; 2 uses
  %i.cw = add nuw i64 %storemerge212, 1           ; 2 uses
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.cy = load ptr, ptr %4, align 8, !tbaa !126   ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 104
  %i.dd = icmp ult i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.d, label %._crit_edge, !llvm.loop !154

bb.ad:                                            ; preds = %._crit_edge
  %i.de = icmp eq ptr %.sroa.0139.0.lcssa, %.sroa.12.0.lcssa
  br i1 %i.de, label %.critedge49, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.df, align 8, !tbaa !155
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.dg, align 8, !tbaa !80
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.df, ptr %i.di, align 8, !tbaa !156
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %._crit_edge238, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %5, ptr %3, align 8, !tbaa !157
  %i.dm = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.df, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.ai ; 3 uses

.noexc.i.i:                                       ; preds = %bb.af, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc.i.i ], [ %i.dm, %bb.af ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !160

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.dh, align 8, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.dm, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.dq, %bb.ag ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit, label %bb.ag, !llvm.loop !162

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit: ; preds = %bb.ag
  store ptr %.0.i.i7.i.i.i.i, ptr %i.di, align 8, !tbaa !81
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !33
  store i64 %i.dr, ptr %i.dj, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !81
  %.not163235 = icmp eq ptr %.0.i.i.i.i.i.i, %i.df
  br i1 %.not163235, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.aj

._crit_edge238:                                   ; preds = %bb.au, %bb.ae, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEC2ERKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor6createERKSt6vectorINS2_4Util11NameAndTypeESaIS6_EERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessISH_ESaISt4pairIKSH_mEEERKNS0_7MetaMapE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.dt)
          to label %bb.av unwind label %bb.bm

bb.ah:                                            ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aj:                                            ; preds = %.lr.ph237, %bb.au
  %.sroa.0123.0236 = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph237 ], [ %.sroa.0123.1, %bb.au ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0123.0236, i64 64 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !102 ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0151.0.lcssa, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !56 ; 8 uses
  %i.eb = load ptr, ptr %2, align 8, !tbaa !149   ; 4 uses
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !149 ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = ashr i64 %i.ef, 5                       ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i.i.i74, label %._crit_edge.i.i.i63

.lr.ph.i.i.i74:                                   ; preds = %bb.aj
  %i.ei = and i64 %i.ef, -32
  %scevgep.i.i.i75 = getelementptr i8, ptr %i.eb, i64 %i.ei ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i.i.i74
  %.052.i.i.i76 = phi i64 [ %i.eg, %.lr.ph.i.i.i74 ], [ %i.ev, %bb.ao ] ; 2 uses
  %.sroa.032.051.i.i.i77 = phi ptr [ %i.eb, %.lr.ph.i.i.i74 ], [ %i.eu, %bb.ao ] ; 9 uses
  %i.ej = load i64, ptr %.sroa.032.051.i.i.i77, align 8, !tbaa !56
  %i.ek = icmp eq i64 %i.ej, %i.ea
  br i1 %i.ek, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !56
  %i.en = icmp eq i64 %i.em, %i.ea
  br i1 %i.en, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit327, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.eq = icmp eq i64 %i.ep, %i.ea
  br i1 %i.eq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit325, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !56
  %i.et = icmp eq i64 %i.es, %i.ea
  br i1 %i.et, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84.loopexit.split.loop.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i77, i64 32
  %i.ev = add nsw i64 %.052.i.i.i76, -1
  %i.ew = icmp sgt i64 %.052.i.i.i76, 1
  br i1 %i.ew, label %bb.ak, label %._crit_edge.loopexit.i.i.i78, !llvm.loop !153

._crit_edge.loopexit.i.i.i78:                     ; preds = %bb.ao
  %.pre59.i.i.i79 = ptrtoint ptr %scevgep.i.i.i75 to i64
  %.pre60.i.i.i80 = sub i64 %i.ed, %.pre59.i.i.i79
  br label %._crit_edge.i.i.i63

._crit_edge.i.i.i63:                              ; preds = %._crit_edge.loopexit.i.i.i78, %bb.aj
  %.pre-phi61.i.i.i64 = phi i64 [ %.pre60.i.i.i80, %._crit_edge.loopexit.i.i.i78 ], [ %i.ef, %bb.aj ]
  %.sroa.032.0.lcssa.i.i.i65 = phi ptr [ %scevgep.i.i.i75, %._crit_edge.loopexit.i.i.i78 ], [ %i.eb, %bb.aj ] ; 5 uses
  %i.ex = ashr exact i64 %.pre-phi61.i.i.i64, 3
  switch i64 %i.ex, label %.lr.ph230.preheader [
    i64 3, label %bb.ap
    i64 2, label %._crit_edge._crit_edge.i.i.i71
    i64 1, label %._crit_edge._crit_edge57.i.i.i66
  ]

.lr.ph230.preheader:                              ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit84, %._crit_edge.i.i.i63
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_06points12AttributeSet12readMetadataERSi:bb.a

_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bu, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !75
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !68
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #33, !inline_history !78
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #33, !inline_history !78
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i11 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ci, label %bb.u, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #33
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.016
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.cp = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !188
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet14readAttributesERSi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.k = add nuw i64 %.04, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !187
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet5writeERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.m, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.07.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext false), !inline_history !189
  %i.k = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, !llvm.loop !190

_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit: ; preds = %.lr.ph.i, %bb.a
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeAttributesERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.44", align 8    ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %2, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %storemerge22 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %storemerge22
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !60
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge22, ptr %i.j, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #31
          to label %.noexc11 unwind label %.loopexit19 ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i64 %storemerge22, ptr %i.ac, align 8, !tbaa !56
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.k, i64 %i.t, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.t) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  %.pre43.a = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit19:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ag = phi ptr [ %.pre43.a, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.h, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 4 uses
  %i.aj = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.k, %bb.d ], [ %i.k, %bb.b ] ; 5 uses
  %i.al = add nuw i64 %storemerge22, 1            ; 2 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %bb.i, !llvm.loop !191

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store ptr %i.aj, ptr %i.e, align 8
  store ptr %i.ai, ptr %i.f, align 8
  %i.ar = icmp eq ptr %i.ak, %i.aj
  store ptr %i.ak, ptr %3, align 8
  br i1 %i.ar, label %.thread, label %bb.k

.thread:                                          ; preds = %.preheader, %bb.a, %bb.i
  %i.as = phi ptr [ null, %bb.a ], [ %i.ak, %bb.i ], [ null, %.preheader ] ; 2 uses
  %i.at = phi ptr [ null, %bb.a ], [ %i.ai, %bb.i ], [ null, %.preheader ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !8
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %bb.j

bb.j:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aw = load ptr, ptr %0, align 8, !tbaa !8
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(240) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ba, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !75
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #33, !inline_history !122
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #33, !inline_history !122
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i12.a = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i12.a, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.q ], [ %i.bn, %bb.r ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.s, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #33
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !148
  br label %bb.w

bb.t:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.bp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.y

bb.w:                                             ; preds = %.thread, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = phi ptr [ %i.as, %.thread ], [ %.pre44, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i13.a = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i13.a, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.y:                                             ; preds = %.loopexit19, %.loopexit.split-lp, %bb.v, %bb.j
  %i.bx = phi ptr [ %i.at, %bb.j ], [ %i.ai, %bb.v ], [ %i.i, %.loopexit19 ], [ %i.i, %.loopexit.split-lp ]
  %i.by = phi ptr [ %i.as, %bb.j ], [ %i.ak, %bb.v ], [ %i.k, %.loopexit19 ], [ %i.k, %.loopexit.split-lp ] ; 3 uses
  %.pn9 = phi { ptr, i32 } [ %i.av, %bb.j ], [ %.pn, %bb.v ], [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i14 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit15, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15uniqueGroupNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !305 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cu
  br i1 %i.dj, label %.body68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.m
  %i.dk = load i64, ptr %i.cu, align 8, !tbaa !18, !alias.scope !305
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #32
  br label %.body68

bb.n:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70 unwind label %bb.m

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70: ; preds = %bb.n, %bb.l
  %i.dn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dn, ptr %3, align 8, !tbaa !68
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dp = getelementptr i8, ptr %i.dn, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %3, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !68
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !46 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !18
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !68
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #33
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ea) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.o

.body68:                                          ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65, %bb.k, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn11.pn = phi { ptr, i32 } [ %i.bn, %.body ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.ct, %bb.k ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65 ], [ %i.dh, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn11.pn

bb.o:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = sub i64 %i.a, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor16canCompactGroupsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull readonly align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = sub i64 %i.a, %i.d
  %i.f = icmp ugt i64 %i.e, 7
  br label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor17unusedGroupOffsetEm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(240) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull readonly align 8 dereferenceable(240) %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit

_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33   ; 5 uses
  %i.e = icmp eq i64 %i.a, %i.d
  br i1 %i.e, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet10Descriptor12unusedGroupsEv.exit
  %i.f = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #34
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not75.a = icmp eq i64 %i.d, 0
  br i1 %.not75.a, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.d, 3
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.d
  %.sroa.040.3 = phi ptr [ %i.h, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.d ] ; 4 uses
  %.sroa.24.3 = phi ptr [ %i.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not7691 = icmp eq ptr %i.k, %i.l
  br i1 %.not7691, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.not.i.i = icmp eq ptr %.sroa.040.4, %.sroa.14.2
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.m = ptrtoint ptr %.sroa.14.2 to i64
  %i.n = ptrtoint ptr %.sroa.040.4 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.040.4, ptr nonnull %.sroa.14.2, i64 noundef %i.s)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.040.4, ptr nonnull %.sroa.14.2)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc24, %bb.e, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.c, %bb.l
  %.sroa.040.1 = phi ptr [ null, %bb.c ], [ %.sroa.040.0.lcssa133, %bb.l ], [ %.sroa.040.4, %.noexc24 ], [ %.sroa.040.4, %bb.e ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %.sroa.24.1 = phi ptr [ null, %bb.c ], [ %.sroa.24.0.lcssa138, %bb.l ], [ %.sroa.24.4, %.noexc24 ], [ %.sroa.24.4, %bb.e ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.037.095 = phi ptr [ %i.al, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.k, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.094 = phi ptr [ %.sroa.24.4, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.24.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 5 uses
  %.sroa.14.093 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.040.092 = phi ptr [ %.sroa.040.4, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.093, %.sroa.24.094
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.v = load i64, ptr %i.u, align 8, !tbaa !56
  store i64 %i.v, ptr %.sroa.14.093, align 8, !tbaa !56
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.w = ptrtoint ptr %.sroa.24.094 to i64
  %i.x = ptrtoint ptr %.sroa.040.092 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !56
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !56
  %i.aj = icmp sgt i64 %i.y, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %.sroa.040.092, i64 %i.y, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc27
  %.not.i17.i.i = icmp eq ptr %.sroa.040.092, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.092, i64 noundef %i.y) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.g
  %.sroa.040.4 = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.040.092, %bb.g ] ; 9 uses
  %.pn78 = phi ptr [ %i.ah, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.14.093, %bb.g ]
  %.sroa.24.4 = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.24.094, %bb.g ] ; 5 uses
  %.sroa.14.2 = getelementptr inbounds nuw i8, ptr %.pn78, i64 8 ; 7 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.037.095) #35 ; 2 uses
  %.not76.a = icmp eq ptr %i.al, %i.l
  br i1 %.not76.a, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %._crit_edge, %.noexc24
  %.not.i.i140 = phi i1 [ false, %.noexc24 ], [ true, %._crit_edge ], [ true, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.0.lcssa138 = phi ptr [ %.sroa.24.4, %.noexc24 ], [ %.sroa.24.4, %._crit_edge ], [ %.sroa.24.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.14.0.lcssa137 = phi ptr [ %.sroa.14.2, %.noexc24 ], [ %.sroa.14.2, %._crit_edge ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 4 uses
  %.sroa.040.0.lcssa133 = phi ptr [ %.sroa.040.4, %.noexc24 ], [ %.sroa.040.4, %._crit_edge ], [ %.sroa.040.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 9 uses
  %.not = icmp eq i64 %1, 4294967295
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.am = invoke noundef i64 @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor15availableGroupsEv(ptr noundef nonnull align 8 dereferenceable(240) %0)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ao = ptrtoint ptr %.sroa.14.0.lcssa137 to i64 ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.040.0.lcssa133 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = ashr i64 %i.aq, 5                       ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.at = and i64 %i.aq, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.040.0.lcssa133, i64 %i.at ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.bg, %bb.s ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.040.0.lcssa133, %.lr.ph.i.i.i ], [ %i.bf, %bb.s ] ; 9 uses
  %i.au = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !56
  %i.av = icmp eq i64 %i.au, %1
  br i1 %i.av, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56
  %i.ay = icmp eq i64 %i.ax, %1
  br i1 %i.ay, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56
  %i.bb = icmp eq i64 %i.ba, %1
  br i1 %i.bb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !56
  %i.be = icmp eq i64 %i.bd, %1
  br i1 %i.be, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bg = add nsw i64 %.052.i.i.i, -1
  %i.bh = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %._crit_edge.loopexit.i.i.i, !llvm.loop !306

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.s
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ao, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.n
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aq, %bb.n ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.040.0.lcssa133, %bb.n ] ; 5 uses
  %i.bi = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.t
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !56
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.u
  %.sroa.032.1.i.i.i = phi ptr [ %i.bl, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bm = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !56
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.v
  %.sroa.032.2.i.i.i = phi ptr [ %i.bo, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bp = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !56
  %i.bq = icmp eq i64 %i.bp, %1
  %spec.select.i.i.i = select i1 %i.bq, ptr %.sroa.032.2.i.i.i, ptr %.sroa.14.0.lcssa137
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145: ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147: ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.o, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.t
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.t ], [ %i.bt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit147 ], [ %i.bs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit145 ], [ %i.br, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.o ]
  %i.bu = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %.sroa.14.0.lcssa137 ; 2 uses
  %brmerge = or i1 %i.bu, %.not.i.i140
  %.mux = select i1 %i.bu, i64 %1, i64 0
  br i1 %brmerge, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109.preheader

.critedge:                                        ; preds = %bb.m, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  br i1 %.not.i.i140, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %.critedge
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.w
  %.0108 = phi i64 [ %i.bw, %bb.w ], [ 0, %.lr.ph109.preheader ] ; 3 uses
  %.sroa.031.0107 = phi ptr [ %i.bx, %bb.w ], [ %.sroa.040.0.lcssa133, %.lr.ph109.preheader ] ; 2 uses
  %i.bv = load i64, ptr %.sroa.031.0107, align 8, !tbaa !56
  %.not21 = icmp eq i64 %i.bv, %.0108
  br i1 %.not21, label %bb.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread

bb.w:                                             ; preds = %.lr.ph109
  %i.bw = add i64 %.0108, 1                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.031.0107, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.bx, %.sroa.14.0.lcssa137
  br i1 %.not77, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.lr.ph109

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %bb.w, %.lr.ph109, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %.critedge, %._crit_edge.i.i.i
  %.017 = phi i64 [ %.mux, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit ], [ %1, %._crit_edge.i.i.i ], [ 0, %.critedge ], [ %i.bw, %bb.w ], [ %.0108, %.lr.ph109 ] ; 2 uses
  %.not.i.i.i28.a = icmp eq ptr %.sroa.040.0.lcssa133, null
  br i1 %.not.i.i.i28.a, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.by = ptrtoint ptr %.sroa.24.0.lcssa138 to i64
  %i.bz = ptrtoint ptr %.sroa.040.0.lcssa133 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa133, i64 noundef %i.ca) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.sroa.040.2 = phi ptr [ %.sroa.040.1, %bb.f ], [ %.sroa.040.092, %.loopexit ], [ %.sroa.040.092, %.loopexit.split-lp ] ; 3 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.1, %bb.f ], [ %.sroa.24.094, %.loopexit ], [ %.sroa.24.094, %.loopexit.split-lp ]
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !345
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !348

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !159
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !343
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !346, !nonnull !320, !align !339
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !346, !nonnull !320, !align !339
  %i.y = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #31 ; 2 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %i.y, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !51
  %i.g = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.i, ptr %i.a, align 8, !tbaa !56
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(100) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46
  %i.l = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.l, ptr %i.f, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !18
  store i8 %i.n, ptr %i.m, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !50
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %_ZN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeC2ERKS4_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.f, align 8, !tbaa !18
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.u

_ZN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeC2ERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !123
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !123
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !129
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(100) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
  unreachable

_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 88686269585142075)
  %i.m = select i1 %i.k, i64 88686269585142075, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 104                ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  %i.t = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.v, ptr %i.a, align 8, !tbaa !56
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(100) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !46
  %i.y = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.y, ptr %i.s, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !18
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !123
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !123
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.f ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.cg, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !349, !noalias !352
  %i.aq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !352, !noalias !349 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50, !alias.scope !352, !noalias !349 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false), !alias.scope !354
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aq, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !349, !noalias !352
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !18, !alias.scope !349, !noalias !352
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.ay = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.au, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !50, !alias.scope !349, !noalias !352
  store ptr %i.ar, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !352, !noalias !349
  store i64 0, ptr %i.az, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  store i8 0, ptr %i.ar, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !51, !alias.scope !349, !noalias !352
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !46, !alias.scope !352, !noalias !349 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50, !alias.scope !352, !noalias !349 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !354
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !46, !alias.scope !349, !noalias !352
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !18, !alias.scope !349, !noalias !352
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bm = phi i64 [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bi, %bb.h ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !50, !alias.scope !349, !noalias !352
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !46, !alias.scope !352, !noalias !349
  store i64 0, ptr %i.bn, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  store i8 0, ptr %i.bf, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !51, !alias.scope !349, !noalias !352
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !46, !alias.scope !352, !noalias !349 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !50, !alias.scope !352, !noalias !349 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !alias.scope !354
  br label %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !46, !alias.scope !349, !noalias !352
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !18, !alias.scope !349, !noalias !352
  %.phi.trans.insert8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre9.i.i.i.i = load i64, ptr %.phi.trans.insert8.i.i.i.i, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  br label %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.i
  %i.ca = phi i64 [ %i.bw, %bb.i ], [ %.pre9.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !50, !alias.scope !349, !noalias !352
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !46, !alias.scope !352, !noalias !349
  store i64 0, ptr %i.cb, align 8, !tbaa !50, !alias.scope !352, !noalias !349
  store i8 0, ptr %i.bt, align 8, !tbaa !18, !alias.scope !352, !noalias !349
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !123, !alias.scope !352, !noalias !349
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !123, !alias.scope !349, !noalias !352
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !355

_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.f ], [ %i.ch, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit44, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i41
  %.012.i.i.i28 = phi ptr [ %i.eb, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i41 ], [ %i.ci, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 12 uses
  %.0911.i.i.i29 = phi ptr [ %i.ea, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i41 ], [ %1, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.cj, ptr %.012.i.i.i28, align 8, !tbaa !51, !alias.scope !356, !noalias !359
end_hunk_4
begin_hunk_5_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_:bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !51
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.u, ptr %i.a, align 8, !tbaa !56
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !46
  %i.x = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.x, ptr %i.r, align 8, !tbaa !18
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !18
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !50
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !362

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07IoErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32, !inline_history !332
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #33, !inline_history !332
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISE_SE_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
  unreachable

_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 88686269585142075)
  %i.m = select i1 %i.k, i64 88686269585142075, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 104                ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  %i.t = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.v, ptr %i.a, align 8, !tbaa !56
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(100) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !46
  %i.y = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.y, ptr %i.s, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.s
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i32 1, ptr %i.al, align 8, !tbaa !123
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.f ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.am, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !363, !noalias !366
  %i.an = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !366, !noalias !363 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50, !alias.scope !366, !noalias !363 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !363, !noalias !366
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  store i64 %i.au, ptr %i.am, align 8, !tbaa !18, !alias.scope !363, !noalias !366
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.av = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ar, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !50, !alias.scope !363, !noalias !366
  store ptr %i.ao, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !366, !noalias !363
  store i64 0, ptr %i.aw, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  store i8 0, ptr %i.ao, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !51, !alias.scope !363, !noalias !366
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !46, !alias.scope !366, !noalias !363 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !50, !alias.scope !366, !noalias !363 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !46, !alias.scope !363, !noalias !366
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !18, !alias.scope !363, !noalias !366
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bj = phi i64 [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bf, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !50, !alias.scope !363, !noalias !366
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !46, !alias.scope !366, !noalias !363
  store i64 0, ptr %i.bk, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  store i8 0, ptr %i.bc, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !51, !alias.scope !363, !noalias !366
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !46, !alias.scope !366, !noalias !363 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !50, !alias.scope !366, !noalias !363 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false), !alias.scope !368
  br label %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !46, !alias.scope !363, !noalias !366
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !18, !alias.scope !363, !noalias !366
  %.phi.trans.insert8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre9.i.i.i.i = load i64, ptr %.phi.trans.insert8.i.i.i.i, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  br label %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.i
  %i.bx = phi i64 [ %i.bt, %bb.i ], [ %.pre9.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !50, !alias.scope !363, !noalias !366
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !46, !alias.scope !366, !noalias !363
  store i64 0, ptr %i.by, align 8, !tbaa !50, !alias.scope !366, !noalias !363
  store i8 0, ptr %i.bq, align 8, !tbaa !18, !alias.scope !366, !noalias !363
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !123, !alias.scope !366, !noalias !363
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !123, !alias.scope !363, !noalias !366
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !355

_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.f ], [ %i.ce, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit45, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i42
  %.012.i.i.i29 = phi ptr [ %i.dy, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i42 ], [ %i.cf, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 12 uses
  %.0911.i.i.i30 = phi ptr [ %i.dx, %_ZSt19__relocate_object_aIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i42 ], [ %1, %_ZNSt6vectorIN7openvdb5v13_06points12AttributeSet4Util11NameAndTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.cg, ptr %.012.i.i.i29, align 8, !tbaa !51, !alias.scope !369, !noalias !372
  %i.ch = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !46, !alias.scope !372, !noalias !369 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_06points12AttributeSet10DescriptorD2Ev:bb.a
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #32
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bk)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit1 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #36
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit1: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7openvdb5v13_06points12AttributeSet10DescriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.b) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 240) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !246
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !246
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !246
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !246
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !55
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !55
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !19
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !19
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !387, !noalias !384
  store ptr null, ptr %i.z, align 8, !tbaa !17, !alias.scope !387, !noalias !384
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !384, !noalias !387
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !57, !alias.scope !387, !noalias !384
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !389

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !55, !alias.scope !393, !noalias !390
  store ptr null, ptr %i.ae, align 8, !tbaa !17, !alias.scope !393, !noalias !390
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !55, !alias.scope !390, !noalias !393
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !57, !alias.scope !393, !noalias !390
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !389

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1) local_unnamed_addr #6 comdat {
bb.a:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %1, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not, label %_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !149
  store i64 %i.a, ptr %3, align 8, !tbaa !149
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = sub nuw nsw i64 126, %i.f
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEElNS1_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %3, i64 noundef %i.g)
  %i.h = load i64, ptr %0, align 8, !tbaa !149    ; 4 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = load i64, ptr %1, align 8, !tbaa !149    ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  %i.l = sub i64 %i.h, %i.j
  %i.m = icmp sgt i64 %i.l, 128
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %bb.f

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.ptr44.i = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %.sroa.07.013.i.idx.i = phi i64 [ %.sroa.07.013.i.add.i, %bb.e ], [ -8, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.07.013.i.ptr.i = getelementptr inbounds i8, ptr %i.i, i64 %.sroa.07.013.i.idx.i ; 4 uses
  %.sroa.07.013.i.add.i = add nsw i64 %.sroa.07.013.i.idx.i, -8 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.i, i64 %.sroa.07.013.i.add.i ; 2 uses
  %i.n = load i64, ptr %.ptr.i, align 8, !tbaa !56 ; 5 uses
  %i.o = load i64, ptr %.ptr44.i, align 8, !tbaa !56
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %gepdiff.i = sub nsw i64 0, %.sroa.07.013.i.idx.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.ptr.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.07.013.i.ptr.i, i64 %gepdiff.i, i1 false), !tbaa !56, !noalias !395
  store i64 %i.n, ptr %.ptr44.i, align 8, !tbaa !56
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = load i64, ptr %.sroa.07.013.i.ptr.i, align 8, !tbaa !56 ; 2 uses
  %i.r = icmp ult i64 %i.n, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.s = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.q, %bb.d ]
  %.pn6.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.07.013.i.ptr.i, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 8 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.pn6.i.i.i, i64 -8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !56
  %i.u = load i64, ptr %.sroa.01.0.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.v = icmp ult i64 %i.n, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i.i, !llvm.loop !406

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.pre-phi.i.i.i = phi ptr [ %.sroa.07.013.i.ptr.i, %bb.d ], [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds i8, ptr %.pre-phi.i.i.i, i64 -8
  store i64 %i.n, ptr %i.w, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i.i, %bb.c
  %.not.i.i = icmp eq i64 %.sroa.07.013.i.add.i, -128
  br i1 %.not.i.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !407

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.i: ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not2.i.i, label %_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i2.i
  %.sroa.01.03.i.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i2.i ], [ %i.x, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.i ] ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.01.03.i.i, i64 -8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56   ; 3 uses
  %i.aa = load i64, ptr %.sroa.01.03.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i5.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i2.i

.lr.ph.i.i5.i:                                    ; preds = %.lr.ph.i1.i, %.lr.ph.i.i5.i
  %i.ac = phi i64 [ %i.ae, %.lr.ph.i.i5.i ], [ %i.aa, %.lr.ph.i1.i ]
  %.pn6.i.i6.i = phi ptr [ %.sroa.01.0.i.i7.i, %.lr.ph.i.i5.i ], [ %.sroa.01.03.i.i, %.lr.ph.i1.i ] ; 2 uses
  %.sroa.01.0.i.i7.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i6.i, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.pn6.i.i6.i, i64 -8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !56
  %i.ae = load i64, ptr %.sroa.01.0.i.i7.i, align 8, !tbaa !56 ; 2 uses
  %i.af = icmp ult i64 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph.i.i5.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i2.i, !llvm.loop !406

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops14_Val_less_iterEEvT_T0_.exit.i2.i: ; preds = %.lr.ph.i.i5.i, %.lr.ph.i1.i
  %.pre-phi.i.i3.i = phi ptr [ %.sroa.01.03.i.i, %.lr.ph.i1.i ], [ %.sroa.01.0.i.i7.i, %.lr.ph.i.i5.i ]
  %i.ag = getelementptr inbounds i8, ptr %.pre-phi.i.i3.i, i64 -8
  store i64 %i.z, ptr %i.ag, align 8, !tbaa !56
  %.not.i4.i = icmp eq ptr %i.y, %i.k
  br i1 %.not.i4.i, label %_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i1.i, !llvm.loop !408

bb.f:                                             ; preds = %bb.b
  %i.ah = icmp eq i64 %i.h, %i.j
  br i1 %i.ah, label %_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 4 uses
  %.not12.i10.i = icmp eq ptr %i.ai, %i.k
  br i1 %.not12.i10.i, label %_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i11.i

end_hunk_6
begin_hunk_7_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_:bb.a
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !46
  %i.k = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.k, ptr %i.e, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !18
  store i8 %i.m, ptr %i.l, align 1, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #32
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !50
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.v, align 8, !tbaa !102
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #36
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !81 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !81  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !440

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !46
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #33 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #23

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !179    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  %i.t = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.v, ptr %i.a, align 8, !tbaa !56
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !46
  %i.y = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.y, ptr %i.s, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !441, !noalias !444
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !444, !noalias !441 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50, !alias.scope !444, !noalias !441 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !446
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !441, !noalias !444
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !18, !alias.scope !444, !noalias !441
  store i64 %i.an, ptr %i.af, align 8, !tbaa !18, !alias.scope !441, !noalias !444
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !444, !noalias !441
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !50, !alias.scope !441, !noalias !444
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !444, !noalias !441
  store i64 0, ptr %i.ap, align 8, !tbaa !50, !alias.scope !444, !noalias !441
  store i8 0, ptr %i.ah, align 8, !tbaa !18, !alias.scope !444, !noalias !441
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !447

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !51, !alias.scope !448, !noalias !451
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !46, !alias.scope !451, !noalias !448 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50, !alias.scope !451, !noalias !448 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !453
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !46, !alias.scope !448, !noalias !451
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !18, !alias.scope !451, !noalias !448
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !18, !alias.scope !448, !noalias !451
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !50, !alias.scope !451, !noalias !448
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !50, !alias.scope !448, !noalias !451
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !46, !alias.scope !451, !noalias !448
  store i64 0, ptr %i.be, align 8, !tbaa !50, !alias.scope !451, !noalias !448
  store i8 0, ptr %i.aw, align 8, !tbaa !18, !alias.scope !451, !noalias !448
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !447

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !177
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !179
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !175
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !177
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #32
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #36
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #34
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !454, !noalias !457
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !457, !noalias !454 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50, !alias.scope !457, !noalias !454 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !454, !noalias !457
  %i.z = load i64, ptr %i.t, align 8, !tbaa !18, !alias.scope !457, !noalias !454
  store i64 %i.z, ptr %i.r, align 8, !tbaa !18, !alias.scope !454, !noalias !457
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !457, !noalias !454
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !50, !alias.scope !454, !noalias !457
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !457, !noalias !454
  store i64 0, ptr %i.ab, align 8, !tbaa !50, !alias.scope !457, !noalias !454
  store i8 0, ptr %i.t, align 8, !tbaa !18, !alias.scope !457, !noalias !454
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !51, !alias.scope !454, !noalias !457
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !46, !alias.scope !457, !noalias !454 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50, !alias.scope !457, !noalias !454 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !459
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !46, !alias.scope !454, !noalias !457
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !18, !alias.scope !457, !noalias !454
  store i64 %i.an, ptr %i.af, align 8, !tbaa !18, !alias.scope !454, !noalias !457
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !50, !alias.scope !457, !noalias !454
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !50, !alias.scope !454, !noalias !457
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !46, !alias.scope !457, !noalias !454
  store i64 0, ptr %i.ap, align 8, !tbaa !50, !alias.scope !457, !noalias !454
  store i8 0, ptr %i.ah, align 8, !tbaa !18, !alias.scope !457, !noalias !454
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !460

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS7_EEEvRS8_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i29 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !51, !alias.scope !461, !noalias !464
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !46, !alias.scope !464, !noalias !461 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50, !alias.scope !464, !noalias !461 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !466
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !46, !alias.scope !461, !noalias !464
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !18, !alias.scope !464, !noalias !461
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !18, !alias.scope !461, !noalias !464
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !50, !alias.scope !464, !noalias !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !50, !alias.scope !461, !noalias !464
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !46, !alias.scope !464, !noalias !461
  store i64 0, ptr %i.be, align 8, !tbaa !50, !alias.scope !464, !noalias !461
  store i8 0, ptr %i.aw, align 8, !tbaa !18, !alias.scope !464, !noalias !461
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !51, !alias.scope !461, !noalias !464
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !46, !alias.scope !464, !noalias !461 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50, !alias.scope !464, !noalias !461 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !466
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !46, !alias.scope !461, !noalias !464
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !18, !alias.scope !464, !noalias !461
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !18, !alias.scope !461, !noalias !464
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !50, !alias.scope !464, !noalias !461
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !50, !alias.scope !461, !noalias !464
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !46, !alias.scope !464, !noalias !461
  store i64 0, ptr %i.bs, align 8, !tbaa !50, !alias.scope !464, !noalias !461
  store i8 0, ptr %i.bk, align 8, !tbaa !18, !alias.scope !464, !noalias !461
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !460

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !193
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #32
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !193
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #33 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
end_hunk_7
