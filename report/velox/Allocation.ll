inline.NumInlined: 173
inline.NumDeleted: 91
begin_hunk_0_@_ZN8facebook5velox6memory20ContiguousAllocationD2Ev:bb.a
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %.sroa_idx3.i, align 8, !noalias !71
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.15, i64 49, i64 13, ptr nonnull %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !71
  %i.m = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory20ContiguousAllocationD1EvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.15) #18
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.j:                                             ; preds = %bb.e
  ret void

bb.k:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6memory20ContiguousAllocation8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.34", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %1, align 8, !tbaa !67
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.e, ptr @.str.12, ptr @.str.13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !74
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !74
  store ptr %i.g, ptr %2, align 16, !tbaa !29, !noalias !74
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !74
  store i64 %i.i, ptr %i.h, align 16, !tbaa !29, !noalias !74
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i64, ptr %i.c, align 8, !tbaa !37, !noalias !74
  store i64 %i.k, ptr %i.j, align 16, !tbaa !29, !noalias !74
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.f, ptr %i.l, align 16, !tbaa !29, !noalias !74
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.16, i64 60, i64 50254, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !74
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory20ContiguousAllocation3setEPvmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((8, 32)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.30", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !70
  %.not = icmp eq i64 %3, 0
  %i.c = select i1 %.not, i64 %2, i64 %3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.d, align 8, !tbaa !78
  %i.e = icmp eq i64 %2, 0                        ; 3 uses
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  %i.g = xor i1 %i.f, %i.e
  br i1 %i.g, label %bb.b, label %bb.e, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.h = zext i1 %i.e to i8
  %i.i = zext i1 %i.f to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !79
  store i8 %i.h, ptr %4, align 16, !tbaa !29, !noalias !79
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.i, ptr %i.j, align 16, !tbaa !29, !noalias !79
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.20, i64 11, i64 119, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !79
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.20) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !29
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = icmp ne ptr %i.q, null
  %i.s = select i1 %i.e, i1 %i.r, i1 false
  br i1 %i.s, label %bb.f, label %_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit, !prof !40

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_1) #18
  unreachable

_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit: ; preds = %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory20ContiguousAllocation4growEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN8facebook5velox6memory20ContiguousAllocation3setEPvmm.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 4503599627370496) i64 @_ZNK8facebook5velox6memory20ContiguousAllocation8numPagesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  %i.c = add i64 %i.b, 4095
  %i.d = lshr i64 %i.c, 12
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK8facebook5velox6memory20ContiguousAllocation13hugePageRangeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.16") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = add i64 %i.c, 2097151
  %i.e = and i64 %i.d, -2097152                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %i.h = add i64 %i.g, %i.c
  %i.i = and i64 %i.h, -2097152                   ; 2 uses
  %.not = icmp ugt i64 %i.i, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.k = sub nuw i64 %i.i, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store ptr %i.j, ptr %0, align 8, !tbaa !36
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.m, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_M_realloc_insertIJRPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

_ZNKSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 11 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.s = load ptr, ptr %2, align 8, !tbaa !36
  %i.t = load i64, ptr %3, align 8, !tbaa !37
  invoke void @_ZN8facebook5velox6memory10Allocation7PageRunC2EPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN8facebook5velox6memory10Allocation7PageRunEEE9constructIS4_JRPhRmEEEvRS5_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN8facebook5velox6memory10Allocation7PageRunEEE9constructIS4_JRPhRmEEEvRS5_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt16allocator_traitsISaIN8facebook5velox6memory10Allocation7PageRunEEE9constructIS4_JRPhRmEEEvRS5_PT_DpOT0_.exit
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  %i.y = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.y, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.v, 120
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 4611686018427387888      ; 4 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ac ; 4 uses
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ad = getelementptr i8, ptr %next.gep49, i64 32
  %i.ae = getelementptr i8, ptr %next.gep49, i64 64
  %i.af = getelementptr i8, ptr %next.gep49, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep49, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  %wide.load50 = load <4 x i64>, ptr %i.ad, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  %wide.load51 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  %wide.load52 = load <4 x i64>, ptr %i.af, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  %i.ag = getelementptr i8, ptr %next.gep, i64 32
  %i.ah = getelementptr i8, ptr %next.gep, i64 64
  %i.ai = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  store <4 x i64> %wide.load50, ptr %i.ag, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  store <4 x i64> %wide.load51, ptr %i.ah, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  store <4 x i64> %wide.load52, ptr %i.ai, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.x, 4611686018427387900    ; 3 uses
  %i.ak = shl i64 %n.vec55, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.c, i64 %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %i.an = shl i64 %index56, 3                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.p, i64 %i.an
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %wide.load59 = load <4 x i64>, ptr %next.gep58, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  store <4 x i64> %wide.load59, ptr %next.gep57, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  %index.next60 = add nuw i64 %index56, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.x, %n.vec55
  br i1 %cmp.n61, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ap = load i64, ptr %.0911.i.i.i, align 8, !tbaa !37, !alias.scope !88, !noalias !85
  store i64 %i.ap, ptr %.012.i.i.i, align 8, !tbaa !37, !alias.scope !85, !noalias !88
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !92

_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt16allocator_traitsISaIN8facebook5velox6memory10Allocation7PageRunEEE9constructIS4_JRPhRmEEEvRS5_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox6memory10Allocation7PageRunEEE9constructIS4_JRPhRmEEEvRS5_PT_DpOT0_.exit ], [ %i.al, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i65 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 7 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %iter.check86

iter.check86:                                     ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.at = add i64 %i.d, -8
  %i.au = sub i64 %i.at, %i.m                     ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check67 = icmp ult i64 %i.au, 24
  br i1 %min.iters.check67, label %.lr.ph.i.i.i28.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %iter.check86
  %i.ax = sub i64 %.0.lcssa.i.i.i65, %i.m
  %i.ay = add i64 %i.ax, 7
  %diff.check66 = icmp ult i64 %i.ay, 127
  br i1 %diff.check66, label %.lr.ph.i.i.i28.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %vector.memcheck64
  %min.iters.check69 = icmp ult i64 %i.au, 120
  br i1 %min.iters.check69, label %vec.epilog.ph90, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %n.mod.vf71 = and i64 %i.aw, 12
  %n.vec72 = and i64 %i.aw, 4611686018427387888   ; 4 uses
  %i.az = shl i64 %n.vec72, 3                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.as, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next81, %vector.body73 ] ; 2 uses
  %i.bc = shl i64 %index74, 3                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.as, i64 %i.bc ; 4 uses
  %next.gep76 = getelementptr i8, ptr %1, i64 %i.bc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.bd = getelementptr i8, ptr %next.gep76, i64 32
  %i.be = getelementptr i8, ptr %next.gep76, i64 64
  %i.bf = getelementptr i8, ptr %next.gep76, i64 96
  %wide.load77 = load <4 x i64>, ptr %next.gep76, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  %wide.load78 = load <4 x i64>, ptr %i.bd, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  %wide.load79 = load <4 x i64>, ptr %i.be, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  %wide.load80 = load <4 x i64>, ptr %i.bf, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  %i.bg = getelementptr i8, ptr %next.gep75, i64 32
  %i.bh = getelementptr i8, ptr %next.gep75, i64 64
  %i.bi = getelementptr i8, ptr %next.gep75, i64 96
  store <4 x i64> %wide.load77, ptr %next.gep75, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  store <4 x i64> %wide.load78, ptr %i.bg, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  store <4 x i64> %wide.load79, ptr %i.bh, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  store <4 x i64> %wide.load80, ptr %i.bi, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  %index.next81 = add nuw i64 %index74, 16        ; 2 uses
  %i.bj = icmp eq i64 %index.next81, %n.vec72
  br i1 %i.bj, label %middle.block82, label %vector.body73, !llvm.loop !98

middle.block82:                                   ; preds = %vector.body73
  %cmp.n83 = icmp eq i64 %i.aw, %n.vec72
  br i1 %cmp.n83, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %vec.epilog.iter.check88

vec.epilog.iter.check88:                          ; preds = %middle.block82
  %min.epilog.iters.check89 = icmp eq i64 %n.mod.vf71, 0
  br i1 %min.epilog.iters.check89, label %.lr.ph.i.i.i28.preheader, label %vec.epilog.ph90, !prof !56

vec.epilog.ph90:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check88
  %vec.epilog.resume.val84 = phi i64 [ %n.vec72, %vec.epilog.iter.check88 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec92 = and i64 %i.aw, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec92, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.as, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  br label %vec.epilog.vector.body93

vec.epilog.vector.body93:                         ; preds = %vec.epilog.vector.body93, %vec.epilog.ph90
  %index94 = phi i64 [ %vec.epilog.resume.val84, %vec.epilog.ph90 ], [ %index.next98, %vec.epilog.vector.body93 ] ; 2 uses
  %i.bn = shl i64 %index94, 3                     ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.as, i64 %i.bn
  %next.gep96 = getelementptr i8, ptr %1, i64 %i.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %wide.load97 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  store <4 x i64> %wide.load97, ptr %next.gep95, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.bo, label %vec.epilog.middle.block99, label %vec.epilog.vector.body93, !llvm.loop !99

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body93
  %cmp.n100 = icmp eq i64 %i.aw, %n.vec92
  br i1 %cmp.n100, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %vector.memcheck64, %iter.check86, %vec.epilog.iter.check88, %vec.epilog.middle.block99
  %.012.i.i.i29.ph = phi ptr [ %i.as, %iter.check86 ], [ %i.as, %vector.memcheck64 ], [ %i.ba, %vec.epilog.iter.check88 ], [ %i.bl, %vec.epilog.middle.block99 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %iter.check86 ], [ %1, %vector.memcheck64 ], [ %i.bb, %vec.epilog.iter.check88 ], [ %i.bm, %vec.epilog.middle.block99 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.br, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.bq, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.bp = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !37, !alias.scope !96, !noalias !93
  store i64 %i.bp, ptr %.012.i.i.i29, align 8, !tbaa !37, !alias.scope !93, !noalias !96
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !100

_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block82, %vec.epilog.middle.block99, %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.as, %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bl, %vec.epilog.middle.block99 ], [ %i.ba, %middle.block82 ], [ %i.br, %.lr.ph.i.i.i28 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #17
  br label %_ZNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !32
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !30
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_M_check_lenEmPKc.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bx

bb.g:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #19
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6memory10Allocation7PageRunC2EPvm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.29", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = icmp ugt i64 %2, 65535
  br i1 %i.b, label %bb.b, label %bb.e, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !101
  store i64 %2, ptr %4, align 16, !tbaa !29, !noalias !101
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 65535, ptr %i.c, align 16, !tbaa !29, !noalias !101
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.20, i64 11, i64 36, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !101
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory10Allocation7PageRunC1EPvmE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.20) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = and i64 %i.a, -281474976710656           ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.i, label %bb.f, !prof !104

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !105
  store i64 %i.j, ptr %3, align 16, !tbaa !29, !alias.scope !108, !noalias !105
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.k, align 16, !tbaa !29, !noalias !105
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.22, i64 50, i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !105
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory10Allocation7PageRunC1EPvmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.22) #18
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_0
