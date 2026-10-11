Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.10?download=true
inline.NumInlined: 1945
inline.NumDeleted: 1079
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9LazySerdeINtNtNtBJ_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB1A_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927), !dbg !1952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928), !dbg !1953
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !1954
  %i.w = load ptr, ptr %i.v, align 8, !dbg !1954, !noalias !1929, !nonnull !531, !noundef !531
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1955
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1956
  %i.z = load ptr, ptr %i.y, align 8, !dbg !1956, !alias.scope !1929, !noundef !531
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1957
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !1957, !alias.scope !1929, !noundef !531
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !1954, !inline_history !1877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930), !dbg !1938
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !1958, !alias.scope !1930, !noundef !531 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !1958
  br i1 %i.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3, label %bb.h, !dbg !1958

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931), !dbg !1958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932), !dbg !1959
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !1960
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !1960, !noalias !1933, !nonnull !531, !noundef !531
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1961
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1962
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !1962, !alias.scope !1933, !noundef !531
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1963
  %i.al = load i64, ptr %i.ak, align 8, !dbg !1963, !alias.scope !1933, !noundef !531
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3 unwind label %bb.k, !dbg !1960, !inline_history !1877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.r, %bb.g ], [ %i.r, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1938 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934), !dbg !1938
  %i.an = load ptr, ptr %i.am, align 8, !dbg !1964, !alias.scope !1934, !noundef !531 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !1964
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !1964

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !1965, !noalias !1935
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !1966
  br i1 %i.aq, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, !dbg !1966

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !1967
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !1968

bb.k:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1938 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936), !dbg !1938
  %i.at = load ptr, ptr %i.as, align 8, !dbg !1969, !alias.scope !1936, !noundef !531 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !1969
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, label %bb.l, !dbg !1969

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !1970, !noalias !1937
  %i.aw = icmp eq i64 %i.av, 1, !dbg !1971
  br i1 %i.aw, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !1971

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !1972
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #42, !dbg !1973
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !1973

bb.n:                                             ; preds = %bb.j, %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !1938
  unreachable, !dbg !1938

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit, %bb.j
  resume { ptr, i32 } %.pn, !dbg !1938
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !1974 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001), !dbg !2008
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2009
  %.val.i = load i32, ptr %i.a, align 8, !dbg !2009, !alias.scope !2001, !noundef !531
  switch i32 %.val.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit
    i32 2, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit
    i32 0, label %bb.c
  ], !dbg !2010, !prof !2003

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #44, !dbg !2011, !noalias !2001
  unreachable, !dbg !2011

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004), !dbg !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005), !dbg !2013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006), !dbg !2014
  %i.b = load ptr, ptr %0, align 8, !dbg !2015, !alias.scope !2007, !nonnull !531, !noundef !531
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !2016, !noalias !2007
  %i.d = icmp eq i64 %i.c, 1, !dbg !2017
  br i1 %i.d, label %bb.d, label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !2017

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !2018
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #42, !dbg !2019
  br label %_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !2019

_RNvXs9_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  ret void, !dbg !2008
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEIB1f_INtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2020 {
bb.a:
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !2026

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2027
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB11_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !2028

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2027
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB11_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !2029
  ret void, !dbg !2027

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !2027
  unreachable, !dbg !2027

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2027
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2030 {
bb.a:
  %i.a = icmp eq ptr %.8.val, null, !dbg !2047
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !2047

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2048
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !2049, !noundef !531
  %i.c = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !2050
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !2051, !prof !599

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.8.val), !dbg !2052
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2052

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.8.val) #41, !dbg !2053
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2054

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void, !dbg !2055
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2056 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2316, !range !2282, !noundef !531
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.q
    i64 1, label %bb.s
    i64 2, label %bb.u
    i64 3, label %bb.w
    i64 4, label %bb.y
    i64 5, label %bb.aa
    i64 6, label %bb.ac
    i64 7, label %bb.ae
    i64 8, label %bb.ag
    i64 9, label %bb.ai
    i64 10, label %bb.ak
    i64 11, label %bb.am
    i64 12, label %bb.ao
    i64 13, label %bb.aq
    i64 14, label %bb.as
    i64 15, label %bb.au
    i64 16, label %bb.av
  ], !dbg !2316

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283), !dbg !2316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284), !dbg !2317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285), !dbg !2318
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286), !dbg !2319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287), !dbg !2320
  %i.c = load i64, ptr %i.b, align 8, !dbg !2321, !range !658, !alias.scope !2288, !noundef !531
  %1 = icmp eq i64 %i.c, 0, !dbg !2321
  br i1 %1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !2321

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289), !dbg !2321
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2322, !alias.scope !2290, !noundef !531 ; 3 uses
  %i.f = icmp eq ptr %i.e, null, !dbg !2322
  br i1 %i.f, label %bb.d, label %bb.j, !dbg !2322

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2322
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !dbg !2322, !alias.scope !2290 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2322
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !dbg !2322, !alias.scope !2290, !nonnull !531, !align !638, !noundef !531 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !dbg !2323, !invariant.load !531, !noalias !2290 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null, !dbg !2323
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !2323

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !dbg !2323, !noalias !2290

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2324
  %i.k = load i64, ptr %i.j, align 8, !dbg !2324, !range !564, !invariant.load !531, !noalias !2290 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !2325
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !2325

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2324
  %i.n = load i64, ptr %i.m, align 8, !dbg !2326, !range !625, !invariant.load !531, !noalias !2290
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #41, !dbg !2327, !noalias !2290
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2328

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2329
  %i.q = load i64, ptr %i.p, align 8, !dbg !2329, !range !564, !invariant.load !531, !noalias !2290 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !2330
  br i1 %i.r, label %common.resume, label %bb.i, !dbg !2330

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2329
  %i.t = load i64, ptr %i.s, align 8, !dbg !2331, !range !625, !invariant.load !531, !noalias !2290
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #41, !dbg !2332, !noalias !2290
  br label %common.resume, !dbg !2333

common.resume:                                    ; preds = %bb.ax, %bb.aw, %bb.bb, %bb.ba, %bb.bf, %bb.be, %bb.h, %bb.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %bb.n ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.cf, %bb.ba ], [ %i.bz, %bb.aw ], [ %i.bz, %bb.ax ], [ %i.cf, %bb.bb ], [ %i.cm, %bb.bf ], [ %i.cm, %bb.be ]
  resume { ptr, i32 } %common.resume.op, !dbg !2316

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291), !dbg !2322
  %i.u = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2334
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !dbg !2335, !noalias !2292, !noundef !531
  %i.v = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !2336
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !2337, !prof !599

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i unwind label %bb.m, !dbg !2338, !noalias !2292

bb.l:                                             ; preds = %bb.j
  tail call void @_Py_DecRef(ptr noundef nonnull %i.e) #41, !dbg !2339, !noalias !2292
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i, !dbg !2340

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2341
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !dbg !2341, !alias.scope !2292, !nonnull !531, !noundef !531
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val3.i.i.i.i.i.i.i) #43
          to label %bb.n unwind label %bb.p, !dbg !2341, !noalias !2292

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2341
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !dbg !2341, !alias.scope !2292, !nonnull !531, !noundef !531
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val2.i.i.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i unwind label %bb.o, !dbg !2341, !noalias !2292

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %i.w, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2341
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !2341, !alias.scope !2292, !noundef !531
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val5.i.i.i.i.i.i.i) #43
          to label %common.resume unwind label %bb.p, !dbg !2341, !noalias !2292

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !2341, !noalias !2292
  unreachable, !dbg !2341

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2341
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !2341, !alias.scope !2292, !noundef !531
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val4.i.i.i.i.i.i.i), !dbg !2341, !noalias !2292
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2322

bb.q:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2342, !range !570, !alias.scope !2293, !noundef !531
  %i.af = icmp eq i64 %i.ae, -9223372036854775808, !dbg !2342
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.r, !dbg !2342

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !dbg !2343
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2342

bb.s:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !2344, !range !570, !alias.scope !2294, !noundef !531
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808, !dbg !2344
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.t, !dbg !2344

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !dbg !2345
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2344

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !2346, !range !570, !alias.scope !2295, !noundef !531
  %i.al = icmp eq i64 %i.ak, -9223372036854775808, !dbg !2346
  br i1 %i.al, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.v, !dbg !2346

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj), !dbg !2347
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2346

bb.w:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !dbg !2348, !range !570, !alias.scope !2296, !noundef !531
  %i.ao = icmp eq i64 %i.an, -9223372036854775808, !dbg !2348
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.x, !dbg !2348

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !2349
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2348

bb.y:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !2350, !range !570, !alias.scope !2297, !noundef !531
  %i.ar = icmp eq i64 %i.aq, -9223372036854775808, !dbg !2350
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.z, !dbg !2350

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap), !dbg !2351
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2350

bb.aa:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298), !dbg !2316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299), !dbg !2352
  %i.at = load ptr, ptr %i.as, align 8, !dbg !2353, !alias.scope !2300, !nonnull !531, !noundef !531
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !2354, !noalias !2300
  %i.av = icmp eq i64 %i.au, 1, !dbg !2355
  br i1 %i.av, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit, !dbg !2355

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !2356
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.aw, !dbg !2357

bb.ac:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !2358, !range !570, !alias.scope !2301, !noundef !531
  %i.ay = icmp eq i64 %i.ax, -9223372036854775808, !dbg !2358
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ad, !dbg !2358

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw), !dbg !2359
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2358

bb.ae:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !dbg !2360, !range !570, !alias.scope !2302, !noundef !531
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808, !dbg !2360
  br i1 %i.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.af, !dbg !2360

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !dbg !2361
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2360

bb.ag:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2316 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !2362, !range !570, !alias.scope !2303, !noundef !531
  %i.be = icmp eq i64 %i.bd, -9223372036854775808, !dbg !2362
  br i1 %i.be, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ah, !dbg !2362

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc), !dbg !2363
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2362

end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i: ; preds = %bb.e, %.lr.ph11
  %i.r = icmp eq i64 %i.o, %i.e, !dbg !5253
  br i1 %i.r, label %common.resume, label %.lr.ph11, !dbg !5253

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !5253, !noalias !5245, !inline_history !5172
  unreachable, !dbg !5253

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, %bb.d, %bb.i
  %.sink25 = phi i64 [ %.val1, %bb.i ], [ %i.e, %bb.d ], [ %.val1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %.sink = phi ptr [ %.val, %bb.i ], [ %i.c, %bb.d ], [ %.val, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.l, %bb.d ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %i.t = mul nuw nsw i64 %.sink25, 24, !dbg !5251
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #41, !dbg !5251
  resume { ptr, i32 } %common.resume.op, !dbg !5251

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i
  %i.u = mul nuw nsw i64 %i.e, 24, !dbg !5256
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #41, !dbg !5257, !noalias !5245
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5258

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5251
  %.val = load ptr, ptr %i.v, align 8, !dbg !5251, !nonnull !531, !noundef !531 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5251
  %.val1 = load i64, ptr %i.w, align 8, !dbg !5251, !noundef !531 ; 7 uses
  %i.x = icmp eq i64 %.val1, 0, !dbg !5259
  br i1 %i.x, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph.i.i, !dbg !5259

.lr.ph.i.i:                                       ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i, !dbg !5259 ; 2 uses
  %i.z = add nuw i64 %.sroa.0.010.i.i, 1, !dbg !5259 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !5260
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !5260, !range !660, !alias.scope !5249, !noundef !531
  %cond.i.i.i = icmp eq i8 %i.ab, -40, !dbg !5260
  br i1 %cond.i.i.i, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i, !dbg !5260, !prof !661

bb.h:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.i, !dbg !5261

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = icmp eq i64 %i.z, %.val1, !dbg !5259
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, label %.lr.ph.i.i, !dbg !5259

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.z, %.val1, !dbg !5259
  br i1 %i.ae, label %common.resume, label %.lr.ph13.i.i, !dbg !5259

.lr.ph13.i.i:                                     ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.111.i.i, !dbg !5259 ; 2 uses
  %i.ag = add i64 %.sroa.0.111.i.i, 1, !dbg !5259 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 23, !dbg !5262
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !5262, !range !660, !alias.scope !5250, !noundef !531
  %cond.i7.i.i = icmp eq i8 %i.ai, -40, !dbg !5262
  br i1 %cond.i7.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, !dbg !5262, !prof !661

bb.j:                                             ; preds = %.lr.ph13.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i unwind label %bb.k, !dbg !5263

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i: ; preds = %bb.j, %.lr.ph13.i.i
  %i.aj = icmp eq i64 %i.ag, %.val1, !dbg !5259
  br i1 %i.aj, label %common.resume, label %.lr.ph13.i.i, !dbg !5259

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !5259
  unreachable, !dbg !5259

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %i.al = mul nuw nsw i64 %.val1, 24, !dbg !5264
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef 8) #41, !dbg !5265
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5266

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5251
  %.val3 = load i64, ptr %i.am, align 8, !dbg !5251, !noundef !531 ; 2 uses
  %i.an = icmp eq i64 %.val3, 0, !dbg !5267
  br i1 %i.an, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.m, !dbg !5267

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5251
  %.val2 = load ptr, ptr %i.ao, align 8, !dbg !5251, !nonnull !531, !noundef !531
  %i.ap = shl nuw nsw i64 %.val3, 5, !dbg !5268
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef 16) #41, !dbg !5269
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5270

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5251
  %.val5 = load i64, ptr %i.aq, align 8, !dbg !5251, !noundef !531 ; 2 uses
  %i.ar = icmp eq i64 %.val5, 0, !dbg !5271
  br i1 %i.ar, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.o, !dbg !5271

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5251
  %.val4 = load ptr, ptr %i.as, align 8, !dbg !5251, !nonnull !531, !noundef !531
  %i.at = shl nuw nsw i64 %.val5, 4, !dbg !5272
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #41, !dbg !5273
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5274

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %bb.o, %bb.n, %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !5251
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5275 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 119, !dbg !5291
  %i.b = load i8, ptr %i.a, align 1, !dbg !5291, !range !636, !alias.scope !5290, !noundef !531
  %i.c = icmp eq i8 %i.b, -40, !dbg !5292
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !5292, !prof !545

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5293
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !5294

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(96) %0) #43
          to label %bb.d unwind label %bb.g, !dbg !5293

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(96) %0)
          to label %bb.f unwind label %bb.e, !dbg !5293

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.f) #43
          to label %bb.h unwind label %bb.g, !dbg !5293

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5293
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.h), !dbg !5293
  ret void, !dbg !5293

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !5293
  unreachable, !dbg !5293

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn, !dbg !5293
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 !dbg !5295 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5298, !range !677, !noundef !531
  switch i8 %i.a, label %bb.b [
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 6, label %bb.e
  ], !dbg !5298

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !5298

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5298
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !5299
  br label %bb.b, !dbg !5298

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5298
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5300
  br label %bb.b, !dbg !5298

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5298
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.d), !dbg !5298
  br label %bb.b, !dbg !5298
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !5301 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5349, !range !678, !noundef !531 ; 2 uses
  %i.b = icmp samesign ugt i64 %i.a, 1, !dbg !5349
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !5349

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5341), !dbg !5349
  %1 = icmp eq i64 %i.a, 0, !dbg !5350
  br i1 %1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !5350

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5350 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5342), !dbg !5350
  %i.d = load ptr, ptr %i.c, align 8, !dbg !5351, !alias.scope !5343, !noundef !531 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !5351
  br i1 %i.e, label %bb.d, label %bb.f, !dbg !5351

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5351 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5344), !dbg !5351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5345), !dbg !5352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5346), !dbg !5353
  %i.g = load ptr, ptr %i.f, align 8, !dbg !5354, !alias.scope !5347, !nonnull !531, !noundef !531
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !5355, !noalias !5347
  %i.i = icmp eq i64 %i.h, 1, !dbg !5356
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5356

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !5357
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42, !dbg !5358
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5358

bb.f:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !5359, !noalias !5348
  %i.k = icmp eq i64 %i.j, 1, !dbg !5360
  br i1 %i.k, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5360

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !5361
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB30_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42, !dbg !5362
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5362

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !5349
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5range13RangeFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 !dbg !5363 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5382, !range !679, !noundef !531
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.f
  ], !dbg !5382

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !5382

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5382
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !5382
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5382

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5382
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.c), !dbg !5382
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5382

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5383
  %i.e = load i8, ptr %i.d, align 1, !dbg !5383, !range !660, !alias.scope !5380, !noundef !531
  %cond.i = icmp eq i8 %i.e, -40, !dbg !5383
  br i1 %cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5383, !prof !661

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5382
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !5384
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5384

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5385
  %i.h = load i8, ptr %i.g, align 1, !dbg !5385, !range !660, !alias.scope !5381, !noundef !531
  %cond.i1 = icmp eq i8 %i.h, -40, !dbg !5385
  br i1 %cond.i1, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5385, !prof !661

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5382
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !5386
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5386
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !5387 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !5429, !range !680, !noundef !531
  %switch = icmp samesign ult i8 %i.a, 11, !dbg !5429
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !5429

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5429 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5423), !dbg !5429
  %i.c = load ptr, ptr %i.b, align 8, !dbg !5430, !alias.scope !5423, !noundef !531 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !5430
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !5430

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5430 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5424), !dbg !5430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5425), !dbg !5431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5426), !dbg !5432
  %i.f = load ptr, ptr %i.e, align 8, !dbg !5433, !alias.scope !5427, !nonnull !531, !noundef !531
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !5434, !noalias !5427
  %i.h = icmp eq i64 %i.g, 1, !dbg !5435
  br i1 %i.h, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5435

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !5436
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #42, !dbg !5437
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5437

bb.e:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !5438, !noalias !5428
  %i.j = icmp eq i64 %i.i, 1, !dbg !5439
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5439

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !5440
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3r_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #42, !dbg !5441
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5441

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !5429
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5442 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5579, !range !681, !noundef !531
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 8, label %bb.h
    i8 10, label %bb.i
    i8 14, label %bb.k
    i8 36, label %bb.l
  ], !dbg !5579

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %bb.a
  ret void, !dbg !5579

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !5580
  %i.c = load i8, ptr %i.b, align 1, !dbg !5580, !range !636, !alias.scope !5565, !noundef !531
  %i.d = icmp eq i8 %i.c, -40, !dbg !5581
  br i1 %i.d, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !5581, !prof !545

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5579
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !5582

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5583
  %i.g = load i8, ptr %i.f, align 1, !dbg !5583, !range !636, !alias.scope !5566, !noundef !531
  %i.h = icmp eq i8 %i.g, -40, !dbg !5584
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5584, !prof !545

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5579
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !5585
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5585

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5586
  %i.k = load i8, ptr %i.j, align 1, !dbg !5586, !range !636, !alias.scope !5567, !noundef !531
  %i.l = icmp eq i8 %i.k, -40, !dbg !5587
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5587, !prof !545

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5579
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !dbg !5588
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5588

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5579
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.s unwind label %bb.q, !dbg !5579

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5579 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16, !dbg !5589, !range !669, !alias.scope !5568, !noundef !531
  %i.q = icmp eq i8 %i.p, 31, !dbg !5589
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, label %bb.j, !dbg !5589

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.o), !dbg !5589
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5589

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5579
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.r), !dbg !5579
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5579

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5579
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.s)
end_hunk_1
begin_hunk_2_@_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1R_:bb.a
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2m_13AttachedTokenNtNtB2q_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_.exit, !dbg !13994

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB2m_13AttachedTokenNtNtB2q_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_.exit: ; preds = %bb.b, %_RNCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB8_13AttachedTokenNtNtBc_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1T_.exit
  ret void, !dbg !14003
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1R_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14004 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !14014
  %i.b = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !14014
  %i.c = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !14015, !noalias !14013 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !14015
  %i.e = trunc nuw i64 %i.d to i1, !dbg !14016
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.not.i = icmp uge i64 %i.f, %i.a
  %or.cond.i.not = select i1 %i.e, i1 %.not.i, i1 false, !dbg !14016
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !14016

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1z_13AttachedTokenNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3m_(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !14017
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit, !dbg !14018

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1g_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !14019
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit, !dbg !14018

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs8_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers14attached_tokenNtB1G_13AttachedTokenNtNtB1K_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3t_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in.i, !dbg !14020
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtB1v_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3k_7context10SQLContext21resolve_subquery_from0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB2o_12map_try_foldB1s_INtNtBb_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtNtBb_3ops12control_flow11ControlFlowINtNtB6Z_9try_trait17NeverShortCircuituEENvB3V_14get_table_nameNCINvXB7_INtB7_12GenericShuntIB2m_BO_B8e_EIB5V_NtNtBb_7convert10InfallibleEEB4L_8try_folduNCINvMs0_B7C_B7z_10wrap_mut_2uB6g_NCINvB2o_8map_foldB6g_TB6g_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbd_7HashSetB6g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4P_7collect6ExtendB6g_E6extendB8J_E0NCINvNvB4L_8for_each4callBaW_NCINvXs1l_NtBbf_3mapINtBe6_7HashMapB6g_uBc0_EIBcO_BaW_E6extendIB2m_B8J_Bb4_EE0E0E0E0B7z_E0E0B6U_EB3k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14021 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !dbg !14054, !range !658, !noundef !531
  %i.d = trunc nuw i64 %i.c to i1, !dbg !14055
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !14055

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14054 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046), !dbg !14056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !14047
  %.pr.i = load ptr, ptr %i.e, align 8, !dbg !14057, !alias.scope !14048, !noalias !14049
  store ptr null, ptr %i.e, align 8, !alias.scope !14048, !noalias !14049
  br label %bb.c, !dbg !14058

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = phi ptr [ null, %bb.d ], [ %.pr.i, %bb.b ], !dbg !14057 ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.f, null, !dbg !14059
  br i1 %.not.not.not.not.i.not, label %bb.g, label %bb.d, !dbg !14060

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorINtNtBb_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENvNtCshquuC4dCYVj_10polars_sql7context14get_table_nameNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1y_EIB5Z_INtNtNtBb_5slice4iter4IterNtB1B_4JoinENCNvMNtB4H_8subqueryNtB4F_10SQLContext21resolve_subquery_from0EEB4D_EIB2r_NtNtBb_7convert10InfallibleEENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvMs0_B42_B3Z_10wrap_mut_2uB2M_NCINvBT_8map_foldB2M_TB2M_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbd_7HashSetB2M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB9p_7collect6ExtendB2M_E6extendB5E_E0NCINvNvB9l_8for_each4callBaW_NCINvXs1l_NtBbf_3mapINtBe6_7HashMapB2M_uBc0_EIBcO_BaW_E6extendIB5Z_B5E_Bb4_EE0E0E0E0B3Z_E0E0INtB7_5FnMutTuB1y_EE8call_mutB4H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.f), !dbg !14061, !noalias !14046
  br i1 %i.g, label %bb.f, label %bb.c, !dbg !14061

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14062 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !14062, !noundef !531
  %.not = icmp eq ptr %i.i, null, !dbg !14062
  br i1 %.not, label %bb.h, label %bb.i, !dbg !14063

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14064
  br label %bb.h, !dbg !14065

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14064
  store i64 0, ptr %0, align 8, !dbg !14066
  br label %bb.e, !dbg !14067

bb.h:                                             ; preds = %bb.i, %bb.e, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ %i.j, %bb.i ], !dbg !14068
  ret i1 %.sroa.0.0, !dbg !14069

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !14070
  %i.j = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB2e_7context10SQLContext21resolve_subquery_from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldRNtB1p_11TableFactorINtNtBc_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB67_9try_trait17NeverShortCircuituEENvB2P_14get_table_nameNCINvXB8_INtB8_12GenericShuntIBO_INtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceB4I_EBN_EB7m_EIB53_NtNtBc_7convert10InfallibleEEB3E_8try_folduNCINvMs0_B6K_B6H_10wrap_mut_2uB5o_NCINvB6_8map_foldB5o_TB5o_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtBbb_7HashSetB5o_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3I_7collect6ExtendB5o_E6extendB7R_E0NCINvNvB3E_8for_each4callBaU_NCINvXs1l_NtBbd_3mapINtBe4_7HashMapB5o_uBbY_EIBcM_BaU_E6extendIBO_B7R_Bb2_EE0E0E0E0B6H_E0E0B62_EB2e_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !14071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14072
  br label %bb.h, !dbg !14073
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noalias noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !14074 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !14126
  %i.d = load i8, ptr %i.c, align 1, !dbg !14126, !range !636, !noundef !531
  %i.e = icmp eq i8 %i.d, -40, !dbg !14127
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !14127

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #42, !dbg !14128
  br label %bb.d, !dbg !14128

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !14129
  br label %bb.d, !dbg !14130

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14131
  store <2 x i64> splat (i64 1), ptr %i.a, align 16, !dbg !14131
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14131 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14131
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !14132, !noalias !14124
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 40, 89) 40, i64 noundef 8) #41, !dbg !14133, !noalias !14124 ; 3 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !14134
  br i1 %i.h, label %bb.e, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCshquuC4dCYVj_10polars_sql.exit, !dbg !14135, !prof !545

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc unwind label %bb.f, !dbg !14136

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !14136

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 39, !dbg !14137
  %i.k = load i8, ptr %i.j, align 1, !dbg !14137, !range !636, !alias.scope !14125, !noundef !531
  %i.l = icmp eq i8 %i.k, -40, !dbg !14138
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !14138, !prof !545

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !14139

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14140
  unreachable, !dbg !14140

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.i, !dbg !14140

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 16 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !14141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14142
  ret ptr %i.g, !dbg !14143
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraylE15slice_uncheckedCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !14144 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !14200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14201 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !14201 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14201 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !14202
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !14203
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !14204

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !14205
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14205 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !14205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14187), !dbg !14206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14189), !dbg !14207
  %i.d = icmp eq i64 %1, 0, !dbg !14208
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14190, !noalias !14191 ; 5 uses
  %i.g = icmp eq i64 %2, %i.f
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false, !dbg !14208
  br i1 %or.cond.i.i, label %bb.j, label %bb.c, !dbg !14208

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14209 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !14210, !alias.scope !14190, !noalias !14191, !noundef !531 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !14210         ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.f
  %or.cond5.i.i = select i1 %i.j, i1 true, i1 %i.k, !dbg !14210
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e, !dbg !14210

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.f, %bb.d
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.d ], [ %i.ac, %.noexc1.i ], [ -1, %bb.f ]
  store i64 %.sink.sink.i.i, ptr %i.h, align 8, !dbg !14211, !alias.scope !14190, !noalias !14191
  br label %.sink.split.i.i, !dbg !14211

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14211, !alias.scope !14190, !noalias !14191, !noundef !531
  %i.m = add i64 %i.l, %1, !dbg !14211
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14211, !alias.scope !14190, !noalias !14191
  store i64 %2, ptr %i.e, align 8, !dbg !14211, !alias.scope !14190, !noalias !14191
  br label %bb.j, !dbg !14212

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !14213
  br label %.sink.split.sink.split.i.i, !dbg !14214

bb.e:                                             ; preds = %bb.c
  %3 = icmp sgt i64 %i.i, -1, !dbg !14215
  br i1 %3, label %bb.f, label %.sink.split.i.i, !dbg !14215

bb.f:                                             ; preds = %bb.e
  %i.n = udiv i64 %i.f, 5, !dbg !14216
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 %i.n, i64 32), !dbg !14217
  %i.o = add i64 %.sroa.0.0.i.i.i, %2, !dbg !14218
  %.not.i.i = icmp ult i64 %i.o, %i.f, !dbg !14218
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !14218

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14219, !alias.scope !14190, !noalias !14191, !noundef !531 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !14220 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !14220, !noalias !14192, !noundef !531
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !14221 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14221, !noalias !14192, !noundef !531
  %i.u = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.r, i64 noundef %i.p, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !14222, !noalias !14193

.noexc.i:                                         ; preds = %bb.g
  %i.v = add i64 %2, %1, !dbg !14219              ; 2 uses
  %i.w = add i64 %i.p, %i.v, !dbg !14219
  %i.x = load i64, ptr %i.q, align 8, !dbg !14223, !noalias !14192, !noundef !531
  %i.y = load ptr, ptr %i.s, align 8, !dbg !14224, !noalias !14192, !noundef !531
  %i.z = sub i64 %i.f, %i.v, !dbg !14225
  %i.aa = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, i64 noundef %i.w, i64 noundef %i.z)
          to label %.noexc1.i unwind label %bb.h, !dbg !14226, !noalias !14193

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ab = add i64 %i.u, %i.aa, !dbg !14227
  %i.ac = sub i64 %i.i, %i.ab, !dbg !14227
  br label %.sink.split.sink.split.i.i, !dbg !14228

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !14229, !noalias !14191

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14230, !noalias !14191
  unreachable, !dbg !14230

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !14231

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14232, !noalias !14194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !14233
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !14232, !noalias !14195
  %i.af = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !14234, !noalias !14194

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !14235, !noalias !14194

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.af, 0, !dbg !14236
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !14237

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !14238, !noalias !14194
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !14239

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !14240, !noalias !14196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !14240, !noalias !14196
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !14239

bb.o:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14241, !noalias !14194
  unreachable, !dbg !14241

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14242, !noalias !14194
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split ], !dbg !14243
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !14244
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !14245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !14245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !14246
  %i.ai = add i64 %2, %1, !dbg !14247
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14244
  %i.ak = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECshquuC4dCYVj_10polars_sql(i64 noundef %1, i64 noundef %i.ai, i64 noundef %.pre), !dbg !14248 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0, !dbg !14248 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1, !dbg !14248
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14249 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !14249, !noundef !531
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.al, !dbg !14250
  store ptr %i.ap, ptr %i.an, align 8, !dbg !14251
  %i.aq = sub i64 %i.am, %i.al, !dbg !14252
  store i64 %i.aq, ptr %i.aj, align 8, !dbg !14252
  ret void, !dbg !14253
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE15slice_uncheckedCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !14254 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !14310
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14311 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !14311 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14311 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !14312
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !14313
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !14314

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !14315
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14315 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !14315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14297), !dbg !14316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14299), !dbg !14317
  %i.d = icmp eq i64 %1, 0, !dbg !14318
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14300, !noalias !14301 ; 5 uses
  %i.g = icmp eq i64 %2, %i.f
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false, !dbg !14318
  br i1 %or.cond.i.i, label %bb.j, label %bb.c, !dbg !14318

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14319 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !14320, !alias.scope !14300, !noalias !14301, !noundef !531 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !14320         ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.f
  %or.cond5.i.i = select i1 %i.j, i1 true, i1 %i.k, !dbg !14320
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e, !dbg !14320

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.f, %bb.d
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.d ], [ %i.ac, %.noexc1.i ], [ -1, %bb.f ]
  store i64 %.sink.sink.i.i, ptr %i.h, align 8, !dbg !14321, !alias.scope !14300, !noalias !14301
  br label %.sink.split.i.i, !dbg !14321

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14321, !alias.scope !14300, !noalias !14301, !noundef !531
  %i.m = add i64 %i.l, %1, !dbg !14321
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14321, !alias.scope !14300, !noalias !14301
  store i64 %2, ptr %i.e, align 8, !dbg !14321, !alias.scope !14300, !noalias !14301
  br label %bb.j, !dbg !14322

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !14323
  br label %.sink.split.sink.split.i.i, !dbg !14324

bb.e:                                             ; preds = %bb.c
  %3 = icmp sgt i64 %i.i, -1, !dbg !14325
  br i1 %3, label %bb.f, label %.sink.split.i.i, !dbg !14325

bb.f:                                             ; preds = %bb.e
  %i.n = udiv i64 %i.f, 5, !dbg !14326
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 %i.n, i64 32), !dbg !14327
  %i.o = add i64 %.sroa.0.0.i.i.i, %2, !dbg !14328
  %.not.i.i = icmp ult i64 %i.o, %i.f, !dbg !14328
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !14328

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !14329, !alias.scope !14300, !noalias !14301, !noundef !531 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !14330 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !14330, !noalias !14302, !noundef !531
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !14331 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14331, !noalias !14302, !noundef !531
  %i.u = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.r, i64 noundef %i.p, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !14332, !noalias !14303

.noexc.i:                                         ; preds = %bb.g
  %i.v = add i64 %2, %1, !dbg !14329              ; 2 uses
  %i.w = add i64 %i.p, %i.v, !dbg !14329
  %i.x = load i64, ptr %i.q, align 8, !dbg !14333, !noalias !14302, !noundef !531
  %i.y = load ptr, ptr %i.s, align 8, !dbg !14334, !noalias !14302, !noundef !531
  %i.z = sub i64 %i.f, %i.v, !dbg !14335
  %i.aa = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, i64 noundef %i.w, i64 noundef %i.z)
          to label %.noexc1.i unwind label %bb.h, !dbg !14336, !noalias !14303

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ab = add i64 %i.u, %i.aa, !dbg !14337
  %i.ac = sub i64 %i.i, %i.ab, !dbg !14337
  br label %.sink.split.sink.split.i.i, !dbg !14338

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !14339, !noalias !14301

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14340, !noalias !14301
  unreachable, !dbg !14340

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !14341

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14342 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14342, !noalias !14304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !14343
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !14342, !noalias !14305
  %i.af = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !14344, !noalias !14304

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !14345, !noalias !14304

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.af, 0, !dbg !14346
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !14347

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !14348, !noalias !14304
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !14349

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !14350, !noalias !14306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !14350, !noalias !14306
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, !dbg !14349

bb.o:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14351, !noalias !14304
  unreachable, !dbg !14351

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14352, !noalias !14304
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECshquuC4dCYVj_10polars_sql.exit.sink.split ], !dbg !14353
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !14354
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !14355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !14355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !14356
  %i.ai = add i64 %2, %1, !dbg !14357
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14354
  %i.ak = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECshquuC4dCYVj_10polars_sql(i64 noundef %1, i64 noundef %i.ai, i64 noundef %.pre), !dbg !14358 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0, !dbg !14358 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1, !dbg !14358
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14359 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !14359, !noundef !531
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al, !dbg !14360
  store ptr %i.ap, ptr %i.an, align 8, !dbg !14361
  %i.aq = sub i64 %i.am, %i.al, !dbg !14362
  store i64 %i.aq, ptr %i.aj, align 8, !dbg !14362
  ret void, !dbg !14363
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !319 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14373
  %i.b = load i64, ptr %i.a, align 8, !dbg !14373, !noundef !531
  %i.c = zext i32 %2 to i64, !dbg !14374          ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.c, !dbg !14375
  br i1 %.not, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14376

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14375
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14375, !nonnull !531
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.c, !dbg !14375
  %i.g = getelementptr i8, ptr %i.f, i64 40, !dbg !14377
  %.val5.i = load i32, ptr %i.g, align 8, !dbg !14377, !alias.scope !14372, !noundef !531
  %i.h = icmp eq i32 %.val5.i, %1, !dbg !14378
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit, !dbg !14379

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ], !dbg !14380
  ret i1 %.sroa.02.0.i, !dbg !14381
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14382 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14411
  %i.c = add i64 %1, 1, !dbg !14412               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14413
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !14413
  %i.d = load i64, ptr %i.a, align 8, !dbg !14413, !range !658, !noundef !531
  %i.e = trunc nuw i64 %i.d to i1, !dbg !14414
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14415
  %i.g = load i64, ptr %i.f, align 8, !dbg !14415, !range !570, !noundef !531 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14415 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !14414, !prof !545

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !14416
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #39, !dbg !14417
  unreachable, !dbg !14417

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !14418, !nonnull !531, !noundef !531 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !14419
  tail call void @llvm.assume(i1 %i.k), !dbg !14420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14421
  store i64 %i.g, ptr %i.b, align 8, !dbg !14422
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14422 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !14422
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14422 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !14422
  %i.n = icmp eq i64 %i.g, 0, !dbg !14423
  br i1 %i.n, label %bb.d, label %bb.f, !dbg !14423

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %bb.e, !dbg !14424

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.l, align 8, !dbg !14425, !alias.scope !14409, !noalias !14410
  br label %bb.f, !dbg !14424

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionlEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %bb.h unwind label %bb.g, !dbg !14426

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.c ], !dbg !14425 ; 2 uses
  store i32 0, ptr %i.p, align 8, !dbg !14427
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !14427
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !14427
  store i64 1, ptr %i.m, align 8, !dbg !14428, !alias.scope !14409, !noalias !14410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14429
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14430
  store <2 x i32> <i32 1, i32 0>, ptr %i.q, align 8, !dbg !14430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14426
  ret void, !dbg !14431

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14432
  unreachable, !dbg !14432

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o, !dbg !14432
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_2
begin_hunk_3_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a
_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit65.a: ; preds = %bb.v
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.p), !dbg !15794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15794
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15795

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15796
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15797
  %i.co = load i64, ptr %i.cn, align 8, !dbg !15797, !noundef !531
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !15798
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !15798, !range !987, !noundef !531
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15799
  %i.cs = load ptr, ptr %i.cr, align 16, !dbg !15799, !noundef !531 ; 2 uses
  %.not25 = icmp eq ptr %i.cs, null, !dbg !15799
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %spec.select73 = select i1 %.not25, ptr null, ptr %i.ct, !dbg !15800
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !15796
  store i64 %i.co, ptr %i.cu, align 8, !dbg !15796
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !15796
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !15796
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !15796
  store ptr %spec.select73, ptr %i.cw, align 16, !dbg !15796
  store i8 17, ptr %i.o, align 16, !dbg !15796
  %i.cx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o) #45
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a unwind label %bb.aa, !dbg !15801

bb.z:                                             ; preds = %bb.w
  %i.cy = icmp eq i8 %i.w, 22, !dbg !15738
  br i1 %i.cy, label %bb.ab, label %bb.ac, !dbg !15738

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o) #43
          to label %bb.j unwind label %bb.i, !dbg !15802

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a: ; preds = %bb.y
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o), !dbg !15802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15802
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15803

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15805
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !15806
  %i.dc = load i32, ptr %i.db, align 4, !dbg !15806, !noundef !531
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !15805
  store i32 %i.dc, ptr %i.dd, align 4, !dbg !15805
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15805
  store ptr %i.da, ptr %i.de, align 8, !dbg !15805
  store i8 21, ptr %i.n, align 16, !dbg !15805
  %i.df = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #45
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a unwind label %bb.ad, !dbg !15807

bb.ac:                                            ; preds = %bb.z
  %i.dg = icmp eq i8 %i.x, 22, !dbg !15738
  br i1 %i.dg, label %bb.ae, label %bb.af, !dbg !15738

bb.ad:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n) #43
          to label %bb.j unwind label %bb.i, !dbg !15808

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a: ; preds = %bb.ab
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n), !dbg !15808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15808
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15808

bb.ae:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !15810
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !15811
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !15811, !noundef !531
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !15810
  store i32 %i.dk, ptr %i.dl, align 4, !dbg !15810
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !15810
  store ptr %i.di, ptr %i.dm, align 8, !dbg !15810
  store i8 21, ptr %i.m, align 16, !dbg !15810
  %i.dn = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #45
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a unwind label %bb.ag, !dbg !15812

bb.af:                                            ; preds = %bb.ac
  %i.do = icmp eq i8 %i.w, 24, !dbg !15738
  br i1 %i.do, label %bb.ah, label %bb.ai, !dbg !15738

bb.ag:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m) #43
          to label %bb.j unwind label %bb.i, !dbg !15813

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a: ; preds = %bb.ae
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m), !dbg !15813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15813
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15813

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !15815
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !15816
  %i.ds = load i32, ptr %i.dr, align 4, !dbg !15816, !noundef !531
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !15815
  store i32 %i.ds, ptr %i.dt, align 4, !dbg !15815
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !15815
  store ptr %i.dq, ptr %i.du, align 8, !dbg !15815
  store i8 23, ptr %i.l, align 16, !dbg !15815
  %i.dv = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #45
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69 unwind label %bb.aj, !dbg !15817

bb.ai:                                            ; preds = %bb.af
  switch i8 %i.x, label %bb.ak [
    i8 0, label %bb.al
    i8 24, label %bb.am
  ], !dbg !15738

bb.aj:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l) #43
          to label %bb.j unwind label %bb.i, !dbg !15818

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69: ; preds = %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l), !dbg !15818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15818
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15818

bb.ak:                                            ; preds = %bb.ai
  %i.dx = icmp eq i8 %i.w, 0, !dbg !15738
  br i1 %i.dx, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.ap, !dbg !15738

bb.al:                                            ; preds = %bb.ai
  %i.dy = icmp eq i8 %i.w, 0, !dbg !15738
  br i1 %i.dy, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.an, !dbg !15738

bb.am:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15820
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !15821
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !15821, !noundef !531
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !15820
  store i32 %i.eb, ptr %i.ec, align 4, !dbg !15820
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15820
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !15820
  store i8 23, ptr %i.k, align 16, !dbg !15820
  %i.ee = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.k) #45
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70 unwind label %bb.ao, !dbg !15822

bb.an:                                            ; preds = %bb.ap, %bb.al
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15823

bb.ao:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k) #43
          to label %bb.j unwind label %bb.i, !dbg !15824

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70: ; preds = %bb.am
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k), !dbg !15824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15824
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15824

bb.ap:                                            ; preds = %bb.ak
  switch i8 %i.x, label %bb.aq [
    i8 0, label %bb.an
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.au
    i8 5, label %bb.av
    i8 6, label %bb.aw
    i8 7, label %bb.ax
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.ba
    i8 11, label %bb.bb
    i8 12, label %bb.bc
    i8 13, label %bb.bd
    i8 14, label %bb.be
    i8 15, label %bb.bf
    i8 16, label %bb.bg
    i8 17, label %bb.bh
    i8 19, label %bb.bi
    i8 20, label %bb.bj
    i8 21, label %bb.bk
    i8 23, label %bb.bl
    i8 25, label %bb.bm
    i8 26, label %bb.bn
    i8 27, label %bb.bo
    i8 29, label %bb.bp
    i8 30, label %bb.bq
    i8 32, label %bb.br
    i8 34, label %bb.bs
  ], !dbg !15738

bb.aq:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15825
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !15826
  %i.eg = load i128, ptr %i.b, align 16, !dbg !15826, !range !15630, !noundef !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15826
  %.not23 = icmp eq i128 %i.eg, 0, !dbg !15825
  br i1 %.not23, label %bb.ea, label %bb.du, !dbg !15825

bb.ar:                                            ; preds = %bb.ap
  %i.eh = icmp eq i8 %i.w, 1, !dbg !15738
  br i1 %i.eh, label %bb.bt, label %bb.aq, !dbg !15738

bb.as:                                            ; preds = %bb.ap
  %i.ei = icmp eq i8 %i.w, 2, !dbg !15738
  br i1 %i.ei, label %bb.bu, label %bb.aq, !dbg !15738

bb.at:                                            ; preds = %bb.ap
  %i.ej = icmp eq i8 %i.w, 3, !dbg !15738
  br i1 %i.ej, label %bb.bw, label %bb.aq, !dbg !15738

bb.au:                                            ; preds = %bb.ap
  %i.ek = icmp eq i8 %i.w, 4, !dbg !15738
  br i1 %i.ek, label %bb.bx, label %bb.aq, !dbg !15738

bb.av:                                            ; preds = %bb.ap
  %i.el = icmp eq i8 %i.w, 5, !dbg !15738
  br i1 %i.el, label %bb.by, label %bb.aq, !dbg !15738

bb.aw:                                            ; preds = %bb.ap
  %i.em = icmp eq i8 %i.w, 6, !dbg !15738
  br i1 %i.em, label %bb.bz, label %bb.aq, !dbg !15738

bb.ax:                                            ; preds = %bb.ap
  %i.en = icmp eq i8 %i.w, 7, !dbg !15738
  br i1 %i.en, label %bb.ca, label %bb.aq, !dbg !15738

bb.ay:                                            ; preds = %bb.ap
  %i.eo = icmp eq i8 %i.w, 8, !dbg !15738
  br i1 %i.eo, label %bb.cb, label %bb.aq, !dbg !15738

bb.az:                                            ; preds = %bb.ap
  %i.ep = icmp eq i8 %i.w, 9, !dbg !15738
  br i1 %i.ep, label %bb.cc, label %bb.aq, !dbg !15738

bb.ba:                                            ; preds = %bb.ap
  %i.eq = icmp eq i8 %i.w, 10, !dbg !15738
  br i1 %i.eq, label %bb.cd, label %bb.aq, !dbg !15738

bb.bb:                                            ; preds = %bb.ap
  %i.er = icmp eq i8 %i.w, 11, !dbg !15738
  br i1 %i.er, label %bb.ce, label %bb.aq, !dbg !15738

bb.bc:                                            ; preds = %bb.ap
  %i.es = icmp eq i8 %i.w, 12, !dbg !15738
  br i1 %i.es, label %bb.cf, label %bb.aq, !dbg !15738

bb.bd:                                            ; preds = %bb.ap
  %i.et = icmp eq i8 %i.w, 13, !dbg !15738
  br i1 %i.et, label %bb.cg, label %bb.aq, !dbg !15738

bb.be:                                            ; preds = %bb.ap
  %i.eu = icmp eq i8 %i.w, 14, !dbg !15738
  br i1 %i.eu, label %bb.cj, label %bb.aq, !dbg !15738

bb.bf:                                            ; preds = %bb.ap
  %i.ev = icmp eq i8 %i.w, 15, !dbg !15738
  br i1 %i.ev, label %bb.cm, label %bb.aq, !dbg !15738

bb.bg:                                            ; preds = %bb.ap
  %i.ew = icmp eq i8 %i.w, 16, !dbg !15738
  br i1 %i.ew, label %bb.cp, label %bb.aq, !dbg !15738

bb.bh:                                            ; preds = %bb.ap
  %i.ex = icmp eq i8 %i.w, 17, !dbg !15738
  br i1 %i.ex, label %bb.cq, label %bb.aq, !dbg !15738

bb.bi:                                            ; preds = %bb.ap
  %i.ey = icmp eq i8 %i.w, 19, !dbg !15738
  br i1 %i.ey, label %bb.cu, label %bb.aq, !dbg !15738

bb.bj:                                            ; preds = %bb.ap
  %i.ez = icmp eq i8 %i.w, 20, !dbg !15738
  br i1 %i.ez, label %bb.cw, label %bb.aq, !dbg !15738

bb.bk:                                            ; preds = %bb.ap
  %i.fa = icmp eq i8 %i.w, 21, !dbg !15738
  br i1 %i.fa, label %bb.cx, label %bb.aq, !dbg !15738

bb.bl:                                            ; preds = %bb.ap
  %i.fb = icmp eq i8 %i.w, 23, !dbg !15738
  br i1 %i.fb, label %bb.da, label %bb.aq, !dbg !15738

bb.bm:                                            ; preds = %bb.ap
  %i.fc = icmp eq i8 %i.w, 25, !dbg !15738
  br i1 %i.fc, label %bb.dd, label %bb.aq, !dbg !15738

bb.bn:                                            ; preds = %bb.ap
  %i.fd = icmp eq i8 %i.w, 26, !dbg !15738
  br i1 %i.fd, label %bb.de, label %bb.aq, !dbg !15738

bb.bo:                                            ; preds = %bb.ap
  %i.fe = icmp eq i8 %i.w, 27, !dbg !15738
  br i1 %i.fe, label %bb.dm, label %bb.aq, !dbg !15738

bb.bp:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dn
    i8 30, label %bb.do
  ], !dbg !15738

bb.bq:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dp
    i8 30, label %bb.dq
  ], !dbg !15738

bb.br:                                            ; preds = %bb.ap
  %i.ff = icmp eq i8 %i.w, 32, !dbg !15738
  br i1 %i.ff, label %bb.dr, label %bb.aq, !dbg !15738

bb.bs:                                            ; preds = %bb.ap
  %i.fg = icmp eq i8 %i.w, 34, !dbg !15738
  br i1 %i.fg, label %bb.dt, label %bb.aq, !dbg !15738

bb.bt:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15827
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !15827, !range !990, !noundef !531
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !15828
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !15828, !range !990, !noundef !531
  %i.fl = icmp eq i8 %i.fi, %i.fk, !dbg !15827
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15829

bb.bu:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15830
  %.val35.a = load i64, ptr %i.fm, align 16, !dbg !15830, !noundef !531 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15830
  %.val37.a = load i64, ptr %i.fn, align 16, !dbg !15830, !noundef !531
  %i.fo = icmp eq i64 %.val35.a, %.val37.a, !dbg !15831
  br i1 %i.fo, label %bb.bv, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15831

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15832
  %.val36.a = load ptr, ptr %i.fp, align 8, !dbg !15830, !nonnull !531, !noundef !531
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15833
  %.val34 = load ptr, ptr %i.fq, align 8, !dbg !15830, !nonnull !531, !noundef !531
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val34, ptr nonnull readonly %.val36.a, i64 %.val35.a), !dbg !15834, !alias.scope !15632
  %i.fr = icmp eq i32 %bcmp.i.i, 0, !dbg !15834
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15835

bb.bw:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15836
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !15836, !noundef !531
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !15837
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !15837, !noundef !531
  %i.fw = icmp eq i8 %i.ft, %i.fv, !dbg !15836
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15838

bb.bx:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !15839
  %i.fy = load i16, ptr %i.fx, align 2, !dbg !15839, !noundef !531
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !15840
  %i.ga = load i16, ptr %i.fz, align 2, !dbg !15840, !noundef !531
  %i.gb = icmp eq i16 %i.fy, %i.ga, !dbg !15839
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15841

bb.by:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !15842
  %i.gd = load i32, ptr %i.gc, align 4, !dbg !15842, !noundef !531
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !15843
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !15843, !noundef !531
  %i.gg = icmp eq i32 %i.gd, %i.gf, !dbg !15842
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15844

bb.bz:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15845
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !15845, !noundef !531
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15846
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !15846, !noundef !531
  %i.gl = icmp eq i64 %i.gi, %i.gk, !dbg !15845
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15847

bb.ca:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15848
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !15848, !noundef !531
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15849
  %i.gp = load i128, ptr %i.go, align 16, !dbg !15849, !noundef !531
  %i.gq = icmp eq i128 %i.gn, %i.gp, !dbg !15848
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15850

bb.cb:                                            ; preds = %bb.ay
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15851
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !15851, !noundef !531
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !15852
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !15852, !noundef !531
  %i.gv = icmp eq i8 %i.gs, %i.gu, !dbg !15851
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15853

bb.cc:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !15854
  %i.gx = load i16, ptr %i.gw, align 2, !dbg !15854, !noundef !531
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !15855
  %i.gz = load i16, ptr %i.gy, align 2, !dbg !15855, !noundef !531
  %i.ha = icmp eq i16 %i.gx, %i.gz, !dbg !15854
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15856

bb.cd:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !15857
end_hunk_3
begin_hunk_4_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a

bb.dd:                                            ; preds = %bb.bm
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15927
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15928
  %i.kw = tail call noundef zeroext i1 @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core7testingNtNtB6_6series6SeriesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kv), !dbg !15929
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15929

bb.de:                                            ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15930
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15931
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15932
  %i.la = load i64, ptr %i.kz, align 8, !dbg !15932, !noundef !531 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15933
  %i.lc = load i64, ptr %i.lb, align 8, !dbg !15933, !noundef !531
  %.not = icmp eq i64 %i.la, %i.lc, !dbg !15932
  br i1 %.not, label %.preheader, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15705

.preheader:                                       ; preds = %bb.de
  %.not78 = icmp eq i64 %i.la, 0, !dbg !15934
  br i1 %.not78, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !15710

.lr.ph:                                           ; preds = %.preheader
  %.val30 = load ptr, ptr %i.kx, align 16, !nonnull !531, !noundef !531
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val31 = load ptr, ptr %i.ld, align 8, !nonnull !531, !align !638, !noundef !531 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val31, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !range !625, !invariant.load !531
  %i.lg = add nsw i64 %i.lf, -1
  %i.lh = and i64 %i.lg, -16
  %i.li = getelementptr inbounds nuw i8, ptr %.val30, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.val31, i64 584
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !531, !nonnull !531
  %.val = load ptr, ptr %i.ky, align 16, !nonnull !531
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val29 = load ptr, ptr %i.lm, align 8, !nonnull !531, !align !638 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val29, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.val29, i64 584
  br label %bb.dh, !dbg !15710

bb.df:                                            ; preds = %bb.dj, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.lp, %bb.dg ], [ %i.ly, %bb.dj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f) #43
          to label %bb.j unwind label %bb.i, !dbg !15935

bb.dg:                                            ; preds = %bb.dk, %bb.dh
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %.lr.ph, %bb.dl
  %.sroa.0.177 = phi i1 [ true, %.lr.ph ], [ %i.lz, %bb.dl ]
  %.sroa.013.076 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.dl ] ; 3 uses
  %i.lq = add nuw i64 %.sroa.013.076, 1, !dbg !15936 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15937
  call void %i.ll(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.lj, i64 noundef %.sroa.013.076) #45, !dbg !15938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15939
  %i.lr = load i64, ptr %i.ln, align 8, !dbg !15940, !range !625, !invariant.load !531
  %i.ls = add nsw i64 %i.lr, -1, !dbg !15940
  %i.lt = and i64 %i.ls, -16, !dbg !15940
  %i.lu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.lt, !dbg !15940
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16, !dbg !15940
  %i.lw = load ptr, ptr %i.lo, align 8, !dbg !15941, !invariant.load !531, !nonnull !531
  invoke void %i.lw(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.lv, i64 noundef %.sroa.013.076)
          to label %bb.di unwind label %bb.dg, !dbg !15942

bb.di:                                            ; preds = %bb.dh
  %i.lx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.dk unwind label %bb.dj, !dbg !15943

bb.dj:                                            ; preds = %bb.di
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e) #43
          to label %bb.df unwind label %bb.i, !dbg !15944

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e)
          to label %bb.dl unwind label %bb.dg, !dbg !15944

bb.dl:                                            ; preds = %bb.dk
  %i.lz = select i1 %i.lx, i1 %.sroa.0.177, i1 false, !dbg !15945 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15944
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f), !dbg !15935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15935
  %exitcond.not = icmp eq i64 %i.lq, %i.la, !dbg !15934
  br i1 %exitcond.not, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.dh, !dbg !15710

bb.dm:                                            ; preds = %bb.bo
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15946
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15947
  %i.mc = tail call noundef zeroext i1 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6objectRDNtB2_16PolarsObjectSafeEL_NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ma, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mb), !dbg !15948
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15948

bb.dn:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15949
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15950
  %i.me = load i64, ptr %i.md, align 8, !dbg !15950, !noundef !531
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15951
  %i.mg = load ptr, ptr %i.mf, align 16, !dbg !15951, !nonnull !531, !align !638, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.me, ptr noundef nonnull align 8 %i.mg), !dbg !15949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15952
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15953
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !15953, !noundef !531
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15954
  %i.mk = load ptr, ptr %i.mj, align 16, !dbg !15954, !nonnull !531, !align !638, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.mi, ptr noundef nonnull align 8 %i.mk), !dbg !15952
  %i.ml = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true), !dbg !15955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15956
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15957

bb.do:                                            ; preds = %bb.bp
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15958
  %i.mn = load ptr, ptr %i.mm, align 8, !dbg !15958, !nonnull !531, !noundef !531 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 8, !dbg !15959
  %.val50.a = load ptr, ptr %i.mo, align 8, !dbg !15959, !nonnull !531, !noundef !531 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 16, !dbg !15959
  %.val51.a = load i64, ptr %i.mp, align 8, !dbg !15959, !noundef !531
  %i.mq = getelementptr inbounds nuw [48 x i8], ptr %.val50.a, i64 %.val51.a, !dbg !15960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15961
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15962
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !15962, !noundef !531
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15963
  %i.mu = load ptr, ptr %i.mt, align 16, !dbg !15963, !nonnull !531, !align !638, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.ms, ptr noundef nonnull align 8 %i.mu), !dbg !15961
  %i.mv = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EIB1H_IB2v_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val50.a, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext true), !dbg !15964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15965
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15966

bb.dp:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15967
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15968
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !15968, !noundef !531
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15969
  %i.mz = load ptr, ptr %i.my, align 16, !dbg !15969, !nonnull !531, !align !638, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.mx, ptr noundef nonnull align 8 %i.mz), !dbg !15967
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15970
  %i.nb = load ptr, ptr %i.na, align 8, !dbg !15970, !nonnull !531, !noundef !531 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 8, !dbg !15971
  %.val48 = load ptr, ptr %i.nc, align 8, !dbg !15971, !nonnull !531, !noundef !531 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 16, !dbg !15971
  %.val49 = load i64, ptr %i.nd, align 8, !dbg !15971, !noundef !531
  %i.ne = getelementptr inbounds nuw [48 x i8], ptr %.val48, i64 %.val49, !dbg !15972
  %i.nf = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EIB1H_IB2v_BX_ENCNvB2_23struct_owned_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.val48, ptr noundef nonnull %i.ne, i1 noundef zeroext true), !dbg !15973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15974
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15975

bb.dq:                                            ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15976
  %i.nh = load ptr, ptr %i.ng, align 8, !dbg !15976, !nonnull !531, !noundef !531 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8, !dbg !15977
  %.val46 = load ptr, ptr %i.ni, align 8, !dbg !15977, !nonnull !531, !noundef !531 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 16, !dbg !15977
  %.val47 = load i64, ptr %i.nj, align 8, !dbg !15977, !noundef !531
  %i.nk = getelementptr inbounds nuw [48 x i8], ptr %.val46, i64 %.val47, !dbg !15978
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15979
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !15979, !nonnull !531, !noundef !531 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8, !dbg !15980
  %.val44 = load ptr, ptr %i.nn, align 8, !dbg !15980, !nonnull !531, !noundef !531 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nm, i64 16, !dbg !15980
  %.val45 = load i64, ptr %i.no, align 8, !dbg !15980, !noundef !531
  %i.np = getelementptr inbounds nuw [48 x i8], ptr %.val44, i64 %.val45, !dbg !15981
  %i.nq = tail call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val46, ptr noundef nonnull %i.nk, ptr noundef nonnull %.val44, ptr noundef nonnull %i.np, i1 noundef zeroext true), !dbg !15982
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15983

bb.dr:                                            ; preds = %bb.br
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15984
  %.val53.a = load i64, ptr %i.nr, align 16, !dbg !15984, !noundef !531 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15984
  %.val55 = load i64, ptr %i.ns, align 16, !dbg !15984, !noundef !531
  %i.nt = icmp eq i64 %.val53.a, %.val55, !dbg !15985
  br i1 %i.nt, label %bb.ds, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15985

bb.ds:                                            ; preds = %bb.dr
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15986
  %.val54 = load ptr, ptr %i.nu, align 8, !dbg !15984, !nonnull !531, !noundef !531
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15987
  %.val52 = load ptr, ptr %i.nv, align 8, !dbg !15984, !nonnull !531, !noundef !531
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val52, ptr nonnull readonly %.val54, i64 range(i64 0, -9223372036854775808) %.val53.a), !dbg !15988, !alias.scope !15722
  %i.nw = icmp eq i32 %bcmp.i.i.i, 0, !dbg !15988
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15989

bb.dt:                                            ; preds = %bb.bs
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15990
  %i.ny = load i128, ptr %i.nx, align 16, !dbg !15990, !noundef !531
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15991
  %i.oa = load i64, ptr %i.nz, align 16, !dbg !15991, !noundef !531
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15992
  %i.oc = load i128, ptr %i.ob, align 16, !dbg !15992, !noundef !531
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15993
  %i.oe = load i64, ptr %i.od, align 16, !dbg !15993, !noundef !531
  %i.of = tail call fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %i.ny, i64 noundef %i.oa, i128 noundef %i.oc, i64 noundef %i.oe) #45, !dbg !15994
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !15995

bb.du:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15996
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !15997
  %i.og = load i128, ptr %i.a, align 16, !dbg !15997, !range !15630, !noundef !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15997
  %.not24 = icmp eq i128 %i.og, 0, !dbg !15996
  br i1 %.not24, label %bb.ea, label %bb.dv, !dbg !15996

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15723
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !15998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15999
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !16000
  %i.oh = load i128, ptr %i.d, align 16, !dbg !16001, !range !15630, !noundef !531
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16001
  %i.oj = trunc nuw i128 %i.oh to i1, !dbg !16002
  %i.ok = load i128, ptr %i.c, align 16, !dbg !16001, !range !15630, !noundef !531
  %i.ol = trunc nuw i128 %i.ok to i1, !dbg !16002 ; 2 uses
  br i1 %i.oj, label %bb.dw, label %bb.dx, !dbg !16002

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ol, label %bb.dz, label %bb.dy, !dbg !16002

bb.dx:                                            ; preds = %bb.dv
  %i.om = xor i1 %i.ol, true, !dbg !16002
  br label %bb.dy, !dbg !16002

bb.dy:                                            ; preds = %bb.dw, %bb.dz, %bb.dx
  %.sroa.0.2 = phi i1 [ %i.oq, %bb.dz ], [ %i.om, %bb.dx ], [ false, %bb.dw ], !dbg !16003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16004
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !16004

bb.dz:                                            ; preds = %bb.dw
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16001
  %i.oo = load i128, ptr %i.oi, align 16, !dbg !16005, !noundef !531
  %i.op = load i128, ptr %i.on, align 16, !dbg !16006, !noundef !531
  %i.oq = icmp eq i128 %i.oo, %i.op, !dbg !16005
  br label %bb.dy, !dbg !16007

bb.ea:                                            ; preds = %bb.du, %bb.aq
  %i.or = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !16008
  %i.os = extractvalue { i64, double } %i.or, 0, !dbg !16008
  %i.ot = icmp eq i64 %i.os, 1, !dbg !16009
  br i1 %i.ot, label %bb.eb, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !16009

bb.eb:                                            ; preds = %bb.ea
  %i.ou = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !16010
  %i.ov = extractvalue { i64, double } %i.ou, 0, !dbg !16010
  %i.ow = icmp eq i64 %i.ov, 1, !dbg !16011
  br i1 %i.ow, label %bb.ec, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !16011

bb.ec:                                            ; preds = %bb.eb
  %i.ox = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !16012 ; 2 uses
  %i.oy = extractvalue { i64, double } %i.ox, 0, !dbg !16012
  %i.oz = extractvalue { i64, double } %i.ox, 1, !dbg !16012 ; 2 uses
  %i.pa = trunc nuw i64 %i.oy to i1, !dbg !16013
  br i1 %i.pa, label %bb.ed, label %bb.ee, !dbg !16013, !prof !747

bb.ed:                                            ; preds = %bb.ec
  %i.pb = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !16014 ; 2 uses
  %i.pc = extractvalue { i64, double } %i.pb, 0, !dbg !16014
  %i.pd = extractvalue { i64, double } %i.pb, 1, !dbg !16014 ; 2 uses
  %i.pe = trunc nuw i64 %i.pc to i1, !dbg !16015
  br i1 %i.pe, label %bb.ef, label %bb.eg, !dbg !16015, !prof !747

bb.ee:                                            ; preds = %bb.ec
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #44, !dbg !16016
  unreachable, !dbg !16016

bb.ef:                                            ; preds = %bb.ed
  %i.pf = fcmp uno double %i.oz, 0.000000e+00, !dbg !16017
  br i1 %i.pf, label %bb.ei, label %bb.eh, !dbg !16018

bb.eg:                                            ; preds = %bb.ed
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #44, !dbg !16019
  unreachable, !dbg !16019

bb.eh:                                            ; preds = %bb.ef
  %i.pg = fcmp oeq double %i.oz, %i.pd, !dbg !16020
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !16021

bb.ei:                                            ; preds = %bb.ef
  %i.ph = fcmp uno double %i.pd, 0.000000e+00, !dbg !16022
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !16021
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %0, i64 noundef %1, i128 noundef %2, i64 noundef %3) unnamed_addr #4 !dbg !16023 {
bb.a:
  %i.a = icmp ult i64 %1, %3, !dbg !16047
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !16047

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, %3, !dbg !16048
  br i1 %i.b, label %bb.d, label %bb.h, !dbg !16048

bb.c:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %3, %1, !dbg !16049          ; 3 uses
  %i.d = icmp ult i64 %i.c, 39, !dbg !16050
  br i1 %i.d, label %bb.i, label %bb.j, !dbg !16050

bb.d:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %1, %3, !dbg !16051          ; 3 uses
  %i.f = icmp ult i64 %i.e, 39, !dbg !16052
  br i1 %i.f, label %bb.e, label %bb.f, !dbg !16052

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @41, i64 %i.e, !dbg !16052
  %i.h = load i128, ptr %i.g, align 16, !dbg !16052, !noundef !531
  %i.i = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %2, i128 %i.h), !dbg !16053 ; 2 uses
  %i.j = extractvalue { i128, i1 } %i.i, 1, !dbg !16053
  br i1 %i.j, label %bb.l, label %bb.g, !dbg !16054, !prof !545

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #44, !dbg !16052
  unreachable, !dbg !16052

bb.g:                                             ; preds = %bb.e
  %i.k = extractvalue { i128, i1 } %i.i, 0, !dbg !16053
  br label %bb.h, !dbg !16055

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.k
  %.sroa.02.0 = phi i128 [ %2, %bb.k ], [ %i.k, %bb.g ], [ %2, %bb.b ]
  %.sroa.0.0 = phi i128 [ %i.q, %bb.k ], [ %0, %bb.g ], [ %0, %bb.b ]
  %i.l = icmp eq i128 %.sroa.0.0, %.sroa.02.0, !dbg !16056
  br label %bb.l, !dbg !16057

bb.i:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @41, i64 %i.c, !dbg !16050
  %i.n = load i128, ptr %i.m, align 16, !dbg !16050, !noundef !531
  %i.o = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %0, i128 %i.n), !dbg !16058 ; 2 uses
  %i.p = extractvalue { i128, i1 } %i.o, 1, !dbg !16058
  br i1 %i.p, label %bb.l, label %bb.k, !dbg !16059, !prof !545

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #44, !dbg !16050
  unreachable, !dbg !16050

bb.k:                                             ; preds = %bb.i
  %i.q = extractvalue { i128, i1 } %i.o, 0, !dbg !16058
  br label %bb.h, !dbg !16060

bb.l:                                             ; preds = %bb.i, %bb.e, %bb.h
  %.sroa.04.0 = phi i1 [ false, %bb.e ], [ %i.l, %bb.h ], [ false, %bb.i ], !dbg !16061
  ret i1 %.sroa.04.0, !dbg !16057
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB2_3Any7type_idCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 !dbg !16062 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @44, i64 16, i1 false), !dbg !16065
  ret void, !dbg !16066
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB2_3Any7type_idCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 !dbg !16067 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @45, i64 16, i1 false), !dbg !16070
  ret void, !dbg !16071
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encodeNtB2_18RowEncodingVariantNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !16072 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !dbg !16086, !range !637, !noundef !531 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !16086
  br i1 %.not, label %bb.c, label %bb.b, !dbg !16086

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16082
  %.not4 = icmp eq i64 %i.c, -9223372036854775808, !dbg !16087
  br i1 %.not4, label %bb.f, label %bb.e, !dbg !16088

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !dbg !16086
  br label %bb.d, !dbg !16086

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void, !dbg !16089

bb.e:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !16090
  br label %bb.g, !dbg !16091

bb.f:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.b, align 8, !dbg !16092
  br label %bb.g, !dbg !16092

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !16083
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16093 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !16093, !range !570, !noundef !531
  %.not5 = icmp eq i64 %i.e, -9223372036854775808, !dbg !16093
  br i1 %.not5, label %bb.i, label %bb.h, !dbg !16094

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16095
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.j, !dbg !16096

bb.i:                                             ; preds = %bb.g, %bb.l
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.l ], [ -9223372036854775808, %bb.g ], !dbg !16097
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !16098
end_hunk_4
begin_hunk_5_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !27680
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27680
  store ptr %i.al, ptr %i.bg, align 8, !dbg !27680
  store i8 29, ptr %0, align 16, !dbg !27680
  br label %bb.aj, !dbg !27609

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !27607
  unreachable, !dbg !27607
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB5_15StrptimeOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !27681 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27716
  %i.b = load i8, ptr %i.a, align 8, !dbg !27716, !range !990, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !27716
  %i.d = load i8, ptr %i.c, align 8, !dbg !27716, !range !990, !noundef !531
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !27716
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !27716

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !27717
  %i.g = load i8, ptr %i.f, align 1, !dbg !27717, !range !990, !noundef !531
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !27717
  %i.i = load i8, ptr %i.h, align 1, !dbg !27717, !range !990, !noundef !531
  %i.j = icmp eq i8 %i.g, %i.i, !dbg !27717
  br i1 %i.j, label %bb.c, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !27717

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26, !dbg !27718
  %i.l = load i8, ptr %i.k, align 2, !dbg !27718, !range !990, !noundef !531
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !27718
  %i.n = load i8, ptr %i.m, align 2, !dbg !27718, !range !990, !noundef !531
  %i.o = icmp eq i8 %i.l, %i.n, !dbg !27718
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !27718

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !27719
  %i.q = load i8, ptr %i.p, align 1, !dbg !27719, !range !660, !noundef !531 ; 3 uses
  %.not = icmp eq i8 %i.q, -38, !dbg !27719       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !27719
  %i.s = load i8, ptr %i.r, align 1, !dbg !27719, !range !660, !noundef !531 ; 3 uses
  %i.t = icmp eq i8 %i.s, -38, !dbg !27719        ; 2 uses
  %brmerge = or i1 %.not, %i.t, !dbg !27720
  %.mux = and i1 %.not, %i.t, !dbg !27720
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !27720

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.j, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.d ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6 ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ah, %bb.j ]
  ret i1 %.sroa.0.0.shrunk, !dbg !27721

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i8 %i.q, -41, !dbg !27722
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !27722

bb.f:                                             ; preds = %bb.e
  %i.v = add i8 %i.q, 64, !dbg !27723
  %i.w = tail call i8 @llvm.umin.i8(i8 %i.v, i8 24), !dbg !27724
  %.sroa.0.0.i.i = zext nneg i8 %i.w to i64, !dbg !27724
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !27725

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !dbg !27726, !alias.scope !27713, !noalias !27714, !noundef !531
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27727
  %i.z = load i64, ptr %i.y, align 8, !dbg !27727, !alias.scope !27713, !noalias !27714, !noundef !531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !27728

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ], !dbg !27729 ; 2 uses
  %.sroa.0.0.i2 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.f ], !dbg !27730
  %i.aa = icmp ugt i8 %i.s, -41, !dbg !27731
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !27731

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ab = add i8 %i.s, 64, !dbg !27732
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 24), !dbg !27733
  %.sroa.0.0.i.i3 = zext nneg i8 %i.ac to i64, !dbg !27733
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !27734

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ad = load ptr, ptr %1, align 8, !dbg !27735, !alias.scope !27715, !noundef !531
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27736
  %i.af = load i64, ptr %i.ae, align 8, !dbg !27736, !alias.scope !27715, !noundef !531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !27737

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i4 = phi i64 [ %i.af, %bb.i ], [ %.sroa.0.0.i.i3, %bb.h ], !dbg !27738
  %.sroa.0.0.i5 = phi ptr [ %i.ad, %bb.i ], [ %1, %bb.h ], !dbg !27739
  %i.ag = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i4, !dbg !27740
  br i1 %i.ag, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !27740

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i2, ptr %.sroa.0.0.i5, i64 %.sroa.01.0.i), !dbg !27741
  %i.ah = icmp eq i32 %bcmp.i, 0, !dbg !27741
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !27742
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsNtB5_16FillNullStrategyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #14 !dbg !27743 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !27763, !range !27754, !noundef !531 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !dbg !27764, !range !27754, !noundef !531
  %i.c = icmp eq i32 %i.a, %i.b, !dbg !27765
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !27765

bb.b:                                             ; preds = %bb.i, %bb.f, %bb.c, %bb.a, %bb.j, %bb.k, %bb.g, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.v, %bb.h ], [ true, %bb.c ], [ %i.r, %bb.g ], [ %i.aa, %bb.k ], [ false, %bb.f ], [ %i.w, %bb.j ], [ false, %bb.i ], !dbg !27766
  ret i1 %.sroa.0.0, !dbg !27767

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ], !dbg !27765

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !27768
  %i.e = load i32, ptr %i.d, align 4, !dbg !27768, !range !1119, !noundef !531
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27768
  %i.g = trunc nuw i32 %i.e to i1, !dbg !27769
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !27768
  %i.i = load i32, ptr %i.h, align 4, !dbg !27768, !range !1119, !noundef !531
  %i.j = trunc nuw i32 %i.i to i1, !dbg !27769    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g, !dbg !27769

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !27770
  %i.l = load i32, ptr %i.k, align 4, !dbg !27770, !range !1119, !noundef !531
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27770
  %i.n = trunc nuw i32 %i.l to i1, !dbg !27771
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !27770
  %i.p = load i32, ptr %i.o, align 4, !dbg !27770, !range !1119, !noundef !531
  %i.q = trunc nuw i32 %i.p to i1, !dbg !27771    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !dbg !27771

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.h, label %bb.b, !dbg !27769

bb.g:                                             ; preds = %bb.d
  %i.r = xor i1 %i.j, true, !dbg !27769
  br label %bb.b, !dbg !27769

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27768
  %i.t = load i32, ptr %i.f, align 4, !dbg !27772, !noundef !531
  %i.u = load i32, ptr %i.s, align 4, !dbg !27773, !noundef !531
  %i.v = icmp eq i32 %i.t, %i.u, !dbg !27772
  br label %bb.b, !dbg !27774

bb.i:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %bb.b, !dbg !27771

bb.j:                                             ; preds = %bb.e
  %i.w = xor i1 %i.q, true, !dbg !27771
  br label %bb.b, !dbg !27771

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27770
  %i.y = load i32, ptr %i.m, align 4, !dbg !27775, !noundef !531
  %i.z = load i32, ptr %i.x, align 4, !dbg !27776, !noundef !531
  %i.aa = icmp eq i32 %i.y, %i.z, !dbg !27775
  br label %bb.b, !dbg !27777
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !27778 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27795
  %i.b = load ptr, ptr %i.a, align 8, !dbg !27795, !nonnull !531, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27796
  %i.d = load i64, ptr %i.c, align 8, !dbg !27796, !noundef !531
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !27797
  ret i1 %i.e, !dbg !27798
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #14 !dbg !27799 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !27841
  %i.b = load i8, ptr %i.a, align 2, !dbg !27841, !range !990, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !27841
  %i.d = load i8, ptr %i.c, align 2, !dbg !27841, !range !990, !noundef !531
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !27841
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !27819

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !27842
  %i.g = load i16, ptr %i.f, align 2, !dbg !27842, !noundef !531
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !27842
  %i.i = load i16, ptr %i.h, align 2, !dbg !27842, !noundef !531
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !27842
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !27823

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !27843, !range !987, !noundef !531 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !27843
  %.not = icmp eq i8 %i.k, 2, !dbg !27843
  %i.m = load i8, ptr %1, align 2, !dbg !27843, !range !987, !noundef !531 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !27844

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !27845

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !27843
  %i.o = icmp eq i8 %i.k, %i.m
  br i1 %i.o, label %bb.g, label %bb.d, !dbg !27844

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, 2, !dbg !27843
  br label %bb.d, !dbg !27844

bb.g:                                             ; preds = %bb.e
  %or.cond.not = icmp eq i8 %i.k, 0, !dbg !27846
  br i1 %or.cond.not, label %bb.d, label %bb.h, !dbg !27846

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.l, align 1, !dbg !27847, !noundef !531
  %i.r = load i8, ptr %i.n, align 1, !dbg !27847, !noundef !531
  %i.s = icmp eq i8 %i.q, %i.r, !dbg !27847
  br label %bb.d, !dbg !27846
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsy_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 !dbg !27848 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !27873, !range !663, !noundef !531 ; 3 uses
  %i.b = icmp ne i8 %i.a, 32, !dbg !27873
  tail call void @llvm.assume(i1 %i.b), !dbg !27873
  %i.c = add nsw i8 %i.a, -31, !dbg !27873
  %i.d = icmp samesign ugt i8 %i.a, 30, !dbg !27873
  %narrow = select i1 %i.d, i8 %i.c, i8 1, !dbg !27873 ; 2 uses
  %i.e = load i8, ptr %1, align 16, !dbg !27874, !range !663, !noundef !531 ; 3 uses
  %i.f = icmp ne i8 %i.e, 32, !dbg !27874
  tail call void @llvm.assume(i1 %i.f), !dbg !27874
  %i.g = add nsw i8 %i.e, -31, !dbg !27874
  %i.h = icmp samesign ugt i8 %i.e, 30, !dbg !27874
  %narrow2 = select i1 %i.h, i8 %i.g, i8 1, !dbg !27874
  %i.i = icmp eq i8 %narrow, %narrow2, !dbg !27875
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !27875

bb.b:                                             ; preds = %bb.a
  switch i8 %narrow, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !27875

bb.c:                                             ; preds = %bb.h, %bb.j, %bb.f, %bb.a, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.e ], [ %i.z, %bb.i ], [ false, %bb.a ], [ %i.p, %bb.g ], [ %i.af, %bb.k ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk, !dbg !27876

bb.d:                                             ; preds = %bb.b
  unreachable, !dbg !27873

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27877
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27877
  %i.l = tail call noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB2_15DynLiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !27878
  br label %bb.c, !dbg !27878

bb.f:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !27872
  br i1 %i.m, label %bb.i, label %bb.c, !dbg !27872

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27879
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27879
  %i.p = tail call noundef zeroext i1 @_RNvXs5_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !dbg !27880
  br label %bb.c, !dbg !27880

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27881
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !27881
  %i.s = load i128, ptr %i.r, align 16, !dbg !27881, !noundef !531
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27881
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !27881
  %i.v = load i128, ptr %i.u, align 16, !dbg !27881, !noundef !531
  %i.w = icmp eq i128 %i.s, %i.v, !dbg !27881
  br i1 %i.w, label %bb.j, label %bb.c, !dbg !27881

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27872
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !27872
  %i.z = tail call fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y) #45, !dbg !27882
  br label %bb.c, !dbg !27872

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !27881
  %i.ab = load i128, ptr %i.aa, align 16, !dbg !27881, !noundef !531
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !27881
  %i.ad = load i128, ptr %i.ac, align 16, !dbg !27881, !noundef !531
  %i.ae = icmp eq i128 %i.ab, %i.ad, !dbg !27881
  br i1 %i.ae, label %bb.k, label %bb.c, !dbg !27881

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t), !dbg !27881
  br label %bb.c, !dbg !27881
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef i64 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 %0) unnamed_addr #4 !dbg !474 {
bb.a:
  %.val = load i8, ptr %0, align 8, !dbg !27894, !range !659, !noundef !531
  %i.a = icmp eq i8 %.val, 0, !dbg !27895
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !27889

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !27896 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27896, !noundef !531
  %.not.i = icmp eq ptr %i.c, null, !dbg !27896
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !27897

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27898
  %i.e = load i64, ptr %i.d, align 8, !dbg !27898, !noundef !531
  br label %bb.e, !dbg !27899

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !27900
  br label %bb.e, !dbg !27901

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !27902
  ret i64 %.sroa.0.1, !dbg !27899
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCshquuC4dCYVj_10polars_sql(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #19 !dbg !484 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !27914
  %i.b = load ptr, ptr %i.a, align 8, !dbg !27914, !noundef !531 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !27914
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !27915

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !27916
  %i.d = load i64, ptr %i.c, align 8, !dbg !27916, !noundef !531
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !27917
  %i.f = load ptr, ptr %i.e, align 8, !dbg !27917, !noundef !531
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !27918
  %i.h = load i64, ptr %i.g, align 8, !dbg !27918, !noundef !531
  %i.i = add i64 %i.h, %1, !dbg !27918            ; 2 uses
  %i.j = lshr i64 %i.i, 3, !dbg !27919            ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.d, !dbg !27920
  tail call void @llvm.assume(i1 %i.k), !dbg !27921
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !27922
  %i.m = load i8, ptr %i.l, align 1, !dbg !27923, !noundef !531
  %i.n = trunc i64 %i.i to i8, !dbg !27924
  %i.o = and i8 %i.n, 7, !dbg !27924
  %i.p = xor i8 %i.m, -1, !dbg !27925
  %i.q = lshr i8 %i.p, %i.o, !dbg !27925
  %i.r = trunc i8 %i.q to i1, !dbg !27926
  br label %bb.c, !dbg !27927

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ false, %bb.a ], !dbg !27928
  ret i1 %.sroa.0.0, !dbg !27926
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array7is_nullCshquuC4dCYVj_10polars_sql(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 !dbg !498 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27944
  %i.b = load i64, ptr %i.a, align 8, !dbg !27944, !noundef !531
  %i.c = icmp ult i64 %1, %i.b, !dbg !27945
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !27945, !prof !747

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #44, !dbg !27946
  unreachable, !dbg !27946

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !27947
  %i.e = load ptr, ptr %i.d, align 8, !dbg !27947, !noundef !531 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null, !dbg !27947
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCshquuC4dCYVj_10polars_sql.exit, label %bb.d, !dbg !27948

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !27949
  %i.g = load i64, ptr %i.f, align 8, !dbg !27949, !noundef !531
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !27950
  %i.i = load ptr, ptr %i.h, align 8, !dbg !27950, !noundef !531
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !27951
  %i.k = load i64, ptr %i.j, align 8, !dbg !27951, !noundef !531
  %i.l = add i64 %i.k, %1, !dbg !27951            ; 2 uses
  %i.m = lshr i64 %i.l, 3, !dbg !27952            ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g, !dbg !27953
  tail call void @llvm.assume(i1 %i.n), !dbg !27954
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m, !dbg !27955
  %i.p = load i8, ptr %i.o, align 1, !dbg !27956, !noundef !531
  %i.q = trunc i64 %i.l to i8, !dbg !27957
  %i.r = and i8 %i.q, 7, !dbg !27957
  %i.s = xor i8 %i.p, -1, !dbg !27958
  %i.t = lshr i8 %i.s, %i.r, !dbg !27958
  %i.u = trunc i8 %i.t to i1, !dbg !27959
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCshquuC4dCYVj_10polars_sql.exit, !dbg !27960

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.d ], [ false, %bb.c ], !dbg !27961
  ret i1 %.sroa.0.0.i, !dbg !27962
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array8is_validCshquuC4dCYVj_10polars_sql(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 !dbg !27963 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27980
  %i.b = load i64, ptr %i.a, align 8, !dbg !27980, !noundef !531
  %i.c = icmp ult i64 %1, %i.b, !dbg !27981
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !27981, !prof !747

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #44, !dbg !27982
  unreachable, !dbg !27982
end_hunk_5
