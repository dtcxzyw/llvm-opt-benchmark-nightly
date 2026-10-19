Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_elem?download=true
inline.NumInlined: 1875
inline.NumDeleted: 663
begin_hunk_0_@_ZNK6casadi5InfSX14serialize_nodeERNS_17SerializingStreamE:.noexc.i
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %bb.a, %.noexc.i
  invoke void @_ZN6casadi17SerializingStream4packEc(ptr noundef nonnull align 8 dereferenceable(73) %1, i8 noundef signext 70)
          to label %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.b

_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc4
  %i.k = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.m = load i64, ptr %i.b, align 8, !tbaa !64
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.b:                                             ; preds = %.noexc4, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.r = load i64, ptr %i.b, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi10MinusInfSXD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi10MinusInfSXE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !39
  tail call void @_ZN6casadi6SXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi10MinusInfSXD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi10MinusInfSXE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !39
  tail call void @_ZN6casadi6SXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30, !inline_history !386
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6casadi10MinusInfSX12is_minus_infEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNK6casadi10MinusInfSX9to_doubleEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret double -inf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi10MinusInfSX14serialize_nodeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 16, ptr %i.a, align 8, !tbaa !63
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !61
  %i.d = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.27, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !62
  %i.f = load ptr, ptr %2, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !114, !range !81, !noundef !77
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.a, label %.noexc4

bb.a:                                             ; preds = %.noexc.i
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %bb.a, %.noexc.i
  invoke void @_ZN6casadi17SerializingStream4packEc(ptr noundef nonnull align 8 dereferenceable(73) %1, i8 noundef signext 102)
          to label %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.b

_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc4
  %i.k = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.m = load i64, ptr %i.b, align 8, !tbaa !64
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6casadi17SerializingStream4packIcEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.b:                                             ; preds = %.noexc4, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.r = load i64, ptr %i.b, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.o
}

declare void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, i64 noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_sx_elem.cpp() #25 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::pair.72", align 8     ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 48), ptr @_ZN6casadi9IntegerSX17cached_constants_E, align 8, !tbaa !29
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 8), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 32), align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEED2Ev, ptr nonnull @_ZN6casadi9IntegerSX17cached_constants_E, ptr nonnull @__dso_handle) #30 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi10RealtypeSX17cached_constants_E, i64 48), ptr @_ZN6casadi10RealtypeSX17cached_constants_E, align 8, !tbaa !33
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi10RealtypeSX17cached_constants_E, i64 8), align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6casadi10RealtypeSX17cached_constants_E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi10RealtypeSX17cached_constants_E, i64 32), align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6casadi10RealtypeSX17cached_constants_E, i64 40), i8 0, i64 16, i1 false)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIdPN6casadi10RealtypeSXESt4hashIdESt8equal_toIdESaISt4pairIKdS2_EEED2Ev, ptr nonnull @_ZN6casadi10RealtypeSX17cached_constants_E, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN6casadi6ZeroSX9singletonEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %__cxx_global_var_init.12.exit, !prof !387

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi6ZeroSX9singletonEvE8instance) #30
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.12.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi6ZeroSX9singletonEvE8instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi6ZeroSXE, i64 16), ptr @_ZZN6casadi6ZeroSX9singletonEvE8instance, align 8, !tbaa !50
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi6ZeroSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi6ZeroSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi6ZeroSXD2Ev, ptr nonnull @_ZZN6casadi6ZeroSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi6ZeroSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.12.exit

common.resume:                                    ; preds = %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.q, %bb.i ], [ %i.ao, %bb.p ], [ %i.ay, %bb.t ], [ %i.bg, %bb.x ], [ %i.bo, %bb.ab ], [ %i.bw, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi6ZeroSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.12.exit:                    ; preds = %bb.a, %bb.b, %bb.d
  tail call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE4zeroE, ptr noundef nonnull @_ZZN6casadi6ZeroSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.j = tail call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE4zeroE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.k = load atomic i8, ptr @_ZGVZN6casadi5OneSX9singletonEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %__cxx_global_var_init.13.exit, !prof !387

bb.f:                                             ; preds = %__cxx_global_var_init.12.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi5OneSX9singletonEvE8instance) #30
  %.not.i.i1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i1, label %__cxx_global_var_init.13.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi5OneSX9singletonEvE8instance)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi5OneSXE, i64 16), ptr @_ZZN6casadi5OneSX9singletonEvE8instance, align 8, !tbaa !50
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5OneSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5OneSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi5OneSXD2Ev, ptr nonnull @_ZZN6casadi5OneSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi5OneSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.13.exit

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi5OneSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %__cxx_global_var_init.12.exit, %bb.f, %bb.h
  tail call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE3oneE, ptr noundef nonnull @_ZZN6casadi5OneSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.r = tail call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE3oneE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 24), align 8, !tbaa !40
  %.not.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.not.i.i.i.i, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %__cxx_global_var_init.13.exit, %bb.j
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 16), %__cxx_global_var_init.13.exit ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !27 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42
  %i.v = icmp eq i64 %i.u, 2
  br i1 %i.v, label %_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i, label %.preheader.i.i, !llvm.loop !0

bb.k:                                             ; preds = %__cxx_global_var_init.13.exit
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9IntegerSX17cached_constants_E, i64 8), align 8, !tbaa !30 ; 2 uses
  %i.x = urem i64 2, %i.w                         ; 2 uses
  %i.y = load ptr, ptr @_ZN6casadi9IntegerSX17cached_constants_E, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.af = icmp eq i64 %i.ai, 2
  br i1 %i.af, label %_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.m ], [ %i.ab, %bb.l ]
  %i.ag = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !27 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.w
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.x
  br i1 %.not19.i.i.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.k
  %i.ak = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %i.ak)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.loopexit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi9IntegerSXE, i64 16), ptr %i.ak, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 2, ptr %i.al, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store i64 2, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = call { ptr, i8 } @_ZNSt10_HashtableIxSt4pairIKxPN6casadi9IntegerSXEESaIS5_ENSt8__detail10_Select1stESt8equal_toIxESt4hashIxENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IxS4_EEEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) @_ZN6casadi9IntegerSX17cached_constants_E, ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %__cxx_global_var_init.14.exit

bb.p:                                             ; preds = %.loopexit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 24) #28
  br label %common.resume

_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i: ; preds = %bb.m, %bb.j, %bb.l
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.j ], [ %i.ab, %bb.l ], [ %i.ag, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  br label %__cxx_global_var_init.14.exit

__cxx_global_var_init.14.exit:                    ; preds = %bb.o, %_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i
  %.0.i.i = phi ptr [ %i.ak, %bb.o ], [ %i.aq, %_ZNSt13unordered_mapIxPN6casadi9IntegerSXESt4hashIxESt8equal_toIxESaISt4pairIKxS2_EEE4findERS8_.exit.i.i ]
  call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE3twoE, ptr noundef %.0.i.i, i1 noundef zeroext false)
  %i.ar = call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE3twoE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.as = load atomic i8, ptr @_ZGVZN6casadi10MinusOneSX9singletonEvE8instance acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.q, label %__cxx_global_var_init.15.exit, !prof !387

bb.q:                                             ; preds = %__cxx_global_var_init.14.exit
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi10MinusOneSX9singletonEvE8instance) #30
  %.not.i.i2 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i2, label %__cxx_global_var_init.15.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi10MinusOneSX9singletonEvE8instance)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi10MinusOneSXE, i64 16), ptr @_ZZN6casadi10MinusOneSX9singletonEvE8instance, align 8, !tbaa !50
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi10MinusOneSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi10MinusOneSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.ax = call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi10MinusOneSXD2Ev, ptr nonnull @_ZZN6casadi10MinusOneSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi10MinusOneSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.15.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi10MinusOneSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.15.exit:                    ; preds = %__cxx_global_var_init.14.exit, %bb.q, %bb.s
  call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE9minus_oneE, ptr noundef nonnull @_ZZN6casadi10MinusOneSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.az = call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE9minus_oneE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.ba = load atomic i8, ptr @_ZGVZN6casadi5NanSX9singletonEvE8instance acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %__cxx_global_var_init.16.exit, !prof !387

bb.u:                                             ; preds = %__cxx_global_var_init.15.exit
  %i.bc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi5NanSX9singletonEvE8instance) #30
  %.not.i.i3 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i3, label %__cxx_global_var_init.16.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi5NanSX9singletonEvE8instance)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi5NanSXE, i64 16), ptr @_ZZN6casadi5NanSX9singletonEvE8instance, align 8, !tbaa !50
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5NanSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5NanSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.bf = call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi5NanSXD2Ev, ptr nonnull @_ZZN6casadi5NanSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi5NanSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.16.exit

bb.x:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi5NanSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.16.exit:                    ; preds = %__cxx_global_var_init.15.exit, %bb.u, %bb.w
  call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE3nanE, ptr noundef nonnull @_ZZN6casadi5NanSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.bh = call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE3nanE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.bi = load atomic i8, ptr @_ZGVZN6casadi5InfSX9singletonEvE8instance acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %__cxx_global_var_init.17.exit, !prof !387

bb.y:                                             ; preds = %__cxx_global_var_init.16.exit
  %i.bk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi5InfSX9singletonEvE8instance) #30
  %.not.i.i4 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i4, label %__cxx_global_var_init.17.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi5InfSX9singletonEvE8instance)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi5InfSXE, i64 16), ptr @_ZZN6casadi5InfSX9singletonEvE8instance, align 8, !tbaa !50
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5InfSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi5InfSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.bn = call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi5InfSXD2Ev, ptr nonnull @_ZZN6casadi5InfSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi5InfSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.17.exit

bb.ab:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi5InfSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.17.exit:                    ; preds = %__cxx_global_var_init.16.exit, %bb.y, %bb.aa
  call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE3infE, ptr noundef nonnull @_ZZN6casadi5InfSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.bp = call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE3infE, ptr nonnull @__dso_handle) #30 ; 0 uses
  %i.bq = load atomic i8, ptr @_ZGVZN6casadi10MinusInfSX9singletonEvE8instance acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.ac, label %__cxx_global_var_init.18.exit, !prof !387

bb.ac:                                            ; preds = %__cxx_global_var_init.17.exit
  %i.bs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6casadi10MinusInfSX9singletonEvE8instance) #30
  %.not.i.i5 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i5, label %__cxx_global_var_init.18.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6casadi6SXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6casadi10MinusInfSX9singletonEvE8instance)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN6casadi10MinusInfSXE, i64 16), ptr @_ZZN6casadi10MinusInfSX9singletonEvE8instance, align 8, !tbaa !50
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi10MinusInfSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6casadi10MinusInfSX9singletonEvE8instance, i64 12), align 4, !tbaa !39
  %i.bv = call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi10MinusInfSXD2Ev, ptr nonnull @_ZZN6casadi10MinusInfSX9singletonEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6casadi10MinusInfSX9singletonEvE8instance) #30
  br label %__cxx_global_var_init.18.exit

bb.af:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6casadi10MinusInfSX9singletonEvE8instance) #30
  br label %common.resume

__cxx_global_var_init.18.exit:                    ; preds = %__cxx_global_var_init.17.exit, %bb.ac, %bb.ae
  call void @_ZN6casadi6SXElemC1EPNS_6SXNodeEb(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadi13casadi_limitsINS_6SXElemEE9minus_infE, ptr noundef nonnull @_ZZN6casadi10MinusInfSX9singletonEvE8instance, i1 noundef zeroext false)
  %i.bx = call i32 @__cxa_atexit(ptr @_ZN6casadi6SXElemD1Ev, ptr nonnull @_ZN6casadi13casadi_limitsINS_6SXElemEE9minus_infE, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #21

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{null, ptr @_ZNK6casadi6SXElem11is_constantEv}
!3 = distinct !{null, ptr @_ZNK6casadi6SXElemcvdEv}
!4 = distinct !{null}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = distinct !{!8, !28}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!20 = !{!"long", !13, i64 0}
!21 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!22 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!23 = !{!"float", !13, i64 0}
!24 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !20, i64 8}
!25 = !{!"_ZTSSt10_HashtableIxSt4pairIKxPN6casadi9IntegerSXEESaIS5_ENSt8__detail10_Select1stESt8equal_toIxESt4hashIxENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !19, i64 0, !20, i64 8, !22, i64 16, !20, i64 24, !24, i64 32, !21, i64 48}
!26 = !{!25, !21, i64 16}
!27 = !{!22, !21, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!25, !19, i64 0}
!30 = !{!25, !20, i64 8}
!31 = !{!"_ZTSSt10_HashtableIdSt4pairIKdPN6casadi10RealtypeSXEESaIS5_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !19, i64 0, !20, i64 8, !22, i64 16, !20, i64 24, !24, i64 32, !21, i64 48}
!32 = !{!31, !21, i64 16}
!33 = !{!31, !19, i64 0}
!34 = !{!31, !20, i64 8}
!35 = !{!"p1 _ZTSN6casadi6SXNodeE", !17, i64 0}
!36 = !{!"_ZTSN6casadi6SXElemE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSN6casadi6SXNodeE", !14, i64 8, !14, i64 12}
!39 = !{!38, !14, i64 12}
!40 = !{!25, !20, i64 24}
!41 = !{!"long long", !13, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!21, !21, i64 0}
!44 = !{!"p1 _ZTSN6casadi9IntegerSXE", !17, i64 0}
!45 = !{!"_ZTSSt4pairIKxPN6casadi9IntegerSXEE", !41, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!"double", !13, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"vtable pointer", !12, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSN6casadi10ConstantSXE", !38, i64 0}
!52 = !{!"_ZTSN6casadi10RealtypeSXE", !51, i64 0, !47, i64 16}
!53 = !{!52, !47, i64 16}
!54 = !{!"p1 _ZTSN6casadi10RealtypeSXE", !17, i64 0}
!55 = !{!"_ZTSSt4pairIKdPN6casadi10RealtypeSXEE", !47, i64 0, !54, i64 8}
!56 = !{!55, !54, i64 8}
!57 = !{!"p1 omnipotent char", !17, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !20, i64 8, !13, i64 16}
!61 = !{!60, !57, i64 0}
!62 = !{!60, !20, i64 8}
!63 = !{!20, !20, i64 0}
!64 = !{!13, !13, i64 0}
!65 = !{ptr @_ZN6casadi6SXElem8is_equalERKS0_S2_x}
!66 = !{ptr @_ZN6casadi6SXElemaSERKS0_}
!67 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!68 = !{ptr @_ZNK6casadi6SXElem5is_opEx}
!69 = !{ptr @_ZNK6casadi6SXElem3depEx}
!70 = !{ptr @_ZNK6casadi6SXElem7is_zeroEv}
!71 = !{ptr @_ZNK6casadi6SXElem12is_minus_oneEv}
!72 = !{ptr @_ZNK6casadi6SXElem6is_oneEv}
!73 = !{!"_ZTSN6casadi7UnarySXE", !38, i64 0, !13, i64 16, !36, i64 24}
!74 = !{!73, !13, i64 16}
!75 = !{ptr @_ZNK6casadi6SXElem5n_depEv}
!76 = !{ptr @_ZNK6casadi6SXElem11is_constantEv}
!77 = !{}
!78 = !{ptr @_ZNK6casadi6SXElem2opEv}
!79 = !{!"bool", !13, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{i8 0, i8 2}
!82 = !{ptr @_ZNK6casadi6SXElemcvdEv}
!83 = !{ptr @_ZNK6casadi6SXElem6is_infEv}
!84 = !{ptr @_ZNK6casadi6SXElem12is_minus_infEv}
!85 = !{!"_ZTSN6casadi8BinarySXE", !38, i64 0, !13, i64 16, !36, i64 24, !36, i64 32}
!86 = !{!85, !13, i64 16}
!87 = !{!"p1 _ZTSN6casadi6SXElemE", !17, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6casadi6SXElemESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 0}
!90 = !{!88, !87, i64 8}
!91 = !{!"_ZTSSt10_HashtableIxSt4pairIKxN6casadi14GenericWeakRefINS2_12SharedSXElemENS2_8OutputSXEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIxESt4hashIxENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE", !19, i64 0, !20, i64 8, !22, i64 16, !20, i64 24, !24, i64 32, !21, i64 48}
!92 = !{!91, !19, i64 0}
!93 = !{!91, !20, i64 8}
!94 = !{!24, !23, i64 0}
!95 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !17, i64 0}
!96 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !95, i64 0}
!97 = !{!96, !95, i64 0}
!98 = !{ptr @_ZNK6casadi6SXElem6is_nanEv}
!99 = !{!38, !14, i64 8}
!100 = !{!"_ZTSN6casadi9IntegerSXE", !51, i64 0, !14, i64 16}
!101 = !{!100, !14, i64 16}
!102 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!103 = !{!"_ZTSSt6locale", !102, i64 0}
!104 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !103, i64 56}
!105 = !{!104, !57, i64 40}
!106 = !{!104, !57, i64 32}
!107 = !{!"_ZTSSi", !20, i64 8}
!108 = !{!107, !20, i64 8}
!109 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !19, i64 0, !20, i64 8, !22, i64 16, !20, i64 24, !24, i64 32, !21, i64 48}
!110 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !109, i64 0}
!111 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !17, i64 0}
!112 = !{!"p1 _ZTSSo", !17, i64 0}
!113 = !{!"_ZTSN6casadi17SerializingStreamE", !110, i64 0, !111, i64 56, !112, i64 64, !79, i64 72}
!114 = !{!113, !79, i64 72}
!115 = !{!14, !14, i64 0}
!116 = !{!24, !20, i64 8}
!117 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!118 = !{!31, !20, i64 24}
!119 = !{!88, !87, i64 16}
!120 = !{!87, !87, i64 0}
!121 = !{!91, !21, i64 16}
!122 = !{!"p1 _ZTSN6casadi8OutputSXE", !17, i64 0}
!123 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedSXElemENS_8OutputSXEEE", !122, i64 0}
!124 = !{!123, !122, i64 0}
!125 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedSXElemENS_8OutputSXEEE", !17, i64 0}
!126 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedSXElemENS_8OutputSXEEE", !125, i64 8}
!127 = !{!126, !125, i64 8}
!128 = !{!"_ZTSN6casadi8OutputSXE", !38, i64 0, !126, i64 16, !36, i64 32, !14, i64 40}
!129 = !{!128, !14, i64 40}
!130 = !{!91, !20, i64 24}
!131 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKxN6casadi14GenericWeakRefINS4_12SharedSXElemENS4_8OutputSXEEEELb0EEEEEE", !17, i64 0}
!132 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKxN6casadi14GenericWeakRefINS3_12SharedSXElemENS3_8OutputSXEEEELb0EEE", !17, i64 0}
!133 = !{!"_ZTSNSt10_HashtableIxSt4pairIKxN6casadi14GenericWeakRefINS2_12SharedSXElemENS2_8OutputSXEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIxESt4hashIxENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !131, i64 0, !132, i64 8}
!134 = !{!133, !132, i64 8}
!135 = distinct !{!135, !28}
!136 = distinct !{!136, !28}
!137 = distinct !{!137, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!138 = distinct !{!138, !137, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!141 = distinct !{!141, !140, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!143 = distinct !{!143, !142, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!144 = !{!67, !67, i64 0}
!145 = !{!141}
!146 = !{!143, !141}
end_hunk_0
