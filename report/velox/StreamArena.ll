inline.NumInlined: 246
inline.NumDeleted: 167
begin_hunk_0_@_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i) #15
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0911.i.i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !83

_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19) #15
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0911.i.i.i19) #15
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !83

_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #17
  br label %_ZNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !84
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !79
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !79
  invoke void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43
  %i.g = icmp eq i64 %i.f, 0                      ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = xor i1 %i.g, %i.i
  br i1 %i.j, label %.noexc, label %bb.e, !prof !30

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.k = zext i1 %i.g to i8
  %i.l = zext i1 %i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !85
  store i8 %i.k, ptr %2, align 16, !tbaa !34, !noalias !85
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.l, ptr %i.m, align 16, !tbaa !34, !noalias !85
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !85
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc6
  unreachable

bb.d:                                             ; preds = %.noexc6
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8
  %i.u = icmp ne ptr %i.t, null
  %i.v = select i1 %i.g, i1 %i.u, i1 false
  br i1 %i.v, label %bb.f, label %_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit, !prof !30

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_1) #16
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.f
  unreachable

_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit: ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %.noexc, %bb.f, %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.x = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.x) #19
  unreachable
}

declare void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <4 x ptr>, ptr %1, align 8, !tbaa !84
  store <4 x ptr> %i.e, ptr %0, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  store i32 %i.g, ptr %i.b, align 8, !tbaa !78
  store i32 0, ptr %i.f, align 8, !tbaa !78
  store ptr null, ptr %1, align 8, !tbaa !88
  %i.h = load i32, ptr %i.b, align 8, !tbaa !78
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  %i.l = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.m = xor i1 %i.l, %i.k
  br i1 %i.m, label %.noexc, label %4, !prof !30

.noexc:                                           ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = zext i1 %i.l to i8
  %i.o = zext i1 %i.k to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !90
  store i8 %i.n, ptr %2, align 16, !tbaa !34, !noalias !90
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.o, ptr %i.p, align 16, !tbaa !34, !noalias !90
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !90
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #16
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc5
  unreachable

bb.b:                                             ; preds = %.noexc5
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body

4:                                                ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit

bb.c:                                             ; preds = %4
  %i.w = load ptr, ptr %0, align 8, !tbaa !88
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit, label %bb.d, !prof !93

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_1) #16
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %bb.d
  unreachable

_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit: ; preds = %bb.c, %4
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.y) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN8facebook5velox11StreamArenaE", !11, i64 8, !13, i64 16, !18, i64 40, !4, i64 80, !4, i64 84, !24, i64 88, !29, i64 112}
!11 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS3_EE", !12, i64 0}
!18 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !11, i64 0, !19, i64 8, !4, i64 32}
!19 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !12, i64 0}
!24 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !12, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!33 = distinct !{!33, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!34 = !{!5, !5, i64 0}
!35 = !{!36, !38, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !29, i64 8, !5, i64 16}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!38 = !{!"p1 omnipotent char", !12, i64 0}
!39 = !{!40, !12, i64 8}
!40 = !{!"_ZTSN8facebook5velox6memory20ContiguousAllocationE", !11, i64 0, !12, i64 8, !29, i64 16, !29, i64 24}
!41 = !{!42, !38, i64 0}
!42 = !{!"_ZTSN8facebook5velox9ByteRangeE", !38, i64 0, !29, i64 8, !29, i64 16}
!43 = !{!40, !29, i64 16}
!44 = !{!42, !29, i64 8}
!45 = !{!42, !29, i64 16}
!46 = !{!10, !29, i64 112}
!47 = !{!27, !28, i64 8}
!48 = !{!27, !28, i64 16}
!49 = !{!22, !23, i64 8}
!50 = !{!22, !23, i64 0}
!51 = !{!10, !4, i64 80}
!52 = !{!10, !4, i64 84}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt11make_uniqueIN8facebook5velox6memory10AllocationEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZSt11make_uniqueIN8facebook5velox6memory10AllocationEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !12, i64 0}
!58 = !{!16, !17, i64 8}
!59 = !{!16, !17, i64 16}
!60 = !{!16, !17, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!63 = distinct !{!63, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!66 = !{!65, !67}
!67 = distinct !{!67, !68}
!68 = distinct !{!68, !"LVerDomain"}
!69 = !{!62, !70}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !72, !73, !74}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = distinct !{!76, !72, !73, !74}
!77 = distinct !{!77, !72, !73}
!78 = !{!18, !4, i64 32}
!79 = !{!29, !29, i64 0}
!80 = distinct !{!80, !72}
!81 = !{!27, !28, i64 0}
!82 = distinct !{!82, !72}
!83 = distinct !{!83, !72}
!84 = !{!12, !12, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!87 = distinct !{!87, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!88 = !{!18, !11, i64 0}
!89 = !{!23, !23, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!92 = distinct !{!92, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!93 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
