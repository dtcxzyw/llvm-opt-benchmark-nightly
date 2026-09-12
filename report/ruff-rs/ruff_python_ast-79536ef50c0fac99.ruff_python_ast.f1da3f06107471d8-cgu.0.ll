Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCskLngH8kgpZI_15ruff_python_ast:bb.a
  %i.j = tail call noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !align !54, !noundef !46 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !11999, !noalias !12000, !noundef !46 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !align !54, !noundef !46 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !12004, !noalias !12005, !noundef !46 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxeENtB6_7Display3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !align !54, !noundef !46 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !46
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_7Display3fmtCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !align !54, !noundef !46
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { i8, i8 } @_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix(i16 noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = and i16 %0, 16
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %0, 64
  %.not10 = icmp eq i16 %i.b, 0
  br i1 %.not10, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = and i16 %0, 32
  %.not1 = icmp eq i16 %i.c, 0
  br i1 %.not1, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = and i16 %0, 128
  %.not11 = icmp eq i16 %i.d, 0
  %. = select i1 %.not11, i8 2, i8 1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.e = and i16 %0, 64
  %.not8 = icmp eq i16 %i.e, 0
  br i1 %.not8, label %bb.g, label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.f = and i16 %0, 8
  %.not2 = icmp eq i16 %i.f, 0
  %i.g = and i16 %0, 64
  %.not3 = icmp eq i16 %i.g, 0                    ; 2 uses
  br i1 %.not2, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = and i16 %0, 128
  %.not9 = icmp eq i16 %i.h, 0
  %.12 = select i1 %.not9, i8 2, i8 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  br i1 %.not3, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.f
  br i1 %.not3, label %bb.k, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.i = and i16 %0, 128
  %.not7 = icmp eq i16 %i.i, 0
  %.13 = select i1 %.not7, i8 2, i8 1
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.j = and i16 %0, 128
  %.not4 = icmp eq i16 %i.j, 0
  br i1 %.not4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.k = and i16 %0, 4
  %.not5 = icmp eq i16 %i.k, 0
  %.14 = select i1 %.not5, i8 2, i8 3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.sroa.14.0 = phi i8 [ 1, %bb.k ], [ %., %bb.d ], [ 0, %bb.b ], [ %.14, %bb.l ], [ %.12, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %.13, %bb.j ], [ 0, %bb.h ]
  %.sroa.0.0 = phi i8 [ 3, %bb.k ], [ 1, %bb.d ], [ 1, %bb.b ], [ 3, %bb.l ], [ 2, %bb.g ], [ 2, %bb.e ], [ 3, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ]
  %i.l = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.m = insertvalue { i8, i8 } %i.l, i8 %.sroa.14.0, 1
  ret { i8, i8 } %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1j_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = load i16, ptr %0, align 2, !noundef !46  ; 13 uses
  %i.g = and i16 %i.f, 16
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i16 %i.f, 64
  %.not10.i = icmp eq i16 %i.h, 0
  br i1 %.not10.i, label %bb.d, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i16 %i.f, 32
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = and i16 %i.f, 128
  %.not11.i = icmp eq i16 %i.j, 0
  %..i = select i1 %.not11.i, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.e:                                             ; preds = %bb.c
  %i.k = and i16 %i.f, 64
  %.not8.i = icmp eq i16 %i.k, 0
  br i1 %.not8.i, label %bb.g, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.f:                                             ; preds = %bb.c
  %i.l = and i16 %i.f, 8
  %.not2.i = icmp eq i16 %i.l, 0
  %i.m = and i16 %i.f, 64
  %.not3.i = icmp eq i16 %i.m, 0                  ; 2 uses
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = and i16 %i.f, 128
  %.not9.i = icmp eq i16 %i.n, 0
  %.12.i = select i1 %.not9.i, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not3.i, label %bb.j, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.i:                                             ; preds = %bb.f
  br i1 %.not3.i, label %bb.k, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.j:                                             ; preds = %bb.h
  %i.o = and i16 %i.f, 128
  %.not7.i = icmp eq i16 %i.o, 0
  %.13.i = select i1 %.not7.i, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.k:                                             ; preds = %bb.i
  %i.p = and i16 %i.f, 128
  %.not4.i = icmp eq i16 %i.p, 0
  br i1 %.not4.i, label %bb.l, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

bb.l:                                             ; preds = %bb.k
  %i.q = and i16 %i.f, 4
  %.not5.i = icmp eq i16 %i.q, 0
  %.14.i = select i1 %.not5.i, i8 2, i8 3
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.14.0.i = phi i8 [ 1, %bb.k ], [ %..i, %bb.d ], [ 0, %bb.b ], [ %.14.i, %bb.l ], [ %.12.i, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %.13.i, %bb.j ], [ 0, %bb.h ]
  %.sroa.0.0.i = phi i8 [ 3, %bb.k ], [ 1, %bb.d ], [ 1, %bb.b ], [ 3, %bb.l ], [ 2, %bb.g ], [ 2, %bb.e ], [ 3, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ]
  store i8 %.sroa.0.0.i, ptr %i.d, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sroa.14.0.i, ptr %i.r, align 1
  %i.s = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %2 = trunc i16 %i.f to i8                       ; 2 uses
  %3 = lshr i8 %2, 1
  %i.t = and i8 %3, 1
  store i8 %i.t, ptr %i.c, align 1
  %i.u = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %storemerge = and i8 %2, 1
  store i8 %storemerge, ptr %i.b, align 1
  %i.v = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = lshr i16 %i.f, 8
  %i.x = trunc nuw i16 %i.w to i8
  %i.y = and i8 %i.x, 1
  store i8 %i.y, ptr %i.a, align 1
  %i.z = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @446)
  %i.aa = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.aa
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 84) i8 @_RNvXs1k_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18StringLiteralFlagsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_14AnyStringFlagsE4from(i16 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = and i16 %0, 56
  %or.cond23 = icmp eq i16 %i.c, 0
  br i1 %or.cond23, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %0, 64
  %.not3.i = icmp eq i16 %i.d, 0
  br i1 %.not3.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %0, 128
  %.not4.i = icmp eq i16 %i.e, 0
  br i1 %.not4.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = and i16 %0, 4
  %.not5.i = icmp eq i16 %i.f, 0
  %.14.i = select i1 %.not5.i, i8 2, i8 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.14.0.i = phi i8 [ 1, %bb.c ], [ %.14.i, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.g = and i16 %0, 1
  %.not = icmp eq i16 %i.g, 0
  %i.h = add nsw i8 %.sroa.14.0.i, -2
  %.inv.i16 = icmp samesign ult i8 %.sroa.14.0.i, 2
  %narrow.i17 = select i1 %.inv.i16, i8 2, i8 %i.h ; 3 uses
  br i1 %.not, label %.split, label %.split14

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = tail call fastcc { i8, i8 } @_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix(i16 noundef %0) ; 2 uses
  %i.j = extractvalue { i8, i8 } %i.i, 0
  %i.k = extractvalue { i8, i8 } %i.i, 1
  store i8 %i.j, ptr %i.b, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @451, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #61
  unreachable

.split14:                                         ; preds = %bb.e
  switch i8 %narrow.i17, label %bb.g [
    i8 0, label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %.split14
  unreachable

bb.h:                                             ; preds = %.split14
  br label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit

bb.i:                                             ; preds = %.split14
  %i.m = trunc nuw i8 %.sroa.14.0.i to i1
  %spec.select = select i1 %i.m, i8 17, i8 9
  br label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit

.split:                                           ; preds = %bb.e
  switch i8 %narrow.i17, label %bb.j [
    i8 0, label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %.split
  unreachable

bb.k:                                             ; preds = %.split
  br label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit

bb.l:                                             ; preds = %.split
  %i.n = trunc nuw i8 %.sroa.14.0.i to i1
  %spec.select22 = select i1 %i.n, i8 16, i8 8
  br label %_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit

_RNvMsV_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralFlags11with_prefix.exit: ; preds = %bb.l, %bb.i, %bb.k, %.split, %bb.h, %.split14
  %phi.call = phi i8 [ %spec.select, %bb.i ], [ 1, %.split14 ], [ 5, %bb.h ], [ %spec.select22, %bb.l ], [ %narrow.i17, %.split ], [ 4, %bb.k ]
  %i.o = trunc i16 %0 to i8
  %i.p = and i8 %i.o, 2
  %i.q = lshr i16 %0, 2
  %i.r = trunc i16 %i.q to i8
  %i.s = and i8 %i.r, 64
  %.sroa.0.0 = or disjoint i8 %i.s, %i.p
  %.sroa.0.1 = or disjoint i8 %.sroa.0.0, %phi.call
  ret i8 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i16 0, 388) i16 @_RNvXs1l_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_18StringLiteralFlagsE4from(i8 noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = and i8 %0, 4
  %.not.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags19as_any_string_flagsB6_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %0, 8
  %.not1.i.i = icmp eq i8 %i.b, 0
  br i1 %.not1.i.i, label %bb.c, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags19as_any_string_flagsB6_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = shl i8 %0, 3
  %i.d = and i8 %i.c, -128
  %i.e = zext i8 %i.d to i16
  br label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags19as_any_string_flagsB6_.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags19as_any_string_flagsB6_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.018.0.i.i.i = phi i16 [ %i.e, %bb.c ], [ 4, %bb.a ], [ 64, %bb.b ]
  %i.f = and i8 %0, 64
  %i.g = zext nneg i8 %i.f to i16
  %i.h = shl nuw nsw i16 %i.g, 2
  %.sroa.0.1.i.i1 = and i8 %0, 3
  %.sroa.0.1.i.i = zext nneg i8 %.sroa.0.1.i.i1 to i16
  %i.i = or disjoint i16 %i.h, %.sroa.0.1.i.i
  %.sroa.0.0.i = add nuw nsw i16 %i.i, %.sroa.018.0.i.i.i
  ret i16 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 44) i8 @_RNvXs1m_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralFlagsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_14AnyStringFlagsE4from(i16 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = and i16 %0, 56
  %or.cond27.not = icmp eq i16 %i.c, 8
  br i1 %or.cond27.not, label %_RNvMs1b_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralFlags11with_prefix.exit, label %bb.b

_RNvMs1b_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralFlags11with_prefix.exit: ; preds = %bb.a
  %i.d = and i16 %0, 64
  %.not3.i.not.not = icmp eq i16 %i.d, 0          ; 2 uses
  %i.e = and i16 %0, 1
  %.not = icmp eq i16 %i.e, 0
  %i.f = and i16 %0, 192
  %switch.selectcmp25 = icmp eq i16 %i.f, 0       ; 2 uses
  %switch.select = select i1 %.not3.i.not.not, i8 9, i8 5
  %switch.select22 = select i1 %switch.selectcmp25, i8 1, i8 %switch.select
  %switch.select24 = select i1 %.not3.i.not.not, i8 8, i8 4
  %switch.select26 = select i1 %switch.selectcmp25, i8 0, i8 %switch.select24
  %phi.call = select i1 %.not, i8 %switch.select26, i8 %switch.select22
  %i.g = trunc i16 %0 to i8
  %i.h = and i8 %i.g, 2
  %i.i = or disjoint i8 %phi.call, %i.h
  %i.j = lshr i16 %0, 3
  %i.k = trunc i16 %i.j to i8
  %masksel = and i8 %i.k, 32
  %.sroa.0.1 = or disjoint i8 %i.i, %masksel
  ret i8 %.sroa.0.1

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = tail call fastcc { i8, i8 } @_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix(i16 noundef %0) ; 2 uses
  %i.m = extractvalue { i8, i8 } %i.l, 0
  %i.n = extractvalue { i8, i8 } %i.l, 1
  store i8 %i.m, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.n, ptr %i.o, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @453, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #61
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i16 8, 396) i16 @_RNvXs1n_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_17BytesLiteralFlagsE4from(i8 noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = and i8 %0, 4
  %.not.i.not.i = icmp eq i8 %i.a, 0
  %switch.select.i.i.i = select i1 %.not.i.not.i, i16 136, i16 72
  %i.b = and i8 %0, 12
  %switch.selectcmp21.i.i.i = icmp eq i8 %i.b, 0
  %switch.select22.i.i.i = select i1 %switch.selectcmp21.i.i.i, i16 8, i16 %switch.select.i.i.i
  %i.c = and i8 %0, 32
end_hunk_0
