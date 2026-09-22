Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder28evaluate_match_pattern_value:bb.a
bb.ap:                                            ; preds = %.body, %bb.f
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2v_.exit: ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = load i32, ptr %3, align 4, !range !26, !noundef !15 ; 3 uses
  %i.f = icmp ne i32 %i.e, 17
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -4
  %i.h = icmp samesign ugt i32 %i.e, 3
  %narrow = select i1 %i.h, i32 %i.g, i32 13
  switch i32 %narrow, label %bb.b [
    i32 14, label %bb.c
    i32 24, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.d, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit2, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type3len(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.i = load i32, ptr %i.c, align 4, !range !21, !noundef !15
  %.not1 = icmp eq i32 %i.i, -1
  br i1 %.not1, label %bb.n, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType10tuple_spec(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.j, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.k = load i32, ptr %i.d, align 8, !range !25, !noundef !15 ; 3 uses
  %.not = icmp eq i32 %i.k, -4
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit2, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.024.0.copyload = load i8, ptr %i.l, align 4
  switch i8 %.sroa.024.0.copyload, label %default.unreachable1.i [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit
    i8 3, label %bb.b
    i8 4, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit
    i8 5, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit
  ]

default.unreachable1.i:                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18095)
  %i.m = icmp eq i32 %i.k, -3
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18096)
  %i.n = icmp eq i32 %i.k, -2
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !18097, !noundef !15 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !18097, !nonnull !15, !noundef !15
  %i.r = shl nuw nsw i64 %.val1.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.r, i64 noundef 4) #43, !noalias !18097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18100)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !18101, !noundef !15 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !18101, !nonnull !15, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !18101, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18101
  store i64 %i.t, ptr %i.a, align 8, !noalias !18101
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.y, align 8, !noalias !18101
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.x, ptr %i.z, align 8, !noalias !18101
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i unwind label %bb.j, !noalias !18101

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i.i.i.i.i.i unwind label %bb.k, !noalias !18101

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !18101
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i.i.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !18101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18101
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i, %bb.h, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit2: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit: ; preds = %bb.d, %bb.d, %bb.d, %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.n ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ]
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.ac = call noundef i8 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types4boolNtB4_4Type4bool(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2), !noalias !18102 ; 2 uses
  %.not.i = icmp eq i8 %i.ac, 2
  br i1 %.not.i, label %_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len0Bb_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call noundef i8 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types4boolNtB4_4Type4bool(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2), !noalias !18102
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br label %_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len0Bb_.exit

_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len0Bb_.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi i1 [ %i.ae, %bb.m ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len0Bb_.exit
  %.sroa.0.1 = phi i1 [ %.sroa.0.0.i, %_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder30is_base_type_narrowable_by_len0Bb_.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType4kind.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, i32 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 4 uses
  %i.i = alloca [112 x i8], align 8               ; 16 uses
  %i.j = alloca [112 x i8], align 8               ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 6 uses
  %i.l = alloca [120 x i8], align 8               ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 2 uses
  %i.s = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %3, ptr %i.t, align 4
  store i32 %6, ptr %i.r, align 4
  %i.u = load i32, ptr %4, align 8, !range !45, !noundef !15
  %.off.i = add nsw i32 %i.u, -29
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %tailrecurse.us, label %tailrecurse

tailrecurse.us:                                   ; preds = %bb.a, %7
  %.tr66.us = phi ptr [ %9, %7 ], [ %5, %bb.a ]   ; 5 uses
  %i.v = load i8, ptr %.tr66.us, align 8, !range !44, !noundef !15
  switch i8 %i.v, label %.split88.us [
    i8 2, label %.split90.us
    i8 5, label %.split92.us
    i8 6, label %7
  ]

tailrecurse:                                      ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvMNtCs2O29vuvTAEJ_14ty_python_core5placeNtB3_9PlaceExpr13try_from_exprRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull align 8 %4)
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !range !59, !noundef !15
  %.not18 = icmp eq i8 %i.aa, -2
  br i1 %.not18, label %bb.d, label %bb.f

.split88.us:                                      ; preds = %7, %tailrecurse.us
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ad

.split90.us:                                      ; preds = %tailrecurse.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr66.us, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr66.us, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !15
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18128
  store ptr %i.ad, ptr %i.d, align 8, !alias.scope !18129, !noalias !18127
  %.sroa.4.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx42, align 8, !alias.scope !18129, !noalias !18127
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx43, align 8, !alias.scope !18129, !noalias !18127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18129, !noalias !18127
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !18129, !noalias !18127
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.r, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !18129, !noalias !18127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18130
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB2A_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4H_8find_map5checkNtB2A_22PatternNarrowingResultINtNtBc_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtB1r_5place13ScopedPlaceIdNtB2A_19NarrowingConstraintNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEQNCINvMs5_B2A_B5P_18merge_alternativesBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB6j_EEB2E_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull %i.ah), !noalias !18131
  %i.ai = load i64, ptr %i.a, align 8, !range !23, !noalias !18130, !noundef !15
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split90.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !18128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !18128
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB2A_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtB1r_5place13ScopedPlaceIdNtB2A_19NarrowingConstraintNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENCINvNtB8_10filter_map15filter_map_foldNtB2A_22PatternNarrowingResultB5k_B5k_NCINvMs5_B2A_B8R_18merge_alternativesBN_E0FB5k_B5k_EB5k_E0EB2E_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder29merge_optional_constraints_or), !noalias !18132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18128
  br label %_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB6_22PatternNarrowingResult18merge_alternativesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvMs9_B6_NtB6_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element0EEBa_.exit

bb.c:                                             ; preds = %.split90.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18130
  br label %_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB6_22PatternNarrowingResult18merge_alternativesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvMs9_B6_NtB6_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element0EEBa_.exit

_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB6_22PatternNarrowingResult18merge_alternativesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvMs9_B6_NtB6_27NarrowingConstraintsBuilder42evaluate_match_pattern_for_subject_element0EEBa_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18128
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !18127, !noalias !18132
  br label %bb.ad

.split92.us:                                      ; preds = %tailrecurse.us
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noundef !15
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !15, !noundef !15
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr66.us, i64 8
  tail call fastcc void @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder51evaluate_match_pattern_sequence_for_subject_element(ptr noalias noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 %i.ap, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, i1 noundef zeroext true, i32 noundef %6)
  br label %bb.ad

7:                                                ; preds = %tailrecurse.us
  %8 = getelementptr inbounds nuw i8, ptr %.tr66.us, i64 8
  %9 = load ptr, ptr %8, align 8, !align !18, !noundef !15 ; 2 uses
  %.not24 = icmp eq ptr %9, null
  br i1 %.not24, label %.split88.us, label %tailrecurse.us

bb.d:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ar, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ad

.body39:                                          ; preds = %bb.aa, %bb.k, %bb.e, %.thread
  %.pn22 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.k ], [ %.pn49, %.thread ], [ %i.as, %bb.e ], [ %i.bw, %bb.aa ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(40) %i.q) #41
          to label %bb.ag unwind label %bb.af

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i37, %bb.h, %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.f:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 -1, ptr %i.n, align 4, !alias.scope !18133
  %i.at = invoke noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer22infer_expression_types(ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.y, i32 noundef %2, i32 noundef %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.n)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noundef nonnull align 8 %4)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false)
  invoke fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder27positive_subject_constraint(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.l, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.au = load i64, ptr %i.l, align 8, !range !23, !noundef !15
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ae

.thread56:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i28, %bb.w, %bb.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i, %bb.v, %.noexc, %.noexc33
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.k:                                             ; preds = %_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder12expect_place.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.ax, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18134)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !18135
  store i64 1, ptr %i.i, align 8, !alias.scope !18136, !noalias !18134
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18136, !noalias !18134
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 1, ptr %.sroa.630.0..sroa_idx.i, align 8, !alias.scope !18136, !noalias !18134
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !18136, !noalias !18134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvXsZ_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_19NarrowingConstraintNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.m)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_(ptr noalias noundef align 8 dereferenceable(112) %i.i) #41
          to label %.thread unwind label %bb.af

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_19NarrowingConstraint20merge_constraint_and(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.h)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 44
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_19NarrowingConstraint24evaluate_constraint_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.j, ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.y, ptr noundef nonnull align 4 %i.az)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val = load i32, ptr %i.k, align 4, !range !26, !noundef !15 ; 3 uses
  %i.ba = icmp ne i32 %.val, 17
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nsw i32 %.val, -4
  %i.bc = icmp samesign ugt i32 %.val, 3
  %narrow.i = select i1 %i.bc, i32 %i.bb, i32 13
  switch i32 %narrow.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread60 [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.val25 = load i8, ptr %i.bd, align 4
  %spec.select.i = trunc i8 %.val25 to i1
  br i1 %spec.select.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread60

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread60: ; preds = %bb.p, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread60
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bf)
          to label %.thread unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit unwind label %.thread56

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !18137
  unreachable

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread: ; preds = %bb.p, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i28 unwind label %bb.s

bb.s:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bj)
          to label %.thread unwind label %bb.t

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i28: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit32 unwind label %.thread56

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !18138
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_EEB1h_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not19 = icmp eq i32 %6, 0
  br i1 %.not19, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit
  %i.bm = invoke noundef i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %4)
          to label %bb.x unwind label %.thread56

bb.v:                                             ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bn = load ptr, ptr %1, align 8, !noalias !18139, !nonnull !15, !noundef !15
  %i.bo = load ptr, ptr %i.x, align 8, !noalias !18139, !nonnull !15, !align !18, !noundef !15
  %i.bp = invoke fastcc { i32, i32 } @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder5scope(ptr noundef nonnull readonly align 8 %1)
          to label %.noexc unwind label %.thread56 ; 2 uses

.noexc:                                           ; preds = %bb.v
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11place_table(ptr noundef nonnull %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bo, i32 noundef %i.bq, i32 noundef %i.br)
          to label %.noexc33 unwind label %.thread56

.noexc33:                                         ; preds = %.noexc
  %i.bt = invoke { i32, i32 } @_RINvMs5_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB6_10PlaceTable8place_idRNtB6_9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %.noexc34 unwind label %.thread56 ; 2 uses

.noexc34:                                         ; preds = %.noexc33
  %i.bu = extractvalue { i32, i32 } %i.bt, 0      ; 2 uses
  %.not.i = icmp eq i32 %i.bu, 2
  br i1 %.not.i, label %bb.w, label %_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder12expect_place.exit, !prof !16

bb.w:                                             ; preds = %.noexc34
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #40
          to label %.noexc35 unwind label %.thread56

end_hunk_0
