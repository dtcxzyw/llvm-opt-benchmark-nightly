inline.NumInlined: 620
inline.NumDeleted: 317
begin_hunk_0_@_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA45_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA43_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  invoke void @_ZN5folly11toAppendFitIJA43_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA36_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  invoke void @_ZN5folly11toAppendFitIJA36_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !52, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = invoke i32 @deflateEnd(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !52, !range !53, !noundef !54
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = invoke i32 @inflateEnd(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.f, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !52, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = invoke i32 @deflateEnd(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.g = load i8, ptr %i.f, align 8, !tbaa !52, !range !53, !noundef !54
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = invoke i32 @inflateEnd(ptr noundef nonnull %i.i)
          to label %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD2Ev.exit: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13validPrefixesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  switch i32 %i.b, label %bb.w [
    i32 4, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
    i32 9, label %bb.t
  ]

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(4224) ptr @_Znwm(i64 noundef 4224) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.b ; 4 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !56
  store ptr %i.e, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4224
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 18
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.m = phi ptr [ %i.e, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.dl, %bb.c ]
  %.023127 = phi i32 [ 2048, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.o, %bb.c ] ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.r
  %i.o = add nuw nsw i32 %.023127, 4096
  %i.p = icmp samesign ult i32 %.023127, 59393
  br i1 %i.p, label %.preheader, label %.loopexit112, !llvm.loop !60

bb.d:                                             ; preds = %.preheader, %bb.r
  %i.q = phi ptr [ %i.m, %.preheader ], [ %i.dl, %bb.r ] ; 8 uses
  %.022126 = phi i32 [ 0, %.preheader ], [ %i.dm, %bb.r ] ; 3 uses
  %i.r = or disjoint i32 %.022126, %.023127       ; 2 uses
  %i.s = urem i32 %i.r, 31
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = trunc nuw i32 %i.t to i16
  %i.v = xor i16 %i.u, 31                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v)
  store ptr %i.g, ptr %2, align 8, !tbaa !48, !alias.scope !62
  store i64 2, ptr %i.h, align 8, !tbaa !49, !alias.scope !62
  store i8 0, ptr %i.i, align 2, !tbaa !28
  store i16 %i.w, ptr %i.g, align 8
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.q, %i.x
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.q, align 8, !tbaa !48
  %i.z = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.y, ptr noundef nonnull align 8 dereferenceable(3) %i.g, i64 3, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.z, ptr %i.q, align 8, !tbaa !40
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !28
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.g, ptr %2, align 8, !tbaa !40
  store i64 0, ptr %i.h, align 8, !tbaa !49
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775776
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc69 unwind label %bb.p

.noexc69:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 288230376151711743)
  %i.ao = select i1 %i.am, i64 288230376151711743, i64 %i.an ; 3 uses
  %.not.i.i56 = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i56)
  %i.ap = shl nuw nsw i64 %i.ao, 5
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #23
          to label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i unwind label %.thread ; 5 uses

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.as, ptr noundef nonnull align 8 dereferenceable(3) %i.g, i64 3, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 2, ptr %i.at, align 8, !tbaa !49
  store ptr %i.g, ptr %2, align 8, !tbaa !40
  store i64 0, ptr %i.h, align 8, !tbaa !49
  store i8 0, ptr %i.g, align 8, !tbaa !28
  %.not10.i.i.i.i58 = icmp eq ptr %i.af, %i.q
  br i1 %.not10.i.i.i.i58, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65
  %.012.i.i.i.i60 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65 ], [ %i.aq, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ] ; 5 uses
  %.0911.i.i.i.i61 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65 ], [ %i.af, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i60, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i.i60, align 8, !tbaa !48, !alias.scope !65, !noalias !68
  %i.av = load ptr, ptr %.0911.i.i.i.i61, align 8, !tbaa !40, !alias.scope !68, !noalias !65 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i61, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62

bb.i:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i61, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !49, !alias.scope !68, !noalias !65 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !70
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62: ; preds = %.lr.ph.i.i.i.i59
  store ptr %i.av, ptr %.012.i.i.i.i60, align 8, !tbaa !40, !alias.scope !65, !noalias !68
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !28, !alias.scope !65, !noalias !68
  %.phi.trans.insert.i.i.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i61, i64 8
  %.pre.i.i.i.i.i64 = load i64, ptr %.phi.trans.insert.i.i.i.i.i63, align 8, !tbaa !49, !alias.scope !68, !noalias !65
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62, %bb.i
  %i.bd = phi i64 [ %i.az, %bb.i ], [ %.pre.i.i.i.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i61, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i60, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !49, !alias.scope !65, !noalias !68
  store ptr %i.aw, ptr %.0911.i.i.i.i61, align 8, !tbaa !40, !alias.scope !68, !noalias !65
  store i64 0, ptr %i.be, align 8, !tbaa !49, !alias.scope !68, !noalias !65
  store i8 0, ptr %i.aw, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i61, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i60, i64 32 ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.bg, %i.q
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i59, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aq, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i65 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 3 uses
  %.not.i27.i = icmp eq ptr %i.af, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, %bb.j
  store ptr %i.aq, ptr %0, align 8, !tbaa !56
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !59
  %.pre = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bk = icmp eq ptr %.pre, %i.g
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bl = load i64, ptr %i.g, align 8, !tbaa !28
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bn = phi ptr [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ae, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.bi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bo = and i16 %i.v, 31
  %i.bp = icmp eq i16 %i.bo, 31
  br i1 %i.bp, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = add nsw i16 %i.v, -31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.br = call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  store ptr %i.j, ptr %3, align 8, !tbaa !48, !alias.scope !72
  store i64 2, ptr %i.k, align 8, !tbaa !49, !alias.scope !72
  store i8 0, ptr %i.l, align 2, !tbaa !28
  store i16 %i.br, ptr %i.j, align 8
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !59
  %.not.i.i35 = icmp eq ptr %i.bn, %i.bs
  br i1 %.not.i.i35, label %bb.l, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39.thread: ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bt, ptr noundef nonnull align 8 dereferenceable(3) %i.j, i64 3, i1 false)
  %.pre129 = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 2, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.j, ptr %3, align 8, !tbaa !40
  store i64 0, ptr %i.k, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre129, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.l:                                             ; preds = %bb.k
  %i.bw = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.bx = ptrtoint ptr %i.bn to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775776
  br i1 %i.ca, label %bb.m, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i71

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc102 unwind label %bb.q

.noexc102:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i71: ; preds = %bb.l
  %i.cb = ashr exact i64 %i.bz, 5                 ; 3 uses
  %.sroa.speculated.i.i72 = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i72, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 288230376151711743)
  %i.cf = select i1 %i.cd, i64 288230376151711743, i64 %i.ce ; 3 uses
  %.not.i.i73 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i73)
  %i.cg = shl nuw nsw i64 %i.cf, 5
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #23
          to label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77 unwind label %.thread166 ; 5 uses

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i71
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cj, ptr noundef nonnull align 8 dereferenceable(3) %i.j, i64 3, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 2, ptr %i.ck, align 8, !tbaa !49
  store ptr %i.j, ptr %3, align 8, !tbaa !40
  store i64 0, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.j, align 8, !tbaa !28
  %.not10.i.i.i.i78 = icmp eq ptr %i.bw, %i.bn
  br i1 %.not10.i.i.i.i78, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i98, label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85
  %.012.i.i.i.i80 = phi ptr [ %i.cy, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85 ], [ %i.ch, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77 ] ; 5 uses
  %.0911.i.i.i.i81 = phi ptr [ %i.cx, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85 ], [ %i.bw, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 16 ; 3 uses
  store ptr %i.cl, ptr %.012.i.i.i.i80, align 8, !tbaa !48, !alias.scope !75, !noalias !78
  %i.cm = load ptr, ptr %.0911.i.i.i.i81, align 8, !tbaa !40, !alias.scope !78, !noalias !75 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 16 ; 5 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82

bb.n:                                             ; preds = %.lr.ph.i.i.i.i79
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !49, !alias.scope !78, !noalias !75 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.cn, i64 %i.cs, i1 false), !alias.scope !80
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82: ; preds = %.lr.ph.i.i.i.i79
  store ptr %i.cm, ptr %.012.i.i.i.i80, align 8, !tbaa !40, !alias.scope !75, !noalias !78
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !28, !alias.scope !78, !noalias !75
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !28, !alias.scope !75, !noalias !78
  %.phi.trans.insert.i.i.i.i.i83 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 8
  %.pre.i.i.i.i.i84 = load i64, ptr %.phi.trans.insert.i.i.i.i.i83, align 8, !tbaa !49, !alias.scope !78, !noalias !75
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82, %bb.n
  %i.cu = phi i64 [ %i.cq, %bb.n ], [ %.pre.i.i.i.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !49, !alias.scope !75, !noalias !78
  store ptr %i.cn, ptr %.0911.i.i.i.i81, align 8, !tbaa !40, !alias.scope !78, !noalias !75
  store i64 0, ptr %i.cv, align 8, !tbaa !49, !alias.scope !78, !noalias !75
  store i8 0, ptr %i.cn, align 8, !tbaa !28, !alias.scope !78, !noalias !75
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 32 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.cx, %i.bn
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i98, label %.lr.ph.i.i.i.i79, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i98: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77
  %.0.lcssa.i.i.i.i88 = phi ptr [ %i.ch, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i77 ], [ %i.cy, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i85 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i88, i64 32 ; 3 uses
  %.not.i27.i100 = icmp eq ptr %i.bw, null
  br i1 %.not.i27.i100, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i98
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i98, %bb.o
  store ptr %i.ch, ptr %0, align 8, !tbaa !56
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.da, ptr %i.c, align 8, !tbaa !59
  %.pre130.a = load ptr, ptr %3, align 8, !tbaa !40 ; 2 uses
  %i.db = icmp eq ptr %.pre130.a, %i.j
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !28
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %.pre130.a, i64 noundef %i.dd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.de = phi ptr [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39.thread ], [ %i.cz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.r

.thread:                                          ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.p:                                             ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre132 = load ptr, ptr %2, align 8, !tbaa !40 ; 2 uses
  %i.df = icmp eq ptr %.pre132, %i.g
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.p
  %i.dg = load i64, ptr %i.g, align 8, !tbaa !28
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %.pre132, i64 noundef %i.dh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.p, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %lpad.phi164 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %lpad.loopexit, %.thread ], [ %lpad.loopexit.split-lp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

.thread166:                                       ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i71
  %lpad.loopexit109 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.m
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre131 = load ptr, ptr %3, align 8, !tbaa !40 ; 2 uses
  %i.di = icmp eq ptr %.pre131, %i.j
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.dj = load i64, ptr %i.j, align 8, !tbaa !28
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %.pre131, i64 noundef %i.dk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %.thread166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %lpad.phi111168 = phi { ptr, i32 } [ %lpad.loopexit.split-lp110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.loopexit109, %.thread166 ], [ %lpad.loopexit.split-lp110, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dl = phi ptr [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.dm = add nuw nsw i32 %.022126, 32
  %i.dn = icmp samesign ult i32 %.022126, 193
  br i1 %i.dn, label %bb.d, label %bb.c, !llvm.loop !81

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.b
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.n, %bb.b ], [ %lpad.phi111168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %lpad.phi164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.do, ptr %4, align 8, !tbaa !48, !alias.scope !82
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.dp, align 8, !tbaa !49, !alias.scope !82
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.dq, align 2, !tbaa !28
  store i16 -29921, ptr %i.do, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.dr = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread170 ; 4 uses

.thread170:                                       ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.dr, ptr %0, align 8, !tbaa !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !59
  %i.dw = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %4, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dr)
          to label %bb.v unwind label %bb.u

end_hunk_0
