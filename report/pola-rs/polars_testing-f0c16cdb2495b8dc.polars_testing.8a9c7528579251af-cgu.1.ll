Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_testing-f0c16cdb2495b8dc.polars_testing.8a9c7528579251af-cgu.1?download=true
inline.NumInlined: 234
inline.NumDeleted: 129
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsbTP5kh6vDpX_14polars_testing:bb.a
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.o, %i.d, !dbg !497
  br i1 %i.s, label %.body, label %.lr.ph12.i.i, !dbg !497

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !497, !noalias !491
  unreachable, !dbg !497

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.f, !dbg !504

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !505
  ret void, !dbg !494

bb.f:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !494
  unreachable, !dbg !494

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.body
  resume { ptr, i32 } %i.l, !dbg !494
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !506 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !dbg !519
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !520
  %i.b = load ptr, ptr %i.a, align 8, !dbg !520, !alias.scope !518, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !521
  %i.d = load i64, ptr %i.c, align 8, !dbg !521, !alias.scope !518, !noundef !136 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !522
  br i1 %i.e, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !522

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !522
  br i1 %i.f, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !522

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !522
  %i.h = add i64 %.sroa.0.0.i.i1, 1, !dbg !522    ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(160) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !522, !noalias !518

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !522    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !522
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !522

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !522
  br i1 %i.l, label %.body, label %.lr.ph3, !dbg !522

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [160 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2, !dbg !522
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(160) %i.m) #17
          to label %bb.c unwind label %bb.e, !dbg !522, !noalias !518

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !522, !noalias !518
  unreachable, !dbg !522

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.f, !dbg !523

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !524
  ret void, !dbg !519

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !519
  unreachable, !dbg !519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.body
  resume { ptr, i32 } %i.k, !dbg !519
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !527

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.d, !dbg !528

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !529
  ret void, !dbg !527

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !527
  unreachable, !dbg !527

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !527
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !dbg !542
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !543
  %i.b = load ptr, ptr %i.a, align 8, !dbg !543, !alias.scope !541, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !544
  %i.d = load i64, ptr %i.c, align 8, !dbg !544, !alias.scope !541, !noundef !136 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !545
  br i1 %i.e, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !545

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !545
  br i1 %i.f, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !545

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !545
  %i.h = add i64 %.sroa.0.0.i.i1, 1, !dbg !545    ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !545, !noalias !541, !inline_history !538

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !545    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !545
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !545

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !545
  br i1 %i.l, label %.body, label %.lr.ph3, !dbg !545

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2, !dbg !545
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.m) #17
          to label %bb.c unwind label %bb.e, !dbg !545, !noalias !541, !inline_history !538

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !545, !noalias !541, !inline_history !538
  unreachable, !dbg !545

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.f, !dbg !546

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !547
  ret void, !dbg !542

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !542
  unreachable, !dbg !542

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.body
  resume { ptr, i32 } %i.k, !dbg !542
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !35 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !566, !invariant.load !136 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !566
  br i1 %.not, label %bb.c, label %bb.b, !dbg !566

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !566

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !567
  %i.c = load i64, ptr %i.b, align 8, !dbg !567, !range !156, !invariant.load !136 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !568
  br i1 %i.d, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %bb.d, !dbg !568

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !567
  %i.f = load i64, ptr %i.e, align 8, !dbg !569, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #18, !dbg !570
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, !dbg !571

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !566

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !572
  %i.i = load i64, ptr %i.h, align 8, !dbg !572, !range !156, !invariant.load !136 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !573
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4, label %bb.f, !dbg !573

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !572
  %i.l = load i64, ptr %i.k, align 8, !dbg !574, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #18, !dbg !575
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4, !dbg !576

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !566
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !587, !nonnull !136, !noundef !136 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !587

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 16) #18, !dbg !588
  ret void, !dbg !587

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 16) #18, !dbg !589
  resume { ptr, i32 } %i.b, !dbg !587
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !51 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611), !dbg !616
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !617
  %.val.i = load i32, ptr %i.a, align 8, !dbg !617, !alias.scope !611, !noundef !136
  switch i32 %.val.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit
    i32 2, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit
    i32 0, label %bb.c
  ], !dbg !618, !prof !197

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !dbg !619, !noalias !611
  unreachable, !dbg !619

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !dbg !620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613), !dbg !621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614), !dbg !622
  %i.b = load ptr, ptr %0, align 8, !dbg !623, !alias.scope !615, !nonnull !136, !noundef !136
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !dbg !624, !noalias !615
  %i.d = icmp eq i64 %i.c, 1, !dbg !625
  br i1 %i.d, label %bb.d, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, !dbg !625

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !626
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #20, !dbg !627
  br label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, !dbg !627

_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  ret void, !dbg !616
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !65 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !628

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !628
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.b) #17
          to label %bb.e unwind label %bb.d, !dbg !628

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !628
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.c), !dbg !628
  ret void, !dbg !628

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !628
  unreachable, !dbg !628

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !628
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !629 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !662 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !dbg !662
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !663
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !663, !alias.scope !659, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !663
  %.val1.i = load i64, ptr %i.c, align 8, !dbg !663, !alias.scope !659, !noundef !136 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0, !dbg !664
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i.i.i, !dbg !664

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i, !dbg !664 ; 4 uses
  %i.f = add nuw i64 %.sroa.0.011.i.i.i, 1, !dbg !664 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !665 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !666, !range !219, !alias.scope !660, !noalias !659, !noundef !136
  %i.i = icmp eq i64 %i.h, -9223372036854775808, !dbg !666
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i, label %bb.b, !dbg !666

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i unwind label %bb.c, !dbg !667, !noalias !659

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #17
          to label %.body.i.i.i unwind label %bb.g, !dbg !665, !noalias !659

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !dbg !668, !range !166, !alias.scope !661, !noalias !659, !noundef !136 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2, !dbg !668
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i, label %bb.d, !dbg !668

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i
  %i.m = icmp eq i64 %i.k, 0, !dbg !669
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !669 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !669

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i unwind label %bb.i, !dbg !670, !noalias !659

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i unwind label %bb.i, !dbg !671, !noalias !659

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !665, !noalias !659
  unreachable, !dbg !665

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i
  %i.p = icmp eq i64 %i.f, %.val1.i, !dbg !664
  br i1 %i.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i.i.i, !dbg !664

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i22, 1, !dbg !664 ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i, !dbg !664
  br i1 %i.r, label %.body.i, label %.lr.ph, !dbg !664

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  %i.t = icmp eq i64 %i.f, %.val1.i, !dbg !664
  br i1 %i.t, label %.body.i, label %.lr.ph, !dbg !664

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.q, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22, !dbg !664
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(72) %i.u) #17
          to label %bb.h unwind label %bb.j, !dbg !664, !noalias !659

bb.j:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !664, !noalias !659
  unreachable, !dbg !664

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.k, !dbg !672

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !663
  unreachable, !dbg !663

end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing:bb.a
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit [
    i8 19, label %bb.b
    i8 22, label %bb.d
    i8 23, label %bb.f
    i8 26, label %bb.h
    i8 27, label %bb.j
    i8 28, label %bb.l
    i8 29, label %bb.t
  ], !dbg !960

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.af, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECsbTP5kh6vDpX_14polars_testing.exit, %bb.ab, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECsbTP5kh6vDpX_14polars_testing.exit, %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit14, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit, %bb.a
  ret void, !dbg !960

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !989
  %i.c = load i8, ptr %i.b, align 1, !dbg !989, !range !222, !alias.scope !956, !noundef !136
  %cond.i = icmp eq i8 %i.c, -40, !dbg !989
  br i1 %cond.i, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !989, !prof !957

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !990
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !990

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958), !dbg !960
  %i.f = load ptr, ptr %i.e, align 16, !dbg !991, !alias.scope !958, !nonnull !136, !noundef !136 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.e, !dbg !991, !noalias !958, !inline_history !959

common.resume.sink.split:                         ; preds = %bb.e, %bb.g, %bb.ag
  %.sink = phi ptr [ %i.bx, %bb.ag ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.by, %bb.ag ], [ %i.j, %bb.g ], [ %i.g, %bb.e ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #18, !dbg !992, !noalias !136
  br label %common.resume, !dbg !960

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.aa, %bb.z, %bb.ae, %bb.ad, %.body16
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %i.bm, %bb.ae ], [ %i.bm, %bb.ad ], [ %eh.lpad-body20, %.body16 ], [ %i.aw, %.body ], [ %i.bc, %bb.z ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !960

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !991

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.d
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 48, i64 noundef 16) #18, !dbg !993, !noalias !958
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !960

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !dbg !960
  %i.i = load ptr, ptr %i.h, align 8, !dbg !994, !alias.scope !966, !nonnull !136, !noundef !136 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit5 unwind label %bb.g, !dbg !994, !noalias !966, !inline_history !959

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !994

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit5: ; preds = %bb.f
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 48, i64 noundef 16) #18, !dbg !995, !noalias !966
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !960

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !dbg !996
  %i.l = load ptr, ptr %i.k, align 8, !dbg !997, !alias.scope !969, !nonnull !136, !noundef !136
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !dbg !998, !noalias !969
  %i.n = icmp eq i64 %i.m, 1, !dbg !999
  br i1 %i.n, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !999

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !1000
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #20
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.z, !dbg !1001

bb.j:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971), !dbg !1002
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1003, !alias.scope !972, !nonnull !136, !noundef !136
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !1004, !noalias !972
  %i.r = icmp eq i64 %i.q, 1, !dbg !1005
  br i1 %i.r, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1005

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !1006
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #20
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.ad, !dbg !1007

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973), !dbg !1008
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1009
  %i.u = load ptr, ptr %i.t, align 16, !dbg !1009, !alias.scope !973, !nonnull !136, !noundef !136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1010
  %i.w = load i64, ptr %i.v, align 8, !dbg !1010, !alias.scope !973, !noundef !136 ; 4 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !1011
  br i1 %i.x, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !1011

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i
  %i.y = icmp eq i64 %i.aa, %i.w, !dbg !1011
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !1011

.lr.ph:                                           ; preds = %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing.exit
  %.sroa.0.0.i.i36 = phi i64 [ %i.aa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing.exit ], [ 0, %bb.l ] ; 2 uses
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %.sroa.0.0.i.i36, !dbg !1011 ; 4 uses
  %i.aa = add i64 %.sroa.0.0.i.i36, 1, !dbg !1011 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 71, !dbg !1012
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !1012, !range !173, !alias.scope !974, !noalias !973, !noundef !136
  %i.ad = icmp eq i8 %i.ac, -40, !dbg !1013
  br i1 %i.ad, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1013, !prof !161

bb.m:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !1014
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.n, !dbg !1015, !noalias !973, !inline_history !880

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.m, %.lr.ph
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.q, !dbg !1014, !inline_history !880

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.z) #17
          to label %.body19 unwind label %bb.o, !dbg !1014, !noalias !973, !inline_history !880

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1014, !noalias !973, !inline_history !880
  unreachable, !dbg !1014

bb.p:                                             ; preds = %.lr.ph38
  %i.ah = add i64 %.sroa.0.1.i.i37, 1, !dbg !1011 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.w, !dbg !1011
  br i1 %i.ai, label %.body16, label %.lr.ph38, !dbg !1011

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.n, %bb.q
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.af, %bb.n ]
  %i.ak = icmp eq i64 %i.aa, %i.w, !dbg !1011
  br i1 %i.ak, label %.body16, label %.lr.ph38, !dbg !1011

.lr.ph38:                                         ; preds = %.body19, %bb.p
  %.sroa.0.1.i.i37 = phi i64 [ %i.ah, %bb.p ], [ %i.aa, %.body19 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %.sroa.0.1.i.i37, !dbg !1011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(80) %i.al) #17
          to label %bb.p unwind label %bb.r, !dbg !1011, !noalias !973, !inline_history !881

bb.r:                                             ; preds = %.lr.ph38
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1011, !noalias !973, !inline_history !881
  unreachable, !dbg !1011

.body16:                                          ; preds = %bb.p, %.body19
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.s, !dbg !1016

bb.s:                                             ; preds = %.body16
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1008, !inline_history !975
  unreachable, !dbg !1008

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing.exit, %bb.l
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s), !dbg !1017
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !960

bb.t:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !960
  %.val = load ptr, ptr %i.ao, align 8, !dbg !960 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960
  %.val2 = load ptr, ptr %i.ap, align 16, !dbg !960, !nonnull !136, !align !223, !noundef !136 ; 5 uses
  %i.aq = load ptr, ptr %.val2, align 8, !dbg !1018, !invariant.load !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null, !dbg !1018
  br i1 %.not.i.i, label %bb.v, label %bb.u, !dbg !1018

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aq(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x, !dbg !1018

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !1019
  %i.as = load i64, ptr %i.ar, align 8, !dbg !1019, !range !156, !invariant.load !136 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0, !dbg !1020
  br i1 %i.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing.exit, label %bb.w, !dbg !1020

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !1019
  %i.av = load i64, ptr %i.au, align 8, !dbg !1021, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #18, !dbg !1022
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1023

bb.x:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !1024
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !1024, !range !156, !invariant.load !136 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0, !dbg !1025
  br i1 %i.az, label %.body, label %bb.y, !dbg !1025

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !1024
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !1026, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #18, !dbg !1027
  br label %.body, !dbg !1028

bb.z:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !dbg !1029
  %i.be = load ptr, ptr %i.bd, align 16, !dbg !1030, !alias.scope !978, !nonnull !136, !noundef !136
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !dbg !1031, !noalias !978
  %i.bg = icmp eq i64 %i.bf, 1, !dbg !1032
  br i1 %i.bg, label %bb.aa, label %common.resume, !dbg !1032

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !1033
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd) #20
          to label %common.resume unwind label %bb.ac, !dbg !1034

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.h, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980), !dbg !1035
  %i.bi = load ptr, ptr %i.bh, align 16, !dbg !1036, !alias.scope !981, !nonnull !136, !noundef !136
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !dbg !1037, !noalias !981
  %i.bk = icmp eq i64 %i.bj, 1, !dbg !1038
  br i1 %i.bk, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1038

bb.ab:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECsbTP5kh6vDpX_14polars_testing.exit
  fence acquire, !dbg !1039
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #20, !dbg !1040
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1040

bb.ac:                                            ; preds = %bb.ae, %bb.aa, %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !960
  unreachable, !dbg !960

bb.ad:                                            ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !dbg !1041
  %i.bo = load ptr, ptr %i.bn, align 16, !dbg !1042, !alias.scope !984, !nonnull !136, !noundef !136
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !dbg !1043, !noalias !984
  %i.bq = icmp eq i64 %i.bp, 1, !dbg !1044
  br i1 %i.bq, label %bb.ae, label %common.resume, !dbg !1044

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !1045
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #20
          to label %common.resume unwind label %bb.ac, !dbg !1046

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.j, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985), !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986), !dbg !1047
  %i.bs = load ptr, ptr %i.br, align 16, !dbg !1048, !alias.scope !987, !nonnull !136, !noundef !136
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !dbg !1049, !noalias !987
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !1050
  br i1 %i.bu, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1050

bb.af:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECsbTP5kh6vDpX_14polars_testing.exit
  fence acquire, !dbg !1051
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br) #20, !dbg !1052
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1052

.body:                                            ; preds = %bb.x, %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !960
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(8) %i.bv) #17
          to label %common.resume unwind label %bb.ac, !dbg !960

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.w, %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988), !dbg !960
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !1053, !alias.scope !988, !nonnull !136, !noundef !136 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.bx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit14 unwind label %bb.ag, !dbg !1053, !noalias !988, !inline_history !959

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !1053

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsbTP5kh6vDpX_14polars_testing.exit14: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing.exit
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef 48, i64 noundef 16) #18, !dbg !1054, !noalias !988
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !960
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !74 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 71, !dbg !1070
  %i.b = load i8, ptr %i.a, align 1, !dbg !1070, !range !173, !alias.scope !1069, !noundef !136
  %i.c = icmp eq i8 %i.b, -40, !dbg !1071
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1071, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1072
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.c, !dbg !1073

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %0) #17
          to label %bb.e unwind label %bb.d, !dbg !1072

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.a, %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %0), !dbg !1072
  ret void, !dbg !1072

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1072
  unreachable, !dbg !1072

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !1072
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1074 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !1244, !range !224, !noundef !136
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit [
    i8 18, label %bb.b
    i8 22, label %bb.e
    i8 24, label %bb.g
    i8 25, label %bb.i
    i8 26, label %bb.k
    i8 28, label %bb.m
    i8 30, label %bb.s
    i8 31, label %bb.ae
    i8 33, label %bb.ag
  ], !dbg !1244

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.af, %bb.ae, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECsbTP5kh6vDpX_14polars_testing.exit, %bb.a
  ret void, !dbg !1244

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1244 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224), !dbg !1244
  %i.c = load ptr, ptr %i.b, align 16, !dbg !1245, !alias.scope !1224, !noundef !136 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !1245
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, label %bb.c, !dbg !1245

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !1246, !noalias !1225
  %i.f = icmp eq i64 %i.e, 1, !dbg !1247
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1247

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !1248
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #20, !dbg !1249
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1249

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226), !dbg !1244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227), !dbg !1250
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1251, !alias.scope !1228, !nonnull !136, !noundef !136
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !1252, !noalias !1228
  %i.j = icmp eq i64 %i.i, 1, !dbg !1253
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1253

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !1254
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #20, !dbg !1255
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1255

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229), !dbg !1244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230), !dbg !1256
  %i.l = load ptr, ptr %i.k, align 8, !dbg !1257, !alias.scope !1231, !nonnull !136, !noundef !136
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !dbg !1258, !noalias !1231
  %i.n = icmp eq i64 %i.m, 1, !dbg !1259
  br i1 %i.n, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1259

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !1260
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #20, !dbg !1261
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1261

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232), !dbg !1244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233), !dbg !1262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234), !dbg !1263
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1264, !alias.scope !1235, !nonnull !136, !noundef !136
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !1265, !noalias !1235
  %i.r = icmp eq i64 %i.q, 1, !dbg !1266
  br i1 %i.r, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1266

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !1267
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #20, !dbg !1268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1268

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1244 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236), !dbg !1244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237), !dbg !1269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238), !dbg !1270
  %i.t = load ptr, ptr %i.s, align 16, !dbg !1271, !alias.scope !1239, !nonnull !136, !noundef !136
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !dbg !1272, !noalias !1239
  %i.v = icmp eq i64 %i.u, 1, !dbg !1273
  br i1 %i.v, label %bb.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1273

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !1274
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #20, !dbg !1275
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1275

bb.m:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244
  %.val = load ptr, ptr %i.w, align 8, !dbg !1244 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1244
  %.val1 = load ptr, ptr %i.x, align 16, !dbg !1244, !nonnull !136, !align !223, !noundef !136 ; 5 uses
  %i.y = load ptr, ptr %.val1, align 8, !dbg !1276, !invariant.load !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null, !dbg !1276
  br i1 %.not.i.i, label %bb.o, label %bb.n, !dbg !1276

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.q, !dbg !1276

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !1277
  %i.aa = load i64, ptr %i.z, align 8, !dbg !1277, !range !156, !invariant.load !136 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !1278
  br i1 %i.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, label %bb.p, !dbg !1278

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !1277
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !1279, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #18, !dbg !1280
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1281

bb.q:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !1282
  %i.ag = load i64, ptr %i.af, align 8, !dbg !1282, !range !156, !invariant.load !136 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !1283
  br i1 %i.ah, label %common.resume, label %bb.r, !dbg !1283

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !1282
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !1284, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #18, !dbg !1285
  br label %common.resume, !dbg !1286

common.resume:                                    ; preds = %bb.q, %bb.r, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.ad ], [ %i.ae, %bb.r ], [ %i.ae, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !1244

bb.s:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240), !dbg !1244
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !1287, !alias.scope !1240, !nonnull !136, !noundef !136 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241), !dbg !1288
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !1289
  %i.an = load ptr, ptr %i.am, align 8, !dbg !1289, !alias.scope !1241, !noalias !1240, !nonnull !136, !noundef !136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !1290
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !1290, !alias.scope !1241, !noalias !1240, !noundef !136 ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !1291
  br i1 %i.aq, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !1291

bb.t:                                             ; preds = %.lr.ph
  %i.ar = icmp eq i64 %i.at, %i.ap, !dbg !1291
  br i1 %i.ar, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !1291

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.0.0.i.i11 = phi i64 [ %i.at, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.sroa.0.0.i.i11, !dbg !1291
  %i.at = add i64 %.sroa.0.0.i.i11, 1, !dbg !1291 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.as)
          to label %bb.t unwind label %bb.v, !dbg !1291, !noalias !1242, !inline_history !1186

bb.u:                                             ; preds = %.lr.ph13
  %i.au = add i64 %.sroa.0.1.i.i12, 1, !dbg !1291 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.ap, !dbg !1291
  br i1 %i.av, label %.body5, label %.lr.ph13, !dbg !1291

bb.v:                                             ; preds = %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = icmp eq i64 %i.at, %i.ap, !dbg !1291
  br i1 %i.ax, label %.body5, label %.lr.ph13, !dbg !1291

.lr.ph13:                                         ; preds = %bb.v, %bb.u
  %.sroa.0.1.i.i12 = phi i64 [ %i.au, %bb.u ], [ %i.at, %bb.v ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.sroa.0.1.i.i12, !dbg !1291
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.ay) #17
          to label %bb.u unwind label %bb.w, !dbg !1291, !noalias !1242, !inline_history !1186

bb.w:                                             ; preds = %.lr.ph13
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1291, !noalias !1242, !inline_history !1186
  unreachable, !dbg !1291

.body5:                                           ; preds = %bb.u, %bb.v
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %.body.i unwind label %bb.x, !dbg !1292

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.t, %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.y, !dbg !1293

bb.x:                                             ; preds = %.body5
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1288, !noalias !1240, !inline_history !1189
  unreachable, !dbg !1288

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !1294 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.z, !dbg !1295, !noalias !1240, !inline_history !1190

bb.y:                                             ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !1294

.body.i:                                          ; preds = %.body5, %bb.y
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bc, %bb.y ], [ %i.aw, %.body5 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !1294
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #17
          to label %bb.ad unwind label %bb.ab, !dbg !1294, !noalias !1240, !inline_history !1192

bb.z:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.ad unwind label %bb.aa, !dbg !1296, !noalias !1240, !inline_history !1190

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1295, !noalias !1240, !inline_history !1190
  unreachable, !dbg !1295

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.ac, !dbg !1297, !inline_history !1192

bb.ab:                                            ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1294, !noalias !1240, !inline_history !1192
  unreachable, !dbg !1294

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad, !dbg !1287

bb.ad:                                            ; preds = %bb.ac, %bb.z, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.ac ], [ %i.be, %bb.z ], [ %eh.lpad-body.i, %.body.i ]
  %.val1.i = load ptr, ptr %i.ak, align 8, !dbg !1287, !alias.scope !1240, !nonnull !136, !noundef !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 48, i64 noundef 8) #18, !dbg !1298, !noalias !1240
  br label %common.resume, !dbg !1287

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i
  %.val.i = load ptr, ptr %i.ak, align 8, !dbg !1287, !alias.scope !1240, !nonnull !136, !noundef !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 48, i64 noundef 8) #18, !dbg !1299, !noalias !1240
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1244

bb.ae:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !1300
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !1300, !range !173, !alias.scope !1243, !noundef !136
  %i.bk = icmp eq i8 %i.bj, -40, !dbg !1301
  br i1 %i.bk, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1301, !prof !161

bb.af:                                            ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl), !dbg !1302
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1302

bb.ag:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1244
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm), !dbg !1303
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1244
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !76 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !1323, !invariant.load !136 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null, !dbg !1323
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !1323

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !1323

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1324
  %i.c = load i64, ptr %i.b, align 8, !dbg !1324, !range !156, !invariant.load !136 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !1325
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit, label %bb.d, !dbg !1325

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1324
  %i.f = load i64, ptr %i.e, align 8, !dbg !1326, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #18, !dbg !1327
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1328

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1329
  %i.i = load i64, ptr %i.h, align 8, !dbg !1329, !range !156, !invariant.load !136 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !1330
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i, label %bb.f, !dbg !1330

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1329
  %i.l = load i64, ptr %i.k, align 8, !dbg !1331, !range !184, !invariant.load !136
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #18, !dbg !1332
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i, !dbg !1333

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !1323

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !1334
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 115292150460684698) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1335 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1428
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80), !dbg !1428
  %i.g = load i64, ptr %i.d, align 8, !dbg !1428, !range !230, !noundef !136
  %i.h = trunc nuw i64 %i.g to i1, !dbg !1429
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1430
  %i.j = load i64, ptr %i.i, align 8, !dbg !1430, !range !219, !noundef !136 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1430 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit, !dbg !1429, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !1431
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21, !dbg !1432
  unreachable, !dbg !1432

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !1433, !nonnull !136, !noundef !136 ; 2 uses
  %i.n = icmp ule i64 %2, %i.j, !dbg !1434
  tail call void @llvm.assume(i1 %i.n), !dbg !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1436
  store i64 %i.j, ptr %i.f, align 8, !dbg !1437
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1437
  store ptr %i.m, ptr %i.o, align 8, !dbg !1437
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1437 ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %2, !dbg !1438
  %i.r = icmp eq i64 %i.j, 0, !dbg !1439
  br i1 %i.r, label %.thread, label %.lr.ph, !dbg !1439

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.c, !dbg !1439

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.013.026 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.j ] ; 5 uses
  %.sroa.7.025 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.10.024 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %bb.j ]
  %i.t = add i64 %.sroa.10.024, -1, !dbg !1440    ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.026, %i.q, !dbg !1441
  br i1 %i.u, label %.thread, label %bb.d, !dbg !1442

.thread:                                          ; preds = %bb.j, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit
  store i64 %2, ptr %i.p, align 8, !dbg !1443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1445
  ret void, !dbg !1446

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 80, !dbg !1447
  %i.w = add nuw nsw i64 %.sroa.7.025, 1, !dbg !1448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415), !dbg !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1451, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1452, !noalias !1416
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 48, !dbg !1452 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 71, !dbg !1453
  %i.z = load i8, ptr %i.y, align 1, !dbg !1453, !range !173, !alias.scope !1415, !noundef !136
  %i.aa = icmp eq i8 %i.z, -40, !dbg !1454
  br i1 %i.aa, label %bb.e, label %bb.f, !dbg !1454

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #20
          to label %.noexc unwind label %.loopexit, !dbg !1455, !inline_history !1380

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !1456, !noalias !1420
  br label %.noexc, !dbg !1457

.noexc:                                           ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1458, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1459, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1460, !noalias !1416
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.013.026)
          to label %bb.j unwind label %bb.g, !dbg !1460, !noalias !1420, !inline_history !1380

bb.g:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !1461
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !1461, !range !173, !alias.scope !1421, !noalias !1420, !noundef !136
  %i.ae = icmp eq i8 %i.ad, -40, !dbg !1462
  br i1 %i.ae, label %bb.h, label %bb.l, !dbg !1462, !prof !161

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.l unwind label %bb.i, !dbg !1463

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1464, !noalias !1420, !inline_history !1380
  unreachable, !dbg !1464

bb.j:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1464, !noalias !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !1464, !noalias !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1465, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1465, !noalias !1416
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.7.025, !dbg !1466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ag, ptr noundef nonnull align 16 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !1467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1468
  %i.ah = icmp eq i64 %i.t, 0, !dbg !1439
  br i1 %i.ah, label %.thread, label %bb.c, !dbg !1439

bb.k:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1469
  unreachable, !dbg !1469

bb.l:                                             ; preds = %.loopexit, %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.025, ptr %i.p, align 8, !dbg !1470
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.f) #17
          to label %bb.m unwind label %bb.k, !dbg !1445

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %eh.lpad-body, !dbg !1469
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2y_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtB12_10projectionNtB51_23AmortizedColumnSelector15select_multipleB45_IBP_B45_EE0EINtNtB2C_6result6ResultNtNtB2C_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterCsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1471 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  %i.c = alloca [160 x i8], align 16              ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [160 x i8], align 16              ; 4 uses
  %i.h = alloca [160 x i8], align 16              ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568), !dbg !1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1586, !noalias !1569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1587, !noalias !1569
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2X_23AmortizedColumnSelector15select_multipleB21_INtB1i_3VecB21_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.c unwind label %bb.b, !dbg !1588, !noalias !1568

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.h, align 16, !dbg !1587, !range !1571, !noalias !1569, !noundef !136
  %.not.i = icmp eq i8 %i.k, 32, !dbg !1587
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !1589

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1590, !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.h, i64 160, i1 false), !dbg !1590, !noalias !1569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1591, !noalias !1569
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2X_23AmortizedColumnSelector15select_multipleB21_INtB1i_3VecB21_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.g unwind label %bb.f, !dbg !1592, !noalias !1568

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !1593, !alias.scope !1568
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1593
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !dbg !1593, !alias.scope !1568
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1593
  store i64 0, ptr %i.m, align 8, !dbg !1593, !alias.scope !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1594, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1595, !noalias !1569
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !1596, !noalias !1568
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtB15_10projectionNtB4T_23AmortizedColumnSelector15select_multipleB3X_IBS_B3X_EE0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterCsbTP5kh6vDpX_14polars_testing.exit, !dbg !1595

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(160) %i.g) #17
          to label %bb.v unwind label %bb.u, !dbg !1597, !noalias !1568

bb.g:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.f, align 8, !dbg !1598, !noalias !1569, !noundef !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1599, !noalias !1569
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1), !dbg !1600
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.p, i64 4), !dbg !1601 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1602, !noalias !1569
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160)
          to label %.noexc.i unwind label %bb.f, !dbg !1602, !noalias !1568

.noexc.i:                                         ; preds = %bb.g
  %i.q = load i64, ptr %i.d, align 8, !dbg !1602, !range !230, !noalias !1569, !noundef !136
  %i.r = trunc nuw i64 %i.q to i1, !dbg !1603
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1604
  %i.t = load i64, ptr %i.s, align 8, !dbg !1604, !range !219, !noalias !1569, !noundef !136 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1604 ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i, !dbg !1603, !prof !161

bb.h:                                             ; preds = %.noexc.i
  %i.v = load i64, ptr %i.u, align 8, !dbg !1605, !noalias !1569
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #21
          to label %.noexc5.i unwind label %bb.f, !dbg !1606, !noalias !1568

.noexc5.i:                                        ; preds = %bb.h
  unreachable, !dbg !1606

bb.i:                                             ; preds = %.noexc.i
  %i.w = load ptr, ptr %i.u, align 8, !dbg !1607, !noalias !1569, !nonnull !136, !noundef !136 ; 2 uses
  %i.x = icmp ule i64 %.sroa.0.0.i.i, %i.t, !dbg !1608
  tail call void @llvm.assume(i1 %i.x), !dbg !1609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1610, !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.w, ptr noundef nonnull align 16 dereferenceable(160) %i.h, i64 160, i1 false), !dbg !1611, !noalias !1568
  store i64 %i.t, ptr %i.i, align 8, !dbg !1612, !noalias !1569
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1612 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !1612, !noalias !1569
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1612 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1612, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1597, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1594, !noalias !1569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1613, !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !1613, !noalias !1568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578), !dbg !1614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579), !dbg !1615
  br label %bb.j, !dbg !1616

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCsbTP5kh6vDpX_14polars_testing.exit.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1617, !noalias !1581
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2X_23AmortizedColumnSelector15select_multipleB21_INtB1i_3VecB21_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.m unwind label %bb.l, !dbg !1618, !noalias !1568

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.y, %bb.l ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.body.i unwind label %bb.s, !dbg !1619, !noalias !1568

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.z = load i8, ptr %i.c, align 16, !dbg !1617, !range !1571, !noalias !1581, !noundef !136
  %.not.i.i.i = icmp eq i8 %i.z, 32, !dbg !1617
  br i1 %.not.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE16extend_desugaredINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB1T_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBK_10projectionNtB4m_23AmortizedColumnSelector15select_multipleB3q_IBx_B3q_EE0EINtNtB1X_6result6ResultNtNtB1X_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i.i, label %bb.n, !dbg !1620

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1621, !noalias !1581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, ptr noundef nonnull align 16 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !1621, !noalias !1581
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1622, !alias.scope !1582, !noalias !1569, !noundef !136 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 57646075230342349, !dbg !1623
  call void @llvm.assume(i1 %i.ab), !dbg !1624
  %i.ac = load i64, ptr %i.i, align 8, !dbg !1625, !range !156, !alias.scope !1582, !noalias !1569, !noundef !136
  %i.ad = icmp eq i64 %i.aa, %i.ac, !dbg !1626
  br i1 %i.ad, label %bb.o, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCsbTP5kh6vDpX_14polars_testing.exit.i.i.i, !dbg !1626

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1627, !noalias !1581
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2X_23AmortizedColumnSelector15select_multipleB21_INtB1i_3VecB21_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.q unwind label %bb.p, !dbg !1628, !noalias !1568

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCsbTP5kh6vDpX_14polars_testing.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.n
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !1629, !alias.scope !1582, !noalias !1569, !nonnull !136, !noundef !136
  %i.af = getelementptr inbounds nuw [160 x i8], ptr %i.ae, i64 %i.aa, !dbg !1630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.af, ptr noundef nonnull align 16 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !1631, !noalias !1568
  %i.ag = add nuw nsw i64 %i.aa, 1, !dbg !1632
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1633, !alias.scope !1582, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1634, !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1634, !noalias !1581
  br label %bb.j, !dbg !1616

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(160) %i.b) #17
          to label %bb.k unwind label %bb.s, !dbg !1634, !noalias !1568

bb.q:                                             ; preds = %bb.o
  %i.ai = load i64, ptr %i.a, align 8, !dbg !1635, !noalias !1581, !noundef !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1636, !noalias !1581
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1), !dbg !1637 ; 2 uses
  %i.ak = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1638, !alias.scope !1583, !noalias !1569, !noundef !136 ; 2 uses
  %i.al = load i64, ptr %i.i, align 8, !dbg !1639, !range !156, !alias.scope !1583, !noalias !1569, !noundef !136
  %i.am = sub i64 %i.al, %i.ak, !dbg !1640
  %i.an = icmp ugt i64 %i.aj, %i.am, !dbg !1641
  br i1 %i.an, label %bb.r, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCsbTP5kh6vDpX_14polars_testing.exit.i.i.i, !dbg !1642, !prof !161

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 16, i64 noundef 160)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCsbTP5kh6vDpX_14polars_testing.exit.i.i.i unwind label %bb.p, !dbg !1643, !noalias !1568

bb.s:                                             ; preds = %bb.p, %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1644, !noalias !1568
  unreachable, !dbg !1644

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE16extend_desugaredINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB1T_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBK_10projectionNtB4m_23AmortizedColumnSelector15select_multipleB3q_IBx_B3q_EE0EINtNtB1X_6result6ResultNtNtB1X_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1634, !noalias !1581
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB27_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBV_10projectionNtB4A_23AmortizedColumnSelector15select_multipleB3E_IBI_B3E_EE0EINtNtB2b_6result6ResultNtNtB2b_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendCsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.t, !dbg !1645, !noalias !1568

bb.t:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE16extend_desugaredINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB1T_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBK_10projectionNtB4m_23AmortizedColumnSelector15select_multipleB3q_IBx_B3q_EE0EINtNtB1X_6result6ResultNtNtB1X_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !1595

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.i) #17
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB3i_23AmortizedColumnSelector15select_multipleB2m_INtB1D_3VecB2m_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.u, !dbg !1595, !noalias !1568

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB27_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBV_10projectionNtB4A_23AmortizedColumnSelector15select_multipleB3E_IBI_B3E_EE0EINtNtB2b_6result6ResultNtNtB2b_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendCsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE16extend_desugaredINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB1T_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBK_10projectionNtB4m_23AmortizedColumnSelector15select_multipleB3q_IBx_B3q_EE0EINtNtB1X_6result6ResultNtNtB1X_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1646, !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !1647, !noalias !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1595, !noalias !1569
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtB15_10projectionNtB4T_23AmortizedColumnSelector15select_multipleB3X_IBS_B3X_EE0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterCsbTP5kh6vDpX_14polars_testing.exit, !dbg !1595

bb.u:                                             ; preds = %bb.v, %.body.i, %bb.f
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1648, !noalias !1568
  unreachable, !dbg !1648

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB3i_23AmortizedColumnSelector15select_multipleB2m_INtB1D_3VecB2m_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.v, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn10.i, !dbg !1648

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.n, %bb.f ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB3i_23AmortizedColumnSelector15select_multipleB2m_INtB1D_3VecB2m_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.u, !dbg !1649, !noalias !1568

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtB15_10projectionNtB4T_23AmortizedColumnSelector15select_multipleB3X_IBS_B3X_EE0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.e, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB27_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtBV_10projectionNtB4A_23AmortizedColumnSelector15select_multipleB3E_IBI_B3E_EE0EINtNtB2b_6result6ResultNtNtB2b_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendCsbTP5kh6vDpX_14polars_testing.exit.i
  ret void, !dbg !1650
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterB13_ENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0EE9from_iterB3T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1651 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1696
  %i.d = ptrtoint ptr %2 to i64, !dbg !1697
  %i.e = ptrtoint ptr %1 to i64, !dbg !1697
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !1697
  %i.g = udiv exact i64 %i.f, 80, !dbg !1697      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1698
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80), !dbg !1698
  %i.h = load i64, ptr %i.b, align 8, !dbg !1698, !range !230, !noundef !136
  %i.i = trunc nuw i64 %i.h to i1, !dbg !1699
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1700
  %i.k = load i64, ptr %i.j, align 8, !dbg !1700, !range !219, !noundef !136 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1700 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0EEB3h_.exit.i, !dbg !1699, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !1701
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !1702
  unreachable, !dbg !1702

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0EEB3h_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !1703, !nonnull !136, !noundef !136 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !1704
  tail call void @llvm.assume(i1 %i.o), !dbg !1705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1706
  store i64 %i.k, ptr %i.c, align 8, !dbg !1707
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1707
  store ptr %i.n, ptr %i.p, align 8, !dbg !1707
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1707 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !1707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1708, !noalias !1694
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1708
  store ptr %i.n, ptr %i.r, align 8, !dbg !1708, !noalias !1694
  store ptr %i.q, ptr %i.a, align 8, !dbg !1708, !noalias !1694
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1708
  store i64 0, ptr %i.s, align 8, !dbg !1708, !noalias !1694
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Y_3VecB1n_E14extend_trustedBN_E0E0EB2p_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !1709

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0EEB3h_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.f unwind label %bb.e, !dbg !1710

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvNtNtCsbTP5kh6vDpX_14polars_testing7asserts5utils33categorical_dtype_to_string_dtype0EEB3h_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1711, !noalias !1694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1710
  ret void, !dbg !1713

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1714
  unreachable, !dbg !1714

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !1714
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1715 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1792
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1793
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1793, !nonnull !136, !noundef !136 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !dbg !1794, !noundef !136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1795, !noalias !1787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1796, !noalias !1787
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !1796, !noalias !1787
  %i.g = load i64, ptr %i.a, align 8, !dbg !1796, !range !230, !noalias !1787, !noundef !136
  %i.h = trunc nuw i64 %i.g to i1, !dbg !1797
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1798
  %i.j = load i64, ptr %i.i, align 8, !dbg !1798, !range !219, !noalias !1787, !noundef !136 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1798 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1797, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !1799, !noalias !1787
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21, !dbg !1800, !noalias !1787
  unreachable, !dbg !1800

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !1801, !noalias !1787, !nonnull !136, !noundef !136 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !1802
  tail call void @llvm.assume(i1 %i.n), !dbg !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1804, !noalias !1787
  store i64 %i.j, ptr %i.b, align 8, !dbg !1805, !noalias !1787
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1805
  store ptr %i.m, ptr %i.o, align 8, !dbg !1805, !noalias !1787
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1805 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f, !dbg !1806
  %i.r = icmp eq i64 %i.j, 0, !dbg !1807
  br i1 %i.r, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1807

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.s, %bb.d ], [ %i.j, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ]
  %i.s = add i64 %.sroa.10.021.i, -1, !dbg !1808  ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.023.i, %i.q, !dbg !1809
  br i1 %i.t, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %bb.c, !dbg !1810

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !1811, !noalias !1790 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !1812
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16, !dbg !1813
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.022.i, !dbg !1814 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.u, 0, !dbg !1815 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !dbg !1816
  %i.z = extractvalue { ptr, ptr } %i.u, 1, !dbg !1815 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ], !dbg !1816
  store ptr %i.y, ptr %i.x, align 8, !dbg !1817, !noalias !1790
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !1817
  store ptr %i.z, ptr %i.aa, align 8, !dbg !1817, !noalias !1790
  %i.ab = icmp eq i64 %i.s, 0, !dbg !1807
  br i1 %i.ab, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1807

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1818, !noalias !1790
  unreachable, !dbg !1818

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.p, align 8, !dbg !1819, !noalias !1787
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.g unwind label %bb.e, !dbg !1820, !noalias !1790

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !1818

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !1821, !noalias !1787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1822, !noalias !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1820, !noalias !1787
  ret void, !dbg !1823
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1824 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1916
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1917
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1917, !nonnull !136, !noundef !136 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !dbg !1918, !noundef !136 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909), !dbg !1919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1920, !noalias !1911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1921, !noalias !1911
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !1921, !noalias !1911
  %i.i = load i64, ptr %i.b, align 8, !dbg !1921, !range !230, !noalias !1911, !noundef !136
  %i.j = trunc nuw i64 %i.i to i1, !dbg !1922
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1923
  %i.l = load i64, ptr %i.k, align 8, !dbg !1923, !range !219, !noalias !1911, !noundef !136 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1923 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1922, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !1924, !noalias !1911
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !1925, !noalias !1911
  unreachable, !dbg !1925

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !1926, !noalias !1911, !nonnull !136, !noundef !136 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !1927
  tail call void @llvm.assume(i1 %i.p), !dbg !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1929, !noalias !1911
  store i64 %i.l, ptr %i.d, align 8, !dbg !1930, !noalias !1911
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1930
  store ptr %i.o, ptr %i.q, align 8, !dbg !1930, !noalias !1911
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1930 ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h, !dbg !1931
  %i.t = icmp eq i64 %i.l, 0, !dbg !1932
  br i1 %i.t, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1932

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i, %bb.f
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.f ], [ %i.g, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ] ; 5 uses
  %.sroa.7.022.i = phi i64 [ %i.x, %bb.f ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.u, %bb.f ], [ %i.l, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i ]
  %i.u = add i64 %.sroa.10.021.i, -1, !dbg !1933  ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.s, !dbg !1934
  br i1 %i.v, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %bb.c, !dbg !1935

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24, !dbg !1936
  %i.x = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !1937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1938, !noalias !1911
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 23, !dbg !1938
  %i.z = load i8, ptr %i.y, align 1, !dbg !1938, !range !173, !alias.scope !1913, !noundef !136
  %i.aa = icmp eq i8 %i.z, -40, !dbg !1939
  br i1 %i.aa, label %bb.d, label %bb.e, !dbg !1939

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i) #20
          to label %bb.f unwind label %bb.h, !dbg !1940, !noalias !1914

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.012.023.i, i64 24, i1 false), !dbg !1941, !noalias !1915
  br label %bb.f, !dbg !1942

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1944, !noalias !1911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1945, !noalias !1911
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.7.022.i, !dbg !1946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1947, !noalias !1914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1948
  %i.ac = icmp eq i64 %i.u, 0, !dbg !1932
  br i1 %i.ac, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1932

bb.g:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !1949, !noalias !1914
  unreachable, !dbg !1949

bb.h:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.r, align 8, !dbg !1950, !noalias !1911
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.i unwind label %bb.g, !dbg !1951, !noalias !1914

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !1949

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i
  store i64 %i.h, ptr %i.r, align 8, !dbg !1952, !noalias !1911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !1953, !noalias !1909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1951, !noalias !1911
  ret void, !dbg !1954
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1955 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [96 x i8], align 16               ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.7.i = alloca [96 x i8], align 8 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.515.i = alloca [7 x i8], align 1         ; 4 uses
  %.sroa.719.i = alloca [96 x i8], align 8        ; 4 uses
  %.sroa.8.i = alloca [24 x i8], align 16         ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2214
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2215
  %i.m = load ptr, ptr %i.l, align 8, !dbg !2215, !nonnull !136, !noundef !136 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !dbg !2216, !noundef !136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !2217, !noalias !2179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !2218, !noalias !2179
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 0, 57646075230342349) %i.n, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160), !dbg !2218, !noalias !2179
  %i.o = load i64, ptr %i.i, align 8, !dbg !2218, !range !230, !noalias !2179, !noundef !136
  %i.p = trunc nuw i64 %i.o to i1, !dbg !2219
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !2220
  %i.r = load i64, ptr %i.q, align 8, !dbg !2220, !range !219, !noalias !2179, !noundef !136 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !2220 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !2219, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8, !dbg !2221, !noalias !2179
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #21, !dbg !2222, !noalias !2179
  unreachable, !dbg !2222

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !dbg !2223, !noalias !2179, !nonnull !136, !noundef !136 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r, !dbg !2224
  tail call void @llvm.assume(i1 %i.v), !dbg !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2226, !noalias !2179
  store i64 %i.r, ptr %i.j, align 8, !dbg !2227, !noalias !2179
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !2227
  store ptr %i.u, ptr %i.w, align 8, !dbg !2227, !noalias !2179
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !2227 ; 3 uses
  store i64 0, ptr %i.x, align 8, !dbg !2227, !noalias !2179
  %i.y = getelementptr inbounds nuw [160 x i8], ptr %i.m, i64 %i.n, !dbg !2228
  %i.z = icmp eq i64 %i.r, 0, !dbg !2229
  br i1 %i.z, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !2229

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.0.i.sroa.7.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.7.i, i64 72
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.c, !dbg !2229

bb.c:                                             ; preds = %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.012.068.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.af, %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ] ; 12 uses
  %.sroa.7.066.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.065.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.ad, %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ]
  %i.ad = add i64 %.sroa.10.065.i, -1, !dbg !2230 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.012.068.i, %i.y, !dbg !2231
  br i1 %i.ae, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing.exit, label %bb.d, !dbg !2232

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

end_hunk_1
begin_hunk_2_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582), !dbg !2641
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing(), !dbg !2642, !noalias !2582, !inline_history !2497 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !2643, !alias.scope !2582, !nonnull !136, !noundef !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2644, !noalias !2583
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #22
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.y, !dbg !2645, !inline_history !2507

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #18, !dbg !2646, !noalias !136
  br label %common.resume, !dbg !2584

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !2584

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2647

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !2648, !noalias !2583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2649, !noalias !2583
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2650
  %i.p = load i64, ptr %i.o, align 8, !dbg !2650, !noundef !136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2651
  store ptr %i.l, ptr %i.q, align 16, !dbg !2651
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2651
  store i64 %i.p, ptr %i.r, align 8, !dbg !2651
  store i8 22, ptr %0, align 16, !dbg !2651
  br label %bb.aj, !dbg !2635

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591), !dbg !2653
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing(), !dbg !2654, !noalias !2591, !inline_history !2497 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !2655, !alias.scope !2591, !nonnull !136, !noundef !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2656, !noalias !2592
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #22
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17 unwind label %bb.aa, !dbg !2657, !inline_history !2507

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2658

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !2659, !noalias !2592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2660, !noalias !2592
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2661
  store ptr %i.t, ptr %i.w, align 8, !dbg !2661
  store i8 23, ptr %0, align 16, !dbg !2661
  br label %bb.aj, !dbg !2635

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2662
  br label %bb.aj, !dbg !2635

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !2633
  br label %bb.aj, !dbg !2633

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2663
  %i.y = load ptr, ptr %i.x, align 8, !dbg !2663, !nonnull !136, !noundef !136 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !2664
  %i.aa = icmp slt i64 %i.z, 0, !dbg !2665
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !2665

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2666
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !2666, !nonnull !136, !noundef !136 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !2667
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !2668
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !2668

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2669
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2670
  %i.ah = load ptr, ptr %i.ag, align 16, !dbg !2670, !alias.scope !2606, !nonnull !136, !noundef !136
  %i.ai = load i64, ptr %i.af, align 8, !dbg !2671, !alias.scope !2606, !noundef !136
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2672
  tail call fastcc void @_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ah, i64 noundef %i.ai) #22, !dbg !2673
  store i8 28, ptr %0, align 16, !dbg !2672
  br label %bb.aj, !dbg !2635

bb.ag:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2674
  %i.al = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak), !dbg !2675 ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !2675 ; 3 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !2675 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607), !dbg !2676
  %i.ao = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing()
          to label %.noexc unwind label %bb.aw, !dbg !2677, !inline_history !2497 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2678
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !2679, !alias.scope !2607, !nonnull !136, !noundef !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2680, !noalias !2608
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.aq) #22
          to label %bb.ax unwind label %bb.ah, !dbg !2681, !inline_history !2507

bb.ah:                                            ; preds = %.noexc
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 48, i64 noundef 16) #18, !dbg !2682, !noalias !2607
  br label %.body, !dbg !2683

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2684
  br label %bb.aj, !dbg !2635

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !2685

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ %i.j, %bb.u ], !dbg !2686
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2687
  store i8 %i.g, ptr %i.as, align 1, !dbg !2687
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.at, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !2687
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !2687
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !2687
  store i8 19, ptr %0, align 16, !dbg !2687
  br label %bb.aj, !dbg !2635

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #20, !dbg !2688
  br label %bb.an, !dbg !2688

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !2689
  br label %bb.an, !dbg !2690

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !2691
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !2691
  br label %bb.ak, !dbg !2692

bb.ao:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2693
  %i.av = load ptr, ptr %i.au, align 16, !dbg !2693, !nonnull !136, !noundef !136 ; 2 uses
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !2694
  %i.ax = icmp slt i64 %i.aw, 0, !dbg !2695
  br i1 %i.ax, label %bb.ar, label %bb.aq, !dbg !2695

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !2696
  unreachable, !dbg !2696

bb.aq:                                            ; preds = %bb.ao
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2697
  store ptr %i.y, ptr %i.ay, align 8, !dbg !2697
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2697
  store ptr %i.av, ptr %i.az, align 16, !dbg !2697
  store i8 26, ptr %0, align 16, !dbg !2697
  br label %bb.aj, !dbg !2635

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !2698
  unreachable, !dbg !2698

bb.as:                                            ; preds = %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2699
  %i.bb = load ptr, ptr %i.ba, align 16, !dbg !2699, !nonnull !136, !noundef !136 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !dbg !2700
  %i.bd = icmp slt i64 %i.bc, 0, !dbg !2701
  br i1 %i.bd, label %bb.av, label %bb.au, !dbg !2701

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !2702
  unreachable, !dbg !2702

bb.au:                                            ; preds = %bb.as
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2703
  store ptr %i.ac, ptr %i.be, align 8, !dbg !2703
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2703
  store ptr %i.bb, ptr %i.bf, align 16, !dbg !2703
  store i8 27, ptr %0, align 16, !dbg !2703
  br label %bb.aj, !dbg !2635

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !2704
  unreachable, !dbg !2704

bb.aw:                                            ; preds = %bb.ag
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !2705

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.aw ], [ %i.ar, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing(ptr %i.am, ptr nonnull %i.an) #17
          to label %common.resume unwind label %bb.ay, !dbg !2705

bb.ax:                                            ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am), "nonnull"(ptr %i.an) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ao, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !2706, !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2707, !noalias !2608
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2708
  store ptr %i.am, ptr %i.bh, align 8, !dbg !2708
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2708
  store ptr %i.an, ptr %i.bi, align 16, !dbg !2708
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2708
  store ptr %i.ao, ptr %i.bj, align 8, !dbg !2708
  store i8 29, ptr %0, align 16, !dbg !2708
  br label %bb.aj, !dbg !2635

bb.ay:                                            ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !2633
  unreachable, !dbg !2633
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2709 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = load i8, ptr %1, align 16, !dbg !2894, !range !224, !noundef !136
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ak
    i8 32, label %bb.al
    i8 33, label %bb.am
    i8 34, label %bb.ap
  ], !dbg !2894

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !2894
  br label %bb.aq, !dbg !2894

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2895
  br label %bb.aq, !dbg !2896

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2897
  br label %bb.aq, !dbg !2896

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2898
  br label %bb.aq, !dbg !2896

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2899
  br label %bb.aq, !dbg !2896

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2900
  br label %bb.aq, !dbg !2896

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2901
  br label %bb.aq, !dbg !2896

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2902
  br label %bb.aq, !dbg !2896

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2903
  br label %bb.aq, !dbg !2896

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2904
  br label %bb.aq, !dbg !2896

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2905
  br label %bb.aq, !dbg !2896

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2906
  br label %bb.aq, !dbg !2896

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2907
  br label %bb.aq, !dbg !2896

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2908
  br label %bb.aq, !dbg !2896

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2909
  br label %bb.aq, !dbg !2896

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2910
  br label %bb.aq, !dbg !2896

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2911
  br label %bb.aq, !dbg !2896

bb.s:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2912
  %i.f = load i64, ptr %i.e, align 8, !dbg !2912, !noundef !136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !2913
  %i.h = load i8, ptr %i.g, align 1, !dbg !2913, !range !278, !noundef !136
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2914
  %i.j = load ptr, ptr %i.i, align 16, !dbg !2914, !align !223, !noundef !136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2915
  store i64 %i.f, ptr %i.k, align 8, !dbg !2915
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2915
  store i8 %i.h, ptr %i.l, align 1, !dbg !2915
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2915
  store ptr %i.j, ptr %i.m, align 16, !dbg !2915
  store i8 17, ptr %0, align 16, !dbg !2915
  br label %bb.aq, !dbg !2896

bb.t:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2916
  %i.o = load i64, ptr %i.n, align 8, !dbg !2916, !noundef !136
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !2917
  %i.q = load i8, ptr %i.p, align 1, !dbg !2917, !range !278, !noundef !136
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2918
  %i.s = load ptr, ptr %i.r, align 16, !dbg !2918, !noundef !136 ; 3 uses
  %.not = icmp eq ptr %i.s, null, !dbg !2918
  br i1 %.not, label %bb.as, label %bb.ar, !dbg !2919

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2920
  br label %bb.aq, !dbg !2896

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2921
  br label %bb.aq, !dbg !2896

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2922
  br label %bb.aq, !dbg !2896

bb.x:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2923
  %i.u = load i32, ptr %i.t, align 4, !dbg !2923, !noundef !136
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2924
  %i.w = load ptr, ptr %i.v, align 8, !dbg !2924, !nonnull !136, !noundef !136 ; 2 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !dbg !2925
  %i.y = icmp slt i64 %i.x, 0, !dbg !2926
  br i1 %i.y, label %bb.av, label %bb.au, !dbg !2926

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2927
  br label %bb.aq, !dbg !2896

bb.z:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2928
  %i.aa = load i32, ptr %i.z, align 4, !dbg !2928, !noundef !136
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2929
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !2929, !nonnull !136, !noundef !136 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !2930
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !2931
  br i1 %i.ae, label %bb.ax, label %bb.aw, !dbg !2931

bb.aa:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2932 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !dbg !2932
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !2932, !nonnull !136, !noundef !136
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !dbg !2933
  %i.aj = icmp slt i64 %i.ai, 0, !dbg !2934
  br i1 %i.aj, label %bb.az, label %bb.ay, !dbg !2934

end_hunk_2
begin_hunk_3_@_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !2948, !noalias !2875, !inline_history !2785
  unreachable, !dbg !2948

bb.ai:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !2953

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.ai ], [ %i.bd, %bb.ag ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 48, i64 noundef 8) #18, !dbg !2954, !noalias !2875
  resume { ptr, i32 } %eh.lpad-body, !dbg !2955

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !2956, !noalias !2876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2957, !noalias !2876
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2958
  store ptr %i.aw, ptr %i.bg, align 8, !dbg !2958
  store i8 30, ptr %0, align 16, !dbg !2958
  br label %bb.aq, !dbg !2896

bb.ak:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2959 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !2960
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !2960, !range !173, !noundef !136
  %i.bk = icmp eq i8 %i.bj, -40, !dbg !2961
  br i1 %i.bk, label %bb.bc, label %bb.bd, !dbg !2961

bb.al:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2962
  br label %bb.aq, !dbg !2896

bb.am:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884), !dbg !2963
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2964
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2965
  %i.bn = load ptr, ptr %i.bm, align 16, !dbg !2965, !alias.scope !2884, !nonnull !136, !noundef !136
  %i.bo = load i64, ptr %i.bl, align 8, !dbg !2966, !alias.scope !2884, !noundef !136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2967, !noalias !2885
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.bo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2967, !noalias !2885
  %i.bp = load i64, ptr %i.b, align 8, !dbg !2967, !range !230, !noalias !2885, !noundef !136
  %i.bq = trunc nuw i64 %i.bp to i1, !dbg !2968
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2969
  %i.bs = load i64, ptr %i.br, align 8, !dbg !2969, !range !219, !noalias !2885, !noundef !136 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2969 ; 2 uses
  br i1 %i.bq, label %bb.an, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i.i, !dbg !2968, !prof !161

bb.an:                                            ; preds = %bb.am
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !2970, !noalias !2885
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #21, !dbg !2971, !noalias !2885
  unreachable, !dbg !2971

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i.i: ; preds = %bb.am
  %i.bv = load ptr, ptr %i.bt, align 8, !dbg !2972, !noalias !2885, !nonnull !136, !noundef !136 ; 2 uses
  %i.bw = icmp ule i64 %i.bo, %i.bs, !dbg !2973
  tail call void @llvm.assume(i1 %i.bw), !dbg !2974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2975, !noalias !2885
  %.not.i.i = icmp eq i64 %i.bo, 0, !dbg !2976
  br i1 %.not.i.i, label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, label %bb.ao, !dbg !2976

bb.ao:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bo, i1 false), !dbg !2977, !noalias !2886
  br label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, !dbg !2978

_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbTP5kh6vDpX_14polars_testing.exit.i.i, %bb.ao
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2979
  store i64 %i.bs, ptr %i.bx, align 8, !dbg !2979
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2979
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !2979
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2979
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2979
  store i8 33, ptr %0, align 16, !dbg !2979
  br label %bb.aq, !dbg !2896

bb.ap:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2980
  br label %bb.aq, !dbg !2896

bb.aq:                                            ; preds = %bb.be, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.ap, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, %bb.al, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !2981

bb.ar:                                            ; preds = %bb.t
  %i.by = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !dbg !2982
  %i.bz = icmp slt i64 %i.by, 0, !dbg !2983
  br i1 %i.bz, label %bb.at, label %bb.as, !dbg !2983

bb.as:                                            ; preds = %bb.ar, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2984
  store i64 %i.o, ptr %i.ca, align 8, !dbg !2984
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2984
  store i8 %i.q, ptr %i.cb, align 1, !dbg !2984
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2984
  store ptr %i.s, ptr %i.cc, align 16, !dbg !2984
  store i8 18, ptr %0, align 16, !dbg !2984
  br label %bb.aq, !dbg !2896

bb.at:                                            ; preds = %bb.ar
  tail call void @llvm.trap(), !dbg !2985
  unreachable, !dbg !2985

bb.au:                                            ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !2986
  store i32 %i.u, ptr %i.cd, align 4, !dbg !2986
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2986
  store ptr %i.w, ptr %i.ce, align 8, !dbg !2986
  store i8 22, ptr %0, align 16, !dbg !2986
  br label %bb.aq, !dbg !2896

bb.av:                                            ; preds = %bb.x
  tail call void @llvm.trap(), !dbg !2987
  unreachable, !dbg !2987

bb.aw:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !2988
  store i32 %i.aa, ptr %i.cf, align 4, !dbg !2988
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2988
  store ptr %i.ac, ptr %i.cg, align 8, !dbg !2988
  store i8 24, ptr %0, align 16, !dbg !2988
  br label %bb.aq, !dbg !2896

bb.ax:                                            ; preds = %bb.z
  tail call void @llvm.trap(), !dbg !2989
  unreachable, !dbg !2989

bb.ay:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2990
  store <2 x ptr> %i.ag, ptr %i.ch, align 8, !dbg !2990
  store i8 25, ptr %0, align 16, !dbg !2990
  br label %bb.aq, !dbg !2896

bb.az:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !2991
  unreachable, !dbg !2991

bb.ba:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2992
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !2992, !noundef !136
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2993
  store <2 x ptr> %i.al, ptr %i.ck, align 16, !dbg !2993
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2993
  store i64 %i.cj, ptr %i.cl, align 8, !dbg !2993
  store i8 26, ptr %0, align 16, !dbg !2993
  br label %bb.aq, !dbg !2896

bb.bb:                                            ; preds = %bb.ab
  tail call void @llvm.trap(), !dbg !2994
  unreachable, !dbg !2994

bb.bc:                                            ; preds = %bb.ak
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #20, !dbg !2995
  br label %bb.be, !dbg !2995

bb.bd:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !dbg !2996
  br label %bb.be, !dbg !2997

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2998
  store i8 31, ptr %0, align 16, !dbg !2998
  br label %bb.aq, !dbg !2896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2999 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3032
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3032, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3033
  %i.d = load i64, ptr %i.c, align 8, !dbg !3033, !noundef !136 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3031), !dbg !3034
  %i.e = icmp eq i64 %i.d, 0, !dbg !3035
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !3035

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !3035 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !3035 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !3035, !alias.scope !3031 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !3035
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !3035, !alias.scope !3031, !nonnull !136, !align !223, !noundef !136 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !3036, !invariant.load !136, !noalias !3031 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !3036
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !3036

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !3036, !noalias !3031

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !3037
  %i.k = load i64, ptr %i.j, align 8, !dbg !3037, !range !156, !invariant.load !136, !noalias !3031 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !3038
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i, label %bb.d, !dbg !3038

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !3037
  %i.n = load i64, ptr %i.m, align 8, !dbg !3039, !range !184, !invariant.load !136, !noalias !3031
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #18, !dbg !3040, !noalias !3031
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !3041

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !3042
  %i.q = load i64, ptr %i.p, align 8, !dbg !3042, !range !156, !invariant.load !136, !noalias !3031 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !3043
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !3043

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !3042
  %i.t = load i64, ptr %i.s, align 8, !dbg !3044, !range !184, !invariant.load !136, !noalias !3031
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #18, !dbg !3045, !noalias !3031
  br label %.body.i, !dbg !3046

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !3035
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !3035

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1, !dbg !3035    ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !3035
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !3035

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !3035
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !3035

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !3035 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !3035, !alias.scope !3031
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !3035
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !3035, !alias.scope !3031, !nonnull !136, !align !223, !noundef !136
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing(ptr %.val.i, ptr nonnull %.val7.i) #17
          to label %bb.g unwind label %bb.h, !dbg !3035, !noalias !3031

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !3035

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3035, !noalias !3031
  unreachable, !dbg !3035

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsbTP5kh6vDpX_14polars_testing.exit.i, %bb.a
  ret void, !dbg !3047
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3085
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3085, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3086
  %i.d = load i64, ptr %i.c, align 8, !dbg !3086, !noundef !136 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !3087
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !3087

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i, !dbg !3087 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1, !dbg !3087 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !3088
  %i.i = load i8, ptr %i.h, align 1, !dbg !3088, !range !173, !alias.scope !3083, !noundef !136
  %i.j = icmp eq i8 %i.i, -40, !dbg !3089
  br i1 %i.j, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !3089, !prof !161

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.c, !dbg !3090

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d, !dbg !3087
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !3087

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d, !dbg !3087
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i, !dbg !3087

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i, !dbg !3087 ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1, !dbg !3087    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 23, !dbg !3091
  %i.q = load i8, ptr %i.p, align 1, !dbg !3091, !range !173, !alias.scope !3084, !noundef !136
  %i.r = icmp eq i8 %i.q, -40, !dbg !3092
  br i1 %i.r, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, !dbg !3092, !prof !161

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i unwind label %bb.e, !dbg !3093

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d, !dbg !3087
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i, !dbg !3087

._crit_edge13.i:                                  ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, %bb.c
  resume { ptr, i32 } %i.l, !dbg !3087

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3087
  unreachable, !dbg !3087

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, %bb.a
  ret void, !dbg !3094
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3095 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3106
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3106, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3107
  %i.d = load i64, ptr %i.c, align 8, !dbg !3107, !noundef !136 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !3108
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !3108

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !3108
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !3108

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !3108
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !3108     ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !3108

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !3108     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !3108
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !3108

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !3108
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !3108

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !3108
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(56) %i.m) #17
          to label %bb.c unwind label %bb.e, !dbg !3108

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k, !dbg !3108

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3108
  unreachable, !dbg !3108

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.b, %bb.a
  ret void, !dbg !3109
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3115
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3115, !nonnull !136, !noundef !136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3116
  %i.d = load i64, ptr %i.c, align 8, !dbg !3116, !noundef !136 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !3117
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !3117

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !3117
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph, !dbg !3117

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !3117
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !3117     ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(160) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !3117

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !3117     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !3117
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !3117

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !3117
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !3117

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
end_hunk_3
