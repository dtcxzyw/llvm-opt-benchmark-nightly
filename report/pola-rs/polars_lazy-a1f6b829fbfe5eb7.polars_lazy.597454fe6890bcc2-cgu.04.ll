Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.04?download=true
inline.NumInlined: 1036
inline.NumDeleted: 427
begin_hunk_0_@_RINvMs0_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7optionsNtB6_14CsvReadOptions17map_parse_optionsNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB1A_13LazyCsvReader26with_truncate_ragged_lines0EB1E_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1952, !noalias !1939
  %i.k = icmp eq i64 %.sroa.028.0.copyload29, 4, !dbg !1953
  br i1 %i.k, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit.thread, label %bb.c, !dbg !1956

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit
  %.sroa.6.035 = phi ptr [ %.sroa.6.0.copyload31, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit ], [ %i.e, %bb.a ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.035) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE15unwrap_or_clone0Cs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull %.sroa.6.035)
          to label %bb.d unwind label %bb.b, !dbg !1957

bb.c:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit
  store i64 %.sroa.028.0.copyload29, ptr %i.c, align 8, !dbg !1959
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1959
  store ptr %.sroa.6.0.copyload31, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !1959
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !dbg !1959
  br label %bb.d, !dbg !1960

bb.d:                                             ; preds = %bb.c, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !1961
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.l, ptr noundef nonnull align 8 dereferenceable(60) %i.c, i64 60, i1 false), !dbg !1966
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 61, !dbg !1966
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 77, !dbg !1962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, i64 11, i1 false), !dbg !1966
  %i.m = load i8, ptr %2, align 1, !dbg !1967, !range !85, !noalias !1971, !noundef !15
  store i64 1, ptr %i.b, align 8, !dbg !1962
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1962
  store i64 1, ptr %i.n, align 8, !dbg !1962
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !1962
  store i8 %i.m, ptr %.sroa.426.0..sroa_idx, align 4, !dbg !1962
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !dbg !1975, !noalias !1982
  %i.o = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 88, 145) 88, i64 noundef 8) #15, !dbg !1985, !noalias !1982 ; 3 uses
  %i.p = icmp eq ptr %i.o, null, !dbg !1986
  br i1 %i.p, label %bb.e, label %bb.h, !dbg !1987, !prof !117

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #16
          to label %.noexc12 unwind label %bb.f, !dbg !1988

.noexc12:                                         ; preds = %bb.e
  unreachable, !dbg !1988

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #14
          to label %.body unwind label %bb.g, !dbg !1989

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !1990
  unreachable, !dbg !1990

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1992
  store ptr %i.o, ptr %i.d, align 8, !dbg !1993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false), !dbg !1994
  ret void, !dbg !1995

bb.i:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !1996
  unreachable, !dbg !1996

bb.j:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !1997
  %i.u = load i8, ptr %i.t, align 1, !dbg !1997, !range !131, !alias.scope !1999, !noundef !15
  %cond.i = icmp eq i8 %i.u, -40, !dbg !1997
  br i1 %cond.i, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !1997, !prof !135

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !1951
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2002

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.j, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !1951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2008), !dbg !1951
  %i.x = load ptr, ptr %i.w, align 8, !dbg !2011, !alias.scope !2008, !noundef !15 ; 2 uses
  %i.y = icmp eq ptr %i.x, null, !dbg !2011
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.l, !dbg !2011

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy.exit
  %i.z = atomicrmw sub ptr %i.x, i64 1 release, align 8, !dbg !2013, !noalias !2018
  %i.aa = icmp eq i64 %i.z, 1, !dbg !2023
  br i1 %i.aa, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2023

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !2024
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #18
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2026

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !1951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2027), !dbg !1951
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !2030, !alias.scope !2027, !noundef !15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !2030
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.n, !dbg !2030

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !dbg !2032, !noalias !2037
  %i.af = icmp eq i64 %i.ae, 1, !dbg !2042
  br i1 %i.af, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2042

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !2043
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecjEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #18
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2045

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !1951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2046), !dbg !1951
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !2049, !alias.scope !2046, !noundef !15 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null, !dbg !2049
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.p, !dbg !2049

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !2051, !noalias !2056
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !2061
  br i1 %i.ak, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2061

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !2062
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #18
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !1951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2065), !dbg !1951
  %i.am = load ptr, ptr %i.al, align 8, !dbg !2068, !alias.scope !2065, !noundef !15 ; 2 uses
  %i.an = icmp eq ptr %i.am, null, !dbg !2068
  br i1 %i.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18, label %bb.r, !dbg !2068

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !2070, !noalias !2075
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !2080
  br i1 %i.ap, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18, !dbg !2080

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !2081
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #18
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18 unwind label %bb.i, !dbg !2083

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18: ; preds = %bb.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !1951 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !2084, !alias.scope !2086, !noundef !15
  %i.as = icmp eq ptr %i.ar, null, !dbg !2084
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.t, !dbg !2084

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit18, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !1951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092), !dbg !1951
  %i.au = load ptr, ptr %i.at, align 8, !dbg !2095, !alias.scope !2092, !noundef !15 ; 2 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !2095
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.u, !dbg !2095

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit
  %i.aw = atomicrmw sub ptr %i.au, i64 1 release, align 8, !dbg !2097, !noalias !2102
  %i.ax = icmp eq i64 %i.aw, 1, !dbg !2107
  br i1 %i.ax, label %bb.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2107

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !2108
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #18
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.i, !dbg !2110

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit
  resume { ptr, i32 } %eh.lpad-body, !dbg !1996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.u, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !1951
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #14
          to label %bb.w unwind label %bb.i, !dbg !1951
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4BcJZGCY6Ba_10rayon_core5spawn13spawn_fifo_inNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBW_9LazyFrame20collect_concurrentlys_0EBY_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2111 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %.val = load ptr, ptr %1, align 8, !dbg !2115, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 128, !dbg !2117 ; 3 uses
  invoke void @_RNvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_8Registry25increment_terminate_count(ptr noundef nonnull align 128 %i.c)
          to label %bb.b unwind label %bb.h, !dbg !2123, !noalias !2124

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !dbg !2127, !noalias !2124
  %i.e = icmp slt i64 %i.d, 0, !dbg !2135
  br i1 %i.e, label %bb.g, label %bb.c, !dbg !2135

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2137, !noalias !2124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false), !dbg !2143
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !2137
  store ptr %.val, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2137, !noalias !2124
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !dbg !2145, !noalias !2153
  %i.f = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 88, 145) 144, i64 noundef 8) #15, !dbg !2156, !noalias !2153 ; 4 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !2157
  br i1 %i.g, label %bb.d, label %bb.k, !dbg !2158, !prof !117

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #16
          to label %.noexc.i unwind label %bb.e, !dbg !2159, !noalias !2124

.noexc.i:                                         ; preds = %bb.d
  unreachable, !dbg !2159

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job7HeapJobNCINvNtBL_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1U_9LazyFrame20collect_concurrentlys_0E0EEB1W_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #14
          to label %.body unwind label %bb.f, !dbg !2160, !noalias !2124

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !2161, !noalias !2124
  unreachable, !dbg !2161

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !2162
  unreachable, !dbg !2162

bb.h:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBN_9LazyFrame20collect_concurrentlys_0EBP_(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) #14
          to label %.body unwind label %bb.i, !dbg !2163

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !2164
  unreachable, !dbg !2164

bb.j:                                             ; preds = %.sink.split.i.i, %.noexc4, %.noexc3, %.noexc, %bb.m, %bb.p, %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !2165

.body:                                            ; preds = %bb.e, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.j, %bb.h ], [ %i.h, %bb.e ]
  invoke void @_RNvXNtCs4BcJZGCY6Ba_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.q, !dbg !2166

bb.k:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !dbg !2169, !noalias !2124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2171, !noalias !2124
  %i.m = invoke noundef align 128 ptr @_RNvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_8Registry14current_thread(ptr noundef nonnull align 128 %i.c)
          to label %bb.l unwind label %bb.j, !dbg !2172 ; 4 uses

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.m, null, !dbg !2174
  br i1 %.not, label %bb.p, label %bb.m, !dbg !2175

bb.m:                                             ; preds = %bb.l
  %i.n = invoke { ptr, ptr } @_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core3jobNtB5_7JobFifo4push(ptr noundef nonnull align 128 %i.m, ptr noundef nonnull @_RNvXs4_NtCs4BcJZGCY6Ba_10rayon_core3jobINtB5_7HeapJobNCINvNtB7_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1m_9LazyFrame20collect_concurrentlys_0E0ENtB5_3Job7executeB1o_, ptr noundef nonnull %i.f)
          to label %.noexc unwind label %bb.j, !dbg !2176 ; 2 uses

.noexc:                                           ; preds = %bb.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 280, !dbg !2183 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8is_emptyCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 8 %i.o)
          to label %.noexc3 unwind label %bb.j, !dbg !2186

.noexc3:                                          ; preds = %.noexc
  %i.q = extractvalue { ptr, ptr } %i.n, 1, !dbg !2176
  %i.r = extractvalue { ptr, ptr } %i.n, 0, !dbg !2176
  invoke void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE4pushCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.r, ptr noundef %i.q)
          to label %.noexc4 unwind label %bb.j, !dbg !2187

.noexc4:                                          ; preds = %.noexc3
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 272, !dbg !2189
  %i.t = load ptr, ptr %i.s, align 16, !dbg !2189, !nonnull !15, !noundef !15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472, !dbg !2199
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496, !dbg !2200
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs4BcJZGCY6Ba_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 8 %i.v)
          to label %.noexc5 unwind label %bb.j, !dbg !2208 ; 2 uses

.noexc5:                                          ; preds = %.noexc4
  %i.x = and i64 %i.w, 65535, !dbg !2209          ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2221
  br i1 %i.y, label %_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo.exit, label %bb.n, !dbg !2221

bb.n:                                             ; preds = %.noexc5
  br i1 %i.p, label %bb.o, label %.sink.split.i.i, !dbg !2224, !prof !2227

.sink.split.i.i:                                  ; preds = %bb.o, %bb.n
  invoke void @_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo.exit unwind label %bb.j, !dbg !2228

bb.o:                                             ; preds = %bb.n
  %i.z = lshr i64 %i.w, 16, !dbg !2229
  %i.aa = and i64 %i.z, 65535, !dbg !2229
  %i.ab = icmp eq i64 %i.aa, %i.x, !dbg !2234
  br i1 %i.ab, label %.sink.split.i.i, label %_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo.exit, !dbg !2234, !prof !117

bb.p:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull @_RNvXs4_NtCs4BcJZGCY6Ba_10rayon_core3jobINtB5_7HeapJobNCINvNtB7_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1m_9LazyFrame20collect_concurrentlys_0E0ENtB5_3Job7executeB1o_, ptr noundef nonnull %i.f)
          to label %_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo.exit unwind label %bb.j, !dbg !2235

_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo.exit: ; preds = %bb.o, %.noexc5, %.sink.split.i.i, %bb.p
  ret void, !dbg !2236

bb.q:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !2237
  unreachable, !dbg !2237

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !2237
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !2238 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2239, !range !2240, !noundef !15 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !2239
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, label %bb.b, !dbg !2239

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !2239

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241), !dbg !2239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2244 ; 4 uses
  %i.d = icmp eq i64 %i.a, 0, !dbg !2244
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !2244

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247), !dbg !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250), !dbg !2253
  %i.e = load ptr, ptr %i.c, align 8, !dbg !2256, !alias.scope !2263, !nonnull !15, !noundef !15
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !2264, !noalias !2263
  %i.g = icmp eq i64 %i.f, 1, !dbg !2269
  br i1 %i.g, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2269

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !2270
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #18, !dbg !2272
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2272

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273), !dbg !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276), !dbg !2279
  %i.h = load ptr, ptr %i.c, align 8, !dbg !2281, !alias.scope !2287, !nonnull !15, !noundef !15
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !2288, !noalias !2287
  %i.j = icmp eq i64 %i.i, 1, !dbg !2291
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2291

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !2292
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #18, !dbg !2294
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2294
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2295 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2296, !range !2297, !noundef !15
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !2296
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !2296

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy.exit, %bb.a
  ret void, !dbg !2296

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.d, !dbg !2298

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy.exit.i unwind label %bb.e, !dbg !2301

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !2298
  unreachable, !dbg !2298

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !2298

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !2304
  br label %bb.b, !dbg !2296
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2306 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2307, !range !2297, !noundef !15
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !2307
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!1937 = distinct !DILocation(line: 1107, column: 32, scope: !34, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 2588, column: 9, scope: !1933, inlinedAt: !1934)
!1939 = !{!1940}
!1940 = distinct !{!1940, !1941, !"_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1941 = distinct !{!1941, !"_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE10try_unwrapCs7Ga9Brpi21q_11polars_lazy"}
!1942 = !DILocation(line: 1107, column: 12, scope: !34, inlinedAt: !1938)
!1943 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 64, column: 9, scope: !34, inlinedAt: !1938)
!1945 = !DILocation(line: 1721, column: 9, scope: !44, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 1114, column: 32, scope: !48, inlinedAt: !1938)
!1947 = !DILocation(line: 1118, column: 13, scope: !50, inlinedAt: !1938)
!1948 = !DILocation(line: 1118, column: 21, scope: !50, inlinedAt: !1938)
!1949 = !DILocation(line: 810, column: 1, scope: !54, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 1121, column: 5, scope: !50, inlinedAt: !1938)
!1951 = !DILocation(line: 284, column: 5, scope: !1930)
!1952 = !DILocation(line: 1121, column: 5, scope: !50, inlinedAt: !1938)
!1953 = !DILocation(line: 1620, column: 15, scope: !1954, inlinedAt: !1955)
!1954 = distinct !DISubprogram(name: "unwrap_or_else<polars_io::csv::read::options::CsvParseOptions, alloc::sync::Arc<polars_io::csv::read::options::CsvParseOptions, alloc::alloc::Global>, alloc::sync::{impl#39}::unwrap_or_clone::{closure_env#0}<polars_io::csv::read::options::CsvParseOptions, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsINtNtCsgZ49sUHp3tW_5alloc4sync3ArcBI_EE14unwrap_or_elseNCNvMsB_B1P_B1M_15unwrap_or_clone0ECs7Ga9Brpi21q_11polars_lazy", scope: !61, file: !60, line: 1616, type: !14, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!1955 = !DILocation(line: 2588, column: 31, scope: !1933, inlinedAt: !1934)
!1956 = !DILocation(line: 1620, column: 9, scope: !1954, inlinedAt: !1955)
!1957 = !DILocation(line: 1622, column: 23, scope: !1958, inlinedAt: !1955)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !60, line: 1622, column: 13)
!1959 = !DILocation(line: 1621, column: 16, scope: !1954, inlinedAt: !1955)
!1960 = !DILocation(line: 1624, column: 5, scope: !1954, inlinedAt: !1955)
!1961 = !DILocation(line: 2588, column: 66, scope: !1933, inlinedAt: !1934)
!1962 = !DILocation(line: 422, column: 34, scope: !1963, inlinedAt: !1964)
!1963 = distinct !DISubprogram(name: "new<polars_io::csv::read::options::CsvParseOptions>", linkageName: "_RNvMse_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE3newCs7Ga9Brpi21q_11polars_lazy", scope: !20, file: !19, line: 419, type: !14, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!1964 = !DILocation(line: 282, column: 30, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1930, file: !8, line: 281, column: 9)
!1966 = !DILocation(line: 282, column: 39, scope: !1965)
!1967 = !DILocation(line: 254, column: 71, scope: !1968, inlinedAt: !1970)
!1968 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReader26with_truncate_ragged_lines0B8_", scope: !1969, file: !77, line: 254, type: !83, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!1969 = !DINamespace(name: "with_truncate_ragged_lines", scope: !79)
!1970 = distinct !DILocation(line: 282, column: 39, scope: !1965)
!1971 = !{!1972, !1974}
!1972 = distinct !{!1972, !1973, !"_RNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReader26with_truncate_ragged_lines0B8_: argument 0"}
!1973 = distinct !{!1973, !"_RNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReader26with_truncate_ragged_lines0B8_"}
!1974 = distinct !{!1974, !1973, !"_RNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReader26with_truncate_ragged_lines0B8_: argument 1"}
!1975 = !DILocation(line: 99, column: 9, scope: !91, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 210, column: 73, scope: !95, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 332, column: 9, scope: !99, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 449, column: 14, scope: !101, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 248, column: 18, scope: !104, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 286, column: 19, scope: !108, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 422, column: 25, scope: !1963, inlinedAt: !1964)
!1982 = !{!1983}
!1983 = distinct !{!1983, !1984, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsEE3newCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1984 = distinct !{!1984, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsEE3newCs7Ga9Brpi21q_11polars_lazy"}
!1985 = !DILocation(line: 101, column: 9, scope: !91, inlinedAt: !1976)
!1986 = !DILocation(line: 248, column: 11, scope: !104, inlinedAt: !1980)
!1987 = !DILocation(line: 248, column: 5, scope: !104, inlinedAt: !1980)
!1988 = !DILocation(line: 250, column: 19, scope: !104, inlinedAt: !1980)
!1989 = !DILocation(line: 292, column: 5, scope: !108, inlinedAt: !1981)
!1990 = !DILocation(line: 284, column: 5, scope: !108, inlinedAt: !1981)
!1991 = !DILocation(line: 289, column: 56, scope: !122, inlinedAt: !1981)
!1992 = !DILocation(line: 426, column: 10, scope: !1963, inlinedAt: !1964)
!1993 = !DILocation(line: 282, column: 9, scope: !1965)
!1994 = !DILocation(line: 283, column: 9, scope: !1965)
!1995 = !DILocation(line: 284, column: 6, scope: !1930)
!1996 = !DILocation(line: 277, column: 5, scope: !1930)
!1997 = !DILocation(line: 810, column: 1, scope: !129, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!1999 = !{!2000}
!2000 = distinct !{!2000, !2001, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2001 = distinct !{!2001, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs7Ga9Brpi21q_11polars_lazy"}
!2002 = !DILocation(line: 780, column: 13, scope: !137, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 810, column: 1, scope: !143, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 810, column: 1, scope: !145, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 810, column: 1, scope: !147, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 810, column: 1, scope: !149, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 810, column: 1, scope: !129, inlinedAt: !1998)
!2008 = !{!2009}
!2009 = distinct !{!2009, !2010, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2010 = distinct !{!2010, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy"}
!2011 = !DILocation(line: 810, column: 1, scope: !155, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2013 = !DILocation(line: 3956, column: 24, scope: !158, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 3193, column: 26, scope: !160, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 2814, column: 32, scope: !162, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 810, column: 1, scope: !165, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 810, column: 1, scope: !155, inlinedAt: !2012)
!2018 = !{!2019, !2021, !2009}
!2019 = distinct !{!2019, !2020, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2020 = distinct !{!2020, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2021 = distinct !{!2021, !2022, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2022 = distinct !{!2022, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy"}
!2023 = !DILocation(line: 2814, column: 12, scope: !162, inlinedAt: !2016)
!2024 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 64, column: 9, scope: !162, inlinedAt: !2016)
!2026 = !DILocation(line: 2857, column: 18, scope: !162, inlinedAt: !2016)
!2027 = !{!2028}
!2028 = distinct !{!2028, !2029, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2029 = distinct !{!2029, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecjEEEECs7Ga9Brpi21q_11polars_lazy"}
!2030 = !DILocation(line: 810, column: 1, scope: !180, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2032 = !DILocation(line: 3956, column: 24, scope: !183, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 3193, column: 26, scope: !185, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 2814, column: 32, scope: !187, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 810, column: 1, scope: !189, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 810, column: 1, scope: !180, inlinedAt: !2031)
!2037 = !{!2038, !2040, !2028}
!2038 = distinct !{!2038, !2039, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2039 = distinct !{!2039, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2040 = distinct !{!2040, !2041, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecjEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2041 = distinct !{!2041, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecjEEECs7Ga9Brpi21q_11polars_lazy"}
!2042 = !DILocation(line: 2814, column: 12, scope: !187, inlinedAt: !2035)
!2043 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 64, column: 9, scope: !187, inlinedAt: !2035)
!2045 = !DILocation(line: 2857, column: 18, scope: !187, inlinedAt: !2035)
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2048 = distinct !{!2048, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy"}
!2049 = !DILocation(line: 810, column: 1, scope: !204, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2051 = !DILocation(line: 3956, column: 24, scope: !207, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 3193, column: 26, scope: !209, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 2814, column: 32, scope: !211, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 810, column: 1, scope: !204, inlinedAt: !2050)
!2056 = !{!2057, !2059, !2047}
!2057 = distinct !{!2057, !2058, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2058 = distinct !{!2058, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2059 = distinct !{!2059, !2060, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2060 = distinct !{!2060, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy"}
!2061 = !DILocation(line: 2814, column: 12, scope: !211, inlinedAt: !2054)
!2062 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 64, column: 9, scope: !211, inlinedAt: !2054)
!2064 = !DILocation(line: 2857, column: 18, scope: !211, inlinedAt: !2054)
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2067 = distinct !{!2067, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy"}
!2068 = !DILocation(line: 810, column: 1, scope: !204, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2070 = !DILocation(line: 3956, column: 24, scope: !207, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 3193, column: 26, scope: !209, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 2814, column: 32, scope: !211, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 810, column: 1, scope: !204, inlinedAt: !2069)
!2075 = !{!2076, !2078, !2066}
!2076 = distinct !{!2076, !2077, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2077 = distinct !{!2077, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2078 = distinct !{!2078, !2079, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2079 = distinct !{!2079, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy"}
!2080 = !DILocation(line: 2814, column: 12, scope: !211, inlinedAt: !2073)
!2081 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 64, column: 9, scope: !211, inlinedAt: !2073)
!2083 = !DILocation(line: 2857, column: 18, scope: !211, inlinedAt: !2073)
!2084 = !DILocation(line: 810, column: 1, scope: !244, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2086 = !{!2087}
!2087 = distinct !{!2087, !2088, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2088 = distinct !{!2088, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy"}
!2089 = !DILocation(line: 810, column: 1, scope: !250, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 810, column: 1, scope: !252, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 810, column: 1, scope: !244, inlinedAt: !2085)
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2094 = distinct !{!2094, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtB17_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEEECs7Ga9Brpi21q_11polars_lazy"}
!2095 = !DILocation(line: 810, column: 1, scope: !258, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 284, column: 5, scope: !1930)
!2097 = !DILocation(line: 3956, column: 24, scope: !261, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 3193, column: 26, scope: !263, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 2814, column: 32, scope: !265, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 810, column: 1, scope: !267, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 810, column: 1, scope: !258, inlinedAt: !2096)
!2102 = !{!2103, !2105, !2093}
!2103 = distinct !{!2103, !2104, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2104 = distinct !{!2104, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2105 = distinct !{!2105, !2106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2106 = distinct !{!2106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECs7Ga9Brpi21q_11polars_lazy"}
!2107 = !DILocation(line: 2814, column: 12, scope: !265, inlinedAt: !2100)
!2108 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 64, column: 9, scope: !265, inlinedAt: !2100)
!2110 = !DILocation(line: 2857, column: 18, scope: !265, inlinedAt: !2100)
!2111 = distinct !DISubprogram(name: "spawn_fifo_in<polars_lazy::frame::exitable::{impl#0}::collect_concurrently::{closure_env#1}>", linkageName: "_RINvNtCs4BcJZGCY6Ba_10rayon_core5spawn13spawn_fifo_inNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBW_9LazyFrame20collect_concurrentlys_0EBY_", scope: !2113, file: !2112, line: 141, type: !14, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2112 = !DIFile(filename: "src/spawn/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "b6663e1c8bf463b0850d8530fe2fb35c")
!2113 = !DINamespace(name: "spawn", scope: !2114)
!2114 = !DINamespace(name: "rayon_core", scope: null)
!2115 = !DILocation(line: 151, column: 19, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !2112, line: 150, column: 5)
!2117 = !DILocation(line: 2428, column: 9, scope: !2118, inlinedAt: !2120)
!2118 = distinct !DISubprogram(name: "deref<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !2119, file: !19, line: 2427, type: !14, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2119 = !DINamespace(name: "{impl#34}", scope: !21)
!2120 = distinct !DILocation(line: 90, column: 5, scope: !2121, inlinedAt: !2122)
!2121 = distinct !DISubprogram(name: "spawn_job<polars_lazy::frame::exitable::{impl#0}::collect_concurrently::{closure_env#1}>", linkageName: "_RINvNtCs4BcJZGCY6Ba_10rayon_core5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBR_9LazyFrame20collect_concurrentlys_0EBT_", scope: !2113, file: !2112, line: 84, type: !83, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2122 = distinct !DILocation(line: 151, column: 19, scope: !2116)
!2123 = !DILocation(line: 90, column: 14, scope: !2121, inlinedAt: !2122)
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_RINvNtCs4BcJZGCY6Ba_10rayon_core5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBR_9LazyFrame20collect_concurrentlys_0EBT_: argument 0"}
!2126 = distinct !{!2126, !"_RINvNtCs4BcJZGCY6Ba_10rayon_core5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtBR_9LazyFrame20collect_concurrentlys_0EBT_"}
!2127 = !DILocation(line: 3937, column: 24, scope: !2128, inlinedAt: !2129)
!2128 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs7Ga9Brpi21q_11polars_lazy", scope: !27, file: !26, line: 3933, type: !14, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2129 = distinct !DILocation(line: 3162, column: 26, scope: !2130, inlinedAt: !2131)
!2130 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !32, file: !26, line: 3160, type: !14, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2131 = distinct !DILocation(line: 2394, column: 44, scope: !2132, inlinedAt: !2134)
!2132 = distinct !DISubprogram(name: "clone<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs7Ga9Brpi21q_11polars_lazy", scope: !2133, file: !19, line: 2382, type: !14, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2133 = !DINamespace(name: "{impl#32}", scope: !21)
!2134 = distinct !DILocation(line: 93, column: 24, scope: !2121, inlinedAt: !2122)
!2135 = !DILocation(line: 2411, column: 12, scope: !2136, inlinedAt: !2134)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !19, line: 2394, column: 9)
!2137 = !DILocation(line: 144, column: 18, scope: !2138, inlinedAt: !2142)
!2138 = distinct !DISubprogram(name: "new<rayon_core::spawn::spawn_job::{closure_env#0}<polars_lazy::frame::exitable::{impl#0}::collect_concurrently::{closure_env#1}>>", linkageName: "_RNvMs3_NtCs4BcJZGCY6Ba_10rayon_core3jobINtB5_7HeapJobNCINvNtB7_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1m_9LazyFrame20collect_concurrentlys_0E0E3newB1o_", scope: !2140, file: !2139, line: 143, type: !14, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2139 = !DIFile(filename: "src/job.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "65269cc8f007379df130cc82641b17f6")
!2140 = !DINamespace(name: "HeapJob", scope: !2141)
!2141 = !DINamespace(name: "job", scope: !2114)
!2142 = distinct !DILocation(line: 92, column: 5, scope: !2121, inlinedAt: !2122)
!2143 = !DILocation(line: 94, column: 9, scope: !2144, inlinedAt: !2122)
!2144 = distinct !DILexicalBlock(scope: !2121, file: !2112, line: 93, column: 9)
!2145 = !DILocation(line: 99, column: 9, scope: !91, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 210, column: 73, scope: !95, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 332, column: 9, scope: !99, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 449, column: 14, scope: !101, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 248, column: 18, scope: !104, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 286, column: 19, scope: !2151, inlinedAt: !2152)
!2151 = distinct !DISubprogram(name: "new<rayon_core::job::HeapJob<rayon_core::spawn::spawn_job::{closure_env#0}<polars_lazy::frame::exitable::{impl#0}::collect_concurrently::{closure_env#1}>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCs4BcJZGCY6Ba_10rayon_core3job7HeapJobNCINvNtBJ_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1S_9LazyFrame20collect_concurrentlys_0E0EE3newB1U_", scope: !109, file: !105, line: 284, type: !14, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2152 = distinct !DILocation(line: 144, column: 9, scope: !2138, inlinedAt: !2142)
!2153 = !{!2154, !2125}
!2154 = distinct !{!2154, !2155, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCs4BcJZGCY6Ba_10rayon_core3job7HeapJobNCINvNtBJ_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1S_9LazyFrame20collect_concurrentlys_0E0EE3newB1U_: argument 0"}
!2155 = distinct !{!2155, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCs4BcJZGCY6Ba_10rayon_core3job7HeapJobNCINvNtBJ_5spawn9spawn_jobNCNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame8exitableNtB1S_9LazyFrame20collect_concurrentlys_0E0EE3newB1U_"}
!2156 = !DILocation(line: 101, column: 9, scope: !91, inlinedAt: !2146)
!2157 = !DILocation(line: 248, column: 11, scope: !104, inlinedAt: !2150)
!2158 = !DILocation(line: 248, column: 5, scope: !104, inlinedAt: !2150)
!2159 = !DILocation(line: 250, column: 19, scope: !104, inlinedAt: !2150)
!2160 = !DILocation(line: 292, column: 5, scope: !2151, inlinedAt: !2152)
!2161 = !DILocation(line: 284, column: 5, scope: !2151, inlinedAt: !2152)
!2162 = !DILocation(line: 2412, column: 13, scope: !2136, inlinedAt: !2134)
!2163 = !DILocation(line: 100, column: 1, scope: !2121, inlinedAt: !2122)
!2164 = !DILocation(line: 84, column: 1, scope: !2121, inlinedAt: !2122)
!2165 = !DILocation(line: 160, column: 1, scope: !2111)
!2166 = !DILocation(line: 810, column: 1, scope: !2167, inlinedAt: !2168)
!2167 = distinct !DISubprogram(name: "drop_in_place<rayon_core::unwind::AbortIfPanic>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2168 = distinct !DILocation(line: 160, column: 1, scope: !2111)
!2169 = !DILocation(line: 289, column: 56, scope: !2170, inlinedAt: !2152)
!2170 = distinct !DILexicalBlock(scope: !2151, file: !105, line: 286, column: 9)
!2171 = !DILocation(line: 144, column: 33, scope: !2138, inlinedAt: !2142)
!2172 = !DILocation(line: 155, column: 20, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2116, file: !2112, line: 151, column: 5)
!2174 = !DILocation(line: 155, column: 11, scope: !2173)
!2175 = !DILocation(line: 155, column: 5, scope: !2173)
!2176 = !DILocation(line: 736, column: 29, scope: !2177, inlinedAt: !2181)
!2177 = distinct !DISubprogram(name: "push_fifo", linkageName: "_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread9push_fifo", scope: !2179, file: !2178, line: 735, type: !83, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2178 = !DIFile(filename: "src/registry.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "6888c8a0f0069d8eefec6378d7e62199")
!2179 = !DINamespace(name: "WorkerThread", scope: !2180)
!2180 = !DINamespace(name: "registry", scope: !2114)
!2181 = distinct !DILocation(line: 156, column: 32, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2173, file: !2112, line: 156, column: 9)
!2183 = !DILocation(line: 729, column: 31, scope: !2184, inlinedAt: !2185)
!2184 = distinct !DISubprogram(name: "push", linkageName: "_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread4push", scope: !2179, file: !2178, line: 728, type: !14, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2185 = distinct !DILocation(line: 736, column: 14, scope: !2177, inlinedAt: !2181)
!2186 = !DILocation(line: 729, column: 43, scope: !2184, inlinedAt: !2185)
!2187 = !DILocation(line: 730, column: 21, scope: !2188, inlinedAt: !2185)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !2178, line: 729, column: 9)
!2189 = !DILocation(line: 444, column: 20, scope: !2190, inlinedAt: !2194)
!2190 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<rayon_core::registry::Registry>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !2192, file: !2191, line: 440, type: !14, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2191 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!2192 = !DINamespace(name: "NonNull", scope: !2193)
!2193 = !DINamespace(name: "non_null", scope: !46)
!2194 = distinct !DILocation(line: 2110, column: 27, scope: !2195, inlinedAt: !2196)
!2195 = distinct !DISubprogram(name: "inner<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !20, file: !19, line: 2104, type: !14, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2196 = distinct !DILocation(line: 2428, column: 15, scope: !2197, inlinedAt: !2198)
!2197 = distinct !DISubprogram(name: "deref<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !2119, file: !19, line: 2427, type: !14, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2198 = distinct !DILocation(line: 731, column: 9, scope: !2188, inlinedAt: !2185)
!2199 = !DILocation(line: 731, column: 9, scope: !2188, inlinedAt: !2185)
!2200 = !DILocation(line: 246, column: 24, scope: !2201, inlinedAt: !2205)
!2201 = distinct !DISubprogram(name: "new_jobs", linkageName: "_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep8new_jobs", scope: !2203, file: !2202, line: 242, type: !14, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2202 = !DIFile(filename: "src/sleep/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "bff68d57ace8937bd25c5258c208736e")
!2203 = !DINamespace(name: "Sleep", scope: !2204)
!2204 = !DINamespace(name: "sleep", scope: !2114)
!2205 = distinct !DILocation(line: 237, column: 14, scope: !2206, inlinedAt: !2207)
!2206 = distinct !DISubprogram(name: "new_internal_jobs", linkageName: "_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep17new_internal_jobs", scope: !2203, file: !2202, line: 236, type: !14, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2207 = distinct !DILocation(line: 731, column: 29, scope: !2188, inlinedAt: !2185)
!2208 = !DILocation(line: 248, column: 14, scope: !2201, inlinedAt: !2205)
!2209 = !DILocation(line: 211, column: 5, scope: !2210, inlinedAt: !2213)
!2210 = distinct !DISubprogram(name: "select_thread", linkageName: "_RNvNtNtCs4BcJZGCY6Ba_10rayon_core5sleep8counters13select_thread", scope: !2212, file: !2211, line: 210, type: !14, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2211 = !DIFile(filename: "src/sleep/counters.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "971ce25902a3bd8291bfd7695eeee56b")
!2212 = !DINamespace(name: "counters", scope: !2204)
!2213 = distinct !DILocation(line: 259, column: 9, scope: !2214, inlinedAt: !2217)
!2214 = !DILexicalBlockFile(scope: !2215, file: !2211, discriminator: 4)
!2215 = distinct !DISubprogram(name: "sleeping_threads", linkageName: "_RNvMs0_NtNtCs4BcJZGCY6Ba_10rayon_core5sleep8countersNtB5_8Counters16sleeping_threads", scope: !2216, file: !2211, line: 258, type: !14, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2216 = !DINamespace(name: "Counters", scope: !2212)
!2217 = distinct !DILocation(line: 254, column: 40, scope: !2218, inlinedAt: !2219)
!2218 = distinct !DISubprogram(name: "awake_but_idle_threads", linkageName: "_RNvMs0_NtNtCs4BcJZGCY6Ba_10rayon_core5sleep8countersNtB5_8Counters22awake_but_idle_threads", scope: !2216, file: !2211, line: 247, type: !14, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2219 = distinct !DILocation(line: 249, column: 43, scope: !2220, inlinedAt: !2205)
!2220 = distinct !DILexicalBlock(scope: !2201, file: !2202, line: 246, column: 9)
!2221 = !DILocation(line: 252, column: 12, scope: !2222, inlinedAt: !2205)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2202, line: 250, column: 9)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !2202, line: 249, column: 9)
!2224 = !DILocation(line: 265, column: 13, scope: !2225, inlinedAt: !2205)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !2202, line: 260, column: 9)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !2202, line: 259, column: 9)
!2227 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2228 = !DILocation(line: 0, scope: !2225, inlinedAt: !2205)
!2229 = !DILocation(line: 211, column: 5, scope: !2210, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 243, column: 9, scope: !2231, inlinedAt: !2233)
!2231 = !DILexicalBlockFile(scope: !2232, file: !2211, discriminator: 4)
!2232 = distinct !DISubprogram(name: "inactive_threads", linkageName: "_RNvMs0_NtNtCs4BcJZGCY6Ba_10rayon_core5sleep8countersNtB5_8Counters16inactive_threads", scope: !2216, file: !2211, line: 242, type: !14, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2233 = distinct !DILocation(line: 254, column: 14, scope: !2218, inlinedAt: !2219)
!2234 = !DILocation(line: 268, column: 19, scope: !2225, inlinedAt: !2205)
!2235 = !DILocation(line: 157, column: 26, scope: !2173)
!2236 = !DILocation(line: 160, column: 2, scope: !2111)
!2237 = !DILocation(line: 141, column: 1, scope: !2111)
!2238 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<either::Either<alloc::sync::Arc<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::sync::Arc<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2239 = !DILocation(line: 810, column: 1, scope: !2238)
!2240 = !{i64 0, i64 3}
!2241 = !{!2242}
!2242 = distinct !{!2242, !2243, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2243 = distinct !{!2243, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy"}
!2244 = !DILocation(line: 810, column: 1, scope: !2245, inlinedAt: !2246)
!2245 = distinct !DISubprogram(name: "drop_in_place<either::Either<alloc::sync::Arc<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::sync::Arc<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2246 = distinct !DILocation(line: 810, column: 1, scope: !2238)
!2247 = !{!2248}
!2248 = distinct !{!2248, !2249, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2249 = distinct !{!2249, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs7Ga9Brpi21q_11polars_lazy"}
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2252 = distinct !{!2252, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2253 = !DILocation(line: 810, column: 1, scope: !2254, inlinedAt: !2255)
!2254 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2255 = distinct !DILocation(line: 810, column: 1, scope: !2245, inlinedAt: !2246)
!2256 = !DILocation(line: 444, column: 20, scope: !2257, inlinedAt: !2258)
!2257 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBY_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3U_EEEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !2192, file: !2191, line: 440, type: !14, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2258 = distinct !DILocation(line: 2110, column: 27, scope: !2259, inlinedAt: !2260)
!2259 = distinct !DISubprogram(name: "inner<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !20, file: !19, line: 2104, type: !14, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2260 = distinct !DILocation(line: 2814, column: 17, scope: !2261, inlinedAt: !2262)
!2261 = distinct !DISubprogram(name: "drop<polars_schema::schema::Schema<polars_arrow::datatypes::field::Field, alloc::collections::btree::map::BTreeMap<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy", scope: !163, file: !19, line: 2810, type: !14, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2262 = distinct !DILocation(line: 810, column: 1, scope: !2254, inlinedAt: !2255)
!2263 = !{!2251, !2248, !2242}
!2264 = !DILocation(line: 3956, column: 24, scope: !2265, inlinedAt: !2266)
!2265 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECs7Ga9Brpi21q_11polars_lazy", scope: !27, file: !26, line: 3950, type: !14, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2266 = distinct !DILocation(line: 3193, column: 26, scope: !2267, inlinedAt: !2268)
!2267 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !32, file: !26, line: 3191, type: !14, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2268 = distinct !DILocation(line: 2814, column: 32, scope: !2261, inlinedAt: !2262)
!2269 = !DILocation(line: 2814, column: 12, scope: !2261, inlinedAt: !2262)
!2270 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 64, column: 9, scope: !2261, inlinedAt: !2262)
!2272 = !DILocation(line: 2857, column: 18, scope: !2261, inlinedAt: !2262)
!2273 = !{!2274}
!2274 = distinct !{!2274, !2275, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2275 = distinct !{!2275, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs7Ga9Brpi21q_11polars_lazy"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2278, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2278 = distinct !{!2278, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2279 = !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 810, column: 1, scope: !2245, inlinedAt: !2246)
!2281 = !DILocation(line: 444, column: 20, scope: !2282, inlinedAt: !2283)
!2282 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !2192, file: !2191, line: 440, type: !14, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2283 = distinct !DILocation(line: 2110, column: 27, scope: !2284, inlinedAt: !2285)
!2284 = distinct !DISubprogram(name: "inner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !20, file: !19, line: 2104, type: !14, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2285 = distinct !DILocation(line: 2814, column: 17, scope: !211, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !2280)
!2287 = !{!2277, !2274, !2242}
!2288 = !DILocation(line: 3956, column: 24, scope: !207, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 3193, column: 26, scope: !209, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 2814, column: 32, scope: !211, inlinedAt: !2286)
!2291 = !DILocation(line: 2814, column: 12, scope: !211, inlinedAt: !2286)
!2292 = !DILocation(line: 4387, column: 24, scope: !41, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 64, column: 9, scope: !211, inlinedAt: !2286)
!2294 = !DILocation(line: 2857, column: 18, scope: !211, inlinedAt: !2286)
!2295 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2296 = !DILocation(line: 810, column: 1, scope: !2295)
!2297 = !{i64 0, i64 -9223372036854775807}
!2298 = !DILocation(line: 810, column: 1, scope: !2299, inlinedAt: !2300)
!2299 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2300 = distinct !DILocation(line: 810, column: 1, scope: !2295)
!2301 = !DILocation(line: 810, column: 1, scope: !2302, inlinedAt: !2303)
!2302 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2303 = distinct !DILocation(line: 810, column: 1, scope: !2299, inlinedAt: !2300)
!2304 = !DILocation(line: 810, column: 1, scope: !2302, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 810, column: 1, scope: !2299, inlinedAt: !2300)
!2306 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<bool, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2307 = !DILocation(line: 810, column: 1, scope: !2306)
!2308 = !DILocation(line: 810, column: 1, scope: !2309, inlinedAt: !2310)
!2309 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<bool, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2310 = distinct !DILocation(line: 810, column: 1, scope: !2306)
!2311 = !DILocation(line: 810, column: 1, scope: !2312, inlinedAt: !2313)
!2312 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<bool, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecbEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2313 = distinct !DILocation(line: 810, column: 1, scope: !2309, inlinedAt: !2310)
!2314 = !DILocation(line: 810, column: 1, scope: !2312, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 810, column: 1, scope: !2309, inlinedAt: !2310)
!2316 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_utils::python_function::PythonObject>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2317 = !DILocation(line: 810, column: 1, scope: !2316)
!2318 = !DILocation(line: 75, column: 26, scope: !2319, inlinedAt: !2326)
!2319 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0Cs7Ga9Brpi21q_11polars_lazy", scope: !2321, file: !2320, line: 71, type: !83, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2320 = !DIFile(filename: "library/std/src/sys/thread_local/native/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f45b912659b967b327e1af351608d593")
!2321 = !DINamespace(name: "{constant#0}", scope: !2322)
!2322 = !DINamespace(name: "ATTACH_COUNT", scope: !2323)
!2323 = !DINamespace(name: "state", scope: !2324)
!2324 = !DINamespace(name: "internal", scope: !2325)
!2325 = !DINamespace(name: "pyo3", scope: null)
!2326 = distinct !DILocation(line: 250, column: 5, scope: !2327, inlinedAt: !2332)
!2327 = distinct !DISubprogram(name: "call_once<pyo3::internal::state::ATTACH_COUNT::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::Cell<isize>>>)>", linkageName: "_RNvYNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB19_6option6OptionQIB1O_INtNtB19_4cell4CelliEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy", scope: !2329, file: !2328, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2328 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7165aec212fc528edf645f7f5c1c91bb")
!2329 = !DINamespace(name: "FnOnce", scope: !2330)
!2330 = !DINamespace(name: "function", scope: !2331)
!2331 = !DINamespace(name: "ops", scope: !29)
!2332 = distinct !DILocation(line: 461, column: 37, scope: !2333, inlinedAt: !2339)
!2333 = distinct !DISubprogram(name: "try_with<core::cell::Cell<isize>, pyo3::internal::state::thread_is_attached::{closure_env#0}, bool>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CelliEE8try_withNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0bECs7Ga9Brpi21q_11polars_lazy", scope: !2335, file: !2334, line: 457, type: !83, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2334 = !DIFile(filename: "library/std/src/thread/local.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "a9256a1d70f734e1147910659b28fa84")
!2335 = !DINamespace(name: "LocalKey", scope: !2336)
!2336 = !DINamespace(name: "local", scope: !2337)
!2337 = !DINamespace(name: "thread", scope: !2338)
!2338 = !DINamespace(name: "std", scope: null)
!2339 = distinct !DILocation(line: 39, column: 18, scope: !2340, inlinedAt: !2342)
!2340 = distinct !DISubprogram(name: "thread_is_attached", linkageName: "_RNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached", scope: !2323, file: !2341, line: 38, type: !14, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2341 = !DIFile(filename: "src/internal/state.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "61078dcb539a5195ea650af11e687497")
!2342 = distinct !DILocation(line: 2290, column: 16, scope: !2343, inlinedAt: !2348)
!2343 = distinct !DISubprogram(name: "inner", linkageName: "_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop5inner", scope: !2345, file: !2344, line: 2287, type: !14, scopeLine: 2287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2344 = !DIFile(filename: "src/instance.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "a9445dd2946120d03be07b6023684263")
!2345 = !DINamespace(name: "drop", scope: !2346)
!2346 = !DINamespace(name: "{impl#38}", scope: !2347)
!2347 = !DINamespace(name: "instance", scope: !2325)
!2348 = distinct !DILocation(line: 2306, column: 9, scope: !2349, inlinedAt: !2350)
!2349 = distinct !DISubprogram(name: "drop<pyo3::types::any::PyAny>", linkageName: "_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy", scope: !2346, file: !2344, line: 2284, type: !83, scopeLine: 2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2350 = distinct !DILocation(line: 810, column: 1, scope: !2351, inlinedAt: !2352)
!2351 = distinct !DISubprogram(name: "drop_in_place<pyo3::instance::Py<pyo3::types::any::PyAny>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2352 = distinct !DILocation(line: 810, column: 1, scope: !2353, inlinedAt: !2354)
!2353 = distinct !DISubprogram(name: "drop_in_place<polars_utils::python_function::PythonObject>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectECs7Ga9Brpi21q_11polars_lazy", scope: !46, file: !45, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2354 = distinct !DILocation(line: 810, column: 1, scope: !2316)
!2355 = !DILocation(line: 462, column: 12, scope: !2356, inlinedAt: !2339)
!2356 = distinct !DILexicalBlock(scope: !2333, file: !2334, line: 461, column: 9)
!2357 = !DILocation(line: 39, column: 31, scope: !2358, inlinedAt: !2360)
!2358 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0Cs7Ga9Brpi21q_11polars_lazy", scope: !2359, file: !2341, line: 39, type: !83, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2359 = !DINamespace(name: "thread_is_attached", scope: !2323)
!2360 = distinct !DILocation(line: 462, column: 12, scope: !2356, inlinedAt: !2339)
!2361 = !DILocation(line: 1595, column: 9, scope: !2362, inlinedAt: !2363)
!2362 = distinct !DISubprogram(name: "unwrap_or<bool, std::thread::local::AccessError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultbNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE9unwrap_orCs7Ga9Brpi21q_11polars_lazy", scope: !61, file: !60, line: 1590, type: !14, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2363 = distinct !DILocation(line: 39, column: 44, scope: !2340, inlinedAt: !2342)
!2364 = !{!"branch_weights", i32 4000000, i32 4001}
!2365 = !DILocation(line: 2294, column: 17, scope: !2343, inlinedAt: !2348)
!2366 = !DILocation(line: 269, column: 13, scope: !2367, inlinedAt: !2371)
!2367 = distinct !DISubprogram(name: "Py_DECREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_DECREF", scope: !2369, file: !2368, line: 255, type: !14, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!2368 = !DIFile(filename: "src/refcount.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-ffi-0.29.0", checksumkind: CSK_MD5, checksum: "274518e7fddcb930011602272ef77a4d")
!2369 = !DINamespace(name: "refcount", scope: !2370)
!2370 = !DINamespace(name: "pyo3_ffi", scope: null)
!2371 = distinct !DILocation(line: 2292, column: 26, scope: !2343, inlinedAt: !2348)
end_hunk_1
