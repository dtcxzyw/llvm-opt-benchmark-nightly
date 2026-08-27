Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.09?download=true
inline.NumInlined: 140
inline.NumDeleted: 85
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name20QualifiedNameBuilderECs7bpTdHNYxeX_20ruff_python_semantic
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name20QualifiedNameBuilderECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !32, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.c, align 8, !alias.scope !35, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !alias.scope !42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.b, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_exprNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block0EB14_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0)
  ret i1 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph20

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit, %bb.a
  ret void

.lr.ph20:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit
  %.sroa.2.019 = phi i64 [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit ], [ %i.c, %bb.a ]
  %i.d = add nsw i64 %.sroa.2.019, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph20
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph20
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 range(i64 0, -4611686018427387906) %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i15 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i15, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.aa, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.z, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i16 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %.val = load i32, ptr %i.p, align 8, !noundef !4
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val11 = load i32, ptr %i.q, align 8, !noundef !4
  %i.r = icmp ult i32 %.val, %.val11
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %i.j, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i16 ; 2 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 24
  %.val12 = load i32, ptr %i.w, align 8, !noundef !4
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %.val13 = load i32, ptr %i.x, align 8, !noundef !4
  %i.y = icmp ult i32 %.val12, %.val13
  br i1 %i.y, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 5)
  %i.z = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.aa, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB16_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B18_NtB18_13SemanticModel29resolve_qualified_import_name0s_0E0EB1a_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph20
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw i64 %i.a, %1                     ; 2 uses
  %.not23 = icmp eq i64 %i.b, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph25

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.a
  ret void

.lr.ph25:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.2.024 = phi i64 [ %i.c, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %i.b, %bb.a ]
  %i.c = add i64 %.sroa.2.024, -1                 ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph25
  %i.d = sub nuw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 1
  %i.f = load i8, ptr %i.e, align 1
  store i8 %i.f, ptr %0, align 1
  store i8 %.sroa.0.0.copyload.i, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 range(i64 0, -4611686018427387906) %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw i64 %.sroa.04.0, 1               ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i20 = icmp ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i20, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ai, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ah, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i21 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %.val = load i8, ptr %i.n, align 1, !range !45, !noundef !4 ; 4 uses
  %.val11 = load i8, ptr %i.o, align 1, !range !45, !noundef !4 ; 4 uses
  %i.p = icmp ne i8 %.val, 6
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i8 %.val, -4
  %i.r = icmp samesign ugt i8 %.val, 3
  %narrow.i.i.i = select i1 %i.r, i8 %i.q, i8 2   ; 2 uses
  %i.s = icmp ne i8 %.val11, 6
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i8 %.val11, -4
  %i.u = icmp samesign ugt i8 %.val11, 3
  %narrow1.i.i.i = select i1 %i.u, i8 %i.t, i8 2  ; 2 uses
  %i.v = icmp eq i8 %narrow.i.i.i, 2
  %i.w = icmp eq i8 %narrow1.i.i.i, 2
  %or.cond.i.i.i = and i1 %i.v, %i.w              ; 2 uses
  %.0.val.narrow.i.i.i = select i1 %or.cond.i.i.i, i8 %.val, i8 %narrow.i.i.i
  %.0.val1.narrow1.i.i.i = select i1 %or.cond.i.i.i, i8 %.val11, i8 %narrow1.i.i.i
  %3 = icmp samesign ult i8 %.0.val.narrow.i.i.i, %.0.val1.narrow1.i.i.i
  %4 = zext i1 %3 to i64
  %5 = add nuw nsw i64 %i.j, %4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %5, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load i8, ptr %i.x, align 1, !range !45, !noundef !4 ; 5 uses
  %.val13 = load i8, ptr %i.y, align 1, !range !45, !noundef !4 ; 5 uses
  %i.z = icmp ne i8 %.val12, 6
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i8 %.val12, -4
  %i.ab = icmp samesign ugt i8 %.val12, 3
  %narrow.i.i.i15 = select i1 %i.ab, i8 %i.aa, i8 2 ; 2 uses
  %i.ac = icmp ne i8 %.val13, 6
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i8 %.val13, -4
  %i.ae = icmp samesign ugt i8 %.val13, 3
  %narrow1.i.i.i16 = select i1 %i.ae, i8 %i.ad, i8 2 ; 2 uses
  %i.af = icmp eq i8 %narrow.i.i.i15, 2
  %i.ag = icmp eq i8 %narrow1.i.i.i16, 2
  %or.cond.i.i.i17 = and i1 %i.af, %i.ag          ; 2 uses
  %.0.val.narrow.i.i.i18 = select i1 %or.cond.i.i.i17, i8 %.val12, i8 %narrow.i.i.i15
  %.0.val1.narrow1.i.i.i19 = select i1 %or.cond.i.i.i17, i8 %.val13, i8 %narrow1.i.i.i16
  %6 = icmp samesign ult i8 %.0.val.narrow.i.i.i18, %.0.val1.narrow1.i.i.i19
  br i1 %6, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store i8 %.val13, ptr %i.x, align 1, !alias.scope !46, !noalias !49
  store i8 %.val12, ptr %i.y, align 1, !alias.scope !49, !noalias !46
  %i.ah = shl nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %.not.i = icmp ult i64 %i.ai, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph25
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block0B7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !51, !noundef !4
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.c, ptr noundef nonnull align 8 %1)
  %i.d = load i64, ptr %i.b, align 8, !range !52, !noundef !4
  %.not = icmp eq i64 %i.d, 2
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.e = load i64, ptr %i.a, align 8, !range !5, !alias.scope !53, !noundef !4 ; 2 uses
  %i.f = trunc nuw i64 %i.e to i1                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !53, !nonnull !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !53
  %i.m = zext i32 %i.l to i64
  %.sroa.8.0.i = select i1 %i.f, i64 %i.j, i64 %i.m
  %.sroa.01.0.i = select i1 %i.f, ptr %i.h, ptr %i.g
  %i.n = icmp eq i64 %.sroa.8.0.i, 2
  br i1 %i.n, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.01.0.i.sroa.sel = select i1 %i.f, ptr %.sroa.gep, ptr %i.i
  %i.o = load i64, ptr %.sroa.01.0.i.sroa.sel, align 8, !noundef !4
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = xor i16 %i.r, 31091
  %i.t = getelementptr i8, ptr %i.q, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 %i.v, 115
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel4 = select i1 %i.f, ptr %.sroa.gep2, ptr %.sroa.gep3 ; 2 uses
  %.sroa.gep5 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel7 = select i1 %i.f, ptr %.sroa.gep5, ptr %.sroa.gep6
  %i.ab = load i64, ptr %.sroa.01.0.i.sroa.sel7, align 8, !noundef !4
  switch i64 %i.ab, label %.thread.i [
    i64 12, label %bb.f
    i64 8, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %.sroa.01.0.i.sroa.sel4, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 6876556179740452214
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = xor i64 %i.ah, 1868983913
  %i.aj = or i64 %i.ae, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %.sroa.01.0.i.sroa.sel4, align 8, !nonnull !4, !noundef !4
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = icmp ne i64 %i.ao, 7886488383309048944
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ %i.am, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ %i.ar, %bb.g ], [ false, %bb.e ]
  %i.as = icmp eq i64 %i.e, 0
  br i1 %i.as, label %_RNCNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block00B9_.exit, label %bb.h

bb.h:                                             ; preds = %.thread.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i: ; preds = %bb.i
  resume { ptr, i32 } %i.at

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RNCNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block00B9_.exit

_RNCNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block00B9_.exit: ; preds = %.thread.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNCNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block00B9_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RNCNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block00B9_.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEE9call_once6vtableBc_(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !51, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !56
  %i.c = call noundef zeroext i1 @_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block0B7_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract(ptr noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %.idx = mul nuw nsw i64 %1, 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract0EB2x_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %.backedge.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, ptr noundef nonnull align 8 %i.g), !noalias !63
  %i.i = load i64, ptr %i.b, align 8, !range !52, !noalias !59, !noundef !4
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract0B7_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !59
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.j = load i64, ptr %i.a, align 8, !range !5, !alias.scope !64, !noalias !59, !noundef !4 ; 2 uses
  %i.k = trunc nuw i64 %i.j to i1                 ; 5 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !64, !noalias !59, !nonnull !4 ; 4 uses
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !64, !noalias !59
  %i.n = load i32, ptr %i.f, align 8, !alias.scope !64, !noalias !59
  %i.o = zext i32 %i.n to i64
  %.sroa.10.0.i.i.i = select i1 %i.k, i64 %i.m, i64 %i.o
  %.sroa.01.0.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.d
  %i.p = icmp eq i64 %.sroa.10.0.i.i.i, 2
  br i1 %i.p, label %bb.d, label %.thread27.i.i.i

bb.d:                                             ; preds = %bb.c
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.01.0.i.sroa.sel.i.i = select i1 %i.k, ptr %.sroa.gep.i.i, ptr %i.e
  %i.q = load i64, ptr %.sroa.01.0.i.sroa.sel.i.i, align 8, !noalias !63, !noundef !4
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %bb.e, label %.thread27.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %.sroa.01.0.i.i.i, align 8, !noalias !63, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = load i16, ptr %i.s, align 1
  %i.u = xor i16 %i.t, 25185
  %i.v = getelementptr i8, ptr %i.s, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i16
  %i.y = xor i16 %i.x, 99
  %i.z = or i16 %i.u, %i.y
  %i.aa = icmp ne i16 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
end_hunk_0
