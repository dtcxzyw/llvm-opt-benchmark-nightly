Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ffi-f9766417db433be2.polars_ffi.fcf6559a484eb8a8-cgu.1?download=true
inline.NumInlined: 175
inline.NumDeleted: 103
begin_hunk_0_@_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslIvKsLJE9Zc_10polars_ffi:bb.a
  %i.b = icmp eq i64 %3, 0, !dbg !1839
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !1839
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !1839

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3, !dbg !1840        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0, !dbg !1841
  br i1 %i.e, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, !dbg !1841

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #20, !dbg !1842
  %i.f = inttoptr i64 %2 to ptr, !dbg !1843
  store ptr %i.f, ptr %i.a, align 8, !dbg !1844
  br label %bb.c, !dbg !1845

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !1846
  br label %bb.e, !dbg !1847

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1, !dbg !1848           ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d, !dbg !1849
  tail call void @llvm.assume(i1 %i.h), !dbg !1850
  %i.i = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #20, !dbg !1851 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !1852
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !1853

bb.d:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8, !dbg !1854
  %i.k = icmp sgt i64 %1, -1, !dbg !1855
  tail call void @llvm.assume(i1 %i.k), !dbg !1855
  br label %bb.c, !dbg !1845

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !1856
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ], !dbg !1856
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !1847
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1, !dbg !1847
  ret { i64, i64 } %i.m, !dbg !1847
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslIvKsLJE9Zc_10polars_ffi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 !dbg !1857 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !1896 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1896 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1896
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1897, !prof !193
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !1897, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit, !dbg !1898

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val, !dbg !1899      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !1900
  tail call void @llvm.assume(i1 %i.g), !dbg !1901
  %i.h = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20, !dbg !1902
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1903

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0, !dbg !1904
  br i1 %i.i, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !1904

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr, !dbg !1905
  br label %bb.f, !dbg !1906

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1907
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20, !dbg !1908
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1909

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null, !dbg !1910
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !1906

bb.e:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1911
  store i64 %2, ptr %i.m, align 8, !dbg !1911
  br label %bb.g, !dbg !1912

bb.f:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1913
  store ptr %.pn810, ptr %i.n, align 8, !dbg !1913
  br label %bb.g, !dbg !1914

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ], !dbg !1915
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12, !dbg !1915
  store i64 %.sink, ptr %i.o, align 8, !dbg !1915
  store i64 %storemerge13, ptr %0, align 8, !dbg !1915
  ret void, !dbg !1916
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslIvKsLJE9Zc_10polars_ffi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1917 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !1952 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1952 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1952
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1953, !prof !193
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1953, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0, !dbg !1954
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !1954

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1955
  store i64 0, ptr %i.f, align 8, !dbg !1955
  br label %bb.f, !dbg !1956

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !1957
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1958
  store i64 0, ptr %i.h, align 8, !dbg !1958
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1958
  store ptr %i.g, ptr %i.i, align 8, !dbg !1958
  br label %bb.f, !dbg !1959

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1960
  br i1 %2, label %bb.g, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1961

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !1962
  ret void, !dbg !1963

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1964
  br label %bb.h, !dbg !1965

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1966
  br label %bb.h, !dbg !1967

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null, !dbg !1968
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !1969

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1970
  store i64 %3, ptr %i.m, align 8, !dbg !1970
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1970
  store i64 %i.b, ptr %i.n, align 8, !dbg !1970
  br label %bb.f, !dbg !1971

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1, !dbg !1972
  tail call void @llvm.assume(i1 %i.o), !dbg !1972
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1973
  store i64 %1, ptr %i.p, align 8, !dbg !1973
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1973
  store ptr %.pn10, ptr %i.q, align 8, !dbg !1973
  br label %bb.f, !dbg !1959
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1974 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1984
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !1985 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1986
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1987, !prof !178

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 48) #24, !dbg !1988
  unreachable, !dbg !1988

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !1989
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1990 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.sroa.8.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 20 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.12.i.i.i.i = alloca [48 x i8], align 8   ; 6 uses
  %.sroa.6.i.i.i.i = alloca [48 x i8], align 8    ; 6 uses
  %.sroa.4.i.i.i = alloca ptr, align 8            ; 5 uses
  %.sroa.73.i.i.i = alloca ptr, align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179), !dbg !2237
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2238
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2238, !alias.scope !2179, !nonnull !73, !align !138, !noundef !73 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181), !dbg !2239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182), !dbg !2239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183), !dbg !2240
  %i.i = load ptr, ptr %0, align 8, !dbg !2241, !alias.scope !2184, !noalias !2185, !nonnull !73, !noundef !73 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2242
  %i.k = load ptr, ptr %i.j, align 8, !dbg !2242, !alias.scope !2184, !noalias !2185, !nonnull !73, !noundef !73
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !2243
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2244

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2245
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !2246
  store ptr %i.n, ptr %0, align 8, !dbg !2247, !alias.scope !2184, !noalias !2185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !2248
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i.i), !dbg !2248
  %.val5.i.i.i = load ptr, ptr %i.i, align 8, !dbg !2248, !noalias !2191, !noundef !73
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192), !dbg !2248
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !2249
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i), !dbg !2250
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !dbg !2250, !alias.scope !2194, !noalias !2195, !nonnull !73, !align !138, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2251, !noalias !2196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val5.i.i.i, i64 80, i1 false), !dbg !2251, !noalias !2198
  %i.o = load ptr, ptr %.val.i.i.i.i, align 8, !dbg !2252, !noalias !2198, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2253, !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2254, !noalias !2199
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow3ffi19import_field_from_c(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.o)
          to label %bb.c unwind label %bb.y, !dbg !2254, !noalias !2200

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !dbg !2255, !range !137, !noalias !2199, !noundef !73
  %i.q = trunc nuw i64 %i.p to i1, !dbg !2256
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2257
  %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 8, !dbg !2257, !noalias !2199 ; 3 uses
  %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2257
  %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !dbg !2257, !noalias !2199 ; 3 uses
  %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !2257
  %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i.i.i, align 8, !dbg !2257, !noalias !2199 ; 3 uses
  %.sroa.5.i.i.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !2257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.0..sroa_idx.i.i.i.i, i64 48, i1 false), !dbg !2257, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2258, !noalias !2199
  br i1 %i.q, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, label %bb.d, !dbg !2256

bb.d:                                             ; preds = %bb.c
  store i64 %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, ptr %i.e, align 8, !dbg !2254, !noalias !2199
  %.sroa.5.i.i.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2254
  store ptr %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !dbg !2254, !noalias !2199
  %.sroa.5.i.i.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2254
  store ptr %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !dbg !2254, !noalias !2199
  %.sroa.5.i.i.sroa.8.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.0..sroa_idx8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, i64 48, i1 false), !dbg !2254, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2260, !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2261, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !2261, !noalias !2201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2262, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !2262, !noalias !2199
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow3ffi19import_array_from_c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !2260, !noalias !2200

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2263
  %i.u = load i8, ptr %i.t, align 1, !dbg !2263, !range !2207, !alias.scope !2208, !noalias !2199, !noundef !73
  %i.v = icmp eq i8 %i.u, -40, !dbg !2264
  br i1 %i.v, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i, !dbg !2264, !prof !178

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2265
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i unwind label %bb.q, !dbg !2266, !noalias !2200

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2267, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2267, !noalias !2199
  %i.x = load i64, ptr %i.c, align 8, !dbg !2268, !range !159, !noalias !2199, !noundef !73 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 18, !dbg !2268
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2269
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2269, !noalias !2199 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2269
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !2269, !noalias !2199 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.h, !dbg !2270

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 48, i1 false), !dbg !2271, !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2272, !noalias !2199
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2273
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !2273, !range !2207, !alias.scope !2210, !noalias !2199, !noundef !73
  %i.ae = icmp eq i8 %i.ad, -40, !dbg !2274
  br i1 %i.ae, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i, !dbg !2274, !prof !178

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2265
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i unwind label %bb.r, !dbg !2275, !noalias !2200

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2272, !noalias !2199
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2276
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !2276, !range !2207, !alias.scope !2211, !noalias !2199, !noundef !73
  %i.ai = icmp eq i8 %i.ah, -40, !dbg !2277
  br i1 %i.ai, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i, !dbg !2277, !prof !178

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2265
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i unwind label %bb.l, !dbg !2278, !noalias !2200

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2212), !dbg !2265
  %i.am = load ptr, ptr %i.al, align 8, !dbg !2279, !alias.scope !2212, !noalias !2199, !noundef !73 ; 2 uses
  %i.an = icmp eq ptr %i.am, null, !dbg !2279
  br i1 %i.an, label %common.resume.i.i.i.i, label %bb.m, !dbg !2279

bb.m:                                             ; preds = %bb.l
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !2280, !noalias !2213
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !2281
  br i1 %i.ap, label %bb.n, label %common.resume.i.i.i.i, !dbg !2281

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !2282
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2283, !noalias !2200

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2214), !dbg !2265
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !2284, !alias.scope !2214, !noalias !2199, !noundef !73 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null, !dbg !2284
  br i1 %i.as, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, label %bb.o, !dbg !2284

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !dbg !2285, !noalias !2215
  %i.au = icmp eq i64 %i.at, 1, !dbg !2286
  br i1 %i.au, label %bb.p, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, !dbg !2286

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !2287
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #23, !dbg !2288, !noalias !2200
  br label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, !dbg !2288

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i: ; preds = %bb.p, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2265, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2289, !noalias !2196
  br label %bb.ab, !dbg !2290

bb.q:                                             ; preds = %bb.y, %bb.x, %bb.t, %bb.n, %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !2291, !noalias !2217
  unreachable, !dbg !2291

bb.r:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2218), !dbg !2265
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !2292, !alias.scope !2218, !noalias !2199, !noundef !73 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null, !dbg !2292
  br i1 %i.az, label %common.resume.i.i.i.i, label %bb.s, !dbg !2292

bb.s:                                             ; preds = %bb.r
  %i.ba = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !2293, !noalias !2219
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !2294
  br i1 %i.bb, label %bb.t, label %common.resume.i.i.i.i, !dbg !2294

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !2295
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2296, !noalias !2200

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2220), !dbg !2265
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !2297, !alias.scope !2220, !noalias !2199, !noundef !73 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null, !dbg !2297
  br i1 %i.be, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, label %bb.u, !dbg !2297

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i
  %i.bf = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !dbg !2298, !noalias !2221
  %i.bg = icmp eq i64 %i.bf, 1, !dbg !2299
  br i1 %i.bg, label %bb.v, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, !dbg !2299

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !2300
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #23, !dbg !2301, !noalias !2200
  br label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, !dbg !2301

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i: ; preds = %bb.v, %bb.u, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2265, !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2289, !noalias !2196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, i64 48, i1 false), !dbg !2249, !noalias !2196
  br label %bb.z, !dbg !2290

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2265 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2222), !dbg !2265
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !2302, !alias.scope !2222, !noalias !2199, !noundef !73 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !2302
  br i1 %i.bj, label %common.resume.i.i.i.i, label %bb.w, !dbg !2302

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i
  %i.bk = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !2303, !noalias !2223
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !2304
  br i1 %i.bl, label %bb.x, label %common.resume.i.i.i.i, !dbg !2304

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !2305
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2306, !noalias !2200

common.resume.i.i.i.i:                            ; preds = %bb.ac, %bb.y, %bb.x, %bb.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i, %bb.t, %bb.s, %bb.r, %bb.n, %bb.m, %bb.l
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.ac ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.y ], [ %i.s, %bb.w ], [ %i.aw, %bb.s ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.ak, %bb.l ], [ %i.aw, %bb.t ], [ %i.aw, %bb.r ], [ %i.s, %bb.x ], [ %i.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !2307

bb.y:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2308, !noalias !2217

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, i64 48, i1 false), !dbg !2258, !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2265, !noalias !2199
  call void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !2309, !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2289, !noalias !2196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, i64 48, i1 false), !dbg !2249, !noalias !2196
  call void @llvm.experimental.noalias.scope.decl(metadata !2224), !dbg !2249
  %.not.i.i4.i.i.i.i = icmp eq i64 %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, 18, !dbg !2310
  br i1 %.not.i.i4.i.i.i.i, label %bb.ab, label %bb.z, !dbg !2290

bb.z:                                             ; preds = %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i
  %.sroa.01.022.i.i.i.i = phi i64 [ %i.x, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.62.021.i.i.i.i = phi ptr [ %i.z, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.9.020.i.i.i.i = phi ptr [ %i.ab, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %i.bm = load i64, ptr %i.h, align 8, !dbg !2311, !range !159, !alias.scope !2225, !noalias !2226, !noundef !73
  %i.bn = icmp eq i64 %i.bm, 18, !dbg !2311
  br i1 %i.bn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i, label %bb.aa, !dbg !2311

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i unwind label %bb.ac, !dbg !2312, !noalias !2226

bb.ab:                                            ; preds = %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i
  %.sroa.62.014.i.i.i.i = phi ptr [ %i.z, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ]
  %.sroa.9.013.i.i.i.i = phi ptr [ %i.ab, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ]
  store ptr %.sroa.62.014.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !dbg !2313, !alias.scope !2227, !noalias !2228
  br label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit, !dbg !2314

bb.ac:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.022.i.i.i.i, ptr %i.h, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2315
  store ptr %.sroa.62.021.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2315
  store ptr %.sroa.9.020.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, i64 48, i1 false), !dbg !2315, !noalias !2232
  br label %common.resume.i.i.i.i, !dbg !2316

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  store i64 %.sroa.01.022.i.i.i.i, ptr %i.h, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.5.0..8.val.sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2315
  store ptr %.sroa.62.021.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i.i.i, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2315
  store ptr %.sroa.9.020.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i, align 8, !dbg !2315, !alias.scope !2182, !noalias !2226
  %.sroa.7.0..8.val.sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, i64 48, i1 false), !dbg !2315, !noalias !2232
  br label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit, !dbg !2317

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit: ; preds = %bb.ab, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i
  %.sink23.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.73.i.i.i, %bb.ab ], [ %.sroa.4.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.9.013.i.i.i.i, %bb.ab ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i ]
  store ptr %.sink.i.i.i.i.i, ptr %.sink23.i.i.sroa.phi.i.i.i, align 8, !dbg !2318, !alias.scope !2227, !noalias !2228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i), !dbg !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !2319
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !dbg !2320, !alias.scope !2233, !noalias !2234, !noundef !73 ; 2 uses
  %.sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i.i.i = load ptr, ptr %.sroa.73.i.i.i, align 8, !dbg !2320, !alias.scope !2233, !noalias !2234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !2321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i.i.i), !dbg !2321
  %i.bp = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0, !dbg !2322
  %.not = icmp eq ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, null, !dbg !2323
  %. = select i1 %.not, ptr undef, ptr %.sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i.i.i, !dbg !2324
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2325

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit, %bb.a
  %.10 = phi ptr [ undef, %bb.a ], [ %., %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit ]
  %i.bq = phi { ptr, ptr } [ { ptr null, ptr poison }, %bb.a ], [ %i.bp, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit ]
  %i.br = insertvalue { ptr, ptr } %i.bq, ptr %.10, 1, !dbg !2326
  ret { ptr, ptr } %i.br, !dbg !2326
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 !dbg !2327 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2333
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2333, !nonnull !73, !align !138, !noundef !73
  %i.c = load i64, ptr %i.b, align 8, !dbg !2334, !range !159, !noundef !73
  %.not = icmp eq i64 %i.c, 18, !dbg !2334
  %.val = load ptr, ptr %1, align 8, !dbg !2333, !nonnull !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2333
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !2333, !nonnull !73
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !2333
  %i.f = ptrtoint ptr %.val to i64, !dbg !2333
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !2333
  %i.h = lshr exact i64 %i.g, 3, !dbg !2333
  %.sink = select i1 %.not, i64 %i.h, i64 0, !dbg !2333
  store i64 0, ptr %0, align 8, !dbg !2335
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2335
  store i64 1, ptr %i.i, align 8, !dbg !2335
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2335
  store i64 %.sink, ptr %i.j, align 8, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !40 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2344   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2345

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2344
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2344, !nonnull !73, !noundef !73
  %i.c = shl nuw i64 %.val, 4, !dbg !2346
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2347
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2348

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2349
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2350 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2358   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2359

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2358
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2358, !nonnull !73, !noundef !73
  %i.c = shl nuw i64 %.val, 4, !dbg !2360
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2361
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2362

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2363
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2364 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2372   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2373

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2372
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2372, !nonnull !73, !noundef !73
  %i.c = mul nuw i64 %.val, 160, !dbg !2374
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2375
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2376

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2377
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2378 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2386   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2387

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2386
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2386, !nonnull !73, !noundef !73
  %i.c = mul nuw i64 %.val, 80, !dbg !2388
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2389
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2390

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2391
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2392 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2400   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2401

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2400
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2400, !nonnull !73, !noundef !73
  %i.c = mul nuw i64 %.val, 48, !dbg !2402
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2403
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2404

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2405
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2406 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2414   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2415

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2414
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2414, !nonnull !73, !noundef !73
  %i.c = mul nuw i64 %.val, 72, !dbg !2416
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2417
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2418

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2419
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2420 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2428   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2429

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2428
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2428, !nonnull !73, !noundef !73
  %i.c = shl nuw i64 %.val, 3, !dbg !2430
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2431
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2432

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2433
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !9 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2440   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2441

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2440
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2440, !nonnull !73, !noundef !73
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !2442
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2443

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2444
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2445 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2453   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2454

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2453
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2453, !nonnull !73, !noundef !73
  %i.c = shl nuw i64 %.val, 2, !dbg !2455
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !dbg !2456
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2457

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2458
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1969 = !DILocation(line: 469, column: 19, scope: !1939)
!1970 = !DILocation(line: 471, column: 30, scope: !1939)
!1971 = !DILocation(line: 0, scope: !1950)
!1972 = !DILocation(line: 42, column: 26, scope: !1940, inlinedAt: !1951)
!1973 = !DILocation(line: 477, column: 9, scope: !1941)
!1974 = distinct !DISubprogram(name: "new_uninit_in<polars_core::datatypes::dtype::DataType, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi", scope: !1983, file: !129, line: 574, type: !74, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!1975 = distinct !DISubprogram(name: "try_new_uninit_in<polars_core::datatypes::dtype::DataType, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE17try_new_uninit_inCslIvKsLJE9Zc_10polars_ffi", scope: !1983, file: !129, line: 606, type: !74, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!1976 = distinct !DILexicalBlock(scope: !1975, file: !129, line: 613, column: 13)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !129, line: 578, column: 9)
!1978 = distinct !DILocation(line: 581, column: 15, scope: !1977)
!1979 = distinct !DILocation(line: 614, column: 19, scope: !1976, inlinedAt: !1978)
!1980 = distinct !DILocation(line: 449, column: 14, scope: !62, inlinedAt: !1979)
!1981 = distinct !DILocation(line: 332, column: 9, scope: !61, inlinedAt: !1980)
!1982 = distinct !DILocation(line: 210, column: 73, scope: !44, inlinedAt: !1981)
!1983 = !DINamespace(name: "{impl#1}", scope: !130)
!1984 = !DILocation(line: 210, scope: !44, inlinedAt: !1981)
!1985 = !DILocation(line: 101, column: 9, scope: !45, inlinedAt: !1982)
!1986 = !DILocation(line: 581, column: 15, scope: !1977)
!1987 = !DILocation(line: 581, column: 9, scope: !1977)
!1988 = !DILocation(line: 583, column: 23, scope: !1977)
!1989 = !DILocation(line: 585, column: 6, scope: !1974)
!1990 = distinct !DISubprogram(name: "next<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2J_", scope: !194, file: !146, line: 176, type: !74, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!1991 = distinct !{!1991, !"_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_"}
!1992 = distinct !{!1992, !1991, !"_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_: argument 0"}
!1993 = distinct !DISubprogram(name: "try_for_each<core::iter::adapters::GenericShunt<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB8_6traits8iterator8Iterator12try_for_eachNcNtINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1I_5array5ArrayEL_EE5Break0B5U_EB2H_", scope: !155, file: !152, line: 2560, type: !74, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!1994 = distinct !DISubprogram(name: "try_fold<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>", linkageName: "_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_", scope: !194, file: !146, line: 189, type: !74, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!1995 = distinct !DILocation(line: 2571, column: 14, scope: !1993, inlinedAt: !2180)
!1996 = distinct !{!1996, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1u_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7K_5Break0E0B7K_E0IB7L_B7K_EEB2t_"}
!1997 = distinct !{!1997, !1996, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1u_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7K_5Break0E0B7K_E0IB7L_B7K_EEB2t_: argument 1"}
!1998 = distinct !{!1998, !1996, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1u_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7K_5Break0E0B7K_E0IB7L_B7K_EEB2t_: argument 2"}
!1999 = distinct !{!1999, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBQ_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5j_B3C_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B68_EIB3h_NtNtBa_7convert10InfallibleB4z_EEB1J_8try_folduNCINvNvB1J_12try_for_each4callB3C_B5X_NcNtB5X_5Break0E0B5X_E0E0B5i_EB6e_"}
!2000 = distinct !{!2000, !1999, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBQ_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5j_B3C_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B68_EIB3h_NtNtBa_7convert10InfallibleB4z_EEB1J_8try_folduNCINvNvB1J_12try_for_each4callB3C_B5X_NcNtB5X_5Break0E0B5X_E0E0B5i_EB6e_: argument 1"}
!2001 = distinct !DISubprogram(name: "try_fold<core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, polars_error::PolarsError>, core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1u_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7K_5Break0E0B7K_E0IB7L_B7K_EEB2t_", scope: !174, file: !172, line: 115, type: !74, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2002 = distinct !DILocation(line: 195, column: 14, scope: !1994, inlinedAt: !1995)
!2003 = distinct !{!2003, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslIvKsLJE9Zc_10polars_ffi"}
!2004 = distinct !{!2004, !2003, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2005 = distinct !{!2005, !1996, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1u_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7K_5Break0E0B7K_E0IB7L_B7K_EEB2t_: argument 0"}
!2006 = distinct !{!2006, !1999, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBQ_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5j_B3C_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B68_EIB3h_NtNtBa_7convert10InfallibleB4z_EEB1J_8try_folduNCINvNvB1J_12try_for_each4callB3C_B5X_NcNtB5X_5Break0E0B5X_E0E0B5i_EB6e_: argument 0"}
!2007 = distinct !DISubprogram(name: "next<*mut polars_arrow::ffi::generated::ArrowArray>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslIvKsLJE9Zc_10polars_ffi", scope: !2189, file: !2186, line: 157, type: !74, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2008 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&*mut polars_arrow::ffi::generated::ArrowArray, core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, ()>, polars_ffi::version_0::import_series::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBQ_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5j_B3C_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B68_EIB3h_NtNtBa_7convert10InfallibleB4z_EEB1J_8try_folduNCINvNvB1J_12try_for_each4callB3C_B5X_NcNtB5X_5Break0E0B5X_E0E0B5i_EB6e_", scope: !155, file: !152, line: 2501, type: !90, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2009 = distinct !DILexicalBlock(scope: !2008, file: !152, line: 2507, column: 9)
!2010 = distinct !DILexicalBlock(scope: !2009, file: !152, line: 2508, column: 41)
!2011 = distinct !DILocation(line: 121, column: 19, scope: !2001, inlinedAt: !2002)
!2012 = distinct !DILocation(line: 2508, column: 34, scope: !2010, inlinedAt: !2011)
!2013 = distinct !DILexicalBlock(scope: !2007, file: !2186, line: 161, column: 17)
!2014 = distinct !DISubprogram(name: "eq<*mut polars_arrow::ffi::generated::ArrowArray>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtB9_3cmp9PartialEq2eqCslIvKsLJE9Zc_10polars_ffi", scope: !2190, file: !140, line: 1716, type: !74, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !2186, line: 162, column: 17)
!2016 = distinct !DILocation(line: 180, column: 28, scope: !2015, inlinedAt: !2012)
!2017 = distinct !DISubprogram(name: "add<*mut polars_arrow::ffi::generated::ArrowArray>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayE3addCslIvKsLJE9Zc_10polars_ffi", scope: !142, file: !140, line: 651, type: !74, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2018 = distinct !DILocation(line: 185, column: 40, scope: !2015, inlinedAt: !2012)
!2019 = distinct !{!2019, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB17_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2l_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4S_EIB20_NtNtBa_7convert10InfallibleB3j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7D_12try_for_each4callB2l_B4H_NcNtB4H_5Break0E0B4H_E0E0B4Y_"}
!2020 = distinct !{!2020, !2019, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB17_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2l_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4S_EIB20_NtNtBa_7convert10InfallibleB3j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7D_12try_for_each4callB2l_B4H_NcNtB4H_5Break0E0B4H_E0E0B4Y_: argument 0"}
!2021 = distinct !DISubprogram(name: "{closure#0}<&*mut polars_arrow::ffi::generated::ArrowArray, core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, ()>, polars_ffi::version_0::import_series::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB17_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2l_EENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4S_EIB20_NtNtBa_7convert10InfallibleB3j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7D_12try_for_each4callB2l_B4H_NcNtB4H_5Break0E0B4H_E0E0B4Y_", scope: !2193, file: !172, line: 95, type: !90, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2022 = distinct !DILocation(line: 2509, column: 21, scope: !2010, inlinedAt: !2011)
!2023 = distinct !DISubprogram(name: "read<polars_arrow::ffi::generated::ArrowArray>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 1682, type: !74, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2024 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_", scope: !2197, file: !175, line: 95, type: !90, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2025 = distinct !DILocation(line: 95, column: 28, scope: !2021, inlinedAt: !2022)
!2026 = distinct !DILocation(line: 96, column: 23, scope: !2024, inlinedAt: !2025)
!2027 = distinct !{!2027, !"_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_"}
!2028 = distinct !{!2028, !2027, !"_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_: argument 0"}
!2029 = distinct !DILexicalBlock(scope: !2024, file: !175, line: 96, column: 13)
!2030 = distinct !{!2030, !"_RNvCslIvKsLJE9Zc_10polars_ffi12import_array"}
!2031 = distinct !{!2031, !2030, !"_RNvCslIvKsLJE9Zc_10polars_ffi12import_array: argument 2"}
!2032 = distinct !{!2032, !2030, !"_RNvCslIvKsLJE9Zc_10polars_ffi12import_array: argument 1"}
!2033 = distinct !{!2033, !2030, !"_RNvCslIvKsLJE9Zc_10polars_ffi12import_array: argument 0"}
!2034 = distinct !DISubprogram(name: "import_array", linkageName: "_RNvCslIvKsLJE9Zc_10polars_ffi12import_array", scope: !176, file: !168, line: 28, type: !74, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2035 = distinct !DILocation(line: 97, column: 13, scope: !2029, inlinedAt: !2025)
!2036 = distinct !DISubprogram(name: "branch<polars_arrow::datatypes::field::Field, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi", scope: !160, file: !117, line: 2172, type: !74, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2037 = distinct !DILocation(line: 32, column: 17, scope: !2034, inlinedAt: !2035)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !168, line: 32, column: 5)
!2039 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !2205, file: !2202, line: 609, type: !74, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2040 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !2205, file: !2202, line: 446, type: !74, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2041 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !2206, file: !2202, line: 776, type: !74, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2042 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2043 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2044 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2045 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2046 = distinct !DILocation(line: 810, column: 1, scope: !2044, inlinedAt: !2045)
!2047 = distinct !DILocation(line: 810, column: 1, scope: !2043, inlinedAt: !2046)
!2048 = distinct !DILocation(line: 810, column: 1, scope: !2042, inlinedAt: !2047)
!2049 = distinct !DILocation(line: 779, column: 17, scope: !2041, inlinedAt: !2048)
!2050 = distinct !DILocation(line: 447, column: 30, scope: !2040, inlinedAt: !2049)
!2051 = distinct !{!2051, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi"}
!2052 = distinct !{!2052, !2051, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2053 = distinct !{!2053, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi"}
!2054 = distinct !{!2054, !2053, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2055 = distinct !{!2055, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi"}
!2056 = distinct !{!2056, !2055, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2057 = distinct !{!2057, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!2058 = distinct !{!2058, !2057, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!2059 = distinct !DISubprogram(name: "branch<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi", scope: !160, file: !117, line: 2172, type: !74, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2060 = distinct !DILocation(line: 33, column: 15, scope: !2038, inlinedAt: !2035)
!2061 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2062 = distinct !DILocation(line: 810, column: 1, scope: !2044, inlinedAt: !2061)
!2063 = distinct !DILocation(line: 810, column: 1, scope: !2043, inlinedAt: !2062)
!2064 = distinct !DILocation(line: 810, column: 1, scope: !2042, inlinedAt: !2063)
!2065 = distinct !DILocation(line: 779, column: 17, scope: !2041, inlinedAt: !2064)
!2066 = distinct !DILocation(line: 447, column: 30, scope: !2040, inlinedAt: !2065)
!2067 = distinct !{!2067, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi"}
!2068 = distinct !{!2068, !2067, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2069 = distinct !{!2069, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi"}
!2070 = distinct !{!2070, !2069, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2071 = distinct !{!2071, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi"}
!2072 = distinct !{!2072, !2071, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2073 = distinct !{!2073, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!2074 = distinct !{!2074, !2073, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!2075 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2076 = distinct !DILocation(line: 810, column: 1, scope: !2044, inlinedAt: !2075)
!2077 = distinct !DILocation(line: 810, column: 1, scope: !2043, inlinedAt: !2076)
!2078 = distinct !DILocation(line: 810, column: 1, scope: !2042, inlinedAt: !2077)
!2079 = distinct !DILocation(line: 779, column: 17, scope: !2041, inlinedAt: !2078)
!2080 = distinct !DILocation(line: 447, column: 30, scope: !2040, inlinedAt: !2079)
!2081 = distinct !{!2081, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi"}
!2082 = distinct !{!2082, !2081, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2083 = distinct !{!2083, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi"}
!2084 = distinct !{!2084, !2083, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2085 = distinct !{!2085, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi"}
!2086 = distinct !{!2086, !2085, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2087 = distinct !{!2087, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!2088 = distinct !{!2088, !2087, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!2089 = distinct !{!2089, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi"}
!2090 = distinct !{!2090, !2089, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2091 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::sync::Arc<alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2092 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2093 = distinct !{!2093, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi"}
!2094 = distinct !{!2094, !2093, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2095 = distinct !{!2095, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi"}
!2096 = distinct !{!2096, !2095, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2097 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECslIvKsLJE9Zc_10polars_ffi", scope: !78, file: !75, line: 3950, type: !74, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2098 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !79, file: !75, line: 3191, type: !74, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2099 = distinct !DISubprogram(name: "drop<alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !145, file: !143, line: 2810, type: !74, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2100 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2101 = distinct !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2092)
!2102 = distinct !DILocation(line: 810, column: 1, scope: !2100, inlinedAt: !2101)
!2103 = distinct !DILocation(line: 2814, column: 32, scope: !2099, inlinedAt: !2102)
!2104 = distinct !DILocation(line: 3193, column: 26, scope: !2098, inlinedAt: !2103)
!2105 = distinct !DILocation(line: 64, column: 9, scope: !2099, inlinedAt: !2102)
!2106 = distinct !{!2106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi"}
!2107 = distinct !{!2107, !2106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2108 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2109 = distinct !{!2109, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi"}
!2110 = distinct !{!2110, !2109, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2111 = distinct !{!2111, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi"}
!2112 = distinct !{!2112, !2111, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2113 = distinct !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2108)
!2114 = distinct !DILocation(line: 810, column: 1, scope: !2100, inlinedAt: !2113)
!2115 = distinct !DILocation(line: 2814, column: 32, scope: !2099, inlinedAt: !2114)
!2116 = distinct !DILocation(line: 3193, column: 26, scope: !2098, inlinedAt: !2115)
!2117 = distinct !DILocation(line: 64, column: 9, scope: !2099, inlinedAt: !2114)
!2118 = distinct !DISubprogram(name: "branch<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi", scope: !160, file: !117, line: 2172, type: !74, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2119 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB59_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1N_5array5ArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6l_ENcNtB7j_5Break0E0B7j_E0B2M_", scope: !2216, file: !146, line: 195, type: !90, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2120 = distinct !DILocation(line: 95, column: 21, scope: !2021, inlinedAt: !2022)
!2121 = distinct !DILocation(line: 195, column: 44, scope: !2119, inlinedAt: !2120)
!2122 = distinct !{!2122, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi"}
!2123 = distinct !{!2123, !2122, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2124 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2125 = distinct !{!2125, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi"}
!2126 = distinct !{!2126, !2125, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2127 = distinct !{!2127, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi"}
!2128 = distinct !{!2128, !2127, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2129 = distinct !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2124)
!2130 = distinct !DILocation(line: 810, column: 1, scope: !2100, inlinedAt: !2129)
!2131 = distinct !DILocation(line: 2814, column: 32, scope: !2099, inlinedAt: !2130)
!2132 = distinct !DILocation(line: 3193, column: 26, scope: !2098, inlinedAt: !2131)
!2133 = distinct !DILocation(line: 64, column: 9, scope: !2099, inlinedAt: !2130)
!2134 = distinct !{!2134, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi"}
!2135 = distinct !{!2135, !2134, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2136 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2137 = distinct !{!2137, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi"}
!2138 = distinct !{!2138, !2137, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2139 = distinct !{!2139, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi"}
!2140 = distinct !{!2140, !2139, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2141 = distinct !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2136)
!2142 = distinct !DILocation(line: 810, column: 1, scope: !2100, inlinedAt: !2141)
!2143 = distinct !DILocation(line: 2814, column: 32, scope: !2099, inlinedAt: !2142)
!2144 = distinct !DILocation(line: 3193, column: 26, scope: !2098, inlinedAt: !2143)
!2145 = distinct !DILocation(line: 64, column: 9, scope: !2099, inlinedAt: !2142)
!2146 = distinct !{!2146, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi"}
!2147 = distinct !{!2147, !2146, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2148 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2149 = distinct !{!2149, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi"}
!2150 = distinct !{!2150, !2149, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2151 = distinct !{!2151, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi"}
!2152 = distinct !{!2152, !2151, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2153 = distinct !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2148)
!2154 = distinct !DILocation(line: 810, column: 1, scope: !2100, inlinedAt: !2153)
!2155 = distinct !DILocation(line: 2814, column: 32, scope: !2099, inlinedAt: !2154)
!2156 = distinct !DILocation(line: 3193, column: 26, scope: !2098, inlinedAt: !2155)
!2157 = distinct !DILocation(line: 64, column: 9, scope: !2099, inlinedAt: !2154)
!2158 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2159 = distinct !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2160 = distinct !{!2160, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB59_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1N_5array5ArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6l_ENcNtB7j_5Break0E0B7j_E0B2M_"}
!2161 = distinct !{!2161, !2160, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB59_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1N_5array5ArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6l_ENcNtB7j_5Break0E0B7j_E0B2M_: argument 0"}
!2162 = distinct !{!2162, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi"}
!2163 = distinct !{!2163, !2162, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2164 = distinct !{!2164, !2160, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB59_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1N_5array5ArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6l_ENcNtB7j_5Break0E0B7j_E0B2M_: argument 1"}
!2165 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<core::convert::Infallible, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi", scope: !84, file: !83, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2166 = distinct !DILexicalBlock(scope: !2119, file: !146, line: 197, column: 17)
!2167 = distinct !DILocation(line: 198, column: 21, scope: !2166, inlinedAt: !2120)
!2168 = distinct !DILocation(line: 810, column: 1, scope: !2165, inlinedAt: !2167)
!2169 = distinct !DISubprogram(name: "from_try<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB5_11ControlFlowIBL_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE8from_tryCslIvKsLJE9Zc_10polars_ffi", scope: !2231, file: !2229, line: 429, type: !74, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2170 = distinct !DILexicalBlock(scope: !2169, file: !2229, line: 432, column: 13)
!2171 = distinct !DILexicalBlock(scope: !2119, file: !146, line: 196, column: 17)
!2172 = distinct !DILocation(line: 196, column: 45, scope: !2171, inlinedAt: !2120)
!2173 = distinct !{!2173, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtB4_9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi"}
!2174 = distinct !{!2174, !2173, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtB4_9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi: argument 1"}
!2175 = distinct !{!2175, !2173, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtB4_9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi: argument 0"}
!2176 = distinct !DISubprogram(name: "branch<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>, ()>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtB4_9try_trait3Try6branchCslIvKsLJE9Zc_10polars_ffi", scope: !2235, file: !2229, line: 115, type: !74, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2177 = distinct !DILocation(line: 2509, column: 21, scope: !2010, inlinedAt: !2011)
!2178 = distinct !DISubprogram(name: "break_value<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, ()>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB5_11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE11break_valueCslIvKsLJE9Zc_10polars_ffi", scope: !2231, file: !2229, line: 190, type: !74, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2179 = !{!1992}
!2180 = !DILocation(line: 177, column: 14, scope: !1990)
!2181 = !{!1997}
!2182 = !{!1998}
!2183 = !{!2000}
!2184 = !{!2004, !2000, !1997, !1992}
!2185 = !{!2006, !2005, !1998}
!2186 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "87d1f0c2746f51593d75ddf4c9271f14")
!2187 = !DINamespace(name: "slice", scope: !76)
!2188 = !DINamespace(name: "iter", scope: !2187)
!2189 = !DINamespace(name: "{impl#171}", scope: !2188)
!2190 = !DINamespace(name: "{impl#15}", scope: !141)
!2191 = !{!2006, !2000, !2005, !1997, !1998, !1992}
!2192 = !{!2020}
!2193 = !DINamespace(name: "map_try_fold", scope: !173)
!2194 = !{!1997, !1992}
!2195 = !{!2020, !2006, !2000, !2005, !1998}
!2196 = !{!2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2197 = !DINamespace(name: "import_series", scope: !177)
!2198 = !{!2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2199 = !{!2033, !2032, !2031, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2200 = !{!2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2201 = !{!2033, !2031, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2202 = !DIFile(filename: "src/repr/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "75dfb465d6c97cf0f66f252751410a59")
!2203 = !DINamespace(name: "compact_str", scope: null)
!2204 = !DINamespace(name: "repr", scope: !2203)
!2205 = !DINamespace(name: "Repr", scope: !2204)
!2206 = !DINamespace(name: "{impl#4}", scope: !2204)
!2207 = !{i8 0, i8 -38}
!2208 = !{!2058, !2056, !2054, !2052}
!2209 = !{!2032, !2031, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2210 = !{!2074, !2072, !2070, !2068}
!2211 = !{!2088, !2086, !2084, !2082}
!2212 = !{!2090}
!2213 = !{!2096, !2094, !2090, !2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2214 = !{!2107}
!2215 = !{!2112, !2110, !2107, !2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2216 = !DINamespace(name: "try_fold", scope: !194)
!2217 = !{!2033, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2218 = !{!2123}
!2219 = !{!2128, !2126, !2123, !2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2220 = !{!2135}
!2221 = !{!2140, !2138, !2135, !2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2222 = !{!2147}
!2223 = !{!2152, !2150, !2147, !2033, !2032, !2028, !2020, !2006, !2000, !2005, !1997, !1998, !1992}
!2224 = !{!2161}
!2225 = !{!2163, !1998}
!2226 = !{!2161, !2164, !2020, !2006, !2000, !2005, !1997, !1992}
!2227 = !{!2161, !2020}
!2228 = !{!2164, !2006, !2000, !2005, !1997, !1998, !1992}
!2229 = !DIFile(filename: "library/core/src/ops/control_flow.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c18dd312dbf3030aa6bcafa45bc21974")
!2230 = !DINamespace(name: "control_flow", scope: !103)
!2231 = !DINamespace(name: "ControlFlow", scope: !2230)
!2232 = !{!2161, !2020, !2006, !2000, !2005, !1997, !1992}
!2233 = !{!2174}
!2234 = !{!2175, !2006, !2000, !2005, !1997, !1998, !1992}
!2235 = !DINamespace(name: "{impl#0}", scope: !2230)
!2236 = !DILocation(line: 177, column: 47, scope: !1990)
!2237 = !DILocation(line: 2571, column: 14, scope: !1993, inlinedAt: !2180)
!2238 = !DILocation(line: 195, column: 29, scope: !1994, inlinedAt: !1995)
!2239 = !DILocation(line: 195, column: 14, scope: !1994, inlinedAt: !1995)
!2240 = !DILocation(line: 121, column: 19, scope: !2001, inlinedAt: !2002)
!2241 = !DILocation(line: 161, column: 27, scope: !2007, inlinedAt: !2012)
!2242 = !DILocation(line: 162, column: 34, scope: !2013, inlinedAt: !2012)
!2243 = !DILocation(line: 1717, column: 9, scope: !2014, inlinedAt: !2016)
!2244 = !DILocation(line: 180, column: 28, scope: !2015, inlinedAt: !2012)
!2245 = !DILocation(line: 121, column: 47, scope: !2001, inlinedAt: !2002)
!2246 = !DILocation(line: 659, column: 28, scope: !2017, inlinedAt: !2018)
!2247 = !DILocation(line: 185, column: 25, scope: !2015, inlinedAt: !2012)
!2248 = !DILocation(line: 2509, column: 21, scope: !2010, inlinedAt: !2011)
!2249 = !DILocation(line: 95, column: 21, scope: !2021, inlinedAt: !2022)
!2250 = !DILocation(line: 95, column: 28, scope: !2021, inlinedAt: !2022)
!2251 = !DILocation(line: 1721, column: 9, scope: !2023, inlinedAt: !2026)
!2252 = !DILocation(line: 97, column: 31, scope: !2029, inlinedAt: !2025)
!2253 = !DILocation(line: 32, column: 9, scope: !2034, inlinedAt: !2035)
!2254 = !DILocation(line: 32, column: 17, scope: !2034, inlinedAt: !2035)
!2255 = !DILocation(line: 2173, column: 15, scope: !2036, inlinedAt: !2037)
!2256 = !DILocation(line: 2173, column: 9, scope: !2036, inlinedAt: !2037)
!2257 = !DILocation(line: 0, scope: !2036, inlinedAt: !2037)
!2258 = !DILocation(line: 32, column: 49, scope: !2034, inlinedAt: !2035)
!2259 = !DILocation(line: 32, column: 50, scope: !2034, inlinedAt: !2035)
!2260 = !DILocation(line: 33, column: 15, scope: !2038, inlinedAt: !2035)
!2261 = !DILocation(line: 33, column: 40, scope: !2038, inlinedAt: !2035)
!2262 = !DILocation(line: 33, column: 47, scope: !2038, inlinedAt: !2035)
!2263 = !DILocation(line: 612, column: 33, scope: !2039, inlinedAt: !2050)
!2264 = !DILocation(line: 779, column: 12, scope: !2041, inlinedAt: !2048)
!2265 = !DILocation(line: 35, column: 1, scope: !2034, inlinedAt: !2035)
!2266 = !DILocation(line: 780, column: 13, scope: !2041, inlinedAt: !2048)
!2267 = !DILocation(line: 33, column: 58, scope: !2038, inlinedAt: !2035)
!2268 = !DILocation(line: 2173, column: 15, scope: !2059, inlinedAt: !2060)
!2269 = !DILocation(line: 0, scope: !2059, inlinedAt: !2060)
!2270 = !DILocation(line: 2173, column: 9, scope: !2059, inlinedAt: !2060)
!2271 = !DILocation(line: 2175, column: 17, scope: !2059, inlinedAt: !2060)
!2272 = !DILocation(line: 33, column: 59, scope: !2038, inlinedAt: !2035)
!2273 = !DILocation(line: 612, column: 33, scope: !2039, inlinedAt: !2066)
!2274 = !DILocation(line: 779, column: 12, scope: !2041, inlinedAt: !2064)
!2275 = !DILocation(line: 780, column: 13, scope: !2041, inlinedAt: !2064)
!2276 = !DILocation(line: 612, column: 33, scope: !2039, inlinedAt: !2080)
!2277 = !DILocation(line: 779, column: 12, scope: !2041, inlinedAt: !2078)
!2278 = !DILocation(line: 780, column: 13, scope: !2041, inlinedAt: !2078)
!2279 = !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2092)
!2280 = !DILocation(line: 3956, column: 24, scope: !2097, inlinedAt: !2104)
!2281 = !DILocation(line: 2814, column: 12, scope: !2099, inlinedAt: !2102)
!2282 = !DILocation(line: 4387, column: 24, scope: !39, inlinedAt: !2105)
!2283 = !DILocation(line: 2857, column: 18, scope: !2099, inlinedAt: !2102)
!2284 = !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2108)
!2285 = !DILocation(line: 3956, column: 24, scope: !2097, inlinedAt: !2116)
!2286 = !DILocation(line: 2814, column: 12, scope: !2099, inlinedAt: !2114)
!2287 = !DILocation(line: 4387, column: 24, scope: !39, inlinedAt: !2117)
!2288 = !DILocation(line: 2857, column: 18, scope: !2099, inlinedAt: !2114)
!2289 = !DILocation(line: 98, column: 10, scope: !2024, inlinedAt: !2025)
!2290 = !DILocation(line: 2173, column: 9, scope: !2118, inlinedAt: !2121)
!2291 = !DILocation(line: 28, column: 1, scope: !2034, inlinedAt: !2035)
!2292 = !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2124)
!2293 = !DILocation(line: 3956, column: 24, scope: !2097, inlinedAt: !2132)
!2294 = !DILocation(line: 2814, column: 12, scope: !2099, inlinedAt: !2130)
!2295 = !DILocation(line: 4387, column: 24, scope: !39, inlinedAt: !2133)
!2296 = !DILocation(line: 2857, column: 18, scope: !2099, inlinedAt: !2130)
!2297 = !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2136)
!2298 = !DILocation(line: 3956, column: 24, scope: !2097, inlinedAt: !2144)
!2299 = !DILocation(line: 2814, column: 12, scope: !2099, inlinedAt: !2142)
!2300 = !DILocation(line: 4387, column: 24, scope: !39, inlinedAt: !2145)
!2301 = !DILocation(line: 2857, column: 18, scope: !2099, inlinedAt: !2142)
!2302 = !DILocation(line: 810, column: 1, scope: !2091, inlinedAt: !2148)
!2303 = !DILocation(line: 3956, column: 24, scope: !2097, inlinedAt: !2156)
!2304 = !DILocation(line: 2814, column: 12, scope: !2099, inlinedAt: !2154)
!2305 = !DILocation(line: 4387, column: 24, scope: !39, inlinedAt: !2157)
!2306 = !DILocation(line: 2857, column: 18, scope: !2099, inlinedAt: !2154)
!2307 = !DILocation(line: 95, scope: !2021, inlinedAt: !2022)
!2308 = !DILocation(line: 810, column: 1, scope: !46, inlinedAt: !2158)
!2309 = !DILocation(line: 810, column: 1, scope: !46, inlinedAt: !2159)
!2310 = !DILocation(line: 2173, column: 15, scope: !2118, inlinedAt: !2121)
!2311 = !DILocation(line: 810, column: 1, scope: !2165, inlinedAt: !2167)
!2312 = !DILocation(line: 810, column: 1, scope: !42, inlinedAt: !2168)
!2313 = !DILocation(line: 432, column: 38, scope: !2170, inlinedAt: !2172)
!2314 = !DILocation(line: 432, column: 76, scope: !2169, inlinedAt: !2172)
!2315 = !DILocation(line: 198, column: 21, scope: !2166, inlinedAt: !2120)
!2316 = !DILocation(line: 195, column: 29, scope: !2119, inlinedAt: !2120)
!2317 = !DILocation(line: 200, column: 17, scope: !2119, inlinedAt: !2120)
!2318 = !DILocation(line: 0, scope: !2119, inlinedAt: !2120)
!2319 = !DILocation(line: 95, column: 34, scope: !2021, inlinedAt: !2022)
!2320 = !DILocation(line: 118, column: 32, scope: !2176, inlinedAt: !2177)
!2321 = !DILocation(line: 2509, column: 32, scope: !2010, inlinedAt: !2011)
!2322 = !DILocation(line: 203, column: 6, scope: !1994, inlinedAt: !1995)
!2323 = !DILocation(line: 194, column: 15, scope: !2178, inlinedAt: !2236)
!2324 = !DILocation(line: 0, scope: !2178, inlinedAt: !2236)
!2325 = !DILocation(line: 198, column: 5, scope: !2178, inlinedAt: !2236)
!2326 = !DILocation(line: 178, column: 6, scope: !1990)
!2327 = distinct !DISubprogram(name: "size_hint<core::iter::adapters::map::Map<core::slice::iter::Iter<*mut polars_arrow::ffi::generated::ArrowArray>, polars_ffi::version_0::import_series::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2J_", scope: !194, file: !146, line: 180, type: !74, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2328 = distinct !DISubprogram(name: "is_some<core::result::Result<core::convert::Infallible, polars_error::PolarsError>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE7is_someCslIvKsLJE9Zc_10polars_ffi", scope: !183, file: !181, line: 635, type: !74, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2329 = distinct !DILexicalBlock(scope: !2328, file: !2331, line: 429, column: 9)
!2330 = !DILexicalBlockFile(scope: !2329, file: !181, discriminator: 0)
!2331 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "05d0820999e50315dc32c83aa7c28669")
!2332 = !DILocation(line: 181, column: 26, scope: !2327)
!2333 = !DILocation(line: 181, column: 12, scope: !2327)
!2334 = !DILocation(line: 636, column: 18, scope: !2330, inlinedAt: !2332)
!2335 = !DILocation(line: 0, scope: !2327)
!2336 = !DILocation(line: 187, column: 6, scope: !2327)
!2337 = distinct !DILocation(line: 424, column: 29, scope: !40)
!2338 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2337)
!2339 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2338)
!2340 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2337)
!2341 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2340)
!2342 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2341)
!2343 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2342)
!2344 = !DILocation(line: 424, column: 29, scope: !40)
!2345 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2338)
!2346 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2339)
!2347 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2343)
!2348 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2342)
!2349 = !DILocation(line: 425, column: 6, scope: !40)
!2350 = distinct !DISubprogram(name: "drop<polars_core::series::Series, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2351 = distinct !DILocation(line: 424, column: 29, scope: !2350)
!2352 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2351)
!2353 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2352)
!2354 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2351)
!2355 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2354)
!2356 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2355)
!2357 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2356)
!2358 = !DILocation(line: 424, column: 29, scope: !2350)
!2359 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2352)
!2360 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2353)
!2361 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2357)
!2362 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2356)
!2363 = !DILocation(line: 425, column: 6, scope: !2350)
!2364 = distinct !DISubprogram(name: "drop<polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2365 = distinct !DILocation(line: 424, column: 29, scope: !2364)
!2366 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2365)
!2367 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2366)
!2368 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2365)
!2369 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2368)
!2370 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2369)
!2371 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2370)
!2372 = !DILocation(line: 424, column: 29, scope: !2364)
!2373 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2366)
!2374 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2367)
!2375 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2371)
!2376 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2370)
!2377 = !DILocation(line: 425, column: 6, scope: !2364)
!2378 = distinct !DISubprogram(name: "drop<polars_core::datatypes::field::Field, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2379 = distinct !DILocation(line: 424, column: 29, scope: !2378)
!2380 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2379)
!2381 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2380)
!2382 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2379)
!2383 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2382)
!2384 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2383)
!2385 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2384)
!2386 = !DILocation(line: 424, column: 29, scope: !2378)
!2387 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2380)
!2388 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2381)
!2389 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2385)
!2390 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2384)
!2391 = !DILocation(line: 425, column: 6, scope: !2378)
!2392 = distinct !DISubprogram(name: "drop<polars_core::datatypes::any_value::AnyValue, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2393 = distinct !DILocation(line: 424, column: 29, scope: !2392)
!2394 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2393)
!2395 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2394)
!2396 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2393)
!2397 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2396)
!2398 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2397)
!2399 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2398)
!2400 = !DILocation(line: 424, column: 29, scope: !2392)
!2401 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2394)
!2402 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2395)
!2403 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2399)
!2404 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2398)
!2405 = !DILocation(line: 425, column: 6, scope: !2392)
!2406 = distinct !DISubprogram(name: "drop<polars_arrow::datatypes::field::Field, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2407 = distinct !DILocation(line: 424, column: 29, scope: !2406)
!2408 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2407)
!2409 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2408)
!2410 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2407)
!2411 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2410)
!2412 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2411)
!2413 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2412)
!2414 = !DILocation(line: 424, column: 29, scope: !2406)
!2415 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2408)
!2416 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2409)
!2417 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2413)
!2418 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2412)
!2419 = !DILocation(line: 425, column: 6, scope: !2406)
!2420 = distinct !DISubprogram(name: "drop<*mut polars_arrow::ffi::generated::ArrowArray, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi", scope: !91, file: !86, line: 422, type: !74, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73)
!2421 = distinct !DILocation(line: 424, column: 29, scope: !2420)
!2422 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2421)
!2423 = distinct !DILocation(line: 642, column: 53, scope: !6, inlinedAt: !2422)
!2424 = distinct !DILocation(line: 876, column: 28, scope: !8, inlinedAt: !2421)
!2425 = distinct !DILocation(line: 462, column: 23, scope: !14, inlinedAt: !2424)
!2426 = distinct !DILocation(line: 344, column: 9, scope: !13, inlinedAt: !2425)
!2427 = distinct !DILocation(line: 229, column: 22, scope: !12, inlinedAt: !2426)
!2428 = !DILocation(line: 424, column: 29, scope: !2420)
!2429 = !DILocation(line: 634, column: 12, scope: !6, inlinedAt: !2422)
!2430 = !DILocation(line: 1286, column: 17, scope: !41, inlinedAt: !2423)
!2431 = !DILocation(line: 128, column: 14, scope: !11, inlinedAt: !2427)
!2432 = !DILocation(line: 220, column: 9, scope: !12, inlinedAt: !2426)
!2433 = !DILocation(line: 425, column: 6, scope: !2420)
!2434 = distinct !DILocation(line: 424, column: 29, scope: !9)
!2435 = distinct !DILocation(line: 874, column: 52, scope: !8, inlinedAt: !2434)
end_hunk_1
