Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexShardsIVF?download=true
inline.NumInlined: 818
inline.NumDeleted: 422
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt25__throw_bad_function_callv
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !114
  store i32 %i.r, ptr %i.q, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  store ptr %i.u, ptr %i.s, align 8, !tbaa !115
  store ptr null, ptr %i.t, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.v = load i32, ptr %.0911.i.i.i, align 8, !tbaa !114, !alias.scope !198
  store i32 %i.v, ptr %.012.i.i.i, align 8, !tbaa !114, !alias.scope !197
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115, !alias.scope !198
  store ptr %i.y, ptr %i.w, align 8, !tbaa !115, !alias.scope !197
  store ptr null, ptr %i.x, align 8, !tbaa !115, !alias.scope !198
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !193

_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.ac = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !114, !alias.scope !200
  store i32 %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !114, !alias.scope !199
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115, !alias.scope !200
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !115, !alias.scope !199
  store ptr null, ptr %i.ae, align 8, !tbaa !115, !alias.scope !200
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !193

_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !118
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !120
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNS0_14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E9_M_invokeERKSt9_Any_dataOiOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !71    ; 6 uses
  %.val3 = load i32, ptr %1, align 4, !tbaa !110  ; 3 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !92   ; 3 uses
  %i.a = sext i32 %.val3 to i64                   ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !tbaa !206 ; 3 uses
  %i.c = mul nsw i64 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = sdiv i64 %i.c, %i.e                      ; 4 uses
  %i.g = add nsw i64 %i.a, 1
  %i.h = mul nsw i64 %i.b, %i.g
  %i.i = sdiv i64 %i.h, %i.e
  %i.j = icmp eq ptr %.val4, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull %.val4, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss8IndexIVFE, i64 0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !16, !range !17, !noundef !18
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.val3, i64 noundef %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = sub nsw i64 %i.i, %i.f                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !209
  %i.v = mul nsw i64 %i.u, %i.f
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !210  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.f
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.f
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(273) %i.l, i64 noundef %i.q, ptr noundef %i.w, ptr noundef %spec.select.i.i.i, ptr noundef %i.ac, ptr noundef null), !inline_history !201
  %i.ag = load i8, ptr %i.m, align 8, !tbaa !16, !range !17, !noundef !18
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %"_ZSt10__invoke_rIvRZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0JiPNS0_5IndexEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.val3, i64 noundef %i.q) ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0JiPNS0_5IndexEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIvRZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0JiPNS0_5IndexEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNS0_14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.j
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0", ptr %0, align 8, !tbaa !124
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !67   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc3.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !63

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc.i.i.i unwind label %bb.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
          to label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i unwind label %bb.i

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i: ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !78 ; 2 uses
  %.pre4.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !78
  %.pre5.i.i.i = ptrtoint ptr %.pre4.i.i.i to i64
  %.pre6.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %.noexc3.i.i.i

.noexc3.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i, %bb.d
  %.pre-phi7.i.i.i = phi i64 [ %.pre6.i.i.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i ], [ %i.h, %bb.d ]
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i ], [ %i.g, %bb.d ]
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i..noexc3_crit_edge.i.i.i ], [ null, %bb.d ] ; 6 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !66
  %i.q = sub i64 %.pre-phi.i.i.i, %.pre-phi7.i.i.i ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !211

bb.f:                                             ; preds = %.noexc3.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E15_M_init_functorIRKS7_EEvRSt9_Any_dataOT_.exit.i"

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E15_M_init_functorIRKS7_EEvRSt9_Any_dataOT_.exit.i"

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.l, align 8, !tbaa !62
  store i64 %i.t, ptr %i.m, align 8, !tbaa !62
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E15_M_init_functorIRKS7_EEvRSt9_Any_dataOT_.exit.i"

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #24
  resume { ptr, i32 } %i.u

"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E15_M_init_functorIRKS7_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.h, %bb.g, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.v, ptr %i.n, align 8, !tbaa !68
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.j:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 4 uses
  %i.w = icmp eq ptr %.val7.i, null
  br i1 %i.w, label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %.val7.i, i64 40
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlEN3$_0D2Ev.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %.val7.i, i64 56
  %.val1.i.i = load ptr, ptr %i.y, align 8
  %i.z = ptrtoint ptr %.val1.i.i to i64
  %i.aa = ptrtoint ptr %.val.i.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ab) #24
  br label %"_ZZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlEN3$_0D2Ev.exit.i.i"

"_ZZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlEN3$_0D2Ev.exit.i.i": ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #24
  br label %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlEN3$_0D2Ev.exit.i.i", %bb.j, %"_ZNSt14_Function_base13_Base_managerIZN5faiss14IndexShardsIVF12add_with_idsElPKfPKlE3$_0E15_M_init_functorIRKS7_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef align 8 %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %class.anon.57, align 8             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFviPKN5faiss5IndexEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !71
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !71
  br label %_ZNSt8functionIFviPKN5faiss5IndexEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit12
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit12 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFviPKN5faiss5IndexEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.m = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.h   ; 5 uses

.noexc.i:                                         ; preds = %_ZNSt8functionIFviPKN5faiss5IndexEEEC2ERKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !87
  store ptr %i.o, ptr %i.n, align 8, !tbaa !87
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !96
  store ptr %i.p, ptr %i.q, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt8functionIFviPKN5faiss5IndexEEEC2ERKS5_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g, %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.m, ptr %2, align 8, !tbaa !71
  store ptr @_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNKS0_13ThreadedIndexIS1_E10runOnIndexESt8functionIFviPKS1_EEEUliS2_E_E9_M_invokeERKSt9_Any_dataOiOS2_, ptr %i.s, align 8, !tbaa !73
  store ptr @_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNKS0_13ThreadedIndexIS1_E10runOnIndexESt8functionIFviPKS1_EEEUliS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.l, align 8, !tbaa !70
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPS1_EE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 %2)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i6, label %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.o:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %.not.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i8, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.q      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

.body:                                            ; preds = %bb.h, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i10, label %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit12, label %bb.r

bb.r:                                             ; preds = %.body
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EEENUliPS1_E_D2Ev.exit12 unwind label %bb.s ; 0 uses

end_hunk_0
