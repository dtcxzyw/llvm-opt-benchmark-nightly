inline.NumInlined: 35811
inline.NumDeleted: 7887
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN8facebook5velox12VectorFuzzer17fuzzFlatPrimitiveERKSt10shared_ptrIKNS0_4TypeEEi:bb.a
  %i.bid = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.et:                                            ; preds = %"_ZZN8facebook5velox12VectorFuzzer17fuzzFlatPrimitiveERKSt10shared_ptrIKNS0_4TypeEEiENK3$_0clEv.exit"
  %i.bie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.eu:                                            ; preds = %bb.er
  %i.bif = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #34
  br label %bb.ey

bb.ev:                                            ; preds = %bb.er
  %.pr = load ptr, ptr %33, align 8, !tbaa !159   ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.big = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bih = atomicrmw sub ptr %i.big, i32 1 acq_rel, align 4
  %i.bii = icmp eq i32 %i.bih, 1
  br i1 %i.bii, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.ew
  %i.bij = load ptr, ptr %.pr, align 8, !tbaa !66
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 64
  %i.bil = load ptr, ptr %i.bik, align 8
  invoke void %i.bil(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.ex, !inline_history !342

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bim = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !343
  %.not.i.i19 = icmp eq ptr %i.bin, null
  %i.bio = load ptr, ptr %.pr, align 8, !tbaa !66
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 %..i.i
  %i.biq = load ptr, ptr %i.bip, align 8
  invoke void %i.biq(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.ex, !inline_history !342

bb.ex:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.bir = landingpad { ptr, i32 }
          catch ptr null
  %i.bis = extractvalue { ptr, i32 } %i.bir, 0
  call void @__clang_call_terminate(ptr %i.bis) #45
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.eq, %bb.ev, %bb.ew, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.ey:                                            ; preds = %bb.eu, %bb.et
  %.pn = phi { ptr, i32 } [ %i.bif, %bb.eu ], [ %i.bie, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  br label %.body

_ZN8facebook5velox4bits8fillBitsEPmiib.exit:      ; preds = %bb.g, %._crit_edge.i.i, %bb.e, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i47.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i164.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i206.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i227.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i249.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.es, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.bhv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn, %bb.ey ], [ %i.bid, %bb.es ], [ %.pn5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ], [ %.pn.pn5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i ], [ %.pn26.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i ], [ %.pn22.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i ], [ %.pn29.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i ], [ %.pn29.i48.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i47.i.i ], [ %.pn90.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i ], [ %.pn.pn54.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ], [ %.pn34.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i.i ], [ %.pn34.i165.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i164.i.i ], [ %.pn26.i207.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i206.i.i ], [ %.pn26.i228.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i227.i.i ], [ %.pn29.i250.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i249.i.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox12VectorFuzzer11fuzzComplexERKSt10shared_ptrIKNS0_4TypeEEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 32 dereferenceable(1528) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.294", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.351", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.351", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.facebook::velox::(anonymous namespace)::ScopedOptions", align 8 ; 13 uses
  %10 = alloca %"struct.facebook::velox::(anonymous namespace)::ScopedOptions", align 8 ; 13 uses
  %11 = alloca %"class.std::shared_ptr.115", align 16 ; 5 uses
  %12 = alloca %"class.std::shared_ptr.124", align 8 ; 9 uses
  %13 = alloca %"class.std::vector.127", align 8  ; 6 uses
  %14 = alloca %"class.std::shared_ptr.115", align 16 ; 5 uses
  %15 = alloca %"class.std::shared_ptr.124", align 8 ; 9 uses
  %16 = alloca %"class.std::vector.127", align 8  ; 6 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %18 = alloca %"class.std::shared_ptr.8", align 8 ; 6 uses
  %19 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.87", align 16 ; 5 uses
  %21 = alloca %"class.std::shared_ptr.132", align 16 ; 5 uses
  %22 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %23 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %24 = alloca %"class.std::shared_ptr.8", align 8 ; 6 uses
  %25 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %26 = alloca %"class.std::shared_ptr.8", align 8 ; 6 uses
  %27 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %28 = alloca %"class.std::shared_ptr.120", align 16 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr %1, ptr %9, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 32 dereferenceable(136) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 32, !tbaa !39  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.thread269, label %bb.b

.thread269:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.k = getelementptr inbounds i8, ptr null, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !40
  br label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.c, !prof !41

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #43 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !40
  %i.r = icmp samesign ugt i64 %i.i, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.i, 4
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 4, !tbaa !43
  store i32 %i.t, ptr %i.n, align 4, !tbaa !43
  br label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit

_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit: ; preds = %.thread269, %bb.d, %bb.e, %bb.f
  %i.u = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.l, %.thread269 ]
  %i.v = phi ptr [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %.thread269 ]
  %i.w = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread269 ]
  store ptr %i.v, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 0, ptr %i.z, align 2, !tbaa !55
  %i.aa = load ptr, ptr %2, align 8, !tbaa !70    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !73
  switch i8 %i.ac, label %bb.dx [
    i8 32, label %bb.g
    i8 30, label %bb.av
    i8 31, label %bb.bv
  ]

bb.g:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsC2EPNS0_12VectorFuzzerE.exit
  %i.ad = load atomic i8, ptr @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance acquire, align 8, !noalias !344
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.l, !prof !347

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #34, !noalias !344
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8facebook5velox12IPPrefixTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance)
          to label %bb.j unwind label %bb.k, !noalias !344

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox7RowTypeD2Ev, ptr nonnull @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance, ptr nonnull @__dso_handle) #34, !noalias !344 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #34, !noalias !344
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #34, !noalias !344
  br label %.body

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.ai = load ptr, ptr %2, align 8, !tbaa !70    ; 3 uses
  %i.aj = icmp eq ptr %i.ai, @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance
  br i1 %i.aj, label %bb.m, label %bb.ai

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %1, ptr %10, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ak, ptr noundef nonnull align 32 dereferenceable(136) %1, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  %i.an = load ptr, ptr %i.c, align 32, !tbaa !39 ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i130 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i.i130, label %.thread270, label %bb.n

.thread270:                                       ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.as = getelementptr inbounds i8, ptr null, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.at, align 8, !tbaa !40
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.au = icmp ugt i64 %i.aq, 9223372036854775804
  br i1 %i.au, label %.noexc.i.i.i.i132, label %_ZNSt15__new_allocatorIN8facebook5velox6fuzzer12UTF8CharListEE8allocateEmPKv.exit.i.i.i.i.i.i131, !prof !41

.noexc.i.i.i.i132:                                ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %.noexc.i.i.i.i132
  unreachable

_ZNSt15__new_allocatorIN8facebook5velox6fuzzer12UTF8CharListEE8allocateEmPKv.exit.i.i.i.i.i.i131: ; preds = %bb.n
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #43
          to label %.noexc133 unwind label %bb.af ; 5 uses

.noexc133:                                        ; preds = %_ZNSt15__new_allocatorIN8facebook5velox6fuzzer12UTF8CharListEE8allocateEmPKv.exit.i.i.i.i.i.i131
  store ptr %i.av, ptr %i.al, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 4 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !40
  %i.az = icmp samesign ugt i64 %i.aq, 4
  br i1 %i.az, label %bb.o, label %bb.p, !prof !42

bb.o:                                             ; preds = %.noexc133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc133
  %i.ba = icmp eq i64 %i.aq, 4
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !43
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %.thread270, %bb.o, %bb.p, %bb.q
  %i.bc = phi ptr [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.ay, %bb.q ], [ %i.at, %.thread270 ]
  %i.bd = phi ptr [ %i.ax, %bb.o ], [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ %i.as, %.thread270 ]
  %i.be = phi ptr [ %i.aw, %bb.o ], [ %i.aw, %bb.p ], [ %i.aw, %bb.q ], [ %i.ar, %.thread270 ]
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.bg, align 1, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bh = tail call ptr @__dynamic_cast(ptr nonnull @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #34, !noalias !348 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bh, ptr %12, align 8, !tbaa !351, !alias.scope !348
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !51, !noalias !348 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !51, !alias.scope !348
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !348
  %.not.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !53, !noalias !348
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !53, !noalias !348
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4, !noalias !348 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !348
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit: ; preds = %bb.s, %bb.u, %bb.v, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox12VectorFuzzer7fuzzRowERKSt10shared_ptrIKNS0_7RowTypeEEibRKSt6vectorIS2_INS0_22AbstractInputGeneratorEESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.115") align 8 %11, ptr noundef nonnull align 32 dereferenceable(1528) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit unwind label %bb.ag

_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit
  %i.bq = load <2 x ptr>, ptr %11, align 16, !tbaa !62
  store <2 x ptr> %i.bq, ptr %0, align 8, !tbaa !62
  %.phi.trans.insert290 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre291 = load ptr, ptr %.phi.trans.insert290, align 8, !tbaa !51 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not.i.i140 = icmp eq ptr %.pre291, null
  br i1 %.not.i.i140, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.pre291, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.br, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre291, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !65
  %i.bw = load ptr, ptr %.pre291, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %.pre291) #34, !inline_history !354
  %i.bz = load ptr, ptr %.pre291, align 8, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %.pre291) #34, !inline_history !354
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i141 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i141, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

bb.aa:                                            ; preds = %bb.y
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i143 = phi i32 [ %i.bu, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cf = icmp eq i32 %.0.i.i.i.i143, 1
  br i1 %i.cf, label %bb.ab, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre291) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.cg = load ptr, ptr %10, align 8, !tbaa !35   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(1528) %i.cg, ptr noundef nonnull align 8 dereferenceable(136) %i.ak, i64 32, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8facebook5velox6fuzzer12UTF8CharListESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 80, i1 false)
  %i.ck = load ptr, ptr %i.al, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i.i.i144 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i144, label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #44
  br label %_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsD2Ev.exit

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #45
  unreachable

_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsD2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ee

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIN8facebook5velox6fuzzer12UTF8CharListEE8allocateEmPKv.exit.i.i.i.i.i.i131, %.noexc.i.i.i.i132
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_113ScopedOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn103 = phi { ptr, i32 } [ %i.cs, %bb.ag ], [ %i.cr, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %.body

bb.ai:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ct = icmp eq ptr %i.ai, null
  br i1 %i.ct, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i148, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = tail call ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #34, !noalias !355 ; 2 uses
  %.not.not.i145 = icmp eq ptr %i.cu, null
  br i1 %.not.not.i145, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i148, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.cu, ptr %15, align 8, !tbaa !351, !alias.scope !355
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !51, !noalias !355 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !51, !alias.scope !355
  %.not.i.i.i.i146 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i146, label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !355
  %.not.i.i.i.i.i147 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i147, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !53, !noalias !355
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !53, !noalias !355
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149

bb.an:                                            ; preds = %bb.al
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4, !noalias !355 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149

_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i148: ; preds = %bb.aj, %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !alias.scope !355
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149

_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149: ; preds = %bb.ak, %bb.am, %bb.an, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i148
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox12VectorFuzzer7fuzzRowERKSt10shared_ptrIKNS0_7RowTypeEEibRKSt6vectorIS2_INS0_22AbstractInputGeneratorEESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.115") align 8 %14, ptr noundef nonnull align 32 dereferenceable(1528) %1, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit168 unwind label %bb.au

_ZNSt6vectorISt10shared_ptrIN8facebook5velox22AbstractInputGeneratorEESaIS4_EED2Ev.exit168: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit149
  %i.dd = load <2 x ptr>, ptr %14, align 16, !tbaa !62
  store <2 x ptr> %i.dd, ptr %0, align 8, !tbaa !62
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre289 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_0
