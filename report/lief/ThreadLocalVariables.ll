Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ThreadLocalVariables?download=true
inline.NumInlined: 2662
inline.NumDeleted: 711
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4LIEF5MachO20ThreadLocalVariables3setEmRKNS1_5ThunkE:bb.a
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp eq i64 %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { ptr, i64 } %i.i(ptr noundef nonnull align 8 dereferenceable(192) %0) #23 ; 3 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = udiv i64 %i.k, 12
  %.not.i = icmp ult i64 %1, %i.l
  br i1 %.not.i, label %bb.c, label %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = mul nuw i64 %1, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load <2 x i64>, ptr %2, align 8, !tbaa !42
  %i.q = trunc <2 x i64> %i.p to <2 x i32>
  store <2 x i32> %i.q, ptr %i.o, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !39
  br label %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.v = udiv i64 %i.k, 24
  %.not.i6 = icmp ult i64 %1, %i.v
  br i1 %.not.i6, label %bb.e, label %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { ptr, i64 } %i.j, 0
  %i.x = mul nuw i64 %1, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load <2 x i64>, ptr %2, align 8, !tbaa !42
  store <2 x i64> %i.z, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !46
  br label %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit.thread

_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit: ; preds = %bb.b, %bb.d
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.106) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables5Thunk9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str, i64 29, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.af = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit.thread

_ZN4LIEF5MachO7details8set_implINS1_5ThunkIjEEEEbmRKNS0_20ThreadLocalVariables5ThunkEN3tcb4spanIhLm18446744073709551615EEE.exit.thread: ; preds = %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF5MachO20ThreadLocalVariables5Thunk9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.450", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1063", align 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !60
  %i.d = load i64, ptr %1, align 8, !tbaa !42, !noalias !60
  store i64 %i.d, ptr %4, align 16, !tbaa !59, !noalias !60
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.b, align 8, !tbaa !42, !noalias !60
  store i64 %i.f, ptr %i.e, align 16, !tbaa !59, !noalias !60
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load i64, ptr %i.c, align 8, !tbaa !42, !noalias !60
  store i64 %i.h, ptr %i.g, align 16, !tbaa !59, !noalias !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !63
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !63
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.j, align 8, !tbaa !66, !noalias !63
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !68, !noalias !63
  store i64 500, ptr %i.i, align 8, !tbaa !69, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !63
  store ptr @.str.1, ptr %2, align 8, !tbaa !70, !noalias !63
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 41, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !42, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !71, !noalias !63
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.n, align 8, !tbaa !74, !noalias !63
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1092, ptr %i.o, align 8, !tbaa !76, !noalias !63
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !59, !noalias !63
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !78, !noalias !63
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.1, i64 41, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.q = load i64, ptr %i.k, align 8, !tbaa !82, !noalias !83 ; 6 uses
  %i.r = icmp ult i64 %i.q, 4611686018427387903
  call void @llvm.assume(i1 %i.r)
  %i.s = load ptr, ptr %3, align 8, !tbaa !68, !noalias !83 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !84, !alias.scope !83
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp ne i64 %i.q, 0
  %or.cond.i.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.107) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !83
  store i64 %i.q, ptr %i.a, align 8, !tbaa !42, !noalias !83
  %i.w = icmp samesign ugt i64 %i.q, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !58, !alias.scope !83
  %i.y = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !83
  store i64 %i.y, ptr %i.t, align 8, !tbaa !59, !alias.scope !83
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !59
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !59
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.s, i64 %i.q, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !83 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !85, !alias.scope !83
  %i.ad = load ptr, ptr %0, align 8, !tbaa !58, !alias.scope !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !83
  %i.af = load ptr, ptr %3, align 8, !tbaa !68, !noalias !63 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.af) #23
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !60
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, 1537228672809129302) i64 @_ZNK4LIEF5MachO20ThreadLocalVariables9nb_thunksEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i64 %i.d, 1
  %1 = select i1 %i.e, i64 12, i64 24
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { ptr, i64 } %i.h(ptr noundef nonnull align 8 dereferenceable(192) %0) #23
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %i.k = udiv i64 %i.j, %1
  ret i64 %i.k
}

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #23
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: nounwind
declare void @_ZN4LIEF5MachO7SectionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF5MachO20ThreadLocalVariablesD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4LIEF5MachO7SectionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #24
  ret void
}

declare void @_ZNK4LIEF5MachO7Section6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF7Section4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !84
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.107) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !42
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !58
  %i.i = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.i, ptr %i.d, align 8, !tbaa !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !59
  store i8 %i.k, ptr %i.j, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.l = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !85
  %i.n = load ptr, ptr %0, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF7Section8fullnameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

declare { ptr, i64 } @_ZNK4LIEF5MachO7Section7contentEv(ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Section4sizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.a, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4LIEF7Section4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4LIEF7Section6offsetEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4LIEF7Section15virtual_addressEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Section15virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.a, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7Section4nameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef align 8 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !58     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.g = icmp eq ptr %i.e, %i.f                   ; 2 uses
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %.not21.i = icmp eq ptr %1, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !89

bb.c:                                             ; preds = %bb.b
  switch i64 %i.i, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1, !tbaa !59
  store i8 %i.k, ptr %i.b, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.e, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = load i64, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !85
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !59
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !85
  store i64 %i.r, ptr %i.p, align 8, !tbaa !85
  %i.s = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.s, ptr %i.c, align 8, !tbaa !59
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.c, align 8, !tbaa !59
  store ptr %i.e, ptr %i.a, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !85
end_hunk_0
