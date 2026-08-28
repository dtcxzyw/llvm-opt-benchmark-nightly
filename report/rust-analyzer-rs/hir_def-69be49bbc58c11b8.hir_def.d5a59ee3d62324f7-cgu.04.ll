Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.04?download=true
inline.NumInlined: 1615
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs9_NtCsileJQcQObtj_7hir_def3hirNtB5_4Expr10precedence
define internal fastcc noundef range(i8 0, 16) i8 @_RNvMs9_NtCsileJQcQObtj_7hir_def3hirNtB5_4Expr10precedence(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !range !1651, !noundef !4 ; 3 uses
  %i.b = icmp ne i32 %i.a, 29
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 27
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.i
    i32 1, label %bb.i
    i32 2, label %bb.i
    i32 3, label %bb.c
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 8, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.i
    i32 11, label %bb.i
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
    i32 16, label %bb.e
    i32 17, label %bb.i
    i32 18, label %bb.d
    i32 19, label %bb.d
    i32 20, label %bb.f
    i32 21, label %bb.c
    i32 22, label %bb.c
    i32 23, label %bb.g
    i32 24, label %bb.l
    i32 25, label %bb.h
    i32 26, label %bb.d
    i32 27, label %bb.e
    i32 28, label %bb.i
    i32 29, label %bb.i
    i32 30, label %bb.i
    i32 31, label %bb.i
    i32 32, label %bb.i
    i32 33, label %bb.i
    i32 34, label %bb.i
  ]

bb.b:                                             ; preds = %bb.j, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !range !1652, !noundef !4 ; 4 uses
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup, %bb.j, %bb.k, %bb.g, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.l, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ 15, %bb.a ], [ 12, %bb.f ], [ 13, %bb.c ], [ 5, %bb.j ], [ 15, %bb.g ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ %., %bb.k ], [ 1, %bb.l ], [ 15, %bb.a ], [ %switch.load, %switch.lookup ], [ 2, %bb.h ], [ 14, %bb.d ], [ 0, %bb.e ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ], [ 15, %bb.a ]
  ret i8 %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %i.g = icmp ne i8 %i.f, 5
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i8 %i.f, -3
  %i.i = icmp samesign ugt i8 %i.f, 2
  %narrow1 = select i1 %i.i, i8 %i.h, i8 2
  switch i8 %narrow1, label %bb.b [
    i8 0, label %bb.k
    i8 1, label %switch.lookup
    i8 2, label %bb.i
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.k = load i8, ptr %i.j, align 1, !range !15, !noundef !4
  %. = sub nuw nsw i8 4, %i.k
  br label %bb.i

switch.lookup:                                    ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.m = load i8, ptr %i.l, align 1, !range !1653, !noundef !4
  %i.n = zext nneg i8 %i.m to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtCsileJQcQObtj_7hir_def3hirNtB5_4Expr10precedence, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.i

bb.l:                                             ; preds = %bb.a, %bb.j
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 6) i8 @_RNvMsG_NtCsileJQcQObtj_7hir_def12builtin_typeNtB5_10BuiltinInt15from_suffix_sym(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.b = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5isize10SYMBOL_STR
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2i810SYMBOL_STR
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit
  %i.d = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3i1610SYMBOL_STR
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15
  %i.e = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3i3210SYMBOL_STR
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19
  %i.f = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3i6410SYMBOL_STR
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23
  %i.g = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4i12810SYMBOL_STR
  %. = select i1 %i.g, i8 5, i8 -1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27
  %.sroa.0.0 = phi i8 [ %., %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27 ], [ 3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19 ], [ 0, %bb.a ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit ], [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15 ], [ 4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23 ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 6) i8 @_RNvMsH_NtCsileJQcQObtj_7hir_def12builtin_typeNtB5_11BuiltinUint15from_suffix_sym(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.b = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5usize10SYMBOL_STR
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols2u810SYMBOL_STR
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit
  %i.d = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3u1610SYMBOL_STR
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15
  %i.e = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3u3210SYMBOL_STR
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19
  %i.f = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3u6410SYMBOL_STR
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23
  %i.g = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4u12810SYMBOL_STR
  %. = select i1 %i.g, i8 5, i8 -1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit13: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27
  %.sroa.0.0 = phi i8 [ %., %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit27 ], [ 3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit19 ], [ 0, %bb.a ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit ], [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit15 ], [ 4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit23 ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvMs_Cs83ee1IJTiSq_6eitherINtB4_6EitherINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEuE4leftB1a_(i32 noundef range(i32 0, 2) %0, i32 %1) unnamed_addr #11 {
bb.a:
  %i.a = trunc nuw i32 %0 to i1
  %not. = xor i32 %0, 1
  %.6 = select i1 %i.a, i32 undef, i32 %1
  %i.b = insertvalue { i32, i32 } poison, i32 %not., 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %.6, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer10print_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5474 = alloca i64, align 8               ; 7 uses
  %.sroa.9 = alloca i64, align 8                  ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 11 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = load i32, ptr %1, align 8, !range !1654, !noundef !4 ; 3 uses
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val431 = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.ay = icmp eq i32 %i.av, 1
  br i1 %i.ay, label %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path11type_anchor.exit, label %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit

_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path11type_anchor.exit: ; preds = %bb.b
  %i.az = load i32, ptr %.val431, align 8, !range !635, !noundef !4
  %i.ba = trunc nuw i32 %i.az to i1
  br i1 %i.ba, label %bb.db, label %bb.ct

bb.c:                                             ; preds = %bb.a
  %i.bb = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 13) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !range !1655, !noundef !4 ; 3 uses
  %i.be = add nsw i32 %i.bd, -3
  %i.bf = icmp samesign ugt i32 %i.bd, 2
  %narrow = select i1 %i.bf, i32 %i.be, i32 10
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.ab
    i32 8, label %bb.as
    i32 9, label %bb.at
    i32 10, label %bb.au
  ]

default.unreachable489:                           ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit
  unreachable

bb.d:                                             ; preds = %bb.au, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !range !597, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !align !592, !noundef !4
  call fastcc void @_RINvNtNtCsileJQcQObtj_7hir_def10expr_store6pretty9item_nameNtB6_6EnumIdINtB6_7ItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noundef nonnull %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bn, i32 noundef %i.bh, i32 noundef %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.as, ptr %i.ar, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  %i.bo = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.ar)
          to label %bb.aw unwind label %bb.av     ; 0 uses

bb.f:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !range !597, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !592, !noundef !4
  call fastcc void @_RINvNtNtCsileJQcQObtj_7hir_def10expr_store6pretty9item_nameNtB6_10FunctionIdINtB6_12AssocItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bw, i32 noundef %i.bq, i32 noundef %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.aq, ptr %i.ap, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  %i.bx = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.ap)
          to label %bb.bc unwind label %bb.bb     ; 0 uses

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load <2 x i32>, ptr %i.by, align 8
  store <2 x i32> %i.bz, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.au, ptr %i.at, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs2K_CsileJQcQObtj_7hir_defNtB6_6ImplIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  %i.ca = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.at) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.az

bb.h:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !range !597, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !4, !align !592, !noundef !4
  call fastcc void @_RINvNtNtCsileJQcQObtj_7hir_def10expr_store6pretty9item_nameNtB6_8StaticIdINtB6_12AssocItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao, ptr noundef nonnull %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ci, i32 noundef %i.cc, i32 noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.ao, ptr %i.an, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.497.0..sroa_idx, align 8
  %i.cj = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.an)
          to label %bb.bg unwind label %bb.bf     ; 0 uses

bb.i:                                             ; preds = %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !range !597, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !align !592, !noundef !4
  call fastcc void @_RINvNtNtCsileJQcQObtj_7hir_def10expr_store6pretty9item_nameNtB6_8StructIdINtB6_7ItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cr, i32 noundef %i.cl, i32 noundef %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.am, ptr %i.al, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.cs = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.al)
          to label %bb.bk unwind label %bb.bj     ; 0 uses

bb.j:                                             ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !range !597, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !4, !align !592, !noundef !4
  call fastcc void @_RINvNtNtCsileJQcQObtj_7hir_def10expr_store6pretty9item_nameNtB6_7UnionIdINtB6_7ItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noundef nonnull %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.da, i32 noundef %i.cu, i32 noundef %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4129.0..sroa_idx, align 8
  %i.db = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.aj)
          to label %bb.bo unwind label %bb.bn     ; 0 uses

bb.k:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !4, !align !592, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dh = load <2 x i32>, ptr %i.dc, align 8
  store <2 x i32> %i.dh, ptr %i.m, align 8, !noalias !1659
  %i.di = call noundef nonnull align 4 ptr @_RNvXs2J_CsileJQcQObtj_7hir_defNtB6_11TypeAliasIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dg), !noalias !1656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1659
  call void @_RNvYINtCsileJQcQObtj_7hir_def12AssocItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasENtNtB5_3src9HasSource6sourceB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.di, ptr noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dg), !noalias !1656
  %i.dj = invoke noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasNtNtB8_6traits7HasName4nameCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.n unwind label %bb.l, !noalias !1656 ; 6 uses

bb.l:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer10print_path:bb.a
    i8 0, label %.loopexit
    i8 1, label %bb.cu
    i8 2, label %bb.cy
    i8 3, label %.loopexit
    i8 4, label %bb.cw
  ]

.loopexit:                                        ; preds = %.preheader.peel.next, %bb.cv, %bb.db, %bb.da, %bb.cy, %bb.cx, %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit, %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  %.sroa.030.sroa.0.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.030.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.030.sroa.2.0.copyload = load ptr, ptr %.sroa.030.sroa.2.0..sroa_idx, align 8
  %.sroa.030.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.030.sroa.3.0.copyload = load i64, ptr %.sroa.030.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.030.sroa.4.0.copyload = load ptr, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.030.sroa.5.0.copyload = load ptr, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.030.sroa.6.0.copyload = load ptr, ptr %.sroa.030.sroa.6.0..sroa_idx, align 8
  %.sroa.030.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.030.sroa.7.0.copyload = load ptr, ptr %.sroa.030.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.030.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.030.sroa.8.0.copyload = load ptr, ptr %.sroa.030.sroa.8.0..sroa_idx, align 8
  %.sroa.030.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.030.sroa.9.0.copyload = load ptr, ptr %.sroa.030.sroa.9.0..sroa_idx, align 8
  %.sroa.030.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %.sroa.030.sroa.10.0.copyload = load ptr, ptr %.sroa.030.sroa.10.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.030.sroa.3.0.copyload, 40
  %i.jc = icmp eq i64 %.sroa.030.sroa.3.0.copyload, 0
  %i.jd = getelementptr inbounds nuw i8, ptr %.val431, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.jf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jg = icmp eq i32 %i.av, 0
  br label %bb.dc

bb.cu:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %.val431.pn, i64 33
  %i.ji = load i8, ptr %i.jh, align 1, !noundef !4 ; 3 uses
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jk = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 5) ; 0 uses
  %exitcond.peel.not = icmp eq i8 %i.ji, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.preheader.peel.next

bb.cw:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.jl = getelementptr inbounds nuw i8, ptr %.val431.pn, i64 36
  %i.jm = load i32, ptr %i.jl, align 4, !range !597, !noundef !4
  %i.jn = getelementptr inbounds nuw i8, ptr %.val431.pn, i64 40
  %i.jo = load i32, ptr %i.jn, align 4, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !nonnull !4, !noundef !4
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !4, !align !592, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !invariant.load !4, !alias.scope !1707, !nonnull !4
  %i.jv = tail call { ptr, ptr } %i.ju(ptr noundef nonnull %i.jq) #42, !noalias !1707, !inline_history !1710 ; 2 uses
  %i.jw = extractvalue { ptr, ptr } %i.jv, 0      ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jv, 1
  %i.jy = tail call noundef nonnull align 8 ptr @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_(ptr noundef nonnull align 8 %i.jw), !noalias !1707
  %i.jz = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jy, ptr noundef nonnull align 8 %i.jw, ptr noundef nonnull align 8 %i.jx, i32 noundef range(i32 1, 0) %i.jm, i32 noundef %i.jo, i64 noundef 1), !noalias !1707
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 120
  %i.kb = load ptr, ptr %i.ka, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.kb, null
  br i1 %.not, label %bb.da, label %bb.cz

bb.cx:                                            ; preds = %bb.cu
  %i.kc = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 4) ; 0 uses
  br label %.loopexit

.preheader.peel.next:                             ; preds = %bb.cv, %.preheader.peel.next
  %.sroa.0318.0480 = phi i8 [ %i.kd, %.preheader.peel.next ], [ 1, %bb.cv ]
  %i.kd = add nuw i8 %.sroa.0318.0480, 1          ; 2 uses
  %i.ke = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 7) ; 0 uses
  %exitcond.not = icmp eq i8 %i.kd, %i.ji
  br i1 %exitcond.not, label %.loopexit, label %.preheader.peel.next, !llvm.loop !1711

bb.cy:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit
  %i.kf = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 5) ; 0 uses
  br label %.loopexit

bb.cz:                                            ; preds = %bb.cw
  %i.kg = ptrtoint ptr %i.kb to i64
  %i.kh = and i64 %i.kg, 1
  %i.ki = sub nsw i64 0, %i.kh
  %i.kj = getelementptr i8, ptr %i.kb, i64 %i.ki  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kj) ]
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !4, !noundef !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !noundef !4
  br label %bb.da

bb.da:                                            ; preds = %bb.cw, %bb.cz
  %.sink482 = phi ptr [ %i.kk, %bb.cz ], [ @229, %bb.cw ]
  %.sink = phi i64 [ %i.km, %bb.cz ], [ 6, %bb.cw ]
  store ptr %.sink482, ptr %i.s, align 8, !captures !1473
  %i.kn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sink, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.4359.0..sroa_idx, align 8
  %i.ko = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.r) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit

bb.db:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path11type_anchor.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %.val431, i64 4
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 1) ; 0 uses
  tail call fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer14print_type_ref(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i32 noundef %i.kq)
  %i.ks = tail call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 3) ; 0 uses
  br label %.loopexit

bb.dc:                                            ; preds = %bb.dm, %.loopexit
  %.sroa.21470.0 = phi i64 [ 0, %.loopexit ], [ %.sroa.21470.1, %bb.dm ] ; 4 uses
  %.sroa.18.0 = phi ptr [ %.sroa.030.sroa.9.0.copyload, %.loopexit ], [ %.sroa.18.1, %bb.dm ] ; 5 uses
  %.sroa.14.0 = phi ptr [ %.sroa.030.sroa.6.0.copyload, %.loopexit ], [ %.sroa.14.3, %bb.dm ] ; 9 uses
  %.sroa.12.0 = phi ptr [ %.sroa.030.sroa.5.0.copyload, %.loopexit ], [ %.sroa.12.3, %bb.dm ] ; 7 uses
  %.sroa.8.0 = phi ptr [ %.sroa.030.sroa.4.0.copyload, %.loopexit ], [ %.sroa.8.4, %bb.dm ] ; 7 uses
  %.sroa.5.0 = phi ptr [ %.sroa.030.sroa.2.0.copyload, %.loopexit ], [ %.sroa.5.3, %bb.dm ] ; 9 uses
  %.sroa.0.0 = phi i64 [ %.sroa.030.sroa.0.0.copyload, %.loopexit ], [ %.sroa.0.2, %bb.dm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5474)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  %i.kt = icmp eq ptr %.sroa.18.0, %.sroa.030.sroa.10.0.copyload
  br i1 %i.kt, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kv = trunc nuw i64 %.sroa.0.0 to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.8.0, null
  %i.kw = icmp eq ptr %.sroa.8.0, %.sroa.12.0
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 40 ; 2 uses
  %or.cond = select i1 %.not.i.us.peel.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.kw ; 2 uses
  br i1 %i.kv, label %.split.us.preheader.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i.i.i:            ; preds = %bb.de
  br i1 %or.cond, label %select.unfold.us.peel.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i

select.unfold.us.peel.i.i.i.i.i.i.i.i.i:          ; preds = %.split.us.preheader.i.i.i.i.i.i.i.i.i
  %.not4.us.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i:        ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 40
  br i1 %i.jc, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.de
  br i1 %or.cond, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i
  %.sroa.12.2 = phi ptr [ %.sroa.12.0, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i ], [ %i.ky, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0, %.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.2 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0, %.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.14.0, null
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i, label %.sink.split.i7.i.i.i.i.i.i.i.i.i

.sink.split.i7.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.sroa.7.0.copyload) ]
  %i.la = icmp eq ptr %.sroa.14.0, %.sroa.030.sroa.7.0.copyload
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.14.0, i64 40
  br i1 %i.la, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i: ; preds = %.sink.split.i7.i.i.i.i.i.i.i.i.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i, %.sink.split.i7.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i, %bb.dd
  %.sroa.14.1 = phi ptr [ %.sroa.14.0, %bb.dd ], [ %.sroa.14.0, %.split.i.i.i.i.i.i.i.i.i ], [ %i.lb, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.dd ], [ %.sroa.12.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.2, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %i.ky, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.dd ], [ %i.kx, %.split.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %i.kz, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %i.kx, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %bb.dd ], [ %.sroa.5.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.2, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 2, %bb.dd ], [ 0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ 1, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %bb.dd ], [ %.sroa.8.0, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0, %.sink.split.i7.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0, %.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1L_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, ptr %.sroa.030.sroa.8.0.copyload, ptr %.sroa.0.0.i.i.i.i.i.i ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit, label %bb.df

bb.df:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 33
  %i.ld = load i8, ptr %i.lc, align 1, !range !1574, !alias.scope !1715, !noalias !1718, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.ld, 2
  %..i.i.i = select i1 %.not.i.i.i, ptr null, ptr %spec.select.i.i.i.i.i.i
  %i.le = add i64 %.sroa.21470.0, 1
  %2 = ptrtoint ptr %.sroa.18.0 to i64
  store i64 %2, ptr %.sroa.5474, align 8, !alias.scope !1712, !noalias !1723
  %i.lf = icmp eq i64 %.sroa.21470.0, 0
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit: ; preds = %bb.dc, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i, %bb.df
  %.sroa.0473.0 = phi i1 [ undef, %bb.dc ], [ undef, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %i.lf, %bb.df ]
  %.sroa.21470.1 = phi i64 [ %.sroa.21470.0, %bb.dc ], [ %.sroa.21470.0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %i.le, %bb.df ]
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %bb.dc ], [ %i.ku, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %i.ku, %bb.df ]
  %.sroa.14.3 = phi ptr [ %.sroa.14.0, %bb.dc ], [ %.sroa.14.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.14.1, %bb.df ]
  %.sroa.12.3 = phi ptr [ %.sroa.12.0, %bb.dc ], [ %.sroa.12.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.12.1, %bb.df ]
  %.sroa.8.4 = phi ptr [ %.sroa.8.0, %bb.dc ], [ %.sroa.8.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.8.1, %bb.df ]
  %.sroa.5.3 = phi ptr [ %.sroa.5.0, %bb.dc ], [ %.sroa.5.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.5.1, %bb.df ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.dc ], [ %.sroa.0.1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.0.1, %bb.df ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.5474, %bb.dc ], [ %.sroa.5474, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %.sroa.9, %bb.df ]
  %..i.i.sink.i = phi ptr [ null, %bb.dc ], [ null, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextB27_.exit.i.i.i.i ], [ %..i.i.i, %bb.df ]
  store ptr %..i.i.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !1712, !noalias !1723
  %.sroa.5474.0..sroa.5474.0..sroa.5474.0..sroa.5474.8. = load i64, ptr %.sroa.5474, align 8, !noundef !4 ; 2 uses
  %3 = inttoptr i64 %.sroa.5474.0..sroa.5474.0..sroa.5474.0..sroa.5474.8. to ptr
  %.not427 = icmp eq i64 %.sroa.5474.0..sroa.5474.0..sroa.5474.0..sroa.5474.8., 0
  br i1 %.not427, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16. = load i64, ptr %.sroa.9, align 8, !noundef !4 ; 2 uses
  %4 = inttoptr i64 %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16. to ptr
  br i1 %.sroa.0473.0, label %bb.di, label %bb.dl

bb.dh:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB3t_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB3Q_EEENCNvMs0_B46_NtB46_12PathSegments4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB4a_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5474)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cs

bb.di:                                            ; preds = %bb.dg
  br i1 %i.jg, label %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit469, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lg = load ptr, ptr %i.jd, align 8, !nonnull !4, !noundef !4
  br label %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit469

_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit469: ; preds = %bb.di, %bb.dj
  %.val431.pn490 = phi ptr [ %i.lg, %bb.dj ], [ %.val431, %bb.di ]
  %.sroa.0.0.i467 = getelementptr inbounds nuw i8, ptr %.val431.pn490, i64 32
  %i.lh = load i8, ptr %.sroa.0.0.i467, align 4, !range !1706, !noundef !4
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit469, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.lj = load i8, ptr %i.je, align 1, !range !78, !noundef !4
  store ptr %3, ptr %i.o, align 8
  store i8 %i.lj, ptr %i.jf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4387.0..sroa_idx, align 8
  %i.lk = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @27, ptr noundef nonnull @38, ptr noundef nonnull %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not428 = icmp eq i64 %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16., 0
  br i1 %.not428, label %bb.dm, label %bb.dn

bb.dl:                                            ; preds = %_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path4kind.exit469, %bb.dg
  %i.ll = call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 2) ; 0 uses
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dn, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5474)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.dc

bb.dn:                                            ; preds = %bb.dk
  %i.lm = call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 3) ; 0 uses
  call fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer18print_generic_args(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4)
  %i.ln = call noundef zeroext i1 @_RNvXNtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB2_7PrinterNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 1) ; 0 uses
  br label %bb.dm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer10whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsileJQcQObtj_7hir_def.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !noalias !1724, !noundef !4 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit17.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit17.i: ; preds = %bb.b
  %i.j = icmp ne i64 %i.d, 1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.l = load i8, ptr %i.k, align 1, !noalias !1724, !noundef !4 ; 3 uses
  %i.m = and i8 %i.l, 31
  %i.n = zext nneg i8 %i.m to i32
  %i.o = icmp slt i8 %i.l, -64
  br i1 %i.o, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit19.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.h to i32
  br label %bb.f

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit19.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit17.i
  %i.q = icmp ne i64 %i.d, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !noalias !1724, !noundef !4 ; 3 uses
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit17.i
  %.sroa.010.0.i = phi i32 [ %i.am, %bb.e ], [ %i.n, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit17.i ]
  %i.w = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.x = and i8 %i.h, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y
  br label %bb.f

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit21.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit19.i
  %i.aa = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !1724, !noundef !4
  %i.ad = and i8 %i.ac, 7
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = and i8 %i.s, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit21.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit19.i
  %.sroa.010.1.i = phi i32 [ %i.ai, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit21.i ], [ %i.u, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsileJQcQObtj_7hir_def.exit19.i ]
  %i.aj = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ak = and i8 %i.l, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.1.i.ph = phi i32 [ %i.p, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %i.an = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.an)
  switch i32 %.sroa.4.1.i.ph, label %bb.g [
    i32 10, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsileJQcQObtj_7hir_def.exit
    i32 32, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsileJQcQObtj_7hir_def.exit
  ]

_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %bb.g, %bb.f, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ap = load ptr, ptr %i.a, align 8, !alias.scope !1727, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.d
  store i8 32, ptr %i.aq, align 1
  %i.ar = add nuw i64 %i.d, 1
  store i64 %i.ar, ptr %i.c, align 8, !alias.scope !1727
  br label %_RINvNtNtCshzWfHUSfYae_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store6prettyNtB4_7Printer13print_expr_in(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i8 noundef range(i8 -1, 16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [10 x i8], align 1                ; 13 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 4                ; 29 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 12 uses
  %i.an = alloca [48 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [56 x i8], align 8               ; 9 uses
  %i.bh = alloca [1 x i8], align 1                ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !592, !noundef !4
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %.val994 = load ptr, ptr %i.bk, align 8, !align !592, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %.val994, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.bl = zext i32 %2 to i64                      ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val994, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !1730, !noundef !4 ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, %i.bl
  br i1 %i.bo, label %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #38
  unreachable

_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit: ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.val994, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !1730, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bl ; 111 uses
  %i.bs = tail call fastcc noundef i8 @_RNvMs9_NtCsileJQcQObtj_7hir_def3hirNtB5_4Expr10precedence(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.br) ; 4 uses
  %.not = icmp eq i8 %1, -1
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  switch i8 %i.bs, label %bb.g [
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

.thread:                                          ; preds = %bb.i, %bb.h, %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.bt = tail call fastcc noundef i8 @_RNvMs9_NtCsileJQcQObtj_7hir_def3hirNtB5_4Expr10precedence(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.br)
  br label %bb.j
end_hunk_1
