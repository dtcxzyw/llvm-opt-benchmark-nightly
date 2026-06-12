inline.NumInlined: 272
inline.NumDeleted: 160
begin_hunk_0_@_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_:bb.a
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !93
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !15
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !15
  invoke void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.a, align 8, !tbaa !94
  %i.g = icmp eq i64 %i.f, 0                      ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = xor i1 %i.g, %i.i
  br i1 %i.j, label %.noexc, label %bb.e, !prof !48

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = zext i1 %i.g to i8
  %i.l = zext i1 %i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !97
  store i8 %i.k, ptr %2, align 16, !tbaa !44, !noalias !97
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.l, ptr %i.m, align 16, !tbaa !44, !noalias !97
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.10, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !97
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.10) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc6
  unreachable

bb.d:                                             ; preds = %.noexc6
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !44
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8
  %i.u = icmp ne ptr %i.t, null
  %i.v = select i1 %i.g, i1 %i.u, i1 false
  br i1 %i.v, label %bb.f, label %_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit, !prof !48

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_1) #17
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

declare void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
  unreachable

_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %i.q, ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i) #16
  tail call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.0911.i.i.i) #16
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !100

_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i19) #16
  tail call void @_ZN8facebook5velox6memory10AllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %.0911.i.i.i19) #16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !100

_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !11
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6memory10AllocationC2EOS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <4 x ptr>, ptr %1, align 8, !tbaa !93
  store <4 x ptr> %i.e, ptr %0, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  store i32 %i.g, ptr %i.b, align 8, !tbaa !101
  store i32 0, ptr %i.f, align 8, !tbaa !101
  store ptr null, ptr %1, align 8, !tbaa !106
  %i.h = load i32, ptr %i.b, align 8, !tbaa !101
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  %i.l = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.m = xor i1 %i.l, %i.k
  br i1 %i.m, label %.noexc, label %4, !prof !48

.noexc:                                           ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.n = zext i1 %i.l to i8
  %i.o = zext i1 %i.k to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !108
  store i8 %i.n, ptr %2, align 16, !tbaa !44, !noalias !108
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.o, ptr %i.p, align 16, !tbaa !44, !noalias !108
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.10, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !108
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.10) #17
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc5
  unreachable

bb.b:                                             ; preds = %.noexc5
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !tbaa !44
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

4:                                                ; preds = %_ZNSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EEaSEOS6_.exit
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit

bb.c:                                             ; preds = %4
  %i.w = load ptr, ptr %0, align 8, !tbaa !106
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit, label %bb.d, !prof !53

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_1) #17
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
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!18, !28, i64 56}
!18 = !{!"_ZTSN8facebook5velox6memory14AllocationPoolE", !19, i64 0, !20, i64 8, !23, i64 32, !28, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88}
!19 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!20 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE12_Vector_implE", !8, i64 0}
!23 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !10, i64 0}
!28 = !{!"p1 omnipotent char", !10, i64 0}
!29 = !{!26, !27, i64 8}
!30 = !{!26, !27, i64 0}
!31 = !{!32, !33, i64 16}
!32 = !{!"_ZTSSt22_Optional_payload_baseIN5folly5RangeIPcEEE", !5, i64 0, !33, i64 16}
!33 = !{!"bool", !5, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!28, !28, i64 0}
!37 = !{!18, !16, i64 72}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN8facebook5velox12errorMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!40 = distinct !{!40, !"_ZN8facebook5velox12errorMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!41 = !{!42, !28, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !16, i64 8, !5, i64 16}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!51 = distinct !{!51, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!52 = !{!18, !16, i64 64}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!56 = distinct !{!56, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!59 = distinct !{!59, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN8facebook5velox12errorMessageIJmlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!62 = distinct !{!62, !"_ZN8facebook5velox12errorMessageIJmlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKlELi2ELi0ELy52EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!65 = distinct !{!65, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKlELi2ELi0ELy52EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!68 = distinct !{!68, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!69 = !{!27, !27, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!72 = distinct !{!72, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!75 = distinct !{!75, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!76 = !{!18, !16, i64 80}
!77 = !{!18, !16, i64 88}
!78 = !{!18, !19, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !6, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 long", !10, i64 0}
!83 = !{!26, !27, i64 16}
!84 = !{!13, !14, i64 8}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN8facebook5velox12errorMessageIJjiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!87 = distinct !{!87, !"_ZN8facebook5velox12errorMessageIJjiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKjKiELi2ELi0ELy18EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!90 = distinct !{!90, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKjKiELi2ELi0ELy18EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!91 = !{!8, !9, i64 16}
!92 = distinct !{!92, !46}
!93 = !{!10, !10, i64 0}
!94 = !{!95, !16, i64 16}
!95 = !{!"_ZTSN8facebook5velox6memory20ContiguousAllocationE", !19, i64 0, !10, i64 8, !16, i64 16, !16, i64 24}
!96 = !{!95, !10, i64 8}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!99 = distinct !{!99, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!100 = distinct !{!100, !46}
!101 = !{!102, !4, i64 32}
!102 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !19, i64 0, !103, i64 8, !4, i64 32}
!103 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !104, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !13, i64 0}
!106 = !{!102, !19, i64 0}
!107 = !{!14, !14, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!110 = distinct !{!110, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
end_hunk_0
