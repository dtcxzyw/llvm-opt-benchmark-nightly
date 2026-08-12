inline.NumInlined: 5177
inline.NumDeleted: 1803
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE10reallocateCsb6FLkjZuKG_18ruff_python_parser:bb.a
bb.e:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.h, i64 16) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !3

bb.f:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.k, 9223372036854775800
  br i1 %.not.i, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !3

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.h
  %i.l = icmp slt i64 %1, 0
  br i1 %i.l, label %bb.j, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.j:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 88) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.l, label %bb.k, !prof !3

bb.k:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.o = extractvalue { i64, i1 } %i.m, 0
  %i.p = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 16) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.m, label %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !3

bb.l:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.k
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.r) #42 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.p, !prof !3

bb.n:                                             ; preds = %bb.p, %bb.b
  %storemerge = phi ptr [ %i.b, %bb.b ], [ %i.s, %bb.p ]
  store ptr %storemerge, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit
  %i.u = tail call fastcc { i64, i64 } @_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(i64 noundef %1) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.v, i64 noundef %i.w) #41
  unreachable

bb.p:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %1, ptr %i.x, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE4pushCsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !18 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !18
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14241)
  switch i64 %i.b, label %bb.c [
    i64 -1, label %.invoke
    i64 0, label %.thread.i
  ], !prof !8987

.invoke:                                          ; preds = %bb.j, %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %bb.i, %bb.h, %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, %bb.g, %bb.f, %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.e, %bb.d, %bb.b
  invoke void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #41
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.b, 0
  br i1 %i.f, label %bb.d, label %.thread17.i, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14244)
  br label %.invoke

.thread17.i:                                      ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  %i.g = shl nuw i64 %i.b, 1                      ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

.thread.i:                                        ; preds = %bb.b
  %.not.i5.i = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %.not.i5.i, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i

bb.e:                                             ; preds = %.thread17.i
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.invoke, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %.thread.i, %bb.e
  %.sroa.0.0.i8.i23 = phi i64 [ %i.g, %bb.e ], [ 4, %.thread.i ] ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0.i8.i23, i64 72) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %.invoke, label %bb.f, !prof !3

bb.f:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 16) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %.invoke, label %bb.g, !prof !3

bb.g:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 3 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.n, 9223372036854775800
  br i1 %.not.i.i.i.i, label %.invoke, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !3

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !14247
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef 8) #42, !noalias !14247 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.invoke24, label %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, !prof !3

.invoke24:                                        ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %.noexc14
  %i.q = phi i64 [ %i.ai, %.noexc14 ], [ 8, %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ]
  %i.r = phi i64 [ %i.aj, %.noexc14 ], [ %i.n, %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.q, i64 noundef %i.r) #41
          to label %.cont25 unwind label %bb.n

.cont25:                                          ; preds = %.invoke24
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  store i64 0, ptr %i.o, align 8, !noalias !14247
  br label %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %.thread.i, %.thread17.i
  %.sroa.0.0.i611.i = phi i64 [ %i.g, %.thread17.i ], [ 4, %.thread.i ] ; 4 uses
  %i.s = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.b, i64 72) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.invoke, label %bb.h, !prof !3

bb.h:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.u, i64 16) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %.invoke, label %bb.i, !prof !3

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.x, 9223372036854775800
  %i.y = icmp slt i64 %.sroa.0.0.i611.i, 0
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %i.y, !prof !859
  br i1 %or.cond, label %.invoke, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !859

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.i
  %i.z = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0.i611.i, i64 72) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %.invoke, label %bb.j, !prof !3

bb.j:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ab, i64 16) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %.invoke, label %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, !prof !3

_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.j
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.x, i64 noundef 8, i64 noundef %i.ae) #42, !noalias !14247 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !3

bb.k:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.ah = invoke fastcc { i64, i64 } @_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(i64 noundef %.sroa.0.0.i611.i)
          to label %.noexc14 unwind label %bb.n   ; 2 uses

.noexc14:                                         ; preds = %bb.k
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  br label %.invoke24

_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %.sroa.0.0.i7.i = phi i64 [ %.sroa.0.0.i8.i23, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ], [ %.sroa.0.0.i611.i, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ]
  %.sink7.i.i = phi ptr [ %i.o, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ], [ %i.af, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink7.i.i, i64 8
  store i64 %.sroa.0.0.i7.i, ptr %i.ak, align 8, !noalias !14247
  store ptr %.sink7.i.i, ptr %0, align 8, !alias.scope !14247
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.val = phi ptr [ %i.a, %bb.a ], [ %.sink7.i.i, %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE10reallocateCsb6FLkjZuKG_18ruff_python_parser.exit.i ] ; 3 uses
  %i.al = load i64, ptr %.val, align 8, !noalias !14248, !noundef !18 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.ao = add i64 %i.al, 1
  store i64 %i.ao, ptr %.val, align 8, !noalias !14248
  ret void

bb.m:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.ap

bb.n:                                             ; preds = %.invoke24, %.invoke, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %1) #44
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !285, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14251)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14251
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !14251
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !14251
  %i.f = load i64, ptr %i.a, align 8, !range !3590, !noalias !14251, !noundef !18
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !3591, !noalias !14251, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !14251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14251
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !14251, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14251
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !14251
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !14251
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !285, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14254)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !14254
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !14254
  %i.f = load i64, ptr %i.a, align 8, !range !3590, !noalias !14254, !noundef !18
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !3591, !noalias !14254, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !14254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14254
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !14254, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14254
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !14254
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !14254
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !285, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14257)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14257
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !14257
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !14257
  %i.f = load i64, ptr %i.a, align 8, !range !3590, !noalias !14257, !noundef !18
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !3591, !noalias !14257, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !14257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14257
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !14257, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14257
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !14257
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !14257
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !285, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14260)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14260
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !14260
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !14260
  %i.f = load i64, ptr %i.a, align 8, !range !3590, !noalias !14260, !noundef !18
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !3591, !noalias !14260, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14260
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !14260, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14260
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !14260
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !14260
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !285, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14263)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14263
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !14263
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !14263
  %i.f = load i64, ptr %i.a, align 8, !range !3590, !noalias !14263, !noundef !18
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !3591, !noalias !14263, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !14263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14263
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !14263, !nonnull !18, !noundef !18
end_hunk_0
