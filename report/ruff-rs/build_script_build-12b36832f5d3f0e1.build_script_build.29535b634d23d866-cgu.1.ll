Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-12b36832f5d3f0e1.build_script_build.29535b634d23d866-cgu.1?download=true
inline.NumInlined: 67
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutuEp6OutputINtNtBO_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtBO_6marker4SendNtB2D_4SyncEL_ENtNtBM_4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build:bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !5
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr nonnull %i.i, ptr %i.h, i64 %i.g, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr align 8 %0) unnamed_addr #1 !guid !121 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !5
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr nonnull %i.i, ptr %i.h, i64 %i.g, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr align 8 %0) unnamed_addr #1 !guid !122 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr nonnull %i.b, ptr %i.a, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr align 8 %0) unnamed_addr #1 !guid !123 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr align 8 %0) unnamed_addr #1 !guid !124 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr nonnull %i.f, ptr %i.e, i64 4, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsL_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_13SliceContains14slice_containsCs3xYsW1bxxfS_18build_script_build(ptr align 4 %0, ptr align 4 %1, i64 %2) unnamed_addr #1 !guid !125 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = and i64 %2, -16                          ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.d = and i64 %2, 15
  %.not12 = icmp eq i64 %i.b, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i64 %.sroa.3.013, -16                ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  store ptr %i.c, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = call zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsL_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs3xYsW1bxxfS_18build_script_build(ptr nonnull align 8 %i.a, ptr align 4 %0)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01114 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.3.013 = phi i64 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01114, i64 64 ; 2 uses
  %i.j = tail call zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsL_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs3xYsW1bxxfS_18build_script_build(ptr %.sroa.0.01114, ptr nonnull %i.i, i1 zeroext false, ptr align 4 %0)
  br i1 %i.j, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.h, %._crit_edge ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNvXsZ_NtCs2AWtUsOyxgP_3std7processuNtB5_11Termination6reportCs3xYsW1bxxfS_18build_script_build() unnamed_addr #2 !guid !126 {
bb.a:
  ret i8 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3xYsW1bxxfS_18build_script_build(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #6 !guid !127 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.b = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs3xYsW1bxxfS_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 !guid !128 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmtCs3xYsW1bxxfS_18build_script_build(ptr %0, ptr align 8 %1) unnamed_addr #1 !guid !129 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr align 8 %1, ptr nonnull @21, i64 13, ptr nonnull @22, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @19)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutuEp6OutputINtNtB14_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtB14_6marker4SendNtB2U_4SyncEL_EENtNtB12_4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 !guid !130 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtB4_6marker4SendNtB2R_4SyncEL_EECs3xYsW1bxxfS_18build_script_build(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecPaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #12 !guid !131 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs3xYsW1bxxfS_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !132 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCs3xYsW1bxxfS_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 !guid !133 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EENtNtNtB1T_3ops4drop4Drop4dropCs3xYsW1bxxfS_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCs3xYsW1bxxfS_18build_script_build(ptr noalias align 8 %i.c, ptr align 8 %0)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs3xYsW1bxxfS_18build_script_build.exit
  %i.e = phi ptr [ %i.d, %.lr.ph ], [ %i.l, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs3xYsW1bxxfS_18build_script_build.exit ] ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.22.0.copyload
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.22.0.copyload
  store ptr %i.i, ptr %i.a, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs3xYsW1bxxfS_18build_script_build(ptr nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECs3xYsW1bxxfS_18build_script_build(ptr nonnull align 8 %i.a) #24
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECs3xYsW1bxxfS_18build_script_build(ptr nonnull align 8 %i.a)
          to label %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs3xYsW1bxxfS_18build_script_build.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs3xYsW1bxxfS_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCs3xYsW1bxxfS_18build_script_build(ptr noalias align 8 %i.c, ptr align 8 %0)
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs3xYsW1bxxfS_18build_script_build.exit, %bb.a
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.j, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2r_ENtNtBQ_5alloc6GlobalEECs3xYsW1bxxfS_18build_script_build(ptr nonnull align 8 %i.b) #24
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern12is_prefix_ofCs3xYsW1bxxfS_18build_script_build(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsr_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCs3xYsW1bxxfS_18build_script_build(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3xYsW1bxxfS_18build_script_build(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3xYsW1bxxfS_18build_script_build(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_strCs3xYsW1bxxfS_18build_script_build(ptr, i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvXsA_NtCs4NRVxsYgnAr_4core3nummNtNtNtB7_3str6traits7FromStr8from_strCs3xYsW1bxxfS_18build_script_build(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsC_NtCs4NRVxsYgnAr_4core3numyNtNtNtB7_3str6traits7FromStr8from_strCs3xYsW1bxxfS_18build_script_build(ptr sret([16 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtCs4NRVxsYgnAr_4core3str7patternAcj1_NtB5_7Pattern13into_searcherCs3xYsW1bxxfS_18build_script_build(ptr sret([48 x i8]) align 8, i32, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtCs4NRVxsYgnAr_4core3str7patternAcj2_NtB5_7Pattern13into_searcherCs3xYsW1bxxfS_18build_script_build(ptr sret([48 x i8]) align 8, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcherCs3xYsW1bxxfS_18build_script_build(ptr sret([48 x i8]) align 8, i32, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs3xYsW1bxxfS_18build_script_build(ptr, ptr, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3xYsW1bxxfS_18build_script_build(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3new(ptr sret([200 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64, i64, ptr align 8) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionReENtB6_5Debug3fmtCs3xYsW1bxxfS_18build_script_build(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8, ptr, ptr align 8, ptr, ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs3xYsW1bxxfS_18build_script_build(ptr align 8, i64, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs3xYsW1bxxfS_18build_script_build(ptr sret([32 x i8]) align 8, ptr, i64, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr, i64, ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYFEuINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceCs3xYsW1bxxfS_18build_script_build(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replace10PanicGuardECs3xYsW1bxxfS_18build_script_build(ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvYNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_addINtNtNtBa_3ops8function5FnMutTjjEE8call_mutCs3xYsW1bxxfS_18build_script_build(ptr, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process6OutputNtNtNtB11_2io5error5ErrorEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr, i64, ptr, ptr align 8, ptr align 8) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBZ_13FromUtf8ErrorEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs3xYsW1bxxfS_18build_script_build(ptr align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjd0ZH04R2Z3_5gimli(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCskyMLgGZzWrX_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskyMLgGZzWrX_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsL_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs3xYsW1bxxfS_18build_script_build(ptr align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsL_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs3xYsW1bxxfS_18build_script_build(ptr, ptr, i1 zeroext, ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr align 8, ptr, i64, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECs3xYsW1bxxfS_18build_script_build(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtB4_6marker4SendNtB2R_4SyncEL_EECs3xYsW1bxxfS_18build_script_build(ptr align 8, i64) unnamed_addr #0

end_hunk_0
