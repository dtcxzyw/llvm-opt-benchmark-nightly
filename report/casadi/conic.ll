Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/conic?download=true
inline.NumInlined: 4427
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN6casadi15PluginInterfaceINS_5ConicEE14plugin_optionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.6, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn55.ph = phi { ptr, i32 } [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn.pn.pn.pn.pn.pn.pn.pn55 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn55.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #32
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn.pn.pn.pn.pn.pn.pn.pn54 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn55, %bb.s ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn54

bb.u:                                             ; preds = %bb.a
  ret ptr %i.c

bb.v:                                             ; preds = %bb.k
  unreachable
}

declare void @_ZNK6casadi7Options3allB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi17conic_option_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6casadi15PluginInterfaceINS_5ConicEE14plugin_optionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZNK6casadi7Options4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZNK6casadi7Options4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi17conic_option_infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6casadi15PluginInterfaceINS_5ConicEE14plugin_optionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZNK6casadi7Options4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZNK6casadi7Options4infoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6casadi5Conic4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i64 %i.b, 5
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1768845123
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 99
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  %.not = xor i1 %2, true
  %brmerge = or i1 %i.o, %.not
  br i1 %brmerge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = tail call noundef zeroext i1 @_ZNK6casadi16FunctionInternal4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c
  %i.q = phi i1 [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.p, %bb.c ]
  ret i1 %i.q
}

declare noundef zeroext i1 @_ZNK6casadi16FunctionInternal4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi5Conic16sdp_to_socp_initERNS0_12SDPToSOCPMemE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %3 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 10 uses
  %5 = alloca %"class.std::vector.83", align 8    ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::vector.83", align 8    ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::vector", align 8      ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::vector", align 8      ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::vector", align 8      ; 5 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::vector", align 8      ; 5 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::vector", align 8      ; 5 uses
  %62 = alloca %"class.std::vector.83", align 8   ; 11 uses
  %63 = alloca %"class.std::vector.83", align 8   ; 11 uses
  %64 = alloca %"class.std::vector.83", align 8   ; 11 uses
  %65 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %66 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %67 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %68 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %69 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %70 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %71 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 5 uses
  call void @_ZN6casadi8Sparsity4sum2ERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 2 uses
  invoke void @_ZN6casadi8Sparsity7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.e, i64 noundef %i.e)
          to label %_ZN6casadi7reshapeERKNS_8SparsityExx.exit unwind label %bb.q

_ZN6casadi7reshapeERKNS_8SparsityExx.exit:        ; preds = %bb.a
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN6casadi7reshapeERKNS_8SparsityExx.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi7reshapeERKNS_8SparsityExx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 4 uses
  invoke void @_ZNK6casadi8SparsityplERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.i = invoke noundef i64 @_ZNK6casadi8Sparsity3sccERSt6vectorIxSaIxEES4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc.i unwind label %bb.t   ; 21 uses

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 22, ptr %i.a, align 8, !tbaa !27
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %6, align 8, !tbaa !29
  %i.l = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.k, ptr noundef nonnull align 1 dereferenceable(22) @.str.104, i64 22, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = load ptr, ptr %6, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !208
  %i.r = load ptr, ptr %5, align 8, !tbaa !209
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.83") align 8 %7, i64 noundef %i.v)
          to label %bb.d unwind label %bb.v

bb.d:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !208  ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !209    ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !208
  %i.ad = load ptr, ptr %7, align 8, !tbaa !209   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.aa, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit

bb.e:                                             ; preds = %bb.d
  %.not.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.x, ptr %i.ad, i64 %i.aa)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = phi i1 [ false, %bb.d ], [ %.not9.i.i.i.i.i, %bb.f ], [ true, %bb.e ]
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.am) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZSteqIxSaIxEEbRKSt6vectorIT_T0_ES6_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %i.ai, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.an = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.105, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.106, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !551
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #31
          to label %bb.hj unwind label %bb.ab

bb.q:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit338 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit338: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit554

bb.s:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit553

bb.t:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.u:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.v:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.thread: ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.w:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

bb.x:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

bb.y:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.z:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.aa:                                            ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.p, %bb.o
  %.0166 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !30
  %i.bg = add i64 %i.bf, 1
end_hunk_0
begin_hunk_1_@_ZNK6casadi5Conic16sdp_to_socp_initERNS0_12SDPToSOCPMemE:bb.a

bb.dk:                                            ; preds = %bb.dd
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

bb.dl:                                            ; preds = %bb.de
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

bb.dm:                                            ; preds = %bb.df
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

bb.dn:                                            ; preds = %bb.dg
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

bb.do:                                            ; preds = %bb.di, %bb.dh
  %.0126 = phi i1 [ false, %bb.di ], [ true, %bb.dh ] ; 2 uses
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load ptr, ptr %53, align 8, !tbaa !29   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %bb.do
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !30
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445, %bb.dn
  %.pn288 = phi { ptr, i32 } [ %i.md, %bb.dn ], [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445 ], [ %i.me, %bb.do ] ; 2 uses
  %.1127 = phi i1 [ true, %bb.dn ], [ %.0126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445 ], [ %.0126, %bb.do ] ; 2 uses
  %i.mk = load ptr, ptr %58, align 8, !tbaa !29   ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !30
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448, %bb.dm
  %.pn288.pn = phi { ptr, i32 } [ %i.mc, %bb.dm ], [ %.pn288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %.pn288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.dm ], [ %.1127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %.1127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  %i.mp = load ptr, ptr %59, align 8, !tbaa !29   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !30
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451, %bb.dl
  %.pn288.pn.pn = phi { ptr, i32 } [ %i.mb, %bb.dl ], [ %.pn288.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %.pn288.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.dl ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ] ; 2 uses
  %i.mu = load ptr, ptr %60, align 8, !tbaa !29   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !30
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %bb.dk
  %.pn288.pn.pn.pn = phi { ptr, i32 } [ %i.ma, %bb.dk ], [ %.pn288.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn288.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.dk ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  %i.mz = load ptr, ptr %54, align 8, !tbaa !29   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !30
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %bb.dj
  %.pn288.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lz, %bb.dj ], [ %.pn288.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.pn288.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.dj ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ] ; 2 uses
  %i.ne = load ptr, ptr %55, align 8, !tbaa !29   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !30
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.ni) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  %i.nj = load ptr, ptr %56, align 8, !tbaa !29   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread: ; preds = %bb.db
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = load ptr, ptr %56, align 8, !tbaa !29   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %.sink.split957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !30
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #33
  br label %.sink.split957

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %i.ns = load i64, ptr %i.nk, align 8, !tbaa !30
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  br i1 %.5, label %bb.dp, label %_ZNSt6vectorIxSaIxEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  br i1 %.5, label %bb.dp, label %_ZNSt6vectorIxSaIxEED2Ev.exit547

.sink.split957:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463.thread
  %.pn288.pn.pn.pn.pn.pn.pn657.ph = phi { ptr, i32 } [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463.thread ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  br label %bb.dp

bb.dp:                                            ; preds = %.sink.split957, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  %.pn288.pn.pn.pn.pn.pn.pn657 = phi { ptr, i32 } [ %.pn288.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463 ], [ %.pn288.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465 ], [ %.pn288.pn.pn.pn.pn.pn.pn657.ph, %.sink.split957 ]
  call void @__cxa_free_exception(ptr %i.lx) #32
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit547

bb.dq:                                            ; preds = %.lr.ph737
  %i.nu = getelementptr inbounds nuw i8, ptr %.2165735, i64 8 ; 2 uses
  %i.nv = add nuw nsw i64 %.0128736, 1            ; 2 uses
  %exitcond757.not = icmp eq i64 %i.nv, %i.di
  br i1 %exitcond757.not, label %.loopexit717, label %.lr.ph737, !llvm.loop !538

bb.dr:                                            ; preds = %.noexc360, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.nw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #35
          to label %.noexc473 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit545.thread ; 6 uses

.noexc473:                                        ; preds = %bb.dr
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.i ; 2 uses
  store i64 0, ptr %i.nw, align 8, !tbaa !158
  br i1 %i.da, label %.lr.ph743.preheader, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i468

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i468: ; preds = %.noexc473
  %i.ny = getelementptr i8, ptr %i.nw, i64 8
  %.idx.i.i.i.i.i.i.i469 = shl nuw nsw i64 %i.cz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ny, i8 0, i64 %.idx.i.i.i.i.i.i.i469, i1 false), !tbaa !158
  br label %.lr.ph743.preheader

.lr.ph743.preheader:                              ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i468, %.noexc473
  %.pre764 = load ptr, ptr %1, align 8, !tbaa !209
  br label %.lr.ph743

._crit_edge744:                                   ; preds = %bb.dt, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0934 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.nx, %bb.dt ] ; 2 uses
  %.sroa.0578.0931 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.nw, %bb.dt ] ; 6 uses
  %.sroa.13.0670922 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cy, %bb.dt ] ; 3 uses
  %.sroa.0585.0673914 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cx, %bb.dt ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %i.nz = add nsw i64 %i.i, -1
  %i.oa = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 5 uses
  br label %.loopexit705

bb.ds:                                            ; preds = %bb.ag, %bb.af
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit547

_ZNSt6vectorIxSaIxEED2Ev.exit545.thread:          ; preds = %bb.dr
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.lr.ph743:                                        ; preds = %.lr.ph743.preheader, %bb.dt
  %i.oi = phi ptr [ %i.op, %bb.dt ], [ %.pre764, %.lr.ph743.preheader ]
  %.0125742 = phi i64 [ %i.oj, %bb.dt ], [ 0, %.lr.ph743.preheader ] ; 4 uses
  %i.oj = add nuw nsw i64 %.0125742, 1            ; 4 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !158
  %i.om = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.dt unwind label %.thread

bb.dt:                                            ; preds = %.lr.ph743
  %i.on = add nsw i64 %i.ol, -1
  %i.oo = mul nsw i64 %i.on, %i.om
  %i.op = load ptr, ptr %1, align 8, !tbaa !209   ; 3 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.0125742 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !158
  %i.os = add nsw i64 %i.or, %i.oo                ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0125742
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !158
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oj
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !158
  %i.ow = add nsw i64 %i.ov, %i.os
  %i.ox = load i64, ptr %i.oq, align 8, !tbaa !158
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %.0125742
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !158
  %exitcond759.not = icmp eq i64 %i.oj, %i.i
  br i1 %exitcond759.not, label %._crit_edge744, label %.lr.ph743, !llvm.loop !539

.thread:                                          ; preds = %.lr.ph743
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.loopexit705:                                     ; preds = %bb.dz, %._crit_edge744
  %storemerge = phi i64 [ 0, %._crit_edge744 ], [ %i.pf, %bb.dz ] ; 5 uses
  %i.pb = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.du unwind label %bb.dw

bb.du:                                            ; preds = %.loopexit705
  %i.pc = icmp slt i64 %storemerge, %i.pb
  br i1 %i.pc, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #32
  invoke void @_ZN6casadi6MatrixIxEC1ERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(40) %66, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %bb.eq unwind label %bb.fp

bb.dw:                                            ; preds = %.loopexit705
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.dx:                                            ; preds = %bb.du
  %i.pe = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %storemerge)
          to label %.preheader699 unwind label %.loopexit.split-lp701

.preheader699:                                    ; preds = %bb.dx
  %i.pf = add nuw nsw i64 %storemerge, 1          ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %.preheader699, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit490
  %storemerge270 = phi i64 [ %i.sm, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit490 ], [ %i.pe, %.preheader699 ] ; 5 uses
  %.0124 = phi i64 [ %.1, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit490 ], [ 0, %.preheader699 ]
  %i.pg = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.pf)
          to label %bb.dz unwind label %.loopexit700

bb.dz:                                            ; preds = %bb.dy
  %i.ph = icmp slt i64 %storemerge270, %i.pg
  br i1 %i.ph, label %bb.ea, label %.loopexit705, !llvm.loop !540

.loopexit700:                                     ; preds = %bb.dy
  %lpad.loopexit702 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

.loopexit.split-lp701:                            ; preds = %bb.dx
  %lpad.loopexit.split-lp703 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ea:                                            ; preds = %bb.dz
  %i.pi = invoke noundef i64 @_ZNK6casadi8Sparsity3rowEx(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %storemerge270)
          to label %.preheader698 unwind label %.loopexit706 ; 4 uses

.preheader698:                                    ; preds = %bb.ea, %.preheader698
  %.1 = phi i64 [ %i.po, %.preheader698 ], [ %.0124, %bb.ea ] ; 6 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0578.0931, i64 %.1
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !158 ; 2 uses
  %i.pl = icmp sgt i64 %i.pi, %i.pk
  %i.pm = icmp slt i64 %.1, %i.nz
  %i.pn = select i1 %i.pl, i1 %i.pm, i1 false
  %i.po = add nsw i64 %.1, 1
  br i1 %i.pn, label %.preheader698, label %bb.eb, !llvm.loop !541

.loopexit706:                                     ; preds = %bb.ea, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i482
  %lpad.loopexit708 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

.loopexit.split-lp707:                            ; preds = %.invoke
  %lpad.loopexit.split-lp709 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.eb:                                            ; preds = %.preheader698
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0585.0673914, i64 %.1 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !158
  %.not = icmp sge i64 %i.pi, %i.pq
  %i.pr = icmp slt i64 %i.pi, %i.pk
  %or.cond = and i1 %i.pr, %.not
  br i1 %or.cond, label %bb.ec, label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit490

bb.ec:                                            ; preds = %bb.eb
  %i.ps = load ptr, ptr %i.oa, align 8, !tbaa !208 ; 4 uses
  %i.pt = load ptr, ptr %i.ob, align 8, !tbaa !210
  %.not.i = icmp eq ptr %i.ps, %i.pt
  br i1 %.not.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i64 %storemerge270, ptr %i.ps, align 8, !tbaa !158
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %i.pu, ptr %i.oa, align 8, !tbaa !208
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.ee:                                            ; preds = %bb.ec
  %i.pv = load ptr, ptr %62, align 8, !tbaa !209  ; 4 uses
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = ptrtoint ptr %i.pv to i64               ; 2 uses
  %i.py = sub i64 %i.pw, %i.px                    ; 5 uses
  %i.pz = icmp eq i64 %i.py, 9223372036854775800
  br i1 %i.pz, label %.invoke, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.en, %bb.ee
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.270) #31
          to label %.cont unwind label %.loopexit.split-lp707

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ee
  %i.qa = ashr exact i64 %i.py, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qa, i64 1)
  %i.qb = add nsw i64 %.sroa.speculated.i.i.i, %i.qa ; 2 uses
  %i.qc = icmp ult i64 %i.qb, %i.qa
  %i.qd = call i64 @llvm.umin.i64(i64 %i.qb, i64 1152921504606846975)
  %i.qe = select i1 %i.qc, i64 1152921504606846975, i64 %i.qd ; 3 uses
  %.not.i.i.i475 = icmp ne i64 %i.qe, 0
  call void @llvm.assume(i1 %.not.i.i.i475)
  %i.qf = shl nuw nsw i64 %i.qe, 3
  %i.qg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qf) #35
          to label %.noexc477 unwind label %.loopexit706 ; 4 uses

.noexc477:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.qh = getelementptr inbounds i8, ptr %i.qg, i64 %i.py ; 2 uses
  store i64 %storemerge270, ptr %i.qh, align 8, !tbaa !158
  %i.qi = icmp sgt i64 %i.py, 0
  br i1 %i.qi, label %bb.ef, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.ef:                                            ; preds = %.noexc477
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qg, ptr align 8 %i.pv, i64 %i.py, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.ef, %.noexc477
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  %i.qk = load ptr, ptr %i.ob, align 8, !tbaa !210
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = sub i64 %i.ql, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qm) #33
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.eg, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.qg, ptr %62, align 8, !tbaa !209
  store ptr %i.qj, ptr %i.oa, align 8, !tbaa !208
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qe
  store ptr %i.qn, ptr %i.ob, align 8, !tbaa !210
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

end_hunk_1
begin_hunk_2_@_ZNK6casadi5Conic16sdp_to_socp_initERNS0_12SDPToSOCPMemE:bb.a
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 -1, ptr %i.b, align 8, !tbaa !158
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !208 ; 3 uses
  %i.vr = load ptr, ptr %i.vl, align 8, !tbaa !209 ; 2 uses
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = ashr exact i64 %i.vu, 3                 ; 3 uses
  %i.vw = icmp ugt i64 %i.vo, %i.vv
  br i1 %i.vw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vx = sub nuw i64 %i.vo, %i.vv
  invoke void @_ZNSt6vectorIxSaIxEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPxS1_EEmRKx(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, ptr %i.vq, i64 noundef %i.vx, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit unwind label %bb.gg

bb.fn:                                            ; preds = %bb.fl
  %i.vy = icmp ult i64 %i.vo, %i.vv
  br i1 %i.vy, label %bb.fo, label %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit

bb.fo:                                            ; preds = %bb.fn
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vo ; 2 uses
  %.not.i.i509 = icmp eq ptr %i.vq, %i.vz
  br i1 %.not.i.i509, label %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.fo
  store ptr %i.vz, ptr %i.vp, align 8, !tbaa !208
  br label %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit

bb.fp:                                            ; preds = %bb.dv
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fq:                                            ; preds = %bb.eq
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fr:                                            ; preds = %bb.er
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %65) #32
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.pn255 = phi { ptr, i32 } [ %i.wc, %bb.fr ], [ %i.wb, %bb.fq ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %66) #32
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fp
  %.pn255.pn = phi { ptr, i32 } [ %.pn255, %bb.fs ], [ %i.wa, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #32
  br label %bb.gy

bb.fu:                                            ; preds = %_ZN6casadi6MatrixIxED2Ev.exit494
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fv:                                            ; preds = %bb.ex
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.fw:                                            ; preds = %bb.ey
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fx:                                            ; preds = %bb.ez
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fa
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %67) #32
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.pn258 = phi { ptr, i32 } [ %i.wh, %bb.fy ], [ %i.wg, %bb.fx ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %68) #32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fw
  %.pn258.pn = phi { ptr, i32 } [ %.pn258, %bb.fz ], [ %i.wf, %bb.fw ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %69) #32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fv
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %bb.ga ], [ %i.we, %bb.fv ]
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %70) #32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fu
  %.pn258.pn.pn.pn = phi { ptr, i32 } [ %.pn258.pn.pn, %bb.gb ], [ %i.wd, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #32
  br label %bb.gy

bb.gd:                                            ; preds = %.noexc507, %bb.fk
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ge:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE5size2Ev.exit
  %i.wj = add nuw nsw i64 %.0123, 1               ; 2 uses
  %i.wk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixIxE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ss)
          to label %.noexc511 unwind label %bb.gf

.noexc511:                                        ; preds = %bb.ge
  %i.wl = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, i64 noundef %i.wj)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit unwind label %bb.gf

_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit: ; preds = %.noexc511
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixIxE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ss)
          to label %.noexc513 unwind label %bb.gf

.noexc513:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit
  %i.wn = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.wm, i64 noundef %.0123)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit515 unwind label %bb.gf

_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit515: ; preds = %.noexc513
  %i.wo = sub nsw i64 %i.wl, %i.wn
  %.sroa.speculated557 = call i64 @llvm.smax.i64(i64 %.0594, i64 %i.wo)
  br label %bb.fk, !llvm.loop !543

bb.gf:                                            ; preds = %.noexc513, %_ZNK6casadi13GenericMatrixINS_6MatrixIxEEE6colindEx.exit, %.noexc511, %bb.ge
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit:            ; preds = %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.fo, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %.not.i.i.i.i, label %._crit_edge749, label %.lr.ph746

.loopexit697:                                     ; preds = %bb.gh
  %exitcond761.not = icmp eq i64 %i.xm, %i.i
  br i1 %exitcond761.not, label %.lr.ph748, label %.lr.ph746, !llvm.loop !544

.lr.ph748:                                        ; preds = %.loopexit697
  %i.wq = load ptr, ptr %1, align 8, !tbaa !209   ; 10 uses
  %.promoted = load i64, ptr %i.vk, align 8, !tbaa !158 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph748
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.wr = shl nuw nsw i64 %i.i, 3
  %i.ws = getelementptr i8, ptr %i.wq, i64 %i.wr
  %scevgep962 = getelementptr i8, ptr %i.ws, i64 8
  %bound0 = icmp ult ptr %i.vk, %scevgep962
  %bound1 = icmp ult ptr %i.wq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.promoted, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.xa, %vector.body ]
  %vec.phi963 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.xb, %vector.body ]
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %index ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %wide.load = load <2 x i64>, ptr %i.wu, align 8, !tbaa !158, !alias.scope !563
  %wide.load964 = load <2 x i64>, ptr %i.wv, align 8, !tbaa !158, !alias.scope !563
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %index ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %wide.load965 = load <2 x i64>, ptr %i.ww, align 8, !tbaa !158, !alias.scope !563
  %wide.load966 = load <2 x i64>, ptr %i.wx, align 8, !tbaa !158, !alias.scope !563
  %i.wy = sub nsw <2 x i64> %wide.load, %wide.load965
  %i.wz = sub nsw <2 x i64> %wide.load964, %wide.load966
  %i.xa = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %vec.phi, <2 x i64> %i.wy) ; 2 uses
  %i.xb = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %vec.phi963, <2 x i64> %i.wz) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xc = icmp eq i64 %index.next, %n.vec
  br i1 %i.xc, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.xa, <2 x i64> %i.xb)
  %i.xd = call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  store i64 %i.xd, ptr %i.vk, align 8, !tbaa !562, !alias.scope !564, !noalias !563
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge749, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph748, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph748 ], [ %i.xd, %middle.block ] ; 2 uses
  %.0747.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph748 ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0747.ph, 1
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xe = or disjoint i64 %.0747.ph, 1            ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.xe
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !158
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %.0747.ph
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !158
  %i.xj = sub nsw i64 %i.xg, %i.xi
  %.sroa.speculated.prol = call i64 @llvm.smax.i64(i64 %.ph, i64 %i.xj) ; 2 uses
  store i64 %.sroa.speculated.prol, ptr %i.vk, align 8, !tbaa !562
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %.sroa.speculated.prol, %scalar.ph.prol ]
  %.0747.unr = phi i64 [ %.0747.ph, %scalar.ph.preheader ], [ %i.xe, %scalar.ph.prol ]
  %i.xk = icmp eq i64 %i.i, %.neg
  br i1 %i.xk, label %._crit_edge749, label %scalar.ph

bb.gg:                                            ; preds = %bb.fm
  %i.xl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.gy

.lr.ph746:                                        ; preds = %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit, %.loopexit697
  %.0122745 = phi i64 [ %i.xm, %.loopexit697 ], [ 0, %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit ]
  %i.xm = add nuw nsw i64 %.0122745, 1            ; 4 uses
  %i.xn = load ptr, ptr %1, align 8, !tbaa !209
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %i.xm
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !158
  %i.xq = add nsw i64 %i.xp, -1
  %i.xr = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.xq)
          to label %.preheader696 unwind label %.loopexit.split-lp

.preheader696:                                    ; preds = %.lr.ph746, %bb.gj
  %.0121 = phi i64 [ %i.ya, %bb.gj ], [ %i.xr, %.lr.ph746 ] ; 4 uses
  %i.xs = load ptr, ptr %1, align 8, !tbaa !209
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xm
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !158
  %i.xv = invoke noundef i64 @_ZNK6casadi8Sparsity6colindEx(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.xu)
          to label %bb.gh unwind label %.loopexit

bb.gh:                                            ; preds = %.preheader696
  %i.xw = icmp slt i64 %.0121, %i.xv
  br i1 %i.xw, label %bb.gi, label %.loopexit697

.loopexit:                                        ; preds = %.preheader696
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

.loopexit.split-lp:                               ; preds = %.lr.ph746
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gi:                                            ; preds = %bb.gh
  %i.xx = invoke noundef i64 @_ZNK6casadi8Sparsity3rowEx(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %.0121)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.xy = load ptr, ptr %i.vl, align 8, !tbaa !209
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xx
  store i64 %.0121, ptr %i.xz, align 8, !tbaa !158
  %i.ya = add nsw i64 %.0121, 1
  br label %.preheader696, !llvm.loop !549

bb.gk:                                            ; preds = %bb.gi
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

._crit_edge749:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIxSaIxEE6resizeEmRKx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #32
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNK6casadi8Sparsity9transposeERSt6vectorIxSaIxEEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %71, ptr noundef nonnull align 8 dereferenceable(8) %i.yc, ptr noundef nonnull align 8 dereferenceable(24) %i.yd, i1 noundef zeroext false)
          to label %bb.gl unwind label %bb.gv

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ye = phi i64 [ %.sroa.speculated.1, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.0747 = phi i64 [ %i.yl, %scalar.ph ], [ %.0747.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.yf = add nuw nsw i64 %.0747, 1               ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.yf
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !158
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %.0747
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !158
  %i.yk = sub nsw i64 %i.yh, %i.yj
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ye, i64 %i.yk) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.vk, align 8, !tbaa !562
  %i.yl = add nuw nsw i64 %.0747, 2               ; 3 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.yl
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !158
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.yf
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !158
  %i.yq = sub nsw i64 %i.yn, %i.yp
  %.sroa.speculated.1 = call i64 @llvm.smax.i64(i64 %.sroa.speculated, i64 %i.yq) ; 2 uses
  store i64 %.sroa.speculated.1, ptr %i.vk, align 8, !tbaa !562
  %exitcond763.not.1 = icmp eq i64 %i.yl, %i.i
  br i1 %exitcond763.not.1, label %._crit_edge749, label %scalar.ph, !llvm.loop !550

bb.gl:                                            ; preds = %._crit_edge749
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ys = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.yr, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.gw ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.gl
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit519 unwind label %bb.gm

bb.gm:                                            ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  %i.yu = extractvalue { ptr, i32 } %i.yt, 0
  call void @__clang_call_terminate(ptr %i.yu) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit519: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #32
  %i.yv = load ptr, ptr %64, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i520 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i520, label %_ZNSt6vectorIxSaIxEED2Ev.exit521, label %bb.gn

bb.gn:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit519
  %i.yw = load ptr, ptr %i.of, align 8, !tbaa !210
  %i.yx = ptrtoint ptr %i.yw to i64
  %i.yy = ptrtoint ptr %i.yv to i64
  %i.yz = sub i64 %i.yx, %i.yy
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.yz) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit521

_ZNSt6vectorIxSaIxEED2Ev.exit521:                 ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit519, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #32
  %i.za = load ptr, ptr %63, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i522 = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i522, label %_ZNSt6vectorIxSaIxEED2Ev.exit523, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit521
  %i.zb = load ptr, ptr %i.od, align 8, !tbaa !210
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.za to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %i.za, i64 noundef %i.ze) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit523

_ZNSt6vectorIxSaIxEED2Ev.exit523:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit521, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #32
  %i.zf = load ptr, ptr %62, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i524 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i524, label %_ZNSt6vectorIxSaIxEED2Ev.exit525, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit523
  %i.zg = load ptr, ptr %i.ob, align 8, !tbaa !210
  %i.zh = ptrtoint ptr %i.zg to i64
  %i.zi = ptrtoint ptr %i.zf to i64
  %i.zj = sub i64 %i.zh, %i.zi
  call void @_ZdlPvm(ptr noundef nonnull %i.zf, i64 noundef %i.zj) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit525

_ZNSt6vectorIxSaIxEED2Ev.exit525:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit523, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  %.not.i.i.i526 = icmp eq ptr %.sroa.0578.0931, null
  br i1 %.not.i.i.i526, label %_ZNSt6vectorIxSaIxEED2Ev.exit527, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit525
  %i.zk = ptrtoint ptr %.sroa.12.0934 to i64
  %i.zl = ptrtoint ptr %.sroa.0578.0931 to i64
  %i.zm = sub i64 %i.zk, %i.zl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0578.0931, i64 noundef %i.zm) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit527

_ZNSt6vectorIxSaIxEED2Ev.exit527:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit525, %bb.gq
  %.not.i.i.i528 = icmp eq ptr %.sroa.0585.0673914, null
  br i1 %.not.i.i.i528, label %_ZNSt6vectorIxSaIxEED2Ev.exit529, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit527
  %i.zn = ptrtoint ptr %.sroa.13.0670922 to i64
  %i.zo = ptrtoint ptr %.sroa.0585.0673914 to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0585.0673914, i64 noundef %i.zp) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit529

_ZNSt6vectorIxSaIxEED2Ev.exit529:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit527, %bb.gr
  %i.zq = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.zr = icmp eq ptr %i.zq, %i.j
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit529
  %i.zs = load i64, ptr %i.j, align 8, !tbaa !30
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.zu = load ptr, ptr %5, align 8, !tbaa !209   ; 3 uses
  %.not.i.i.i533 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i533, label %_ZNSt6vectorIxSaIxEED2Ev.exit534, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
  %i.zv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !210
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zu to i64
  %i.zz = sub i64 %i.zx, %i.zy
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zz) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit534

_ZNSt6vectorIxSaIxEED2Ev.exit534:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit535 unwind label %bb.gt

bb.gt:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit534
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
