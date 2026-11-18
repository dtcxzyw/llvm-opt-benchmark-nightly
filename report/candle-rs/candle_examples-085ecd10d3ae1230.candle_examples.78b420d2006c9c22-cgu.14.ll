Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.14?download=true
inline.NumInlined: 221
inline.NumDeleted: 143
begin_hunk_0_@_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE8into_arcCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  ret ptr %.sroa.3.0.copyload

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsk_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapINtNtB7_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueEE17clone_from_ref_inCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.c = tail call { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 24), !noalias !290 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  br label %_RNCNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB8_15UniqueArcUninitINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBa_5alloc6GlobalE3new0Csamv9RYRPgRi_15candle_examples.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !290
  %i.h = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.d) #19, !noalias !290
  br label %_RNCNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB8_15UniqueArcUninitINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBa_5alloc6GlobalE3new0Csamv9RYRPgRi_15candle_examples.exit.i.i

_RNCNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB8_15UniqueArcUninitINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBa_5alloc6GlobalE3new0Csamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 6 uses
  %i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.i, label %bb.d, label %_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples.exit, !prof !4

bb.d:                                             ; preds = %_RNCNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB8_15UniqueArcUninitINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBa_5alloc6GlobalE3new0Csamv9RYRPgRi_15candle_examples.exit.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef %i.d, i64 noundef %i.e) #20, !noalias !290
  unreachable

_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples.exit: ; preds = %_RNCNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB8_15UniqueArcUninitINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBa_5alloc6GlobalE3new0Csamv9RYRPgRi_15candle_examples.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !290
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8, !noalias !290
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.k, align 8, !alias.scope !290
  store i64 8, ptr %i.b, align 8, !alias.scope !290
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.l, align 8, !alias.scope !290
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.m, align 8, !alias.scope !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync15UniqueArcUninitINtNtNtNtBG_11collections5btree3map8BTreeMapINtNtBG_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtBG_5alloc6GlobalEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #21
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Csamv9RYRPgRi_15candle_examples.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.f = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #19
  br label %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Csamv9RYRPgRi_15candle_examples.exit.i.i

_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Csamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsamv9RYRPgRi_15candle_examples.exit, !prof !4

bb.d:                                             ; preds = %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Csamv9RYRPgRi_15candle_examples.exit.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #20
  unreachable

_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsamv9RYRPgRi_15candle_examples.exit: ; preds = %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Csamv9RYRPgRi_15candle_examples.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvXNvMsB_NtCsgCecv3eZDcN_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardINtNtNtNtBa_11collections5btree3map8BTreeMapINtNtBa_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  store atomic i64 1, ptr %i.a release, align 8
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() unnamed_addr #5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsamv9RYRPgRi_15candle_examples(ptr %i.b)
  call void @_RNvNtCs5Xr050g3D4S_3std7process5abort() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArcANtNtCs1fJj97VvEPD_9minijinja5value5Valuej2_ENtB6_5Debug3fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXsa_NtCsf3Ta7LF998c_4core5arrayANtNtCs1fJj97VvEPD_9minijinja5value5Valuej2_NtNtB7_3fmt5Debug3fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapENtB6_5Debug3fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !297
  store ptr %i.c, ptr %i.a, align 8, !noalias !297
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !297
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakINtNtNtNtB7_11collections5btree3map8BTreeMapINtNtB7_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtBe_6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB4_13SpecAdvanceBy15spec_advance_byCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %.promoted.i = load i8, ptr %0, align 8, !alias.scope !304 ; 2 uses
  store i8 -1, ptr %0, align 8, !alias.scope !305
  %.not11.i = icmp eq i8 %.promoted.i, -1
  br i1 %.not11.i, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx7.i, i64 23, i1 false)
  store i64 %1, ptr %i.a, align 8, !noalias !303
  store i8 %.promoted.i, ptr %i.b, align 8, !noalias !303
  %i.c = add i64 %1, -1                           ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !303
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples.exit, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %.lr.ph.split.us.i
  store i8 -1, ptr %0, align 8, !alias.scope !305
  br label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples.exit

_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples.exit: ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.split.us.i ], [ %i.c, %._crit_edge.split.us.i ], [ %1, %bb.b ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !311, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csamv9RYRPgRi_15candle_examples.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamv9RYRPgRi_15candle_examples(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csamv9RYRPgRi_15candle_examples.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamv9RYRPgRi_15candle_examples(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsjt5G1tH9gEt_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjt5G1tH9gEt_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates1_1__NtB5_13StringOrTokenNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2j_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates2_1__NtB5_18ChatTemplateConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2o_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_7ApiRepo3get(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaPlfBUY5LAj_10serde_json2de10from_traitINtNtB4_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB4_5value5ValueECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5valueNtB6_5Value3getReECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0ENtNtB1f_4path7PathBufINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorENCINvXso_B3W_IB3U_INtNtB22_3vec3VecB3y_EB4g_EINtNtNtB4_6traits7collect12FromIteratorIB3U_B3y_B4g_EE9from_iterBQ_E0B5g_EB2F_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_8ApiErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs5Xr050g3D4S_3std7process5abort() unnamed_addr #14
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!103 = !{!91, !89, !83}
!104 = !{!93}
!105 = !{!95}
!106 = !{!95, !93, !83}
!107 = distinct !{!107, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplECsamv9RYRPgRi_15candle_examples"}
!108 = distinct !{!108, !107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplECsamv9RYRPgRi_15candle_examples: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsamv9RYRPgRi_15candle_examples"}
!110 = distinct !{!110, !109, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsamv9RYRPgRi_15candle_examples: argument 0"}
!111 = distinct !{!111, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples"}
!112 = distinct !{!112, !111, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples: argument 0"}
!113 = !{!108}
!114 = !{!110}
!115 = !{i64 0, i64 25}
!116 = !{!110, !108}
!117 = !{!112}
!118 = distinct !{!118, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6xQOTQz36RB_4ureq5error5ErrorECsamv9RYRPgRi_15candle_examples"}
!119 = distinct !{!119, !118, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6xQOTQz36RB_4ureq5error5ErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!120 = distinct !{!120, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfHYYCnX9MSg_10ureq_proto5error5ErrorECsamv9RYRPgRi_15candle_examples"}
!121 = distinct !{!121, !120, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfHYYCnX9MSg_10ureq_proto5error5ErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!122 = distinct !{!122, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslrt4cfwyDKc_4http6method6MethodECsamv9RYRPgRi_15candle_examples"}
!123 = distinct !{!123, !122, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslrt4cfwyDKc_4http6method6MethodECsamv9RYRPgRi_15candle_examples: argument 0"}
!124 = distinct !{!124, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslrt4cfwyDKc_4http6method5InnerECsamv9RYRPgRi_15candle_examples"}
!125 = distinct !{!125, !124, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslrt4cfwyDKc_4http6method5InnerECsamv9RYRPgRi_15candle_examples: argument 0"}
!126 = distinct !{!126, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples"}
!127 = distinct !{!127, !126, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples: argument 0"}
!128 = distinct !{!128, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types3pem5ErrorECsamv9RYRPgRi_15candle_examples"}
!129 = distinct !{!129, !128, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types3pem5ErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!130 = distinct !{!130, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples"}
!131 = distinct !{!131, !130, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples: argument 0"}
!132 = distinct !{!132, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error5ErrorECsamv9RYRPgRi_15candle_examples"}
!133 = distinct !{!133, !132, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error5ErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!134 = distinct !{!134, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples"}
!135 = distinct !{!135, !134, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!136 = distinct !{!136, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples"}
!137 = distinct !{!137, !136, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples: argument 0"}
!138 = distinct !{!138, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples"}
!139 = distinct !{!139, !138, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error16PeerIncompatibleECsamv9RYRPgRi_15candle_examples"}
!141 = distinct !{!141, !140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error16PeerIncompatibleECsamv9RYRPgRi_15candle_examples: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error16CertificateErrorECsamv9RYRPgRi_15candle_examples"}
!143 = distinct !{!143, !142, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error16CertificateErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!144 = distinct !{!144, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples"}
!145 = distinct !{!145, !144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!146 = distinct !{!146, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples"}
!149 = distinct !{!149, !148, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name10ServerNameECsamv9RYRPgRi_15candle_examples"}
!151 = distinct !{!151, !150, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name10ServerNameECsamv9RYRPgRi_15candle_examples: argument 0"}
!152 = distinct !{!152, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name7DnsNameECsamv9RYRPgRi_15candle_examples"}
!153 = distinct !{!153, !152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name7DnsNameECsamv9RYRPgRi_15candle_examples: argument 0"}
!154 = distinct !{!154, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name12DnsNameInnerECsamv9RYRPgRi_15candle_examples"}
!155 = distinct !{!155, !154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjt5G1tH9gEt_16rustls_pki_types11server_name12DnsNameInnerECsamv9RYRPgRi_15candle_examples: argument 0"}
!156 = distinct !{!156, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeECsamv9RYRPgRi_15candle_examples"}
!157 = distinct !{!157, !156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeECsamv9RYRPgRi_15candle_examples: argument 0"}
!158 = distinct !{!158, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error23CertRevocationListErrorECsamv9RYRPgRi_15candle_examples"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs32ONoPd6L90_6rustls5error23CertRevocationListErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!160 = distinct !{!160, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples"}
!161 = distinct !{!161, !160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs32ONoPd6L90_6rustls5error11other_error10OtherErrorECsamv9RYRPgRi_15candle_examples: argument 0"}
!162 = distinct !{!162, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples"}
!163 = distinct !{!163, !162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsamv9RYRPgRi_15candle_examples: argument 0"}
!164 = distinct !{!164, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples"}
!165 = distinct !{!165, !164, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples: argument 0"}
!166 = distinct !{!166, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples"}
!167 = distinct !{!167, !166, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples: argument 0"}
!168 = distinct !{!168, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples"}
!169 = distinct !{!169, !168, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsamv9RYRPgRi_15candle_examples: argument 0"}
!170 = distinct !{!170, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorEECsamv9RYRPgRi_15candle_examples"}
!171 = distinct !{!171, !170, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorEECsamv9RYRPgRi_15candle_examples: argument 0"}
!172 = distinct !{null}
!173 = !{i64 -2, i64 -9223372036854775794}
!174 = !{!119}
!175 = !{i8 0, i8 47}
!176 = !{!121}
!177 = !{i8 0, i8 22}
!178 = !{!121, !119}
!179 = !{!123}
!180 = !{!125}
!181 = !{i8 0, i8 12}
!182 = !{!125, !123, !121, !119}
!183 = !{!125, !123, !121}
!184 = !{!127}
!185 = !{!129}
!186 = !{i64 0, i64 6}
!187 = !{!129, !119}
!188 = !{!131}
!189 = !{!133}
!190 = !{!135}
!191 = !{!137}
!192 = !{!139}
!193 = !{!139, !137, !135, !133, !119}
!194 = !{!139, !137, !135, !133}
!195 = !{i64 -1, i64 -9223372036854775787}
!196 = !{!141, !133, !119}
!197 = !{!143}
!198 = !{i64 0, i64 -9223372036854775786}
!199 = !{!143, !133, !119}
!200 = !{!145}
!201 = !{!147}
!202 = !{!149}
!203 = !{!149, !147, !145, !143, !133, !119}
!204 = !{!149, !147, !145, !143, !133}
!205 = !{!151, !143, !133, !119}
!206 = !{!155, !153, !151, !143, !133, !119}
!207 = !{i64 0, i64 -9223372036854775806}
!208 = !{!157, !143, !133, !119}
!209 = !{!159}
!210 = !{i64 0, i64 14}
!211 = !{!159, !133, !119}
!212 = !{!161}
!213 = !{!163}
!214 = !{!165}
!215 = !{!165, !163, !161, !159, !133, !119}
!216 = !{!165, !163, !161, !159, !133}
!217 = !{!167}
!218 = !{i64 0, i64 -9223372036854775808}
!219 = !{i64 1, i64 536870913}
!220 = !{!169}
!221 = !{!171}
!222 = distinct !{!222, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryEECsamv9RYRPgRi_15candle_examples"}
!223 = distinct !{!223, !222, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryEECsamv9RYRPgRi_15candle_examples: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryEECsamv9RYRPgRi_15candle_examples"}
!225 = distinct !{!225, !224, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryEECsamv9RYRPgRi_15candle_examples: argument 0"}
!226 = distinct !{!226, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryECsamv9RYRPgRi_15candle_examples"}
!227 = distinct !{!227, !226, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryECsamv9RYRPgRi_15candle_examples: argument 0"}
!228 = distinct !{!228, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCs1fJj97VvEPD_9minijinja5value5ValueEEECsamv9RYRPgRi_15candle_examples"}
!229 = distinct !{!229, !228, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCs1fJj97VvEPD_9minijinja5value5ValueEEECsamv9RYRPgRi_15candle_examples: argument 0"}
!230 = !{i8 -1, i8 13}
!231 = !{!229, !227, !225, !223}
!232 = distinct !{!232, i1 true, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2T_"}
!233 = distinct !{!233, !232, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2T_: argument 0"}
!234 = distinct !{!234, !232, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2T_: argument 1"}
!235 = distinct !{!235, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2C_4read7StrReadEEB17_"}
!236 = distinct !{!236, !235, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2C_4read7StrReadEEB17_: argument 0"}
!237 = distinct !{!237, !235, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2C_4read7StrReadEEB17_: argument 1"}
!238 = distinct !{!238, i1 true, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!239 = distinct !{!239, !238, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!240 = distinct !{!240, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB17_"}
!241 = distinct !{!241, !240, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB17_: argument 0"}
!242 = !{!233}
!243 = !{!234}
!244 = !{!233, !234}
!245 = !{!236}
!246 = !{!236, !237, !233, !234}
!247 = !{!236, !233}
!248 = !{!237, !234}
!249 = !{!239, !234}
!250 = !{!241, !233}
!251 = distinct !{!251, i1 true, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2T_"}
!252 = distinct !{!252, !251, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2T_: argument 0"}
!253 = distinct !{!253, !251, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2T_: argument 1"}
!254 = distinct !{!254, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2H_4read7StrReadEEB17_"}
!255 = distinct !{!255, !254, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2H_4read7StrReadEEB17_: argument 0"}
!256 = distinct !{!256, !254, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2H_4read7StrReadEEB17_: argument 1"}
!257 = distinct !{!257, i1 true, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!258 = distinct !{!258, !257, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!259 = distinct !{!259, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB17_"}
!260 = distinct !{!260, !259, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB17_: argument 0"}
!261 = !{!252}
!262 = !{!253}
!263 = !{!252, !253}
!264 = !{!255}
!265 = !{!255, !256, !252, !253}
!266 = !{!255, !252}
!267 = !{!256, !253}
!268 = !{!258, !253}
!269 = !{!260, !252}
!270 = distinct !{!270, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorE3newCsamv9RYRPgRi_15candle_examples"}
!271 = distinct !{!271, !270, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorE3newCsamv9RYRPgRi_15candle_examples: argument 0"}
!272 = distinct !{!272, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE3newCsamv9RYRPgRi_15candle_examples"}
!273 = distinct !{!273, !272, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE3newCsamv9RYRPgRi_15candle_examples: argument 0"}
!274 = !{i64 -3, i64 -9223372036854775794}
!275 = !{!271}
!276 = !{i32 0, i32 2}
!277 = !{i32 0, i32 -1}
!278 = !{i8 -1, i8 6}
!279 = !{!273}
!280 = !{i64 -1, i64 -9223372036854775764}
!281 = !{i64 0, i64 2}
!282 = !{i64 0, i64 -9223372036854775807}
!283 = !{i8 0, i8 3}
!284 = distinct !{!284, i1 true, !"_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples"}
!285 = distinct !{!285, !284, !"_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtNtNtB8_11collections5btree3map8BTreeMapINtNtB8_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtB8_5alloc6GlobalE3newCsamv9RYRPgRi_15candle_examples: argument 0"}
!286 = distinct !{!286, i1 true, !"_RNvXNtCsf3Ta7LF998c_4core5cloneINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtBC_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB2_13CloneToUninit15clone_to_uninitCsamv9RYRPgRi_15candle_examples"}
!287 = distinct !{!287, !286, !"_RNvXNtCsf3Ta7LF998c_4core5cloneINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtBC_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB2_13CloneToUninit15clone_to_uninitCsamv9RYRPgRi_15candle_examples: argument 0"}
!288 = distinct !{!288, i1 true, !"_RNvXNtNtCsf3Ta7LF998c_4core5clone6uninitINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtBL_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB2_8CopySpec9clone_oneCsamv9RYRPgRi_15candle_examples"}
!289 = distinct !{!289, !288, !"_RNvXNtNtCsf3Ta7LF998c_4core5clone6uninitINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtBL_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB2_8CopySpec9clone_oneCsamv9RYRPgRi_15candle_examples: argument 0"}
!290 = !{!285}
!291 = !{!289, !287}
!292 = distinct !{!292, i1 true, !"_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsamv9RYRPgRi_15candle_examples"}
!293 = distinct !{!293, !292, !"_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsamv9RYRPgRi_15candle_examples: argument 0"}
!294 = distinct !{!294, i1 true, !"_RNvXsa_NtNtCs1fJj97VvEPD_9minijinja5value9serializeNtB5_12StaticKeyMapNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt"}
!295 = distinct !{!295, !294, !"_RNvXsa_NtNtCs1fJj97VvEPD_9minijinja5value9serializeNtB5_12StaticKeyMapNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 1"}
!296 = distinct !{!296, !294, !"_RNvXsa_NtNtCs1fJj97VvEPD_9minijinja5value9serializeNtB5_12StaticKeyMapNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 0"}
!297 = !{!296, !295, !293}
!298 = distinct !{!298, i1 true, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples"}
!299 = distinct !{!299, !298, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECsamv9RYRPgRi_15candle_examples: argument 0"}
!300 = distinct !{!300, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples"}
!301 = distinct !{!301, !300, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples: argument 0"}
!302 = distinct !{!302, !300, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples: argument 1"}
!303 = !{!299}
!304 = !{!302, !301, !299}
!305 = !{!302, !299}
!306 = !{!301}
!307 = distinct !{!307, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csamv9RYRPgRi_15candle_examples"}
!308 = distinct !{!308, !307, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csamv9RYRPgRi_15candle_examples: argument 0"}
!309 = distinct !{!309, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamv9RYRPgRi_15candle_examples"}
!310 = distinct !{!310, !309, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamv9RYRPgRi_15candle_examples: argument 0"}
!311 = !{!310, !308}
end_hunk_1
