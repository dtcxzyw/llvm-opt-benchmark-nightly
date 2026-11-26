Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.5?download=true
inline.NumInlined: 112
inline.NumDeleted: 22
begin_hunk_0_@_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr3neweECsiHivYpkJ4Hu_2cc:bb.a

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf13set_extensionReECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call zeroext i1 @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf14__set_extension(ptr align 8 %0, ptr %i.d, i64 %i.e)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXs1q_NtCsaL1QbXo9JQH_3std4pathNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8 %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #23
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr align 8 %0, ptr %i.c, i64 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushReECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtCsaL1QbXo9JQH_3std4path4PathE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr align 8 %0, ptr %i.d, i64 %i.e)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable3 [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.a, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call i8 @_RNvMsf_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKind9from_primCsiHivYpkJ4Hu_2cc(i32 %i.g) #22 ; 2 uses
  %.not = icmp eq i8 %i.h, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.i, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 @1) #25
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e
  %.sink = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i8 3, 2) i8 @_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = tail call i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.c = load i8, ptr %i.a, align 8
  %.not4 = icmp ne i8 %i.c, -1
  %. = sext i1 %.not4 to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %., %bb.b ], [ %i.b, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) ; 2 uses
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %bb.b, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.c = load i8, ptr %i.a, align 8
  %.not4.i = icmp ne i8 %i.c, -1
  %..i = sext i1 %.not4.i to i8
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsiHivYpkJ4Hu_2cc.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %..i, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp eq i8 %.sroa.0.0.i, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) ; 2 uses
  %.not.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i.i, label %bb.b, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.c = load i8, ptr %i.a, align 8
  %.not4.i.i = icmp ne i8 %i.c, -1
  %..i.i = sext i1 %.not4.i.i to i8
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsiHivYpkJ4Hu_2cc.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %..i.i, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp eq i8 %.sroa.0.0.i.i, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = tail call { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools(i64 %2, i64 8, i64 24) #22 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 5 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.c, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %3 = phi i64 [ %.pr, %bb.g ], [ %i.g, %bb.a ]
  %i.n = phi i64 [ %i.q, %bb.g ], [ 0, %bb.a ]
  %i.o = add i64 %3, -1
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a
  store i64 %2, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d
  %4 = phi i64 [ %i.n, %.lr.ph ], [ %i.q, %bb.d ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %4, ptr %i.k, align 8
  br label %5

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %5

5:                                                ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtBM_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d) #23
          to label %bb.i unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 6 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.q, %i.g
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.r)
          to label %bb.g unwind label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i64 %i.q, ptr %i.k, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.q, i64 %i.g, ptr nonnull align 8 @3) #26
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.u = icmp eq i64 %.pr, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i, %5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %5
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #23
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools(i64 %2, i64 8, i64 48) #22 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %3 = phi i64 [ %.pr, %bb.g ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %i.p, %bb.g ], [ 0, %bb.a ]
  %i.n = add i64 %3, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1y_EEENtNtNtB8_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d
  %4 = phi i64 [ %i.m, %.lr.ph ], [ %i.p, %bb.d ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %4, ptr %i.j, align 8
  br label %5

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %5

5:                                                ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1Y_ENtNtBM_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c) #23
          to label %bb.i unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 6 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.p, %i.f
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvYTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB3_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %i.q)
          to label %bb.g unwind label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.j, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.p, i64 %i.f, ptr nonnull align 8 @3) #26
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.t = icmp eq i64 %.pr, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i, %5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %5
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #23
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %1, label %.lr.ph.preheader.split.split [
    i64 0, label %._crit_edge
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
    i64 2, label %.lr.ph.peel
  ]

.lr.ph.preheader.split.split:                     ; preds = %.split
  %i.b = add i64 %1, -3
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.split, %bb.s
  %i.c = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.s ] ; 4 uses
  %i.d = phi i64 [ 0, %.split ], [ %.sroa.012.2, %bb.s ] ; 3 uses
  %i.e = phi i64 [ 0, %.split ], [ %i.av, %bb.s ] ; 6 uses
  %i.f = add nuw i64 %i.e, 1                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.a, label %._crit_edge.loopexit.peel.begin

bb.a:                                             ; preds = %.lr.ph.peel
  %i.j = icmp ugt i64 %i.e, %i.c
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.e, %i.c                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.m = add i64 %i.k, %i.d
  %i.n = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.m, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.l, i64 %i.k) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.3.peel50 = phi i64 [ %i.n, %bb.b ], [ %i.d, %bb.a ]
  %i.o = sub nuw i64 %1, %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  %i.q = icmp eq i64 %i.o, 1
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.r, 46                      ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.023.0.peel51 = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.w = add i64 %.sroa.023.0.peel51, %i.f
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph.peel, %bb.h
  %.sroa.012.2.peel = phi i64 [ %.sroa.012.3.peel50, %bb.h ], [ %i.d, %.lr.ph.peel ] ; 3 uses
  %.sroa.0.1.peel = phi i64 [ %i.w, %bb.h ], [ %i.c, %.lr.ph.peel ] ; 4 uses
  %i.x = add nuw i64 %i.e, 2                      ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.i, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.split
  %i.ab = load i8, ptr %0, align 1
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %.thread47, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %i.e, %.sroa.0.1.peel
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nuw i64 %i.f, %.sroa.0.1.peel       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.peel
  %i.af = add i64 %i.ad, %.sroa.012.2.peel
  %i.ag = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.af, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.ae, i64 %i.ad) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.3.peel = phi i64 [ %i.ag, %bb.j ], [ %.sroa.012.2.peel, %bb.i ] ; 6 uses
  %i.ah = sub nuw i64 %1, %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not26.peel = icmp eq i64 %1, %i.x
  br i1 %.not26.peel, label %.thread47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread47

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.p, label %.thread47

bb.o:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ai, align 1
  %i.aq = icmp eq i8 %i.ap, 46
  br i1 %i.aq, label %bb.p, label %.thread47

.thread47:                                        ; preds = %._crit_edge.loopexit.peel.begin.thread, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.012.3.peel44 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel, %bb.n ], [ %.sroa.012.3.peel, %bb.m ], [ %.sroa.012.3.peel, %bb.l ], [ 0, %._crit_edge.loopexit.peel.begin.thread ]
  %i.ar = phi i64 [ %i.x, %bb.o ], [ %i.x, %bb.n ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ 1, %._crit_edge.loopexit.peel.begin.thread ]
  br label %bb.p

bb.p:                                             ; preds = %.thread47, %bb.o, %bb.n
  %.sroa.012.3.peel43 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel44, %.thread47 ], [ %.sroa.012.3.peel, %bb.n ]
  %i.as = phi i64 [ %i.x, %bb.o ], [ %i.ar, %.thread47 ], [ %i.x, %bb.n ]
  %.sroa.023.0.peel = phi i64 [ 1, %bb.o ], [ 0, %.thread47 ], [ 1, %bb.n ]
  %i.at = add i64 %.sroa.023.0.peel, %i.as
  br label %._crit_edge

._crit_edge:                                      ; preds = %.split, %._crit_edge.loopexit.peel.begin, %bb.p, %._crit_edge.loopexit.peel.begin.thread
  %.sroa.012.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.012.3.peel43, %bb.p ], [ %.sroa.012.2.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %i.at, %bb.p ], [ %.sroa.0.1.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.au, label %bb.r, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader.split.split, %bb.s
  %.sroa.0.031 = phi i64 [ %.sroa.0.1, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 4 uses
  %.sroa.012.030 = phi i64 [ %.sroa.012.2, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 3 uses
  %.sroa.019.029 = phi i64 [ %i.av, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 5 uses
  %i.av = add nuw i64 %.sroa.019.029, 1           ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.029
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %bb.t, label %bb.s

bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.012.1 = phi i64 [ %i.bc, %bb.r ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.012.1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr nonnull %i.a, i64 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.az = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.bb = add i64 %i.az, %.sroa.012.0.lcssa
  %i.bc = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.bb, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.ba, i64 %i.az) #22
  br label %bb.q

bb.s:                                             ; preds = %bb.y, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.y ], [ %.sroa.012.030, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bn, %bb.y ], [ %.sroa.0.031, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.029, %i.b
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !4

bb.t:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt i64 %.sroa.019.029, %.sroa.0.031
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %.sroa.012.3 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.012.030, %bb.t ]
  %i.be = sub nuw i64 %1, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bg = icmp eq i64 %i.be, 1
  %i.bh = load i8, ptr %i.bf, align 1
  %i.bi = icmp eq i8 %i.bh, 46                    ; 2 uses
  br i1 %i.bg, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bj = sub nuw i64 %.sroa.019.029, %.sroa.0.031 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.031
  %i.bl = add i64 %i.bj, %.sroa.012.030
  %i.bm = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.bl, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.bk, i64 %i.bj) #22
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.w, %bb.x
  %.sroa.023.0 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ]
  %i.bn = add i64 %.sroa.023.0, %i.av
end_hunk_0
