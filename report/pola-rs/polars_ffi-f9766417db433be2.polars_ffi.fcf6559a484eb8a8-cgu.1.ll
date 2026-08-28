Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ffi-f9766417db433be2.polars_ffi.fcf6559a484eb8a8-cgu.1?download=true
inline.NumInlined: 175
inline.NumDeleted: 103
begin_hunk_0_@_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslIvKsLJE9Zc_10polars_ffi:bb.a
  %i.b = icmp eq i64 %3, 0, !dbg !1797
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !1797
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !1797

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3, !dbg !1799        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0, !dbg !1801
  br i1 %i.e, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, !dbg !1801

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #20, !dbg !1803
  %i.f = inttoptr i64 %2 to ptr, !dbg !1808
  store ptr %i.f, ptr %i.a, align 8, !dbg !1816
  br label %bb.c, !dbg !1817

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !1818
  br label %bb.e, !dbg !1819

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1, !dbg !1820           ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d, !dbg !1823
  tail call void @llvm.assume(i1 %i.h), !dbg !1833
  %i.i = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #20, !dbg !1838 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !1841
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !1844

bb.d:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8, !dbg !1845
  %i.k = icmp sgt i64 %1, -1, !dbg !1849
  tail call void @llvm.assume(i1 %i.k), !dbg !1849
  br label %bb.c, !dbg !1817

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !1852
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ], !dbg !1852
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !1819
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1, !dbg !1819
  ret { i64, i64 } %i.m, !dbg !1819
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslIvKsLJE9Zc_10polars_ffi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 !dbg !1853 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !1854 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1854 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1854
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1864, !prof !1868
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !1864, !prof !1868

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit, !dbg !1869

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val, !dbg !1873      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !1875
  tail call void @llvm.assume(i1 %i.g), !dbg !1884
  %i.h = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20, !dbg !1887
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1890

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0, !dbg !1891
  br i1 %i.i, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !1891

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr, !dbg !1897
  br label %bb.f, !dbg !1902

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1904
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20, !dbg !1905
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1907

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null, !dbg !1908
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !1902

bb.e:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1909
  store i64 %2, ptr %i.m, align 8, !dbg !1909
  br label %bb.g, !dbg !1910

bb.f:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1911
  store ptr %.pn810, ptr %i.n, align 8, !dbg !1911
  br label %bb.g, !dbg !1913

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ], !dbg !1914
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12, !dbg !1914
  store i64 %.sink, ptr %i.o, align 8, !dbg !1914
  store i64 %storemerge13, ptr %0, align 8, !dbg !1914
  ret void, !dbg !1915
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslIvKsLJE9Zc_10polars_ffi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1916 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !1917 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1917 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1917
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1927, !prof !1868
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1927, !prof !1868

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0, !dbg !1931
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !1931

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1933
  store i64 0, ptr %i.f, align 8, !dbg !1933
  br label %bb.f, !dbg !1934

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !1936
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1941
  store i64 0, ptr %i.h, align 8, !dbg !1941
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1941
  store ptr %i.g, ptr %i.i, align 8, !dbg !1941
  br label %bb.f, !dbg !1942

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1943
  br i1 %2, label %bb.g, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !1944

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !1945
  ret void, !dbg !1946

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1947
  br label %bb.h, !dbg !1955

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1956
  br label %bb.h, !dbg !1961

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null, !dbg !1962
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !1964

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1965
  store i64 %3, ptr %i.m, align 8, !dbg !1965
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1965
  store i64 %i.b, ptr %i.n, align 8, !dbg !1965
  br label %bb.f, !dbg !1966

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1, !dbg !1968
  tail call void @llvm.assume(i1 %i.o), !dbg !1968
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1972
  store i64 %1, ptr %i.p, align 8, !dbg !1972
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1972
  store ptr %.pn10, ptr %i.q, align 8, !dbg !1972
  br label %bb.f, !dbg !1942
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1973 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1975
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !1983 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1985
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1986, !prof !1575

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 48) #24, !dbg !1987
  unreachable, !dbg !1987

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !1988
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1989 {
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
  %.sroa.4.i.i.i = alloca [8 x i8], align 8       ; 5 uses
  %.sroa.73.i.i.i = alloca [8 x i8], align 8      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991), !dbg !1994
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1997
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1997, !alias.scope !1991, !nonnull !14, !align !301, !noundef !14 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000), !dbg !2003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004), !dbg !2003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006), !dbg !2009
  %i.i = load ptr, ptr %0, align 8, !dbg !2012, !alias.scope !2023, !noalias !2026, !nonnull !14, !noundef !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2029
  %i.k = load ptr, ptr %i.j, align 8, !dbg !2029, !alias.scope !2023, !noalias !2026, !nonnull !14, !noundef !14
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !2031
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2036

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2037
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !2038
  store ptr %i.n, ptr %0, align 8, !dbg !2041, !alias.scope !2023, !noalias !2026
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !2042
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i.i), !dbg !2042
  %.val5.i.i.i = load ptr, ptr %i.i, align 8, !dbg !2042, !noalias !2043, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044), !dbg !2042
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !2047
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i), !dbg !2051
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !dbg !2051, !alias.scope !2052, !noalias !2053, !nonnull !14, !align !301, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2054, !noalias !2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val5.i.i.i, i64 80, i1 false), !dbg !2054, !noalias !2061
  %i.o = load ptr, ptr %.val.i.i.i.i, align 8, !dbg !2064, !noalias !2061, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2066, !noalias !2069
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2074, !noalias !2069
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow3ffi19import_field_from_c(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.o)
          to label %bb.c unwind label %bb.y, !dbg !2074, !noalias !2075

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !dbg !2076, !range !292, !noalias !2069, !noundef !14
  %i.q = trunc nuw i64 %i.p to i1, !dbg !2079
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2080
  %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 8, !dbg !2080, !noalias !2069 ; 3 uses
  %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2080
  %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !dbg !2080, !noalias !2069 ; 3 uses
  %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !2080
  %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i.i.i, align 8, !dbg !2080, !noalias !2069 ; 3 uses
  %.sroa.5.i.i.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.0..sroa_idx.i.i.i.i, i64 48, i1 false), !dbg !2080, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2081, !noalias !2069
  br i1 %i.q, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, label %bb.d, !dbg !2079

bb.d:                                             ; preds = %bb.c
  store i64 %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, ptr %i.e, align 8, !dbg !2074, !noalias !2069
  %.sroa.5.i.i.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2074
  store ptr %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !dbg !2074, !noalias !2069
  %.sroa.5.i.i.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2074
  store ptr %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !dbg !2074, !noalias !2069
  %.sroa.5.i.i.sroa.8.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.0..sroa_idx8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, i64 48, i1 false), !dbg !2074, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2083, !noalias !2069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2085, !noalias !2069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !2085, !noalias !2086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2087, !noalias !2069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !2087, !noalias !2069
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow3ffi19import_array_from_c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !2083, !noalias !2075

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2088
  %i.u = load i8, ptr %i.t, align 1, !dbg !2088, !range !2106, !alias.scope !2107, !noalias !2069, !noundef !14
  %i.v = icmp eq i8 %i.u, -40, !dbg !2116
  br i1 %i.v, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i, !dbg !2116, !prof !1575

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2117
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i unwind label %bb.q, !dbg !2118, !noalias !2075

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2119, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2119, !noalias !2069
  %i.x = load i64, ptr %i.c, align 8, !dbg !2120, !range !1364, !noalias !2069, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 18, !dbg !2120
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2123
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2123, !noalias !2069 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2123
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !2123, !noalias !2069 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.h, !dbg !2124

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 48, i1 false), !dbg !2125, !noalias !2126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2127, !noalias !2069
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2128
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !2128, !range !2106, !alias.scope !2135, !noalias !2069, !noundef !14
  %i.ae = icmp eq i8 %i.ad, -40, !dbg !2144
  br i1 %i.ae, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i, !dbg !2144, !prof !1575

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2117
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i unwind label %bb.r, !dbg !2145, !noalias !2075

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2127, !noalias !2069
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 55, !dbg !2146
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !2146, !range !2106, !alias.scope !2153, !noalias !2069, !noundef !14
  %i.ai = icmp eq i8 %i.ah, -40, !dbg !2162
  br i1 %i.ai, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i, !dbg !2162, !prof !1575

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2117
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i unwind label %bb.l, !dbg !2163, !noalias !2075

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2164), !dbg !2117
  %i.am = load ptr, ptr %i.al, align 8, !dbg !2167, !alias.scope !2164, !noalias !2069, !noundef !14 ; 2 uses
  %i.an = icmp eq ptr %i.am, null, !dbg !2167
  br i1 %i.an, label %common.resume.i.i.i.i, label %bb.m, !dbg !2167

bb.m:                                             ; preds = %bb.l
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !2170, !noalias !2179
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !2184
  br i1 %i.ap, label %bb.n, label %common.resume.i.i.i.i, !dbg !2184

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !2185
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2187, !noalias !2075

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2188), !dbg !2117
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !2191, !alias.scope !2188, !noalias !2069, !noundef !14 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null, !dbg !2191
  br i1 %i.as, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, label %bb.o, !dbg !2191

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !dbg !2193, !noalias !2198
  %i.au = icmp eq i64 %i.at, 1, !dbg !2203
  br i1 %i.au, label %bb.p, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, !dbg !2203

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !2204
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #23, !dbg !2206, !noalias !2075
  br label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i, !dbg !2206

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i: ; preds = %bb.p, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit27.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2117, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2207, !noalias !2060
  br label %bb.ab, !dbg !2208

bb.q:                                             ; preds = %bb.y, %bb.x, %bb.t, %bb.n, %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !2214, !noalias !2215
  unreachable, !dbg !2214

bb.r:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2216), !dbg !2117
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !2219, !alias.scope !2216, !noalias !2069, !noundef !14 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null, !dbg !2219
  br i1 %i.az, label %common.resume.i.i.i.i, label %bb.s, !dbg !2219

bb.s:                                             ; preds = %bb.r
  %i.ba = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !2221, !noalias !2226
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !2231
  br i1 %i.bb, label %bb.t, label %common.resume.i.i.i.i, !dbg !2231

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !2232
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2234, !noalias !2075

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2235), !dbg !2117
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !2238, !alias.scope !2235, !noalias !2069, !noundef !14 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null, !dbg !2238
  br i1 %i.be, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, label %bb.u, !dbg !2238

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i
  %i.bf = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !dbg !2240, !noalias !2245
  %i.bg = icmp eq i64 %i.bf, 1, !dbg !2250
  br i1 %i.bg, label %bb.v, label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, !dbg !2250

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !2251
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #23, !dbg !2253, !noalias !2075
  br label %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i, !dbg !2253

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i: ; preds = %bb.v, %bb.u, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit25.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2117, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2207, !noalias !2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, i64 48, i1 false), !dbg !2047, !noalias !2060
  br label %bb.z, !dbg !2208

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2254), !dbg !2117
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !2257, !alias.scope !2254, !noalias !2069, !noundef !14 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !2257
  br i1 %i.bj, label %common.resume.i.i.i.i, label %bb.w, !dbg !2257

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i
  %i.bk = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !2259, !noalias !2264
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !2269
  br i1 %i.bl, label %bb.x, label %common.resume.i.i.i.i, !dbg !2269

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !2270
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #23
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2272, !noalias !2075

common.resume.i.i.i.i:                            ; preds = %bb.ac, %bb.y, %bb.x, %bb.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i, %bb.t, %bb.s, %bb.r, %bb.n, %bb.m, %bb.l
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.ac ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.y ], [ %i.s, %bb.w ], [ %i.aw, %bb.s ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.ak, %bb.l ], [ %i.aw, %bb.t ], [ %i.aw, %bb.r ], [ %i.s, %bb.x ], [ %i.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !2273

bb.y:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %common.resume.i.i.i.i unwind label %bb.q, !dbg !2274, !noalias !2215

_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.sroa.8.i.i.i.i, i64 48, i1 false), !dbg !2081, !noalias !2126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.8.i.i.i.i), !dbg !2082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2117, !noalias !2069
  call void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !2276, !noalias !2215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2207, !noalias !2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i.i.i.i, i64 48, i1 false), !dbg !2047, !noalias !2060
  call void @llvm.experimental.noalias.scope.decl(metadata !2278), !dbg !2047
  %.not.i.i4.i.i.i.i = icmp eq i64 %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, 18, !dbg !2281
  br i1 %.not.i.i4.i.i.i.i, label %bb.ab, label %bb.z, !dbg !2208

bb.z:                                             ; preds = %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i
  %.sroa.01.022.i.i.i.i = phi i64 [ %i.x, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.62.021.i.i.i.i = phi ptr [ %i.z, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.9.020.i.i.i.i = phi ptr [ %i.ab, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread15.i.i.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ] ; 2 uses
  %i.bm = load i64, ptr %i.h, align 8, !dbg !2282, !range !1364, !alias.scope !2286, !noalias !2289, !noundef !14
  %i.bn = icmp eq i64 %i.bm, 18, !dbg !2282
  br i1 %i.bn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i, label %bb.aa, !dbg !2282

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i unwind label %bb.ac, !dbg !2291, !noalias !2289

bb.ab:                                            ; preds = %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i
  %.sroa.62.014.i.i.i.i = phi ptr [ %i.z, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ]
  %.sroa.9.013.i.i.i.i = phi ptr [ %i.ab, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.thread.i.i.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload.i.i.i.i, %_RNCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0B5_.exit.i.i.i.i ]
  store ptr %.sroa.62.014.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !dbg !2293, !alias.scope !2301, !noalias !2302
  br label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit, !dbg !2303

bb.ac:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.022.i.i.i.i, ptr %i.h, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2304
  store ptr %.sroa.62.021.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2304
  store ptr %.sroa.9.020.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i.i, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, i64 48, i1 false), !dbg !2304, !noalias !2305
  br label %common.resume.i.i.i.i, !dbg !2306

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  store i64 %.sroa.01.022.i.i.i.i, ptr %i.h, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.5.0..8.val.sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2304
  store ptr %.sroa.62.021.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i.i.i, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2304
  store ptr %.sroa.9.020.i.i.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i.i.i, align 8, !dbg !2304, !alias.scope !2004, !noalias !2289
  %.sroa.7.0..8.val.sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.i, i64 48, i1 false), !dbg !2304, !noalias !2305
  br label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit, !dbg !2307

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENCNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1L_5array5ArrayEL_EINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB7h_5Break0E0B7h_EB2K_.exit: ; preds = %bb.ab, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i
  %.sink23.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.73.i.i.i, %bb.ab ], [ %.sroa.4.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.9.013.i.i.i.i, %bb.ab ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i.i ]
  store ptr %.sink.i.i.i.i.i, ptr %.sink23.i.i.sroa.phi.i.i.i, align 8, !dbg !2308, !alias.scope !2301, !noalias !2302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i), !dbg !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !2309
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !dbg !2310, !alias.scope !2314, !noalias !2317 ; 2 uses
  %.sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i.i.i = load ptr, ptr %.sroa.73.i.i.i, align 8, !dbg !2310, !alias.scope !2314, !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i.i.i), !dbg !2319
  %i.bp = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0, !dbg !2320
  %.not = icmp eq ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, null, !dbg !2321
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2328
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2328, !nonnull !14, !align !301, !noundef !14
  %i.c = load i64, ptr %i.b, align 8, !dbg !2329, !range !1364, !noundef !14
  %.not = icmp eq i64 %i.c, 18, !dbg !2329
  %.val = load ptr, ptr %1, align 8, !dbg !2328, !nonnull !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2328
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !2328, !nonnull !14
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !2328
  %i.f = ptrtoint ptr %.val to i64, !dbg !2328
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !2328
  %i.h = lshr exact i64 %i.g, 3, !dbg !2328
  %.sink = select i1 %.not, i64 %i.h, i64 0, !dbg !2328
  store i64 0, ptr %0, align 8, !dbg !2335
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2335
  store i64 1, ptr %i.i, align 8, !dbg !2335
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2335
  store i64 %.sink, ptr %i.j, align 8, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !1394 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2337   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2338

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2337
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2337, !nonnull !14, !noundef !14
  %i.c = shl nuw i64 %.val, 4, !dbg !2341
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2343
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2348

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2349
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2350 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2351   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2352

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2351
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2351, !nonnull !14, !noundef !14
  %i.c = shl nuw i64 %.val, 4, !dbg !2355
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2357
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2362

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2363
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2364 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2365   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2366

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2365
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2365, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 160, !dbg !2369
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2371
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2376

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2377
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2378 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2379   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2380

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2379
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2379, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 80, !dbg !2383
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2385
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2390

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2391
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2392 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2393   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2394

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2393
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2393, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 48, !dbg !2397
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2399
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2404

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2405
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2406 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2407   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2408

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2407
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2407, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 72, !dbg !2411
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2413
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2418

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2419
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecONtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2420 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2421   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2422

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2421
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2421, !nonnull !14, !noundef !14
  %i.c = shl nuw i64 %.val, 3, !dbg !2425
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2427
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2432

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2433
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !90 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2434   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2435

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2434
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2434, !nonnull !14, !noundef !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !2438
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2443

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2444
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !2445 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2446   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslIvKsLJE9Zc_10polars_ffi.exit, label %bb.b, !dbg !2447

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2446
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2446, !nonnull !14, !noundef !14
  %i.c = shl nuw i64 %.val, 2, !dbg !2450
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !dbg !2452
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
