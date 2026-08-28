Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.06?download=true
inline.NumInlined: 116
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_:bb.a
  unreachable, !dbg !1922

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1895, !DIExpression(), !1923)
    #dbg_value(ptr %0, !1911, !DIExpression(), !1919)
    #dbg_value(ptr %0, !1911, !DIExpression(), !1914)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !1924
    #dbg_value(ptr %i.b, !1898, !DIExpression(), !1925)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !1900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1926)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1916)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !1927
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !1927

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2, !dbg !1928
    #dbg_value(ptr %i.c, !1900, !DIExpression(), !1926)
    #dbg_value(ptr %i.c, !1911, !DIExpression(), !1916)
  br label %.lr.ph, !dbg !1929

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.c
  ret void, !dbg !1958

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.0.012 = phi ptr [ %i.s, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
    #dbg_value(ptr %.sroa.0.012, !1911, !DIExpression(), !1916)
    #dbg_value(ptr poison, !1959, !DIExpression(), !1966)
    #dbg_value(ptr poison, !1970, !DIExpression(), !1974)
    #dbg_value(ptr poison, !1959, !DIExpression(), !1975)
    #dbg_value(ptr poison, !1970, !DIExpression(), !1978)
    #dbg_declare(ptr %.sroa.5.i, !1939, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !1979)
    #dbg_declare(ptr %.sroa.6.i, !1939, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !1979)
    #dbg_value(ptr poison, !1980, !DIExpression(), !1987)
    #dbg_value(ptr poison, !1949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1989)
    #dbg_value(ptr %0, !1935, !DIExpression(), !1990)
    #dbg_value(ptr %.sroa.0.012, !1936, !DIExpression(), !1990)
    #dbg_value(ptr %.sroa.0.012, !1991, !DIExpression(), !1995)
    #dbg_value(ptr %.sroa.0.012, !1997, !DIExpression(), !2002)
    #dbg_value(ptr poison, !1937, !DIExpression(), !1990)
    #dbg_value(i64 1, !1994, !DIExpression(), !1995)
    #dbg_value(i64 1, !2004, !DIExpression(), !2009)
    #dbg_value(i64 1, !1994, !DIExpression(), !2011)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -48, !dbg !2013 ; 4 uses
    #dbg_value(ptr %i.d, !1938, !DIExpression(), !2014)
    #dbg_value(ptr %i.d, !1991, !DIExpression(), !2011)
  %.val19.i = load i64, ptr %.sroa.0.012, align 8, !dbg !1929, !noundef !124 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.012, i64 24, !dbg !1929
  %.val20.i = load i64, ptr %i.e, align 8, !dbg !1929 ; 3 uses
  %.val21.i = load i64, ptr %i.d, align 8, !dbg !1929, !noundef !124 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.012, i64 -24, !dbg !1929
  %.val22.i = load i64, ptr %i.f, align 8, !dbg !1929
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2028)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2028)
    #dbg_value(ptr poison, !2020, !DIExpression(), !2028)
    #dbg_value(ptr poison, !2030, !DIExpression(), !2038)
    #dbg_value(ptr poison, !2034, !DIExpression(), !2038)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !2046)
    #dbg_value(ptr poison, !2048, !DIExpression(), !2056)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2065)
    #dbg_value(ptr poison, !2055, !DIExpression(), !2056)
    #dbg_value(ptr poison, !2064, !DIExpression(), !2065)
    #dbg_value(ptr poison, !2067, !DIExpression(), !2087)
    #dbg_value(ptr poison, !2081, !DIExpression(), !2089)
  %i.g = icmp eq i64 %.val19.i, %.val21.i, !dbg !2090
    #dbg_value(i8 poison, !2043, !DIExpression(), !2091)
  %i.h = icmp ult i64 %.val20.i, %.val22.i, !dbg !2092
  %i.i = icmp ult i64 %.val19.i, %.val21.i, !dbg !2092
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i, !dbg !2090
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !1929

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !2093
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !2093
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !2094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i, i64 16, i1 false), !dbg !2094
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 32, !dbg !2094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.0..sroa_idx.i, i64 16, i1 false), !dbg !2094
    #dbg_value(i64 %.val19.i, !1939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2099)
    #dbg_value(i64 %.val20.i, !1939, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2099)
    #dbg_value(ptr undef, !1949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1989)
    #dbg_value(ptr %.sroa.0.012, !1949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1989)
    #dbg_value(i64 1, !1949, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1989)
    #dbg_value(ptr %i.d, !1991, !DIExpression(), !2011)
    #dbg_value(ptr %i.d, !1938, !DIExpression(), !2014)
    #dbg_value(ptr %i.d, !2007, !DIExpression(), !2009)
    #dbg_value(ptr %.sroa.0.012, !2008, !DIExpression(), !2009)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.012, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !2100
  %i.k = icmp eq ptr %i.d, %0, !dbg !2101
  br i1 %i.k, label %._crit_edge18, label %.lr.ph17, !dbg !2101

bb.e:                                             ; preds = %.lr.ph17
    #dbg_value(ptr %.sroa.0.0.i15, !1949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1989)
    #dbg_value(ptr %i.m, !1991, !DIExpression(), !2011)
    #dbg_value(ptr %i.m, !1938, !DIExpression(), !2014)
    #dbg_value(ptr %i.m, !2007, !DIExpression(), !2009)
    #dbg_value(ptr %.sroa.0.0.i15, !2008, !DIExpression(), !2009)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i15, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !2100
    #dbg_value(ptr %i.m, !1949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1989)
  %i.l = icmp eq ptr %i.m, %0, !dbg !2101
  br i1 %i.l, label %._crit_edge18, label %.lr.ph17, !dbg !2101

.lr.ph17:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i15 = phi ptr [ %i.m, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !1991, !DIExpression(), !2011)
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -48, !dbg !2102 ; 4 uses
    #dbg_value(ptr %i.m, !1938, !DIExpression(), !2014)
    #dbg_value(ptr %i.m, !1991, !DIExpression(), !2011)
  %.val17.i = load i64, ptr %i.m, align 8, !dbg !2103, !noundef !124 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i15, i64 -24, !dbg !2103
  %.val18.i = load i64, ptr %i.n, align 8, !dbg !2103
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2104)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2104)
    #dbg_value(ptr poison, !2020, !DIExpression(), !2104)
    #dbg_value(ptr poison, !2030, !DIExpression(), !2106)
    #dbg_value(ptr poison, !2034, !DIExpression(), !2106)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !2108)
    #dbg_value(ptr poison, !2048, !DIExpression(), !2110)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2112)
    #dbg_value(ptr poison, !2055, !DIExpression(), !2110)
    #dbg_value(ptr poison, !2064, !DIExpression(), !2112)
    #dbg_value(ptr poison, !2067, !DIExpression(), !2114)
    #dbg_value(ptr poison, !2081, !DIExpression(), !2116)
  %i.o = icmp eq i64 %.val19.i, %.val17.i, !dbg !2117
    #dbg_value(i8 poison, !2043, !DIExpression(), !2118)
  %i.p = icmp ult i64 %.val20.i, %.val18.i, !dbg !2119
  %i.q = icmp ult i64 %.val19.i, %.val17.i, !dbg !2119
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q, !dbg !2117
  br i1 %i.r, label %bb.e, label %._crit_edge18, !dbg !2103

._crit_edge18:                                    ; preds = %bb.e, %.lr.ph17, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i15, %.lr.ph17 ], !dbg !1990 ; 4 uses
    #dbg_value(ptr undef, !1970, !DIExpression(), !1974)
    #dbg_value(ptr undef, !1959, !DIExpression(), !1966)
    #dbg_value(ptr undef, !1980, !DIExpression(), !1987)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !1985, !DIExpression(), !1987)
    #dbg_value(i64 1, !1986, !DIExpression(), !1987)
  store i64 %.val19.i, ptr %.sroa.0.0.i.lcssa, align 8, !dbg !2120, !noalias !2121
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8, !dbg !2120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !dbg !2120, !noalias !2121
  %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24, !dbg !2120
  store i64 %.val20.i, ptr %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !2120, !noalias !2121
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32, !dbg !2120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !dbg !2120, !noalias !2121
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !2126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !2126
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !2127

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %.lr.ph, %._crit_edge18
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 48, !dbg !2128 ; 2 uses
    #dbg_value(ptr %i.s, !1911, !DIExpression(), !1916)
    #dbg_value(ptr %i.s, !1900, !DIExpression(), !1926)
  %.not = icmp eq ptr %i.s, %i.b, !dbg !1927
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1927
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2129 {
bb.a:
    #dbg_value(ptr %0, !2137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2148)
    #dbg_value(i64 %1, !2137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2148)
    #dbg_value(i64 %2, !2138, !DIExpression(), !2148)
    #dbg_value(i64 %2, !2149, !DIExpression(), !2154)
    #dbg_value(ptr %3, !2139, !DIExpression(), !2148)
    #dbg_value(i64 1, !2153, !DIExpression(), !2156)
    #dbg_value(i64 %1, !2140, !DIExpression(), !2158)
    #dbg_value(i64 %1, !2149, !DIExpression(), !2159)
  %i.a = add i64 %2, -1, !dbg !2161
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !2161
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !2161

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !2162
  unreachable, !dbg !2162

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2142, !DIExpression(), !2163)
    #dbg_value(ptr %0, !2152, !DIExpression(), !2159)
    #dbg_value(ptr %0, !2152, !DIExpression(), !2154)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !2164
    #dbg_value(ptr %i.b, !2144, !DIExpression(), !2165)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !2146, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !2166)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !2152, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !2156)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !2167
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !2167

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %2, !dbg !2168
    #dbg_value(ptr %i.c, !2146, !DIExpression(), !2166)
    #dbg_value(ptr %i.c, !2152, !DIExpression(), !2156)
  br label %.lr.ph, !dbg !2169

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.c
  ret void, !dbg !2197

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.0.012 = phi ptr [ %i.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !2152, !DIExpression(), !2156)
    #dbg_value(ptr poison, !2198, !DIExpression(), !2204)
    #dbg_value(ptr poison, !2208, !DIExpression(), !2212)
    #dbg_value(ptr poison, !2198, !DIExpression(), !2213)
    #dbg_value(ptr poison, !2208, !DIExpression(), !2216)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2217)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2217)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2223)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2223)
    #dbg_value(ptr undef, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2223)
    #dbg_value(ptr undef, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2217)
    #dbg_value(ptr %0, !2175, !DIExpression(), !2225)
    #dbg_value(ptr %.sroa.0.012, !2176, !DIExpression(), !2225)
    #dbg_value(ptr %.sroa.0.012, !2226, !DIExpression(), !2230)
    #dbg_value(ptr poison, !2177, !DIExpression(), !2225)
    #dbg_value(i64 1, !2229, !DIExpression(), !2230)
    #dbg_value(i64 1, !2232, !DIExpression(), !2237)
    #dbg_value(i64 1, !2229, !DIExpression(), !2239)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -2, !dbg !2241 ; 4 uses
    #dbg_value(ptr %i.d, !2178, !DIExpression(), !2242)
    #dbg_value(ptr %i.d, !2226, !DIExpression(), !2239)
  %.val20.i = load i16, ptr %.sroa.0.012, align 1, !dbg !2169 ; 3 uses
  %i.e = trunc i16 %.val20.i to i8, !dbg !2169    ; 4 uses
  %i.f = lshr i16 %.val20.i, 8, !dbg !2169
  %i.g = trunc nuw i16 %i.f to i8, !dbg !2169     ; 2 uses
  %.val22.i = load i8, ptr %i.d, align 1, !dbg !2169, !noundef !124 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.012, i64 -1, !dbg !2169
  %.val23.i = load i8, ptr %i.h, align 1, !dbg !2169
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2243)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2243)
    #dbg_value(ptr poison, !288, !DIExpression(), !2243)
    #dbg_value(ptr poison, !298, !DIExpression(), !2245)
    #dbg_value(ptr poison, !304, !DIExpression(), !2245)
    #dbg_declare(ptr poison, !310, !DIExpression(), !2247)
    #dbg_value(ptr poison, !341, !DIExpression(), !2249)
    #dbg_value(ptr poison, !348, !DIExpression(), !2249)
    #dbg_value(ptr poison, !351, !DIExpression(), !2251)
    #dbg_value(ptr poison, !357, !DIExpression(), !2251)
  %i.i = icmp eq i8 %.val22.i, %i.e, !dbg !2253
    #dbg_value(i8 poison, !336, !DIExpression(), !2254)
  %i.j = icmp ugt i8 %.val23.i, %i.g, !dbg !2255
  %i.k = icmp ugt i8 %.val22.i, %i.e, !dbg !2255
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k, !dbg !2253
  br i1 %i.l, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !2169

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %.sroa.0.012, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2217)
    #dbg_value(ptr %i.d, !2226, !DIExpression(), !2239)
    #dbg_value(ptr %i.d, !2178, !DIExpression(), !2242)
    #dbg_value(ptr %i.d, !2235, !DIExpression(), !2237)
    #dbg_value(ptr %.sroa.0.012, !2236, !DIExpression(), !2237)
  %i.m = load i16, ptr %i.d, align 1, !dbg !2256
  store i16 %i.m, ptr %.sroa.0.012, align 1, !dbg !2256
  %i.n = icmp eq ptr %i.d, %0, !dbg !2257
  br i1 %i.n, label %._crit_edge17, label %.lr.ph16, !dbg !2257

.preheader:                                       ; preds = %.lr.ph16
    #dbg_value(ptr %.sroa.0.0.i15, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2217)
    #dbg_value(ptr %i.q, !2226, !DIExpression(), !2239)
    #dbg_value(ptr %i.q, !2178, !DIExpression(), !2242)
    #dbg_value(ptr %i.q, !2235, !DIExpression(), !2237)
    #dbg_value(ptr %.sroa.0.0.i15, !2236, !DIExpression(), !2237)
  %i.o = load i16, ptr %i.q, align 1, !dbg !2256
  store i16 %i.o, ptr %.sroa.0.0.i15, align 1, !dbg !2256
    #dbg_value(ptr %i.q, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2217)
  %i.p = icmp eq ptr %i.q, %0, !dbg !2257
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !2257

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !2226, !DIExpression(), !2239)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -2, !dbg !2258 ; 4 uses
    #dbg_value(ptr %i.q, !2178, !DIExpression(), !2242)
    #dbg_value(ptr %i.q, !2226, !DIExpression(), !2239)
  %.val18.i = load i8, ptr %i.q, align 1, !dbg !2259, !noundef !124 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -1, !dbg !2259
  %.val19.i = load i8, ptr %i.r, align 1, !dbg !2259
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2260)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2260)
    #dbg_value(ptr poison, !288, !DIExpression(), !2260)
    #dbg_value(ptr poison, !298, !DIExpression(), !2262)
    #dbg_value(ptr poison, !304, !DIExpression(), !2262)
    #dbg_declare(ptr poison, !310, !DIExpression(), !2264)
    #dbg_value(ptr poison, !341, !DIExpression(), !2266)
    #dbg_value(ptr poison, !348, !DIExpression(), !2266)
    #dbg_value(ptr poison, !351, !DIExpression(), !2268)
    #dbg_value(ptr poison, !357, !DIExpression(), !2268)
  %i.s = icmp eq i8 %.val18.i, %i.e, !dbg !2270
    #dbg_value(i8 poison, !336, !DIExpression(), !2271)
  %i.t = icmp ugt i8 %.val19.i, %i.g, !dbg !2272
  %i.u = icmp ugt i8 %.val18.i, %i.e, !dbg !2272
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !2270
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !2259

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !2225
    #dbg_value(ptr undef, !2208, !DIExpression(), !2212)
    #dbg_value(ptr undef, !2198, !DIExpression(), !2204)
    #dbg_value(ptr undef, !2218, !DIExpression(), !2223)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !2221, !DIExpression(), !2223)
    #dbg_value(i64 1, !2222, !DIExpression(), !2223)
  store i16 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 1, !dbg !2273, !noalias !2274
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !2279

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 2, !dbg !2280 ; 2 uses
    #dbg_value(ptr %i.w, !2152, !DIExpression(), !2156)
    #dbg_value(ptr %i.w, !2146, !DIExpression(), !2166)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !2167
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2167
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2281 {
bb.a:
    #dbg_value(ptr %0, !2289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2300)
    #dbg_value(i64 %1, !2289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2300)
    #dbg_value(i64 %2, !2290, !DIExpression(), !2300)
    #dbg_value(i64 %2, !2301, !DIExpression(), !2306)
    #dbg_value(ptr %3, !2291, !DIExpression(), !2300)
    #dbg_value(i64 1, !2305, !DIExpression(), !2308)
    #dbg_value(i64 %1, !2292, !DIExpression(), !2310)
    #dbg_value(i64 %1, !2301, !DIExpression(), !2311)
  %i.a = add i64 %2, -1, !dbg !2313
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !2313
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !2313

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !2314
  unreachable, !dbg !2314

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2294, !DIExpression(), !2315)
    #dbg_value(ptr %0, !2304, !DIExpression(), !2311)
    #dbg_value(ptr %0, !2304, !DIExpression(), !2306)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !2316
    #dbg_value(ptr %i.b, !2296, !DIExpression(), !2317)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !2298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !2318)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !2304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !2308)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !2319
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !2319

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2, !dbg !2320
    #dbg_value(ptr %i.c, !2298, !DIExpression(), !2318)
    #dbg_value(ptr %i.c, !2304, !DIExpression(), !2308)
  br label %.lr.ph, !dbg !2321

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.c
  ret void, !dbg !2349

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.0.012 = phi ptr [ %i.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !2304, !DIExpression(), !2308)
    #dbg_value(ptr poison, !2350, !DIExpression(), !2356)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2364)
    #dbg_value(ptr poison, !2350, !DIExpression(), !2365)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2368)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2369)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2369)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2375)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2375)
    #dbg_value(ptr undef, !2370, !DIExpression(), !2375)
    #dbg_value(ptr undef, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2369)
    #dbg_value(ptr %0, !2327, !DIExpression(), !2377)
    #dbg_value(ptr %.sroa.0.012, !2328, !DIExpression(), !2377)
    #dbg_value(ptr %.sroa.0.012, !2378, !DIExpression(), !2382)
    #dbg_value(ptr poison, !2329, !DIExpression(), !2377)
    #dbg_value(i64 1, !2381, !DIExpression(), !2382)
    #dbg_value(i64 1, !2384, !DIExpression(), !2389)
    #dbg_value(i64 1, !2381, !DIExpression(), !2391)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -8, !dbg !2393 ; 4 uses
    #dbg_value(ptr %i.d, !2330, !DIExpression(), !2394)
    #dbg_value(ptr %i.d, !2378, !DIExpression(), !2391)
  %.val20.i = load i64, ptr %.sroa.0.012, align 4, !dbg !2321 ; 3 uses
  %i.e = trunc i64 %.val20.i to i32, !dbg !2321   ; 4 uses
  %i.f = lshr i64 %.val20.i, 32, !dbg !2321
  %i.g = trunc nuw i64 %i.f to i32, !dbg !2321    ; 2 uses
  %.val22.i = load i32, ptr %i.d, align 4, !dbg !2321, !range !1157, !noundef !124 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.012, i64 -4, !dbg !2321
  %.val23.i = load i32, ptr %i.h, align 4, !dbg !2321
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2395)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2395)
    #dbg_value(ptr poison, !1163, !DIExpression(), !2395)
    #dbg_value(ptr poison, !1173, !DIExpression(), !2397)
    #dbg_value(ptr poison, !1177, !DIExpression(), !2397)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !2399)
    #dbg_value(ptr poison, !1191, !DIExpression(), !2401)
    #dbg_value(ptr poison, !1197, !DIExpression(), !2401)
    #dbg_value(ptr poison, !1200, !DIExpression(), !2403)
    #dbg_value(ptr poison, !1206, !DIExpression(), !2403)
  %i.i = icmp eq i32 %.val22.i, %i.e, !dbg !2405
    #dbg_value(i8 poison, !1186, !DIExpression(), !2406)
  %i.j = icmp ugt i32 %.val23.i, %i.g, !dbg !2407
  %i.k = icmp samesign ugt i32 %.val22.i, %i.e, !dbg !2407
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k, !dbg !2405
  br i1 %i.l, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !2321

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %.sroa.0.012, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2369)
    #dbg_value(ptr %i.d, !2378, !DIExpression(), !2391)
    #dbg_value(ptr %i.d, !2330, !DIExpression(), !2394)
    #dbg_value(ptr %i.d, !2387, !DIExpression(), !2389)
    #dbg_value(ptr %.sroa.0.012, !2388, !DIExpression(), !2389)
  %i.m = load i64, ptr %i.d, align 4, !dbg !2408
  store i64 %i.m, ptr %.sroa.0.012, align 4, !dbg !2408
  %i.n = icmp eq ptr %i.d, %0, !dbg !2409
  br i1 %i.n, label %._crit_edge17, label %.lr.ph16, !dbg !2409

.preheader:                                       ; preds = %.lr.ph16
    #dbg_value(ptr %.sroa.0.0.i15, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2369)
    #dbg_value(ptr %i.q, !2378, !DIExpression(), !2391)
    #dbg_value(ptr %i.q, !2330, !DIExpression(), !2394)
    #dbg_value(ptr %i.q, !2387, !DIExpression(), !2389)
    #dbg_value(ptr %.sroa.0.0.i15, !2388, !DIExpression(), !2389)
  %i.o = load i64, ptr %i.q, align 4, !dbg !2408
  store i64 %i.o, ptr %.sroa.0.0.i15, align 4, !dbg !2408
    #dbg_value(ptr %i.q, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2369)
  %i.p = icmp eq ptr %i.q, %0, !dbg !2409
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !2409

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !2378, !DIExpression(), !2391)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -8, !dbg !2410 ; 4 uses
    #dbg_value(ptr %i.q, !2330, !DIExpression(), !2394)
    #dbg_value(ptr %i.q, !2378, !DIExpression(), !2391)
  %.val18.i = load i32, ptr %i.q, align 4, !dbg !2411, !range !1157, !noundef !124 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -4, !dbg !2411
  %.val19.i = load i32, ptr %i.r, align 4, !dbg !2411
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2412)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2412)
    #dbg_value(ptr poison, !1163, !DIExpression(), !2412)
    #dbg_value(ptr poison, !1173, !DIExpression(), !2414)
    #dbg_value(ptr poison, !1177, !DIExpression(), !2414)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !2416)
    #dbg_value(ptr poison, !1191, !DIExpression(), !2418)
    #dbg_value(ptr poison, !1197, !DIExpression(), !2418)
    #dbg_value(ptr poison, !1200, !DIExpression(), !2420)
    #dbg_value(ptr poison, !1206, !DIExpression(), !2420)
  %i.s = icmp eq i32 %.val18.i, %i.e, !dbg !2422
    #dbg_value(i8 poison, !1186, !DIExpression(), !2423)
  %i.t = icmp ugt i32 %.val19.i, %i.g, !dbg !2424
  %i.u = icmp samesign ugt i32 %.val18.i, %i.e, !dbg !2424
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !2422
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !2411

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !2377
    #dbg_value(ptr undef, !2360, !DIExpression(), !2364)
    #dbg_value(ptr undef, !2350, !DIExpression(), !2356)
    #dbg_value(ptr undef, !2370, !DIExpression(), !2375)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !2373, !DIExpression(), !2375)
    #dbg_value(i64 1, !2374, !DIExpression(), !2375)
  store i64 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 4, !dbg !2425, !noalias !2426
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !2431

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !2432 ; 2 uses
    #dbg_value(ptr %i.w, !2304, !DIExpression(), !2308)
    #dbg_value(ptr %i.w, !2298, !DIExpression(), !2318)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !2319
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2319
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2433 {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 8 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 8 uses
    #dbg_value(ptr poison, !1959, !DIExpression(), !2519)
    #dbg_value(ptr poison, !1970, !DIExpression(), !2522)
    #dbg_value(ptr poison, !2523, !DIExpression(), !2532)
    #dbg_value(ptr poison, !2555, !DIExpression(), !2567)
    #dbg_value(ptr poison, !2562, !DIExpression(), !2568)
    #dbg_value(ptr %0, !2446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2569)
    #dbg_value(i64 %1, !2446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2569)
    #dbg_value(ptr %2, !2447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2569)
    #dbg_value(i64 %3, !2447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2569)
    #dbg_value(ptr %4, !2448, !DIExpression(), !2569)
    #dbg_value(i64 1, !2570, !DIExpression(), !2575)
    #dbg_value(i64 1, !2570, !DIExpression(), !2577)
    #dbg_value(i64 1, !2579, !DIExpression(), !2586)
    #dbg_value(i64 1, !2588, !DIExpression(), !2597)
    #dbg_value(i64 1, !2570, !DIExpression(), !2599)
    #dbg_value(i64 %1, !2449, !DIExpression(), !2601)
    #dbg_value(i64 %1, !2602, !DIExpression(), !2606)
  %i.a = icmp samesign ult i64 %1, 2, !dbg !2608
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b, !dbg !2608

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !2609
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !2610
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !2610

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !2451, !DIExpression(), !2611)
    #dbg_value(ptr %0, !2605, !DIExpression(), !2612)
    #dbg_value(ptr %0, !2605, !DIExpression(), !2614)
    #dbg_value(ptr %0, !2605, !DIExpression(), !2616)
    #dbg_value(ptr %0, !2605, !DIExpression(), !2618)
  %i.d = lshr i64 %1, 1, !dbg !2620               ; 10 uses
    #dbg_value(i64 %i.d, !2453, !DIExpression(), !2621)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2612)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2622)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2614)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2624)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2616)
    #dbg_value(i64 %i.d, !2602, !DIExpression(), !2626)
    #dbg_value(ptr %2, !2455, !DIExpression(), !2628)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2606)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2622)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2629)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2624)
    #dbg_value(ptr %2, !2574, !DIExpression(), !2575)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2626)
    #dbg_value(ptr %2, !2605, !DIExpression(), !2631)
  %i.e = icmp samesign ugt i64 %1, 7, !dbg !2633
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !2633

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !2634
  unreachable, !dbg !2634

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !2573, !DIExpression(), !2575)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !dbg !2635
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d, !dbg !2636
    #dbg_value(ptr %i.f, !2573, !DIExpression(), !2577)
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.d, !dbg !2637
    #dbg_value(ptr %i.g, !2574, !DIExpression(), !2577)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !2638
    #dbg_value(i64 1, !2457, !DIExpression(), !2639)
  br label %bb.g, !dbg !2640

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !2641, !DIExpression(), !2678)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2687)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2689)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2691)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2693)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2695)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2697)
    #dbg_value(ptr %0, !2680, !DIExpression(), !2699)
    #dbg_value(ptr %2, !2646, !DIExpression(), !2678)
    #dbg_value(ptr %2, !2701, !DIExpression(), !2706)
    #dbg_value(ptr %2, !2708, !DIExpression(), !2712)
    #dbg_value(ptr %2, !2708, !DIExpression(), !2714)
    #dbg_value(ptr %2, !2708, !DIExpression(), !2716)
    #dbg_value(ptr poison, !2647, !DIExpression(), !2678)
    #dbg_value(i64 1, !2685, !DIExpression(), !2687)
    #dbg_value(i64 3, !2685, !DIExpression(), !2689)
    #dbg_value(i64 2, !2685, !DIExpression(), !2691)
    #dbg_value(i64 1, !2705, !DIExpression(), !2706)
    #dbg_value(i64 1, !2711, !DIExpression(), !2712)
    #dbg_value(i64 1, !2705, !DIExpression(), !2718)
    #dbg_value(i64 2, !2711, !DIExpression(), !2714)
    #dbg_value(i64 1, !2705, !DIExpression(), !2720)
    #dbg_value(i64 3, !2711, !DIExpression(), !2716)
    #dbg_value(i64 1, !2705, !DIExpression(), !2722)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2724
  %.val50.i = load i64, ptr %i.h, align 8, !dbg !2725, !noundef !124 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 72, !dbg !2725
  %.val51.i = load i64, ptr %i.i, align 8, !dbg !2725
  %.val52.i = load i64, ptr %0, align 8, !dbg !2725, !noundef !124 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 24, !dbg !2725
  %.val53.i = load i64, ptr %i.j, align 8, !dbg !2725
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2726)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2726)
    #dbg_value(ptr poison, !2020, !DIExpression(), !2726)
    #dbg_value(ptr poison, !2030, !DIExpression(), !2728)
    #dbg_value(ptr poison, !2034, !DIExpression(), !2728)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !2730)
    #dbg_value(ptr poison, !2048, !DIExpression(), !2732)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2734)
    #dbg_value(ptr poison, !2055, !DIExpression(), !2732)
    #dbg_value(ptr poison, !2064, !DIExpression(), !2734)
    #dbg_value(ptr poison, !2067, !DIExpression(), !2736)
    #dbg_value(ptr poison, !2081, !DIExpression(), !2738)
  %i.k = icmp eq i64 %.val50.i, %.val52.i, !dbg !2739
    #dbg_value(i8 poison, !2043, !DIExpression(), !2740)
  %i.l = icmp ult i64 %.val51.i, %.val53.i, !dbg !2741
  %i.m = icmp ult i64 %.val50.i, %.val52.i, !dbg !2741
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m, !dbg !2739 ; 2 uses
    #dbg_value(i1 %i.n, !2648, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2742)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !2743
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !2744
  %.val46.i = load i64, ptr %i.o, align 8, !dbg !2745, !noundef !124 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 168, !dbg !2745
  %.val47.i = load i64, ptr %i.q, align 8, !dbg !2745
  %.val48.i = load i64, ptr %i.p, align 8, !dbg !2745, !noundef !124 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 120, !dbg !2745
  %.val49.i = load i64, ptr %i.r, align 8, !dbg !2745
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2746)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2746)
    #dbg_value(ptr poison, !2020, !DIExpression(), !2746)
    #dbg_value(ptr poison, !2030, !DIExpression(), !2748)
    #dbg_value(ptr poison, !2034, !DIExpression(), !2748)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !2750)
    #dbg_value(ptr poison, !2048, !DIExpression(), !2752)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2754)
    #dbg_value(ptr poison, !2055, !DIExpression(), !2752)
    #dbg_value(ptr poison, !2064, !DIExpression(), !2754)
    #dbg_value(ptr poison, !2067, !DIExpression(), !2756)
    #dbg_value(ptr poison, !2081, !DIExpression(), !2758)
  %i.s = icmp eq i64 %.val46.i, %.val48.i, !dbg !2759
    #dbg_value(i8 poison, !2043, !DIExpression(), !2760)
  %i.t = icmp ult i64 %.val47.i, %.val49.i, !dbg !2761
  %i.u = icmp ult i64 %.val46.i, %.val48.i, !dbg !2761
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !2759 ; 2 uses
    #dbg_value(i1 %i.v, !2650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2762)
  %i.w = zext i1 %i.n to i64, !dbg !2763
    #dbg_value(i64 %i.w, !2686, !DIExpression(), !2693)
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.w, !dbg !2764 ; 4 uses
    #dbg_value(ptr %i.x, !2652, !DIExpression(), !2765)
  %i.y = xor i1 %i.n, true, !dbg !2766
  %i.z = zext i1 %i.y to i64, !dbg !2766
    #dbg_value(i64 %i.z, !2686, !DIExpression(), !2695)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.z, !dbg !2767 ; 5 uses
    #dbg_value(ptr %i.aa, !2654, !DIExpression(), !2768)
  %i.ab = select i1 %i.v, i64 3, i64 2, !dbg !2769
    #dbg_value(i64 %i.ab, !2686, !DIExpression(), !2697)
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ab, !dbg !2770 ; 5 uses
    #dbg_value(ptr %i.ac, !2656, !DIExpression(), !2771)
  %i.ad = select i1 %i.v, i64 2, i64 3, !dbg !2772
    #dbg_value(i64 %i.ad, !2686, !DIExpression(), !2699)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ad, !dbg !2773 ; 4 uses
    #dbg_value(ptr %i.ae, !2658, !DIExpression(), !2774)
  %.val42.i = load i64, ptr %i.ac, align 8, !dbg !2775, !noundef !124 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 24, !dbg !2775
  %.val43.i = load i64, ptr %i.af, align 8, !dbg !2775
  %.val44.i = load i64, ptr %i.x, align 8, !dbg !2775, !noundef !124 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 24, !dbg !2775
  %.val45.i = load i64, ptr %i.ag, align 8, !dbg !2775
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2776)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2776)
    #dbg_value(ptr poison, !2020, !DIExpression(), !2776)
    #dbg_value(ptr poison, !2030, !DIExpression(), !2778)
    #dbg_value(ptr poison, !2034, !DIExpression(), !2778)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !2780)
    #dbg_value(ptr poison, !2048, !DIExpression(), !2782)
    #dbg_value(ptr poison, !2058, !DIExpression(), !2784)
    #dbg_value(ptr poison, !2055, !DIExpression(), !2782)
    #dbg_value(ptr poison, !2064, !DIExpression(), !2784)
    #dbg_value(ptr poison, !2067, !DIExpression(), !2786)
    #dbg_value(ptr poison, !2081, !DIExpression(), !2788)
  %i.ah = icmp eq i64 %.val42.i, %.val44.i, !dbg !2789
    #dbg_value(i8 poison, !2043, !DIExpression(), !2790)
  %i.ai = icmp ult i64 %.val43.i, %.val45.i, !dbg !2791
  %i.aj = icmp ult i64 %.val42.i, %.val44.i, !dbg !2791
  %i.ak = select i1 %i.ah, i1 %i.ai, i1 %i.aj, !dbg !2789 ; 3 uses
    #dbg_value(i1 %i.ak, !2660, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2792)
  %.val38.i = load i64, ptr %i.ae, align 8, !dbg !2793, !noundef !124 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 24, !dbg !2793
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
    #dbg_value(ptr poison, !462, !DIExpression(), !4072)
    #dbg_value(ptr poison, !464, !DIExpression(), !4073)
    #dbg_value(ptr poison, !466, !DIExpression(), !4074)
  %i.df = select i1 %i.cy, ptr %i.cq, ptr %i.cl, !dbg !4075, !unpredictable !124
    #dbg_value(ptr %i.df, !211, !DIExpression(), !4076)
    #dbg_value(ptr %i.df, !257, !DIExpression(), !3977)
    #dbg_value(i1 %i.de, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4077)
    #dbg_value(ptr %i.co, !437, !DIExpression(), !4077)
    #dbg_value(ptr %i.cs, !438, !DIExpression(), !4077)
    #dbg_value(ptr %i.co, !439, !DIExpression(), !4079)
    #dbg_value(ptr %i.cs, !459, !DIExpression(), !4080)
    #dbg_value(ptr undef, !460, !DIExpression(), !4081)
    #dbg_value(ptr undef, !425, !DIExpression(), !4082)
    #dbg_value(ptr poison, !462, !DIExpression(), !4083)
    #dbg_value(ptr poison, !464, !DIExpression(), !4084)
    #dbg_value(ptr poison, !466, !DIExpression(), !4085)
  %i.dg = select i1 %i.de, ptr %i.co, ptr %i.cs, !dbg !4086, !unpredictable !124
    #dbg_value(ptr %i.dg, !213, !DIExpression(), !4087)
    #dbg_value(ptr %i.dg, !257, !DIExpression(), !3989)
    #dbg_value(i1 %i.de, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4088)
    #dbg_value(ptr %i.cq, !437, !DIExpression(), !4088)
    #dbg_value(ptr %i.co, !438, !DIExpression(), !4088)
    #dbg_value(ptr %i.cq, !439, !DIExpression(), !4090)
    #dbg_value(ptr %i.co, !459, !DIExpression(), !4091)
    #dbg_value(ptr undef, !460, !DIExpression(), !4092)
    #dbg_value(ptr undef, !425, !DIExpression(), !4093)
    #dbg_value(ptr poison, !462, !DIExpression(), !4094)
    #dbg_value(ptr poison, !464, !DIExpression(), !4095)
    #dbg_value(ptr poison, !466, !DIExpression(), !4096)
  %i.dh = select i1 %i.de, ptr %i.cq, ptr %i.co, !dbg !4097, !unpredictable !124
    #dbg_value(i1 %i.cy, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4098)
    #dbg_value(ptr %i.cl, !437, !DIExpression(), !4098)
    #dbg_value(ptr %i.dh, !438, !DIExpression(), !4098)
    #dbg_value(ptr %i.cl, !439, !DIExpression(), !4100)
    #dbg_value(ptr %i.dh, !459, !DIExpression(), !4101)
    #dbg_value(ptr undef, !460, !DIExpression(), !4102)
    #dbg_value(ptr undef, !425, !DIExpression(), !4103)
    #dbg_value(ptr poison, !462, !DIExpression(), !4104)
    #dbg_value(ptr poison, !464, !DIExpression(), !4105)
    #dbg_value(ptr poison, !466, !DIExpression(), !4106)
  %i.di = select i1 %i.cy, ptr %i.cl, ptr %i.dh, !dbg !4107, !unpredictable !124 ; 4 uses
    #dbg_value(ptr %i.di, !215, !DIExpression(), !4108)
    #dbg_value(i1 %i.cy, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4109)
    #dbg_value(ptr %i.co, !437, !DIExpression(), !4109)
    #dbg_value(ptr %i.cq, !438, !DIExpression(), !4109)
    #dbg_value(ptr %i.co, !439, !DIExpression(), !4111)
    #dbg_value(ptr %i.cq, !459, !DIExpression(), !4112)
    #dbg_value(ptr undef, !460, !DIExpression(), !4113)
    #dbg_value(ptr undef, !425, !DIExpression(), !4114)
    #dbg_value(ptr poison, !462, !DIExpression(), !4115)
    #dbg_value(ptr poison, !464, !DIExpression(), !4116)
    #dbg_value(ptr poison, !466, !DIExpression(), !4117)
  %i.dj = select i1 %i.cy, ptr %i.co, ptr %i.cq, !dbg !4118, !unpredictable !124
    #dbg_value(i1 %i.de, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4119)
    #dbg_value(ptr %i.cs, !437, !DIExpression(), !4119)
    #dbg_value(ptr %i.dj, !438, !DIExpression(), !4119)
    #dbg_value(ptr %i.cs, !439, !DIExpression(), !4121)
    #dbg_value(ptr %i.dj, !459, !DIExpression(), !4122)
    #dbg_value(ptr undef, !460, !DIExpression(), !4123)
    #dbg_value(ptr undef, !425, !DIExpression(), !4124)
    #dbg_value(ptr poison, !462, !DIExpression(), !4125)
    #dbg_value(ptr poison, !464, !DIExpression(), !4126)
    #dbg_value(ptr poison, !466, !DIExpression(), !4127)
  %i.dk = select i1 %i.de, ptr %i.cs, ptr %i.dj, !dbg !4128, !unpredictable !124 ; 4 uses
    #dbg_value(ptr %i.dk, !217, !DIExpression(), !4129)
  %.val.i75 = load i8, ptr %i.dk, align 1, !dbg !4130, !noundef !124 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 1, !dbg !4130
  %.val35.i76 = load i8, ptr %i.dl, align 1, !dbg !4130
  %.val36.i77 = load i8, ptr %i.di, align 1, !dbg !4130, !noundef !124 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 1, !dbg !4130
  %.val37.i78 = load i8, ptr %i.dm, align 1, !dbg !4130
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4131)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4131)
    #dbg_value(ptr poison, !288, !DIExpression(), !4131)
    #dbg_value(ptr poison, !298, !DIExpression(), !4133)
    #dbg_value(ptr poison, !304, !DIExpression(), !4133)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4135)
    #dbg_value(ptr poison, !341, !DIExpression(), !4137)
    #dbg_value(ptr poison, !348, !DIExpression(), !4137)
    #dbg_value(ptr poison, !351, !DIExpression(), !4139)
    #dbg_value(ptr poison, !357, !DIExpression(), !4139)
  %i.dn = icmp eq i8 %.val.i75, %.val36.i77, !dbg !4141
    #dbg_value(i8 poison, !336, !DIExpression(), !4142)
  %i.do = icmp ult i8 %.val35.i76, %.val37.i78, !dbg !4143
  %i.dp = icmp ult i8 %.val.i75, %.val36.i77, !dbg !4143
  %i.dq = select i1 %i.dn, i1 %i.do, i1 %i.dp, !dbg !4141 ; 2 uses
    #dbg_value(i1 %i.dq, !219, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4144)
    #dbg_value(i1 %i.dq, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4145)
    #dbg_value(ptr %i.dk, !437, !DIExpression(), !4145)
    #dbg_value(ptr %i.di, !438, !DIExpression(), !4145)
    #dbg_value(ptr %i.dk, !439, !DIExpression(), !4147)
    #dbg_value(ptr %i.di, !459, !DIExpression(), !4148)
    #dbg_value(ptr undef, !460, !DIExpression(), !4149)
    #dbg_value(ptr undef, !425, !DIExpression(), !4150)
    #dbg_value(ptr poison, !462, !DIExpression(), !4151)
    #dbg_value(ptr poison, !464, !DIExpression(), !4152)
    #dbg_value(ptr poison, !466, !DIExpression(), !4153)
  %i.dr = select i1 %i.dq, ptr %i.dk, ptr %i.di, !dbg !4154, !unpredictable !124
    #dbg_value(ptr %i.dr, !221, !DIExpression(), !4155)
    #dbg_value(ptr %i.dr, !257, !DIExpression(), !3985)
    #dbg_value(i1 %i.dq, !436, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4156)
    #dbg_value(ptr %i.di, !437, !DIExpression(), !4156)
    #dbg_value(ptr %i.dk, !438, !DIExpression(), !4156)
    #dbg_value(ptr %i.di, !439, !DIExpression(), !4158)
    #dbg_value(ptr %i.dk, !459, !DIExpression(), !4159)
    #dbg_value(ptr undef, !460, !DIExpression(), !4160)
    #dbg_value(ptr undef, !425, !DIExpression(), !4161)
    #dbg_value(ptr poison, !462, !DIExpression(), !4162)
    #dbg_value(ptr poison, !464, !DIExpression(), !4163)
    #dbg_value(ptr poison, !466, !DIExpression(), !4164)
  %i.ds = select i1 %i.dq, ptr %i.di, ptr %i.dk, !dbg !4165, !unpredictable !124
    #dbg_value(ptr %i.ds, !223, !DIExpression(), !4166)
    #dbg_value(ptr %i.ds, !257, !DIExpression(), !3987)
  %i.dt = load i16, ptr %i.df, align 1, !dbg !4167
  store i16 %i.dt, ptr %i.bu, align 1, !dbg !4167
  %i.du = getelementptr inbounds nuw i8, ptr %i.bu, i64 2, !dbg !4168
    #dbg_value(ptr %i.du, !251, !DIExpression(), !3985)
  %i.dv = load i16, ptr %i.dr, align 1, !dbg !4169
  store i16 %i.dv, ptr %i.du, align 1, !dbg !4169
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4, !dbg !4170
    #dbg_value(ptr %i.dw, !251, !DIExpression(), !3987)
  %i.dx = load i16, ptr %i.ds, align 1, !dbg !4171
  store i16 %i.dx, ptr %i.dw, align 1, !dbg !4171
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 6, !dbg !4172
    #dbg_value(ptr %i.dy, !251, !DIExpression(), !3989)
  %i.dz = load i16, ptr %i.dg, align 1, !dbg !4173
  store i16 %i.dz, ptr %i.dy, align 1, !dbg !4173
    #dbg_value(i64 4, !3633, !DIExpression(), !3739)
  br label %bb.i, !dbg !3745

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.h ], [ 1, %bb.g ], !dbg !3725 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !3633, !DIExpression(), !3739)
    #dbg_value(i64 0, !3635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4174)
    #dbg_value(i64 2, !3635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4174)
    #dbg_value(i64 0, !3635, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4174)
    #dbg_value(i64 %i.d, !3635, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4174)
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
    #dbg_value(i64 1, !3635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4174)
    #dbg_value(i64 0, !3637, !DIExpression(), !4175)
    #dbg_value(i64 0, !3699, !DIExpression(), !3715)
    #dbg_value(i64 0, !3699, !DIExpression(), !3728)
    #dbg_value(ptr %0, !3639, !DIExpression(), !4176)
    #dbg_value(ptr %0, !3702, !DIExpression(), !4177)
    #dbg_value(ptr %2, !3641, !DIExpression(), !4179)
    #dbg_value(ptr %2, !3702, !DIExpression(), !4180)
    #dbg_value(ptr %2, !3702, !DIExpression(), !4182)
    #dbg_value(i64 %i.d, !3643, !DIExpression(), !4184)
    #dbg_value(i64 %.sroa.0.0, !3645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(i64 %i.d, !3645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4185)
    #dbg_value(ptr undef, !3669, !DIExpression(), !3673)
    #dbg_value(ptr undef, !3663, !DIExpression(), !3672)
    #dbg_value(ptr undef, !3655, !DIExpression(), !3659)
    #dbg_value(ptr undef, !3658, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4186)
  %i.eb = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !4187
  br i1 %i.eb, label %.lr.ph, label %.loopexit, !dbg !3660

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.i
    #dbg_value(i64 2, !3635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4174)
    #dbg_value(i64 %i.d, !3637, !DIExpression(), !4175)
    #dbg_value(i64 %i.d, !3699, !DIExpression(), !3715)
    #dbg_value(i64 %i.d, !3699, !DIExpression(), !3728)
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d, !dbg !4188
    #dbg_value(ptr %i.ec, !3639, !DIExpression(), !4176)
    #dbg_value(ptr %i.ec, !3702, !DIExpression(), !4177)
  %i.ed = getelementptr [2 x i8], ptr %2, i64 %i.d, !dbg !4189 ; 6 uses
    #dbg_value(ptr %i.ed, !3641, !DIExpression(), !4179)
    #dbg_value(ptr %i.ed, !3702, !DIExpression(), !4180)
    #dbg_value(ptr %i.ed, !3702, !DIExpression(), !4182)
    #dbg_value(i64 %i.ea, !3643, !DIExpression(), !4184)
    #dbg_value(i64 %.sroa.0.0, !3645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(i64 %i.ea, !3645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4185)
    #dbg_value(ptr undef, !3669, !DIExpression(), !3673)
    #dbg_value(ptr undef, !3663, !DIExpression(), !3672)
    #dbg_value(ptr undef, !3655, !DIExpression(), !3659)
    #dbg_value(ptr undef, !3658, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4186)
  %i.ee = icmp samesign ult i64 %.sroa.0.0, %i.ea, !dbg !4187
  br i1 %i.ee, label %.lr.ph.1, label %.loopexit.1, !dbg !3660

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1
  %.sroa.05.087.1 = phi i64 [ %i.fb, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
    #dbg_value(i64 %.sroa.05.087.1, !3664, !DIExpression(), !4190)
    #dbg_value(i64 %.sroa.05.087.1, !3687, !DIExpression(), !3688)
    #dbg_value(i64 %.sroa.05.087.1, !3693, !DIExpression(), !3694)
    #dbg_value(i64 %.sroa.05.087.1, !3645, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(i64 %.sroa.05.087.1, !3647, !DIExpression(), !4191)
    #dbg_value(i64 %.sroa.05.087.1, !3699, !DIExpression(), !4177)
    #dbg_value(i64 %.sroa.05.087.1, !3699, !DIExpression(), !4180)
    #dbg_value(i64 %.sroa.05.087.1, !3699, !DIExpression(), !4182)
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %.sroa.05.087.1, !dbg !4192
    #dbg_value(ptr %i.ef, !3678, !DIExpression(), !3696)
  %.idx114 = shl nuw nsw i64 %.sroa.05.087.1, 1, !dbg !4193
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx114, !dbg !4193 ; 4 uses
    #dbg_value(ptr %i.eg, !3679, !DIExpression(), !3696)
  %i.eh = load i16, ptr %i.ef, align 1, !dbg !4194 ; 4 uses
  store i16 %i.eh, ptr %i.eg, align 1, !dbg !4194
    #dbg_value(ptr poison, !2198, !DIExpression(), !4195)
    #dbg_value(ptr poison, !2208, !DIExpression(), !4199)
    #dbg_value(ptr poison, !2198, !DIExpression(), !4200)
    #dbg_value(ptr poison, !2208, !DIExpression(), !4203)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4204)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4204)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4205)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4205)
    #dbg_value(ptr undef, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4205)
    #dbg_value(ptr undef, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4204)
    #dbg_value(ptr %i.ed, !2175, !DIExpression(), !4207)
    #dbg_value(ptr %i.eg, !2176, !DIExpression(), !4207)
    #dbg_value(ptr %i.eg, !2226, !DIExpression(), !4208)
    #dbg_value(ptr poison, !2177, !DIExpression(), !4207)
    #dbg_value(i64 1, !2229, !DIExpression(), !4208)
    #dbg_value(i64 1, !2232, !DIExpression(), !4210)
    #dbg_value(i64 1, !2229, !DIExpression(), !4212)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -2, !dbg !4214 ; 3 uses
    #dbg_value(ptr %i.ei, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.ei, !2226, !DIExpression(), !4212)
  %i.ej = trunc i16 %i.eh to i8, !dbg !4216       ; 4 uses
  %i.ek = lshr i16 %i.eh, 8, !dbg !4216
  %i.el = trunc nuw i16 %i.ek to i8, !dbg !4216   ; 2 uses
  %.val22.i.1 = load i8, ptr %i.ei, align 1, !dbg !4216, !noundef !124 ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 -1, !dbg !4216
  %.val23.i.1 = load i8, ptr %i.em, align 1, !dbg !4216
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4217)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4217)
    #dbg_value(ptr poison, !288, !DIExpression(), !4217)
    #dbg_value(ptr poison, !298, !DIExpression(), !4219)
    #dbg_value(ptr poison, !304, !DIExpression(), !4219)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4221)
    #dbg_value(ptr poison, !341, !DIExpression(), !4223)
    #dbg_value(ptr poison, !348, !DIExpression(), !4223)
    #dbg_value(ptr poison, !351, !DIExpression(), !4225)
    #dbg_value(ptr poison, !357, !DIExpression(), !4225)
  %i.en = icmp eq i8 %.val22.i.1, %i.ej, !dbg !4227
    #dbg_value(i8 poison, !336, !DIExpression(), !4228)
  %i.eo = icmp ugt i8 %.val23.i.1, %i.el, !dbg !4229
  %i.ep = icmp ugt i8 %.val22.i.1, %i.ej, !dbg !4229
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep, !dbg !4227
  br i1 %i.eq, label %.preheader.1.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !4216

.preheader.1.preheader:                           ; preds = %.lr.ph.1
    #dbg_value(ptr %i.eg, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
    #dbg_value(ptr %i.ei, !2226, !DIExpression(), !4212)
    #dbg_value(ptr %i.ei, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.ei, !2235, !DIExpression(), !4210)
    #dbg_value(ptr %i.eg, !2236, !DIExpression(), !4210)
  %i.er = load i16, ptr %i.ei, align 1, !dbg !4230
  store i16 %i.er, ptr %i.eg, align 1, !dbg !4230
  %i.es = icmp eq i64 %.sroa.05.087.1, 1, !dbg !4231
  br i1 %i.es, label %._crit_edge111, label %.lr.ph110, !dbg !4231

.preheader.1:                                     ; preds = %.lr.ph110
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
    #dbg_value(ptr %i.ev, !2226, !DIExpression(), !4212)
    #dbg_value(ptr %i.ev, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.ev, !2235, !DIExpression(), !4210)
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2236, !DIExpression(), !4210)
  %i.et = load i16, ptr %i.ev, align 1, !dbg !4230
  store i16 %i.et, ptr %.sroa.0.0.i79.1109, align 1, !dbg !4230
    #dbg_value(ptr %i.ev, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
  %i.eu = icmp eq ptr %i.ev, %i.ed, !dbg !4231
  br i1 %i.eu, label %._crit_edge111, label %.lr.ph110, !dbg !4231

.lr.ph110:                                        ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i79.1109 = phi ptr [ %i.ev, %.preheader.1 ], [ %i.ei, %.preheader.1.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2226, !DIExpression(), !4212)
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.i79.1109, i64 -2, !dbg !4232 ; 4 uses
    #dbg_value(ptr %i.ev, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.ev, !2226, !DIExpression(), !4212)
  %.val18.i.1 = load i8, ptr %i.ev, align 1, !dbg !4233, !noundef !124 ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.0.0.i79.1109, i64 -1, !dbg !4233
  %.val19.i.1 = load i8, ptr %i.ew, align 1, !dbg !4233
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(ptr poison, !288, !DIExpression(), !4234)
    #dbg_value(ptr poison, !298, !DIExpression(), !4236)
    #dbg_value(ptr poison, !304, !DIExpression(), !4236)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4238)
    #dbg_value(ptr poison, !341, !DIExpression(), !4240)
    #dbg_value(ptr poison, !348, !DIExpression(), !4240)
    #dbg_value(ptr poison, !351, !DIExpression(), !4242)
    #dbg_value(ptr poison, !357, !DIExpression(), !4242)
  %i.ex = icmp eq i8 %.val18.i.1, %i.ej, !dbg !4244
    #dbg_value(i8 poison, !336, !DIExpression(), !4245)
  %i.ey = icmp ugt i8 %.val19.i.1, %i.el, !dbg !4246
  %i.ez = icmp ugt i8 %.val18.i.1, %i.ej, !dbg !4246
  %i.fa = select i1 %i.ex, i1 %i.ey, i1 %i.ez, !dbg !4244
  br i1 %i.fa, label %.preheader.1, label %._crit_edge111, !dbg !4233

._crit_edge111:                                   ; preds = %.preheader.1, %.lr.ph110, %.preheader.1.preheader
  %.sroa.0.0.i79.lcssa.1 = phi ptr [ %i.ed, %.preheader.1.preheader ], [ %i.ed, %.preheader.1 ], [ %.sroa.0.0.i79.1109, %.lr.ph110 ], !dbg !4207
    #dbg_value(ptr undef, !2208, !DIExpression(), !4199)
    #dbg_value(ptr undef, !2198, !DIExpression(), !4195)
    #dbg_value(ptr undef, !2218, !DIExpression(), !4205)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa.1, !2221, !DIExpression(), !4205)
    #dbg_value(i64 1, !2222, !DIExpression(), !4205)
  store i16 %i.eh, ptr %.sroa.0.0.i79.lcssa.1, align 1, !dbg !4247, !noalias !4248
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !4253

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1: ; preds = %._crit_edge111, %.lr.ph.1
  %i.fb = add nuw nsw i64 %.sroa.05.087.1, 1, !dbg !4254 ; 2 uses
    #dbg_value(i64 %i.fb, !3645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(ptr undef, !3669, !DIExpression(), !3673)
    #dbg_value(ptr undef, !3663, !DIExpression(), !3672)
    #dbg_value(ptr undef, !3655, !DIExpression(), !3659)
    #dbg_value(ptr undef, !3658, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4186)
  %exitcond.1.not = icmp eq i64 %i.fb, %i.ea, !dbg !4187
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !3660

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, %.loopexit
    #dbg_value(ptr %2, !3649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4255)
    #dbg_value(ptr %0, !3649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4255)
    #dbg_value(i64 %1, !3649, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4256), !dbg !4259
    #dbg_value(ptr %0, !799, !DIExpression(), !4260)
    #dbg_value(ptr %0, !821, !DIExpression(), !4262)
    #dbg_value(ptr %0, !4263, !DIExpression(), !4268)
    #dbg_value(ptr %2, !809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4260)
    #dbg_value(i64 %1, !809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4260)
    #dbg_value(ptr poison, !810, !DIExpression(), !4260)
    #dbg_value(i64 1, !4270, !DIExpression(), !4274)
    #dbg_value(i64 1, !4287, !DIExpression(), !4291)
    #dbg_value(i64 1, !849, !DIExpression(), !4293)
    #dbg_value(i64 1, !857, !DIExpression(), !4295)
    #dbg_value(i64 1, !849, !DIExpression(), !4297)
    #dbg_value(i64 1, !857, !DIExpression(), !4299)
    #dbg_value(i64 2, !4301, !DIExpression(), !4305)
    #dbg_value(i64 1, !4267, !DIExpression(), !4268)
    #dbg_value(i64 %1, !811, !DIExpression(), !4307)
    #dbg_value(i64 %1, !4304, !DIExpression(), !4305)
    #dbg_value(ptr %2, !813, !DIExpression(), !4308)
    #dbg_value(ptr %2, !4309, !DIExpression(), !4313)
    #dbg_value(ptr %2, !4309, !DIExpression(), !4315)
    #dbg_value(ptr %2, !4309, !DIExpression(), !4317)
    #dbg_value(i64 %i.d, !815, !DIExpression(), !4319)
    #dbg_value(i64 %i.d, !4312, !DIExpression(), !4313)
    #dbg_value(i64 %i.d, !4312, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4315)
    #dbg_value(i64 %1, !4312, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4317)
    #dbg_value(i64 %1, !874, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4320)
    #dbg_value(ptr %0, !877, !DIExpression(), !4320)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4322)
    #dbg_value(i64 0, !829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4323)
    #dbg_value(i64 %i.d, !829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4323)
    #dbg_value(ptr %2, !4309, !DIExpression(), !4324)
    #dbg_value(ptr %2, !817, !DIExpression(), !4326)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !4309, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4327)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !819, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4329)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4295)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4293)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !823, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4330)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4299)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4297)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4331)
    #dbg_value(ptr undef, !4284, !DIExpression(), !4332)
    #dbg_value(ptr undef, !4279, !DIExpression(), !4333)
    #dbg_value(ptr undef, !4334, !DIExpression(), !4338)
    #dbg_value(ptr undef, !4337, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4340)
  %i.fc = add nsw i64 %1, -1, !dbg !4341          ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %i.fc), !827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4322)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4331)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4297)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4299)
    #dbg_value(i64 %i.fc, !4312, !DIExpression(), !4317)
    #dbg_value(i64 %i.fc, !874, !DIExpression(), !4320)
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fc, !dbg !4342
    #dbg_value(ptr %i.fd, !827, !DIExpression(), !4322)
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fc, !dbg !4343
    #dbg_value(ptr %i.fe, !863, !DIExpression(), !4299)
    #dbg_value(ptr %i.fe, !854, !DIExpression(), !4297)
    #dbg_value(ptr %i.fe, !825, !DIExpression(), !4331)
    #dbg_value(ptr %i.ed, !4309, !DIExpression(), !4327)
    #dbg_value(ptr %i.ed, !819, !DIExpression(), !4329)
    #dbg_value(ptr %i.ed, !823, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4330)
    #dbg_value(ptr %i.ed, !854, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4293)
    #dbg_value(ptr %i.ed, !863, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4295)
  %i.ff = getelementptr i8, ptr %i.ed, i64 -2, !dbg !4344
    #dbg_value(ptr %i.ff, !863, !DIExpression(), !4295)
    #dbg_value(ptr %i.ff, !854, !DIExpression(), !4293)
    #dbg_value(ptr %i.ff, !823, !DIExpression(), !4330)
  br label %.lr.ph.i, !dbg !4345

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fg = getelementptr i8, ptr %i.gh, i64 2, !dbg !4346 ; 2 uses
    #dbg_value(ptr %i.fg, !838, !DIExpression(), !4347)
  %i.fh = getelementptr i8, ptr %i.gg, i64 2, !dbg !4348
    #dbg_value(ptr %i.fh, !840, !DIExpression(), !4349)
  %i.fi = and i64 %1, 1, !dbg !4350
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !4350
  br i1 %i.fj, label %bb.k, label %bb.j, !dbg !4351

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.fx, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.fk, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.ed, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.ff, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.fe, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.gi, %.lr.ph.i ], [ %i.fd, %.loopexit.1 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i, !4263, !DIExpression(), !4268)
    #dbg_value(ptr %.sroa.06.08.i, !4309, !DIExpression(), !4324)
    #dbg_value(ptr %.sroa.011.07.i, !4309, !DIExpression(), !4327)
    #dbg_value(ptr %.sroa.015.06.i, !863, !DIExpression(), !4295)
    #dbg_value(ptr %.sroa.017.05.i, !863, !DIExpression(), !4299)
    #dbg_value(ptr %.sroa.019.04.i, !827, !DIExpression(), !4322)
    #dbg_value(i64 %.sroa.04.09.i, !4280, !DIExpression(), !4352)
    #dbg_value(i64 %.sroa.04.09.i, !4273, !DIExpression(), !4274)
    #dbg_value(i64 %.sroa.04.09.i, !4290, !DIExpression(), !4291)
  %i.fk = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !4353 ; 2 uses
    #dbg_value(i64 %i.fk, !829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4323)
    #dbg_value(ptr %.sroa.06.08.i, !887, !DIExpression(), !4354)
    #dbg_value(ptr %.sroa.06.08.i, !906, !DIExpression(), !4356)
    #dbg_value(ptr %.sroa.011.07.i, !897, !DIExpression(), !4354)
    #dbg_value(ptr %.sroa.011.07.i, !906, !DIExpression(), !4358)
    #dbg_value(ptr %.sroa.0.010.i, !898, !DIExpression(), !4354)
    #dbg_value(ptr %.sroa.0.010.i, !914, !DIExpression(), !4360)
    #dbg_value(ptr poison, !899, !DIExpression(), !4354)
    #dbg_value(i64 1, !920, !DIExpression(), !4362)
    #dbg_value(i64 1, !917, !DIExpression(), !4360)
  %.sroa.011.0.val.i = load i8, ptr %.sroa.011.07.i, align 1, !dbg !4364, !alias.scope !4256, !noundef !124 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.011.07.i, i64 1, !dbg !4364
  %.sroa.011.0.val44.i = load i8, ptr %i.fl, align 1, !dbg !4364, !alias.scope !4256
  %.sroa.06.0.val.i = load i8, ptr %.sroa.06.08.i, align 1, !dbg !4364, !alias.scope !4256, !noundef !124 ; 2 uses
  %i.fm = getelementptr i8, ptr %.sroa.06.08.i, i64 1, !dbg !4364
  %.sroa.06.0.val45.i = load i8, ptr %i.fm, align 1, !dbg !4364, !alias.scope !4256
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4365)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4365)
    #dbg_value(ptr poison, !288, !DIExpression(), !4365)
    #dbg_value(ptr poison, !298, !DIExpression(), !4367)
    #dbg_value(ptr poison, !304, !DIExpression(), !4367)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4369)
    #dbg_value(ptr poison, !341, !DIExpression(), !4371)
    #dbg_value(ptr poison, !348, !DIExpression(), !4371)
    #dbg_value(ptr poison, !351, !DIExpression(), !4373)
    #dbg_value(ptr poison, !357, !DIExpression(), !4373)
  %i.fn = icmp eq i8 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !4375
    #dbg_value(i8 poison, !336, !DIExpression(), !4376)
  %i.fo = icmp ult i8 %.sroa.011.0.val44.i, %.sroa.06.0.val45.i, !dbg !4377
  %i.fp = icmp ult i8 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !4377
  %i.fq = select i1 %i.fn, i1 %i.fo, i1 %i.fp, !dbg !4375 ; 3 uses
    #dbg_value(i1 %i.fq, !900, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4378)
  %..i43.i = select i1 %i.fq, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !4379
  %i.fr = xor i1 %i.fq, true, !dbg !4380
    #dbg_value(i1 %i.fr, !900, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4378)
    #dbg_value(ptr %..i43.i, !923, !DIExpression(), !4362)
    #dbg_value(ptr %..i43.i, !902, !DIExpression(), !4381)
    #dbg_value(ptr %.sroa.0.010.i, !924, !DIExpression(), !4362)
  %i.fs = load i16, ptr %..i43.i, align 1, !dbg !4382, !alias.scope !4256, !noalias !4383
  store i16 %i.fs, ptr %.sroa.0.010.i, align 1, !dbg !4382, !noalias !4387
  %i.ft = zext i1 %i.fq to i64, !dbg !4388
    #dbg_value(i64 %i.ft, !909, !DIExpression(), !4358)
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.011.07.i, i64 %i.ft, !dbg !4389 ; 4 uses
    #dbg_value(ptr %i.fu, !897, !DIExpression(), !4354)
    #dbg_value(ptr %i.fu, !906, !DIExpression(), !4358)
  %i.fv = zext i1 %i.fr to i64, !dbg !4390
    #dbg_value(i64 %i.fv, !909, !DIExpression(), !4356)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.08.i, i64 %i.fv, !dbg !4391 ; 5 uses
    #dbg_value(ptr %i.fw, !887, !DIExpression(), !4354)
    #dbg_value(ptr %i.fw, !906, !DIExpression(), !4356)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 2, !dbg !4392 ; 2 uses
    #dbg_value(ptr %i.fx, !898, !DIExpression(), !4354)
    #dbg_value(ptr %i.fx, !914, !DIExpression(), !4360)
    #dbg_value(ptr %i.fw, !817, !DIExpression(), !4326)
    #dbg_value(ptr %i.fw, !4309, !DIExpression(), !4324)
    #dbg_value(ptr %i.fu, !819, !DIExpression(), !4329)
    #dbg_value(ptr %i.fu, !4309, !DIExpression(), !4327)
    #dbg_value(ptr %i.fx, !799, !DIExpression(), !4260)
    #dbg_value(ptr %i.fx, !821, !DIExpression(), !4262)
    #dbg_value(ptr %i.fx, !4263, !DIExpression(), !4268)
    #dbg_value(ptr %.sroa.015.06.i, !956, !DIExpression(), !4393)
    #dbg_value(ptr %.sroa.015.06.i, !968, !DIExpression(), !4395)
    #dbg_value(ptr %.sroa.015.06.i, !974, !DIExpression(), !4397)
    #dbg_value(ptr %.sroa.017.05.i, !959, !DIExpression(), !4393)
    #dbg_value(ptr %.sroa.017.05.i, !968, !DIExpression(), !4399)
    #dbg_value(ptr %.sroa.017.05.i, !974, !DIExpression(), !4401)
    #dbg_value(ptr %.sroa.019.04.i, !960, !DIExpression(), !4393)
    #dbg_value(ptr %.sroa.019.04.i, !985, !DIExpression(), !4403)
    #dbg_value(ptr poison, !961, !DIExpression(), !4393)
    #dbg_value(i64 1, !991, !DIExpression(), !4405)
    #dbg_value(i64 1, !988, !DIExpression(), !4403)
  %.sroa.017.0.val.i = load i8, ptr %.sroa.017.05.i, align 1, !dbg !4407, !alias.scope !4256, !noundef !124 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.017.05.i, i64 1, !dbg !4407
  %.sroa.017.0.val46.i = load i8, ptr %i.fy, align 1, !dbg !4407, !alias.scope !4256
  %.sroa.015.0.val.i = load i8, ptr %.sroa.015.06.i, align 1, !dbg !4407, !alias.scope !4256, !noundef !124 ; 2 uses
  %i.fz = getelementptr i8, ptr %.sroa.015.06.i, i64 1, !dbg !4407
  %.sroa.015.0.val47.i = load i8, ptr %i.fz, align 1, !dbg !4407, !alias.scope !4256
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4408)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4408)
    #dbg_value(ptr poison, !288, !DIExpression(), !4408)
    #dbg_value(ptr poison, !298, !DIExpression(), !4410)
    #dbg_value(ptr poison, !304, !DIExpression(), !4410)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4412)
    #dbg_value(ptr poison, !341, !DIExpression(), !4414)
    #dbg_value(ptr poison, !348, !DIExpression(), !4414)
    #dbg_value(ptr poison, !351, !DIExpression(), !4416)
    #dbg_value(ptr poison, !357, !DIExpression(), !4416)
  %i.ga = icmp eq i8 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !4418
    #dbg_value(i8 poison, !336, !DIExpression(), !4419)
  %i.gb = icmp ult i8 %.sroa.017.0.val46.i, %.sroa.015.0.val47.i, !dbg !4420
  %i.gc = icmp ult i8 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !4420
  %i.gd = select i1 %i.ga, i1 %i.gb, i1 %i.gc, !dbg !4418 ; 3 uses
    #dbg_value(i1 %i.gd, !962, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4421)
  %..i.i = select i1 %i.gd, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !4422
  %i.ge = xor i1 %i.gd, true, !dbg !4423
    #dbg_value(i1 %i.ge, !962, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4421)
    #dbg_value(ptr %..i.i, !994, !DIExpression(), !4405)
    #dbg_value(ptr %..i.i, !964, !DIExpression(), !4424)
    #dbg_value(ptr %.sroa.019.04.i, !995, !DIExpression(), !4405)
  %i.gf = load i16, ptr %..i.i, align 1, !dbg !4425, !alias.scope !4256, !noalias !4426
  store i16 %i.gf, ptr %.sroa.019.04.i, align 1, !dbg !4425, !noalias !4430
  %.neg.i.i = sext i1 %i.ge to i64, !dbg !4431
    #dbg_value(i1 %i.ge, !971, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4399)
    #dbg_value(i64 %.neg.i.i, !977, !DIExpression(), !4401)
  %i.gg = getelementptr [2 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !4432 ; 2 uses
    #dbg_value(ptr %i.gg, !959, !DIExpression(), !4393)
    #dbg_value(ptr %i.gg, !968, !DIExpression(), !4399)
    #dbg_value(ptr %i.gg, !974, !DIExpression(), !4401)
  %.neg24.i.i = sext i1 %i.gd to i64, !dbg !4433
    #dbg_value(i1 %i.gd, !971, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4395)
    #dbg_value(i64 %.neg24.i.i, !977, !DIExpression(), !4397)
  %i.gh = getelementptr [2 x i8], ptr %.sroa.015.06.i, i64 %.neg24.i.i, !dbg !4434 ; 2 uses
    #dbg_value(ptr %i.gh, !956, !DIExpression(), !4393)
    #dbg_value(ptr %i.gh, !968, !DIExpression(), !4395)
    #dbg_value(ptr %i.gh, !974, !DIExpression(), !4397)
  %i.gi = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -2, !dbg !4435
    #dbg_value(ptr %i.gi, !960, !DIExpression(), !4393)
    #dbg_value(ptr %i.gi, !985, !DIExpression(), !4403)
    #dbg_value(ptr %i.gh, !863, !DIExpression(), !4295)
    #dbg_value(ptr %i.gh, !854, !DIExpression(), !4293)
    #dbg_value(ptr %i.gh, !823, !DIExpression(), !4330)
    #dbg_value(ptr %i.gg, !863, !DIExpression(), !4299)
    #dbg_value(ptr %i.gg, !854, !DIExpression(), !4297)
    #dbg_value(ptr %i.gg, !825, !DIExpression(), !4331)
    #dbg_value(ptr %i.gi, !827, !DIExpression(), !4322)
    #dbg_value(ptr undef, !4284, !DIExpression(), !4332)
    #dbg_value(ptr undef, !4279, !DIExpression(), !4333)
    #dbg_value(ptr undef, !4334, !DIExpression(), !4338)
    #dbg_value(ptr undef, !4337, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4340)
  %exitcond.not.i = icmp eq i64 %i.fk, %i.d, !dbg !4436
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !4345

bb.j:                                             ; preds = %._crit_edge.i
  %i.gj = icmp ult ptr %i.fw, %i.fg, !dbg !4437   ; 3 uses
    #dbg_value(i1 %i.gj, !842, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4438)
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gj, ptr %i.fw, ptr %i.fu, !dbg !4439
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !4266, !DIExpression(), !4268)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !844, !DIExpression(), !4440)
  %i.gk = load i16, ptr %.sroa.06.0..sroa.011.0.i, align 1, !dbg !4441, !alias.scope !4256
  store i16 %i.gk, ptr %i.fx, align 1, !dbg !4441, !noalias !4256
  %i.gl = zext i1 %i.gj to i64, !dbg !4442
    #dbg_value(i64 %i.gl, !4312, !DIExpression(), !4324)
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.gl, !dbg !4443
    #dbg_value(ptr %i.gm, !817, !DIExpression(), !4326)
    #dbg_value(ptr %i.gm, !4309, !DIExpression(), !4324)
  %i.gn = xor i1 %i.gj, true, !dbg !4444
  %i.go = zext i1 %i.gn to i64, !dbg !4444
    #dbg_value(i64 %i.go, !4312, !DIExpression(), !4327)
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %i.go, !dbg !4445
    #dbg_value(ptr %i.gp, !819, !DIExpression(), !4329)
    #dbg_value(ptr %i.gp, !4309, !DIExpression(), !4327)
  br label %bb.k, !dbg !4446

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.fu, %._crit_edge.i ], [ %i.gp, %bb.j ], !dbg !4326
  %.sroa.06.1.i = phi ptr [ %i.fw, %._crit_edge.i ], [ %i.gm, %bb.j ], !dbg !4319
    #dbg_value(ptr %.sroa.06.1.i, !4309, !DIExpression(), !4324)
    #dbg_value(ptr %.sroa.06.1.i, !817, !DIExpression(), !4326)
    #dbg_value(ptr %.sroa.011.1.i, !4309, !DIExpression(), !4327)
    #dbg_value(ptr %.sroa.011.1.i, !819, !DIExpression(), !4329)
  %i.gq = icmp ne ptr %.sroa.06.1.i, %i.fg, !dbg !4447
  %i.gr = icmp ne ptr %.sroa.011.1.i, %i.fh
  %or.cond.i = select i1 %i.gq, i1 true, i1 %i.gr, !dbg !4447, !prof !1032
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, !dbg !4447, !prof !1032

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc unwind label %bb.m, !dbg !4448

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !4448

bb.m:                                             ; preds = %bb.l
  %i.gs = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !2208, !DIExpression(), !3654)
    #dbg_value(ptr undef, !2198, !DIExpression(), !3651)
    #dbg_value(ptr %2, !2218, !DIExpression(), !4449)
    #dbg_value(ptr %0, !2221, !DIExpression(), !4449)
    #dbg_value(i64 %1, !2222, !DIExpression(), !4449)
  %i.gt = shl nuw nsw i64 %1, 1, !dbg !4451
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %i.gt, i1 false), !dbg !4451, !noalias !4452
  resume { ptr, i32 } %i.gs, !dbg !4457

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !4458

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.05.087 = phi i64 [ %i.hq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
    #dbg_value(i64 %.sroa.05.087, !3664, !DIExpression(), !4190)
    #dbg_value(i64 %.sroa.05.087, !3687, !DIExpression(), !3688)
    #dbg_value(i64 %.sroa.05.087, !3693, !DIExpression(), !3694)
    #dbg_value(i64 %.sroa.05.087, !3645, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(i64 %.sroa.05.087, !3647, !DIExpression(), !4191)
    #dbg_value(i64 %.sroa.05.087, !3699, !DIExpression(), !4177)
    #dbg_value(i64 %.sroa.05.087, !3699, !DIExpression(), !4180)
    #dbg_value(i64 %.sroa.05.087, !3699, !DIExpression(), !4182)
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.087, !dbg !4192
    #dbg_value(ptr %i.gu, !3678, !DIExpression(), !3696)
  %.idx = shl nuw nsw i64 %.sroa.05.087, 1, !dbg !4193
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !4193 ; 4 uses
    #dbg_value(ptr %i.gv, !3679, !DIExpression(), !3696)
  %i.gw = load i16, ptr %i.gu, align 1, !dbg !4194 ; 4 uses
  store i16 %i.gw, ptr %i.gv, align 1, !dbg !4194
    #dbg_value(ptr poison, !2198, !DIExpression(), !4195)
    #dbg_value(ptr poison, !2208, !DIExpression(), !4199)
    #dbg_value(ptr poison, !2198, !DIExpression(), !4200)
    #dbg_value(ptr poison, !2208, !DIExpression(), !4203)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4204)
    #dbg_value(ptr poison, !2189, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4204)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4205)
    #dbg_value(ptr poison, !2218, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4205)
    #dbg_value(ptr undef, !2218, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4205)
    #dbg_value(ptr undef, !2189, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4204)
    #dbg_value(ptr %2, !2175, !DIExpression(), !4207)
    #dbg_value(ptr %i.gv, !2176, !DIExpression(), !4207)
    #dbg_value(ptr %i.gv, !2226, !DIExpression(), !4208)
    #dbg_value(ptr poison, !2177, !DIExpression(), !4207)
    #dbg_value(i64 1, !2229, !DIExpression(), !4208)
    #dbg_value(i64 1, !2232, !DIExpression(), !4210)
    #dbg_value(i64 1, !2229, !DIExpression(), !4212)
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -2, !dbg !4214 ; 3 uses
    #dbg_value(ptr %i.gx, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.gx, !2226, !DIExpression(), !4212)
  %i.gy = trunc i16 %i.gw to i8, !dbg !4216       ; 4 uses
  %i.gz = lshr i16 %i.gw, 8, !dbg !4216
  %i.ha = trunc nuw i16 %i.gz to i8, !dbg !4216   ; 2 uses
  %.val22.i = load i8, ptr %i.gx, align 1, !dbg !4216, !noundef !124 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gv, i64 -1, !dbg !4216
  %.val23.i = load i8, ptr %i.hb, align 1, !dbg !4216
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4217)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4217)
    #dbg_value(ptr poison, !288, !DIExpression(), !4217)
    #dbg_value(ptr poison, !298, !DIExpression(), !4219)
    #dbg_value(ptr poison, !304, !DIExpression(), !4219)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4221)
    #dbg_value(ptr poison, !341, !DIExpression(), !4223)
    #dbg_value(ptr poison, !348, !DIExpression(), !4223)
    #dbg_value(ptr poison, !351, !DIExpression(), !4225)
    #dbg_value(ptr poison, !357, !DIExpression(), !4225)
  %i.hc = icmp eq i8 %.val22.i, %i.gy, !dbg !4227
    #dbg_value(i8 poison, !336, !DIExpression(), !4228)
  %i.hd = icmp ugt i8 %.val23.i, %i.ha, !dbg !4229
  %i.he = icmp ugt i8 %.val22.i, %i.gy, !dbg !4229
  %i.hf = select i1 %i.hc, i1 %i.hd, i1 %i.he, !dbg !4227
  br i1 %i.hf, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !4216

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %i.gv, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
    #dbg_value(ptr %i.gx, !2226, !DIExpression(), !4212)
    #dbg_value(ptr %i.gx, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.gx, !2235, !DIExpression(), !4210)
    #dbg_value(ptr %i.gv, !2236, !DIExpression(), !4210)
  %i.hg = load i16, ptr %i.gx, align 1, !dbg !4230
  store i16 %i.hg, ptr %i.gv, align 1, !dbg !4230
  %i.hh = icmp eq i64 %.sroa.05.087, 1, !dbg !4231
  br i1 %i.hh, label %._crit_edge, label %.lr.ph107, !dbg !4231

.preheader:                                       ; preds = %.lr.ph107
    #dbg_value(ptr %.sroa.0.0.i79106, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
    #dbg_value(ptr %i.hk, !2226, !DIExpression(), !4212)
    #dbg_value(ptr %i.hk, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.hk, !2235, !DIExpression(), !4210)
    #dbg_value(ptr %.sroa.0.0.i79106, !2236, !DIExpression(), !4210)
  %i.hi = load i16, ptr %i.hk, align 1, !dbg !4230
  store i16 %i.hi, ptr %.sroa.0.0.i79106, align 1, !dbg !4230
    #dbg_value(ptr %i.hk, !2189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4204)
  %i.hj = icmp eq ptr %i.hk, %2, !dbg !4231
  br i1 %i.hj, label %._crit_edge, label %.lr.ph107, !dbg !4231

.lr.ph107:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i79106 = phi ptr [ %i.hk, %.preheader ], [ %i.gx, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79106, !2226, !DIExpression(), !4212)
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0.0.i79106, i64 -2, !dbg !4232 ; 4 uses
    #dbg_value(ptr %i.hk, !2178, !DIExpression(), !4215)
    #dbg_value(ptr %i.hk, !2226, !DIExpression(), !4212)
  %.val18.i = load i8, ptr %i.hk, align 1, !dbg !4233, !noundef !124 ; 2 uses
  %i.hl = getelementptr i8, ptr %.sroa.0.0.i79106, i64 -1, !dbg !4233
  %.val19.i = load i8, ptr %i.hl, align 1, !dbg !4233
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(ptr poison, !279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(ptr poison, !288, !DIExpression(), !4234)
    #dbg_value(ptr poison, !298, !DIExpression(), !4236)
    #dbg_value(ptr poison, !304, !DIExpression(), !4236)
    #dbg_declare(ptr poison, !310, !DIExpression(), !4238)
    #dbg_value(ptr poison, !341, !DIExpression(), !4240)
    #dbg_value(ptr poison, !348, !DIExpression(), !4240)
    #dbg_value(ptr poison, !351, !DIExpression(), !4242)
    #dbg_value(ptr poison, !357, !DIExpression(), !4242)
  %i.hm = icmp eq i8 %.val18.i, %i.gy, !dbg !4244
    #dbg_value(i8 poison, !336, !DIExpression(), !4245)
  %i.hn = icmp ugt i8 %.val19.i, %i.ha, !dbg !4246
  %i.ho = icmp ugt i8 %.val18.i, %i.gy, !dbg !4246
  %i.hp = select i1 %i.hm, i1 %i.hn, i1 %i.ho, !dbg !4244
  br i1 %i.hp, label %.preheader, label %._crit_edge, !dbg !4233

._crit_edge:                                      ; preds = %.preheader, %.lr.ph107, %.preheader.preheader
  %.sroa.0.0.i79.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i79106, %.lr.ph107 ], !dbg !4207
    #dbg_value(ptr undef, !2208, !DIExpression(), !4199)
    #dbg_value(ptr undef, !2198, !DIExpression(), !4195)
    #dbg_value(ptr undef, !2218, !DIExpression(), !4205)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa, !2221, !DIExpression(), !4205)
    #dbg_value(i64 1, !2222, !DIExpression(), !4205)
  store i16 %i.gw, ptr %.sroa.0.0.i79.lcssa, align 1, !dbg !4247, !noalias !4248
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !4253

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.hq = add nuw nsw i64 %.sroa.05.087, 1, !dbg !4254 ; 2 uses
    #dbg_value(i64 %i.hq, !3645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4185)
    #dbg_value(ptr undef, !3669, !DIExpression(), !3673)
    #dbg_value(ptr undef, !3663, !DIExpression(), !3672)
    #dbg_value(ptr undef, !3655, !DIExpression(), !3659)
    #dbg_value(ptr undef, !3658, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4186)
  %exitcond.not = icmp eq i64 %i.hq, %i.d, !dbg !4187
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !3660
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4459 {
bb.a:
    #dbg_value(ptr poison, !2350, !DIExpression(), !4501)
    #dbg_value(ptr poison, !2360, !DIExpression(), !4504)
    #dbg_value(ptr poison, !4505, !DIExpression(), !4509)
    #dbg_value(ptr poison, !4513, !DIExpression(), !4522)
    #dbg_value(ptr poison, !4519, !DIExpression(), !4523)
    #dbg_value(ptr %0, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4524)
    #dbg_value(i64 %1, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4524)
    #dbg_value(ptr %2, !4473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4524)
    #dbg_value(i64 %3, !4473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4524)
    #dbg_value(ptr %4, !4474, !DIExpression(), !4524)
    #dbg_value(i64 1, !4525, !DIExpression(), !4530)
    #dbg_value(i64 1, !4525, !DIExpression(), !4532)
    #dbg_value(i64 1, !4534, !DIExpression(), !4538)
    #dbg_value(i64 1, !4540, !DIExpression(), !4544)
    #dbg_value(i64 1, !4525, !DIExpression(), !4546)
    #dbg_value(i64 %1, !4475, !DIExpression(), !4548)
    #dbg_value(i64 %1, !4549, !DIExpression(), !4553)
  %i.a = icmp samesign ult i64 %1, 2, !dbg !4555
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b, !dbg !4555

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !4556
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !4557
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !4557

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !4477, !DIExpression(), !4558)
    #dbg_value(ptr %0, !4552, !DIExpression(), !4559)
    #dbg_value(ptr %0, !4552, !DIExpression(), !4561)
    #dbg_value(ptr %0, !4552, !DIExpression(), !4563)
    #dbg_value(ptr %0, !4552, !DIExpression(), !4565)
  %i.d = lshr i64 %1, 1, !dbg !4567               ; 12 uses
    #dbg_value(i64 %i.d, !4479, !DIExpression(), !4568)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4559)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4569)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4561)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4571)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4563)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4573)
    #dbg_value(ptr %2, !4481, !DIExpression(), !4575)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4553)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4569)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4576)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4571)
    #dbg_value(ptr %2, !4529, !DIExpression(), !4530)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4573)
    #dbg_value(ptr %2, !4552, !DIExpression(), !4578)
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !4580
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !4580

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !4581
  unreachable, !dbg !4581

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !4582
  br i1 %i.f, label %bb.h, label %bb.g, !dbg !4582

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1, !dbg !4583 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !4584
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !4585
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !4586
    #dbg_value(i64 %1, !4549, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4576)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !4587
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !4588
    #dbg_value(i64 8, !4483, !DIExpression(), !4589)
  br label %bb.i, !dbg !4590

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !4528, !DIExpression(), !4530)
  %i.k = load i64, ptr %0, align 4, !dbg !4591
  store i64 %i.k, ptr %2, align 4, !dbg !4591
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !4592
    #dbg_value(ptr %i.l, !4528, !DIExpression(), !4532)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !4593
    #dbg_value(ptr %i.m, !4529, !DIExpression(), !4532)
  %i.n = load i64, ptr %i.l, align 4, !dbg !4594
  store i64 %i.n, ptr %i.m, align 4, !dbg !4594
    #dbg_value(i64 1, !4483, !DIExpression(), !4589)
  br label %bb.i, !dbg !4595

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !1069, !DIExpression(), !4596)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4598)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4600)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4602)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4604)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4606)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4608)
    #dbg_value(ptr %0, !1109, !DIExpression(), !4610)
    #dbg_value(ptr %2, !1075, !DIExpression(), !4596)
    #dbg_value(ptr %2, !1130, !DIExpression(), !4612)
    #dbg_value(ptr %2, !1139, !DIExpression(), !4614)
    #dbg_value(ptr %2, !1139, !DIExpression(), !4616)
    #dbg_value(ptr %2, !1139, !DIExpression(), !4618)
    #dbg_value(ptr poison, !1076, !DIExpression(), !4596)
    #dbg_value(i64 1, !1114, !DIExpression(), !4598)
    #dbg_value(i64 3, !1114, !DIExpression(), !4600)
    #dbg_value(i64 2, !1114, !DIExpression(), !4602)
    #dbg_value(i64 1, !1136, !DIExpression(), !4612)
    #dbg_value(i64 1, !1142, !DIExpression(), !4614)
    #dbg_value(i64 1, !1136, !DIExpression(), !4620)
    #dbg_value(i64 2, !1142, !DIExpression(), !4616)
    #dbg_value(i64 1, !1136, !DIExpression(), !4622)
    #dbg_value(i64 3, !1142, !DIExpression(), !4618)
    #dbg_value(i64 1, !1136, !DIExpression(), !4624)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4626
  %.val50.i = load i32, ptr %i.o, align 4, !dbg !4627, !range !1157, !noundef !124 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 12, !dbg !4627
  %.val51.i = load i32, ptr %i.p, align 4, !dbg !4627
  %.val52.i = load i32, ptr %0, align 4, !dbg !4627, !range !1157, !noundef !124 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 4, !dbg !4627
  %.val53.i = load i32, ptr %i.q, align 4, !dbg !4627
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4628)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4628)
    #dbg_value(ptr poison, !1163, !DIExpression(), !4628)
    #dbg_value(ptr poison, !1173, !DIExpression(), !4630)
    #dbg_value(ptr poison, !1177, !DIExpression(), !4630)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !4632)
    #dbg_value(ptr poison, !1191, !DIExpression(), !4634)
    #dbg_value(ptr poison, !1197, !DIExpression(), !4634)
    #dbg_value(ptr poison, !1200, !DIExpression(), !4636)
    #dbg_value(ptr poison, !1206, !DIExpression(), !4636)
  %i.r = icmp eq i32 %.val50.i, %.val52.i, !dbg !4638
    #dbg_value(i8 poison, !1186, !DIExpression(), !4639)
  %i.s = icmp ult i32 %.val51.i, %.val53.i, !dbg !4640
  %i.t = icmp samesign ult i32 %.val50.i, %.val52.i, !dbg !4640
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t, !dbg !4638 ; 2 uses
    #dbg_value(i1 %i.u, !1077, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4641)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4642
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4643
  %.val46.i = load i32, ptr %i.v, align 4, !dbg !4644, !range !1157, !noundef !124 ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 28, !dbg !4644
  %.val47.i = load i32, ptr %i.x, align 4, !dbg !4644
  %.val48.i = load i32, ptr %i.w, align 4, !dbg !4644, !range !1157, !noundef !124 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 20, !dbg !4644
  %.val49.i = load i32, ptr %i.y, align 4, !dbg !4644
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4645)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4645)
    #dbg_value(ptr poison, !1163, !DIExpression(), !4645)
    #dbg_value(ptr poison, !1173, !DIExpression(), !4647)
    #dbg_value(ptr poison, !1177, !DIExpression(), !4647)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !4649)
    #dbg_value(ptr poison, !1191, !DIExpression(), !4651)
    #dbg_value(ptr poison, !1197, !DIExpression(), !4651)
    #dbg_value(ptr poison, !1200, !DIExpression(), !4653)
    #dbg_value(ptr poison, !1206, !DIExpression(), !4653)
  %i.z = icmp eq i32 %.val46.i, %.val48.i, !dbg !4655
    #dbg_value(i8 poison, !1186, !DIExpression(), !4656)
  %i.aa = icmp ult i32 %.val47.i, %.val49.i, !dbg !4657
  %i.ab = icmp samesign ult i32 %.val46.i, %.val48.i, !dbg !4657
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab, !dbg !4655 ; 2 uses
    #dbg_value(i1 %i.ac, !1079, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4658)
  %i.ad = zext i1 %i.u to i64, !dbg !4659
    #dbg_value(i64 %i.ad, !1115, !DIExpression(), !4604)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad, !dbg !4660 ; 4 uses
    #dbg_value(ptr %i.ae, !1081, !DIExpression(), !4661)
  %i.af = xor i1 %i.u, true, !dbg !4662
  %i.ag = zext i1 %i.af to i64, !dbg !4662
    #dbg_value(i64 %i.ag, !1115, !DIExpression(), !4606)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag, !dbg !4663 ; 5 uses
    #dbg_value(ptr %i.ah, !1083, !DIExpression(), !4664)
  %i.ai = select i1 %i.ac, i64 3, i64 2, !dbg !4665
    #dbg_value(i64 %i.ai, !1115, !DIExpression(), !4608)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai, !dbg !4666 ; 5 uses
    #dbg_value(ptr %i.aj, !1085, !DIExpression(), !4667)
  %i.ak = select i1 %i.ac, i64 2, i64 3, !dbg !4668
    #dbg_value(i64 %i.ak, !1115, !DIExpression(), !4610)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak, !dbg !4669 ; 4 uses
    #dbg_value(ptr %i.al, !1087, !DIExpression(), !4670)
  %.val42.i = load i32, ptr %i.aj, align 4, !dbg !4671, !range !1157, !noundef !124 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 4, !dbg !4671
  %.val43.i = load i32, ptr %i.am, align 4, !dbg !4671
  %.val44.i = load i32, ptr %i.ae, align 4, !dbg !4671, !range !1157, !noundef !124 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 4, !dbg !4671
  %.val45.i = load i32, ptr %i.an, align 4, !dbg !4671
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4672)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4672)
    #dbg_value(ptr poison, !1163, !DIExpression(), !4672)
    #dbg_value(ptr poison, !1173, !DIExpression(), !4674)
    #dbg_value(ptr poison, !1177, !DIExpression(), !4674)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !4676)
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
    #dbg_value(ptr poison, !1304, !DIExpression(), !4922)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4923)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4924)
  %i.df = select i1 %i.cy, ptr %i.cq, ptr %i.cl, !dbg !4925, !unpredictable !124
    #dbg_value(ptr %i.df, !1093, !DIExpression(), !4926)
    #dbg_value(ptr %i.df, !1135, !DIExpression(), !4827)
    #dbg_value(i1 %i.de, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4927)
    #dbg_value(ptr %i.co, !1284, !DIExpression(), !4927)
    #dbg_value(ptr %i.cs, !1285, !DIExpression(), !4927)
    #dbg_value(ptr %i.co, !1286, !DIExpression(), !4929)
    #dbg_value(ptr %i.cs, !1301, !DIExpression(), !4930)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4931)
    #dbg_value(ptr undef, !1274, !DIExpression(), !4932)
    #dbg_value(ptr poison, !1304, !DIExpression(), !4933)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4934)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4935)
  %i.dg = select i1 %i.de, ptr %i.co, ptr %i.cs, !dbg !4936, !unpredictable !124
    #dbg_value(ptr %i.dg, !1095, !DIExpression(), !4937)
    #dbg_value(ptr %i.dg, !1135, !DIExpression(), !4839)
    #dbg_value(i1 %i.de, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4938)
    #dbg_value(ptr %i.cq, !1284, !DIExpression(), !4938)
    #dbg_value(ptr %i.co, !1285, !DIExpression(), !4938)
    #dbg_value(ptr %i.cq, !1286, !DIExpression(), !4940)
    #dbg_value(ptr %i.co, !1301, !DIExpression(), !4941)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4942)
    #dbg_value(ptr undef, !1274, !DIExpression(), !4943)
    #dbg_value(ptr poison, !1304, !DIExpression(), !4944)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4945)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4946)
  %i.dh = select i1 %i.de, ptr %i.cq, ptr %i.co, !dbg !4947, !unpredictable !124
    #dbg_value(i1 %i.cy, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4948)
    #dbg_value(ptr %i.cl, !1284, !DIExpression(), !4948)
    #dbg_value(ptr %i.dh, !1285, !DIExpression(), !4948)
    #dbg_value(ptr %i.cl, !1286, !DIExpression(), !4950)
    #dbg_value(ptr %i.dh, !1301, !DIExpression(), !4951)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4952)
    #dbg_value(ptr undef, !1274, !DIExpression(), !4953)
    #dbg_value(ptr poison, !1304, !DIExpression(), !4954)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4955)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4956)
  %i.di = select i1 %i.cy, ptr %i.cl, ptr %i.dh, !dbg !4957, !unpredictable !124 ; 4 uses
    #dbg_value(ptr %i.di, !1097, !DIExpression(), !4958)
    #dbg_value(i1 %i.cy, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4959)
    #dbg_value(ptr %i.co, !1284, !DIExpression(), !4959)
    #dbg_value(ptr %i.cq, !1285, !DIExpression(), !4959)
    #dbg_value(ptr %i.co, !1286, !DIExpression(), !4961)
    #dbg_value(ptr %i.cq, !1301, !DIExpression(), !4962)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4963)
    #dbg_value(ptr undef, !1274, !DIExpression(), !4964)
    #dbg_value(ptr poison, !1304, !DIExpression(), !4965)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4966)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4967)
  %i.dj = select i1 %i.cy, ptr %i.co, ptr %i.cq, !dbg !4968, !unpredictable !124
    #dbg_value(i1 %i.de, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4969)
    #dbg_value(ptr %i.cs, !1284, !DIExpression(), !4969)
    #dbg_value(ptr %i.dj, !1285, !DIExpression(), !4969)
    #dbg_value(ptr %i.cs, !1286, !DIExpression(), !4971)
    #dbg_value(ptr %i.dj, !1301, !DIExpression(), !4972)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4973)
    #dbg_value(ptr undef, !1274, !DIExpression(), !4974)
    #dbg_value(ptr poison, !1304, !DIExpression(), !4975)
    #dbg_value(ptr poison, !1306, !DIExpression(), !4976)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4977)
  %i.dk = select i1 %i.de, ptr %i.cs, ptr %i.dj, !dbg !4978, !unpredictable !124 ; 4 uses
    #dbg_value(ptr %i.dk, !1099, !DIExpression(), !4979)
  %.val.i75 = load i32, ptr %i.dk, align 4, !dbg !4980, !range !1157, !noundef !124 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4, !dbg !4980
  %.val35.i76 = load i32, ptr %i.dl, align 4, !dbg !4980
  %.val36.i77 = load i32, ptr %i.di, align 4, !dbg !4980, !range !1157, !noundef !124 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 4, !dbg !4980
  %.val37.i78 = load i32, ptr %i.dm, align 4, !dbg !4980
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4981)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4981)
    #dbg_value(ptr poison, !1163, !DIExpression(), !4981)
    #dbg_value(ptr poison, !1173, !DIExpression(), !4983)
    #dbg_value(ptr poison, !1177, !DIExpression(), !4983)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !4985)
    #dbg_value(ptr poison, !1191, !DIExpression(), !4987)
    #dbg_value(ptr poison, !1197, !DIExpression(), !4987)
    #dbg_value(ptr poison, !1200, !DIExpression(), !4989)
    #dbg_value(ptr poison, !1206, !DIExpression(), !4989)
  %i.dn = icmp eq i32 %.val.i75, %.val36.i77, !dbg !4991
    #dbg_value(i8 poison, !1186, !DIExpression(), !4992)
  %i.do = icmp ult i32 %.val35.i76, %.val37.i78, !dbg !4993
  %i.dp = icmp samesign ult i32 %.val.i75, %.val36.i77, !dbg !4993
  %i.dq = select i1 %i.dn, i1 %i.do, i1 %i.dp, !dbg !4991 ; 2 uses
    #dbg_value(i1 %i.dq, !1101, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4994)
    #dbg_value(i1 %i.dq, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4995)
    #dbg_value(ptr %i.dk, !1284, !DIExpression(), !4995)
    #dbg_value(ptr %i.di, !1285, !DIExpression(), !4995)
    #dbg_value(ptr %i.dk, !1286, !DIExpression(), !4997)
    #dbg_value(ptr %i.di, !1301, !DIExpression(), !4998)
    #dbg_value(ptr undef, !1302, !DIExpression(), !4999)
    #dbg_value(ptr undef, !1274, !DIExpression(), !5000)
    #dbg_value(ptr poison, !1304, !DIExpression(), !5001)
    #dbg_value(ptr poison, !1306, !DIExpression(), !5002)
    #dbg_value(ptr poison, !1308, !DIExpression(), !5003)
  %i.dr = select i1 %i.dq, ptr %i.dk, ptr %i.di, !dbg !5004, !unpredictable !124
    #dbg_value(ptr %i.dr, !1103, !DIExpression(), !5005)
    #dbg_value(ptr %i.dr, !1135, !DIExpression(), !4835)
    #dbg_value(i1 %i.dq, !1283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5006)
    #dbg_value(ptr %i.di, !1284, !DIExpression(), !5006)
    #dbg_value(ptr %i.dk, !1285, !DIExpression(), !5006)
    #dbg_value(ptr %i.di, !1286, !DIExpression(), !5008)
    #dbg_value(ptr %i.dk, !1301, !DIExpression(), !5009)
    #dbg_value(ptr undef, !1302, !DIExpression(), !5010)
    #dbg_value(ptr undef, !1274, !DIExpression(), !5011)
    #dbg_value(ptr poison, !1304, !DIExpression(), !5012)
    #dbg_value(ptr poison, !1306, !DIExpression(), !5013)
    #dbg_value(ptr poison, !1308, !DIExpression(), !5014)
  %i.ds = select i1 %i.dq, ptr %i.di, ptr %i.dk, !dbg !5015, !unpredictable !124
    #dbg_value(ptr %i.ds, !1105, !DIExpression(), !5016)
    #dbg_value(ptr %i.ds, !1135, !DIExpression(), !4837)
  %i.dt = load i64, ptr %i.df, align 4, !dbg !5017
  store i64 %i.dt, ptr %i.bu, align 4, !dbg !5017
  %i.du = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !5018
    #dbg_value(ptr %i.du, !1130, !DIExpression(), !4835)
  %i.dv = load i64, ptr %i.dr, align 4, !dbg !5019
  store i64 %i.dv, ptr %i.du, align 4, !dbg !5019
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !5020
    #dbg_value(ptr %i.dw, !1130, !DIExpression(), !4837)
  %i.dx = load i64, ptr %i.ds, align 4, !dbg !5021
  store i64 %i.dx, ptr %i.dw, align 4, !dbg !5021
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !5022
    #dbg_value(ptr %i.dy, !1130, !DIExpression(), !4839)
  %i.dz = load i64, ptr %i.dg, align 4, !dbg !5023
  store i64 %i.dz, ptr %i.dy, align 4, !dbg !5023
    #dbg_value(i64 4, !4483, !DIExpression(), !4589)
  br label %bb.i, !dbg !4595

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.h ], [ 1, %bb.g ], !dbg !4575 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !4483, !DIExpression(), !4589)
    #dbg_value(i64 0, !4485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 2, !4485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5024)
    #dbg_value(i64 0, !4485, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5024)
    #dbg_value(i64 %i.d, !4485, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5024)
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
    #dbg_value(i64 1, !4485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 0, !4487, !DIExpression(), !5025)
    #dbg_value(i64 0, !4549, !DIExpression(), !4565)
    #dbg_value(i64 0, !4549, !DIExpression(), !4578)
    #dbg_value(ptr %0, !4489, !DIExpression(), !5026)
    #dbg_value(ptr %0, !4552, !DIExpression(), !5027)
    #dbg_value(ptr %2, !4491, !DIExpression(), !5029)
    #dbg_value(ptr %2, !4552, !DIExpression(), !5030)
    #dbg_value(ptr %2, !4552, !DIExpression(), !5032)
    #dbg_value(i64 %i.d, !4493, !DIExpression(), !5034)
    #dbg_value(i64 %.sroa.0.0, !4495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(i64 %i.d, !4495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5035)
    #dbg_value(ptr undef, !4519, !DIExpression(), !4523)
    #dbg_value(ptr undef, !4513, !DIExpression(), !4522)
    #dbg_value(ptr undef, !4505, !DIExpression(), !4509)
    #dbg_value(ptr undef, !4508, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5036)
  %i.eb = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !5037
  br i1 %i.eb, label %.lr.ph, label %.loopexit, !dbg !4510

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.i
    #dbg_value(i64 2, !4485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 %i.d, !4487, !DIExpression(), !5025)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4565)
    #dbg_value(i64 %i.d, !4549, !DIExpression(), !4578)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !5038
    #dbg_value(ptr %i.ec, !4489, !DIExpression(), !5026)
    #dbg_value(ptr %i.ec, !4552, !DIExpression(), !5027)
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %i.d, !dbg !5039 ; 6 uses
    #dbg_value(ptr %i.ed, !4491, !DIExpression(), !5029)
    #dbg_value(ptr %i.ed, !4552, !DIExpression(), !5030)
    #dbg_value(ptr %i.ed, !4552, !DIExpression(), !5032)
    #dbg_value(i64 %i.ea, !4493, !DIExpression(), !5034)
    #dbg_value(i64 %.sroa.0.0, !4495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(i64 %i.ea, !4495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5035)
    #dbg_value(ptr undef, !4519, !DIExpression(), !4523)
    #dbg_value(ptr undef, !4513, !DIExpression(), !4522)
    #dbg_value(ptr undef, !4505, !DIExpression(), !4509)
    #dbg_value(ptr undef, !4508, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5036)
  %i.ee = icmp samesign ult i64 %.sroa.0.0, %i.ea, !dbg !5037
  br i1 %i.ee, label %.lr.ph.1, label %.loopexit.1, !dbg !4510

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1
  %.sroa.05.087.1 = phi i64 [ %i.fb, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
    #dbg_value(i64 %.sroa.05.087.1, !4514, !DIExpression(), !5040)
    #dbg_value(i64 %.sroa.05.087.1, !4537, !DIExpression(), !4538)
    #dbg_value(i64 %.sroa.05.087.1, !4543, !DIExpression(), !4544)
    #dbg_value(i64 %.sroa.05.087.1, !4495, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(i64 %.sroa.05.087.1, !4497, !DIExpression(), !5041)
    #dbg_value(i64 %.sroa.05.087.1, !4549, !DIExpression(), !5027)
    #dbg_value(i64 %.sroa.05.087.1, !4549, !DIExpression(), !5030)
    #dbg_value(i64 %.sroa.05.087.1, !4549, !DIExpression(), !5032)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.05.087.1, !dbg !5042
    #dbg_value(ptr %i.ef, !4528, !DIExpression(), !4546)
  %.idx114 = shl nuw nsw i64 %.sroa.05.087.1, 3, !dbg !5043
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx114, !dbg !5043 ; 4 uses
    #dbg_value(ptr %i.eg, !4529, !DIExpression(), !4546)
  %i.eh = load i64, ptr %i.ef, align 4, !dbg !5044 ; 4 uses
  store i64 %i.eh, ptr %i.eg, align 4, !dbg !5044
    #dbg_value(ptr poison, !2350, !DIExpression(), !5045)
    #dbg_value(ptr poison, !2360, !DIExpression(), !5049)
    #dbg_value(ptr poison, !2350, !DIExpression(), !5050)
    #dbg_value(ptr poison, !2360, !DIExpression(), !5053)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5054)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5054)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5055)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5055)
    #dbg_value(ptr undef, !2370, !DIExpression(), !5055)
    #dbg_value(ptr undef, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5054)
    #dbg_value(ptr %i.ed, !2327, !DIExpression(), !5057)
    #dbg_value(ptr %i.eg, !2328, !DIExpression(), !5057)
    #dbg_value(ptr %i.eg, !2378, !DIExpression(), !5058)
    #dbg_value(ptr poison, !2329, !DIExpression(), !5057)
    #dbg_value(i64 1, !2381, !DIExpression(), !5058)
    #dbg_value(i64 1, !2384, !DIExpression(), !5060)
    #dbg_value(i64 1, !2381, !DIExpression(), !5062)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -8, !dbg !5064 ; 3 uses
    #dbg_value(ptr %i.ei, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.ei, !2378, !DIExpression(), !5062)
  %i.ej = trunc i64 %i.eh to i32, !dbg !5066      ; 4 uses
  %i.ek = lshr i64 %i.eh, 32, !dbg !5066
  %i.el = trunc nuw i64 %i.ek to i32, !dbg !5066  ; 2 uses
  %.val22.i.1 = load i32, ptr %i.ei, align 4, !dbg !5066, !range !1157, !noundef !124 ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 -4, !dbg !5066
  %.val23.i.1 = load i32, ptr %i.em, align 4, !dbg !5066
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5067)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5067)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5067)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5069)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5069)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5071)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5073)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5073)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5075)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5075)
  %i.en = icmp eq i32 %.val22.i.1, %i.ej, !dbg !5077
    #dbg_value(i8 poison, !1186, !DIExpression(), !5078)
  %i.eo = icmp ugt i32 %.val23.i.1, %i.el, !dbg !5079
  %i.ep = icmp samesign ugt i32 %.val22.i.1, %i.ej, !dbg !5079
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep, !dbg !5077
  br i1 %i.eq, label %.preheader.1.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5066

.preheader.1.preheader:                           ; preds = %.lr.ph.1
    #dbg_value(ptr %i.eg, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
    #dbg_value(ptr %i.ei, !2378, !DIExpression(), !5062)
    #dbg_value(ptr %i.ei, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.ei, !2387, !DIExpression(), !5060)
    #dbg_value(ptr %i.eg, !2388, !DIExpression(), !5060)
  %i.er = load i64, ptr %i.ei, align 4, !dbg !5080
  store i64 %i.er, ptr %i.eg, align 4, !dbg !5080
  %i.es = icmp eq i64 %.sroa.05.087.1, 1, !dbg !5081
  br i1 %i.es, label %._crit_edge111, label %.lr.ph110, !dbg !5081

.preheader.1:                                     ; preds = %.lr.ph110
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
    #dbg_value(ptr %i.ev, !2378, !DIExpression(), !5062)
    #dbg_value(ptr %i.ev, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.ev, !2387, !DIExpression(), !5060)
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2388, !DIExpression(), !5060)
  %i.et = load i64, ptr %i.ev, align 4, !dbg !5080
  store i64 %i.et, ptr %.sroa.0.0.i79.1109, align 4, !dbg !5080
    #dbg_value(ptr %i.ev, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
  %i.eu = icmp eq ptr %i.ev, %i.ed, !dbg !5081
  br i1 %i.eu, label %._crit_edge111, label %.lr.ph110, !dbg !5081

.lr.ph110:                                        ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i79.1109 = phi ptr [ %i.ev, %.preheader.1 ], [ %i.ei, %.preheader.1.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79.1109, !2378, !DIExpression(), !5062)
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.i79.1109, i64 -8, !dbg !5082 ; 4 uses
    #dbg_value(ptr %i.ev, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.ev, !2378, !DIExpression(), !5062)
  %.val18.i.1 = load i32, ptr %i.ev, align 4, !dbg !5083, !range !1157, !noundef !124 ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.0.0.i79.1109, i64 -4, !dbg !5083
  %.val19.i.1 = load i32, ptr %i.ew, align 4, !dbg !5083
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5084)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5084)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5084)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5086)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5086)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5088)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5090)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5090)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5092)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5092)
  %i.ex = icmp eq i32 %.val18.i.1, %i.ej, !dbg !5094
    #dbg_value(i8 poison, !1186, !DIExpression(), !5095)
  %i.ey = icmp ugt i32 %.val19.i.1, %i.el, !dbg !5096
  %i.ez = icmp samesign ugt i32 %.val18.i.1, %i.ej, !dbg !5096
  %i.fa = select i1 %i.ex, i1 %i.ey, i1 %i.ez, !dbg !5094
  br i1 %i.fa, label %.preheader.1, label %._crit_edge111, !dbg !5083

._crit_edge111:                                   ; preds = %.preheader.1, %.lr.ph110, %.preheader.1.preheader
  %.sroa.0.0.i79.lcssa.1 = phi ptr [ %i.ed, %.preheader.1.preheader ], [ %i.ed, %.preheader.1 ], [ %.sroa.0.0.i79.1109, %.lr.ph110 ], !dbg !5057
    #dbg_value(ptr undef, !2360, !DIExpression(), !5049)
    #dbg_value(ptr undef, !2350, !DIExpression(), !5045)
    #dbg_value(ptr undef, !2370, !DIExpression(), !5055)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa.1, !2373, !DIExpression(), !5055)
    #dbg_value(i64 1, !2374, !DIExpression(), !5055)
  store i64 %i.eh, ptr %.sroa.0.0.i79.lcssa.1, align 4, !dbg !5097, !noalias !5098
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5103

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1: ; preds = %._crit_edge111, %.lr.ph.1
  %i.fb = add nuw nsw i64 %.sroa.05.087.1, 1, !dbg !5104 ; 2 uses
    #dbg_value(i64 %i.fb, !4495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(ptr undef, !4519, !DIExpression(), !4523)
    #dbg_value(ptr undef, !4513, !DIExpression(), !4522)
    #dbg_value(ptr undef, !4505, !DIExpression(), !4509)
    #dbg_value(ptr undef, !4508, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5036)
  %exitcond.1.not = icmp eq i64 %i.fb, %i.ea, !dbg !5037
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !4510

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, %.loopexit
    #dbg_value(ptr %2, !4499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5105)
    #dbg_value(ptr %0, !4499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5105)
    #dbg_value(i64 %1, !4499, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5106), !dbg !5109
    #dbg_value(ptr %0, !1640, !DIExpression(), !5110)
    #dbg_value(ptr %0, !1662, !DIExpression(), !5112)
    #dbg_value(ptr %0, !5113, !DIExpression(), !5118)
    #dbg_value(ptr %2, !1650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5110)
    #dbg_value(i64 %1, !1650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5110)
    #dbg_value(ptr poison, !1651, !DIExpression(), !5110)
    #dbg_value(i64 1, !5120, !DIExpression(), !5124)
    #dbg_value(i64 1, !5137, !DIExpression(), !5141)
    #dbg_value(i64 1, !1683, !DIExpression(), !5143)
    #dbg_value(i64 1, !1691, !DIExpression(), !5145)
    #dbg_value(i64 1, !1683, !DIExpression(), !5147)
    #dbg_value(i64 1, !1691, !DIExpression(), !5149)
    #dbg_value(i64 2, !5151, !DIExpression(), !5155)
    #dbg_value(i64 1, !5117, !DIExpression(), !5118)
    #dbg_value(i64 %1, !1652, !DIExpression(), !5157)
    #dbg_value(i64 %1, !5154, !DIExpression(), !5155)
    #dbg_value(ptr %2, !1654, !DIExpression(), !5158)
    #dbg_value(ptr %2, !5159, !DIExpression(), !5163)
    #dbg_value(ptr %2, !5159, !DIExpression(), !5165)
    #dbg_value(ptr %2, !5159, !DIExpression(), !5167)
    #dbg_value(i64 %i.d, !1656, !DIExpression(), !5169)
    #dbg_value(i64 %i.d, !5162, !DIExpression(), !5163)
    #dbg_value(i64 %i.d, !5162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5165)
    #dbg_value(i64 %1, !5162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5167)
    #dbg_value(i64 %1, !1707, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5170)
    #dbg_value(ptr %0, !1710, !DIExpression(), !5170)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !1668, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5172)
    #dbg_value(i64 0, !1670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5173)
    #dbg_value(i64 %i.d, !1670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5173)
    #dbg_value(ptr %2, !5159, !DIExpression(), !5174)
    #dbg_value(ptr %2, !1658, !DIExpression(), !5176)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !5159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5177)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !1660, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5179)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !1696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5145)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !1688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5143)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !1664, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5180)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !1696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5149)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !1688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5147)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !1666, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5181)
    #dbg_value(ptr undef, !5134, !DIExpression(), !5182)
    #dbg_value(ptr undef, !5129, !DIExpression(), !5183)
    #dbg_value(ptr undef, !5184, !DIExpression(), !5188)
    #dbg_value(ptr undef, !5187, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5190)
  %i.fc = add nsw i64 %1, -1, !dbg !5191          ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %i.fc), !1668, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5172)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !1666, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5181)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !1688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5147)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fc), !1696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5149)
    #dbg_value(i64 %i.fc, !5162, !DIExpression(), !5167)
    #dbg_value(i64 %i.fc, !1707, !DIExpression(), !5170)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fc, !dbg !5192
    #dbg_value(ptr %i.fd, !1668, !DIExpression(), !5172)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fc, !dbg !5193
    #dbg_value(ptr %i.fe, !1696, !DIExpression(), !5149)
    #dbg_value(ptr %i.fe, !1688, !DIExpression(), !5147)
    #dbg_value(ptr %i.fe, !1666, !DIExpression(), !5181)
    #dbg_value(ptr %i.ed, !5159, !DIExpression(), !5177)
    #dbg_value(ptr %i.ed, !1660, !DIExpression(), !5179)
    #dbg_value(ptr %i.ed, !1664, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5180)
    #dbg_value(ptr %i.ed, !1688, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5143)
    #dbg_value(ptr %i.ed, !1696, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5145)
  %i.ff = getelementptr i8, ptr %i.ed, i64 -8, !dbg !5194
    #dbg_value(ptr %i.ff, !1696, !DIExpression(), !5145)
    #dbg_value(ptr %i.ff, !1688, !DIExpression(), !5143)
    #dbg_value(ptr %i.ff, !1664, !DIExpression(), !5180)
  br label %.lr.ph.i, !dbg !5195

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fg = getelementptr i8, ptr %i.gh, i64 8, !dbg !5196 ; 2 uses
    #dbg_value(ptr %i.fg, !1672, !DIExpression(), !5197)
  %i.fh = getelementptr i8, ptr %i.gg, i64 8, !dbg !5198
    #dbg_value(ptr %i.fh, !1674, !DIExpression(), !5199)
  %i.fi = and i64 %1, 1, !dbg !5200
  %i.fj = icmp eq i64 %i.fi, 0, !dbg !5200
  br i1 %i.fj, label %bb.k, label %bb.j, !dbg !5201

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.fx, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.fk, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.ed, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.ff, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.fe, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.gi, %.lr.ph.i ], [ %i.fd, %.loopexit.1 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i, !5113, !DIExpression(), !5118)
    #dbg_value(ptr %.sroa.06.08.i, !5159, !DIExpression(), !5174)
    #dbg_value(ptr %.sroa.011.07.i, !5159, !DIExpression(), !5177)
    #dbg_value(ptr %.sroa.015.06.i, !1696, !DIExpression(), !5145)
    #dbg_value(ptr %.sroa.017.05.i, !1696, !DIExpression(), !5149)
    #dbg_value(ptr %.sroa.019.04.i, !1668, !DIExpression(), !5172)
    #dbg_value(i64 %.sroa.04.09.i, !5130, !DIExpression(), !5202)
    #dbg_value(i64 %.sroa.04.09.i, !5123, !DIExpression(), !5124)
    #dbg_value(i64 %.sroa.04.09.i, !5140, !DIExpression(), !5141)
  %i.fk = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !5203 ; 2 uses
    #dbg_value(i64 %i.fk, !1670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5173)
    #dbg_value(ptr %.sroa.06.08.i, !1720, !DIExpression(), !5204)
    #dbg_value(ptr %.sroa.06.08.i, !1739, !DIExpression(), !5206)
    #dbg_value(ptr %.sroa.011.07.i, !1730, !DIExpression(), !5204)
    #dbg_value(ptr %.sroa.011.07.i, !1739, !DIExpression(), !5208)
    #dbg_value(ptr %.sroa.0.010.i, !1731, !DIExpression(), !5204)
    #dbg_value(ptr %.sroa.0.010.i, !1747, !DIExpression(), !5210)
    #dbg_value(ptr poison, !1732, !DIExpression(), !5204)
    #dbg_value(i64 1, !1753, !DIExpression(), !5212)
    #dbg_value(i64 1, !1750, !DIExpression(), !5210)
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !dbg !5214, !range !1157, !alias.scope !5106, !noundef !124 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.011.07.i, i64 4, !dbg !5214
  %.sroa.011.0.val44.i = load i32, ptr %i.fl, align 4, !dbg !5214, !alias.scope !5106
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !dbg !5214, !range !1157, !alias.scope !5106, !noundef !124 ; 2 uses
  %i.fm = getelementptr i8, ptr %.sroa.06.08.i, i64 4, !dbg !5214
  %.sroa.06.0.val45.i = load i32, ptr %i.fm, align 4, !dbg !5214, !alias.scope !5106
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5215)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5215)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5215)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5217)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5217)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5219)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5221)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5221)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5223)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5223)
  %i.fn = icmp eq i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5225
    #dbg_value(i8 poison, !1186, !DIExpression(), !5226)
  %i.fo = icmp ult i32 %.sroa.011.0.val44.i, %.sroa.06.0.val45.i, !dbg !5227
  %i.fp = icmp samesign ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5227
  %i.fq = select i1 %i.fn, i1 %i.fo, i1 %i.fp, !dbg !5225 ; 3 uses
    #dbg_value(i1 %i.fq, !1733, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5228)
  %..i43.i = select i1 %i.fq, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !5229
  %i.fr = xor i1 %i.fq, true, !dbg !5230
    #dbg_value(i1 %i.fr, !1733, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5228)
    #dbg_value(ptr %..i43.i, !1756, !DIExpression(), !5212)
    #dbg_value(ptr %..i43.i, !1735, !DIExpression(), !5231)
    #dbg_value(ptr %.sroa.0.010.i, !1757, !DIExpression(), !5212)
  %i.fs = load i64, ptr %..i43.i, align 4, !dbg !5232, !alias.scope !5106, !noalias !5233
  store i64 %i.fs, ptr %.sroa.0.010.i, align 4, !dbg !5232, !noalias !5237
  %i.ft = zext i1 %i.fq to i64, !dbg !5238
    #dbg_value(i64 %i.ft, !1742, !DIExpression(), !5208)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i, i64 %i.ft, !dbg !5239 ; 4 uses
    #dbg_value(ptr %i.fu, !1730, !DIExpression(), !5204)
    #dbg_value(ptr %i.fu, !1739, !DIExpression(), !5208)
  %i.fv = zext i1 %i.fr to i64, !dbg !5240
    #dbg_value(i64 %i.fv, !1742, !DIExpression(), !5206)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i, i64 %i.fv, !dbg !5241 ; 5 uses
    #dbg_value(ptr %i.fw, !1720, !DIExpression(), !5204)
    #dbg_value(ptr %i.fw, !1739, !DIExpression(), !5206)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8, !dbg !5242 ; 2 uses
    #dbg_value(ptr %i.fx, !1731, !DIExpression(), !5204)
    #dbg_value(ptr %i.fx, !1747, !DIExpression(), !5210)
    #dbg_value(ptr %i.fw, !1658, !DIExpression(), !5176)
    #dbg_value(ptr %i.fw, !5159, !DIExpression(), !5174)
    #dbg_value(ptr %i.fu, !1660, !DIExpression(), !5179)
    #dbg_value(ptr %i.fu, !5159, !DIExpression(), !5177)
    #dbg_value(ptr %i.fx, !1640, !DIExpression(), !5110)
    #dbg_value(ptr %i.fx, !1662, !DIExpression(), !5112)
    #dbg_value(ptr %i.fx, !5113, !DIExpression(), !5118)
    #dbg_value(ptr %.sroa.015.06.i, !1789, !DIExpression(), !5243)
    #dbg_value(ptr %.sroa.015.06.i, !1801, !DIExpression(), !5245)
    #dbg_value(ptr %.sroa.015.06.i, !1807, !DIExpression(), !5247)
    #dbg_value(ptr %.sroa.017.05.i, !1792, !DIExpression(), !5243)
    #dbg_value(ptr %.sroa.017.05.i, !1801, !DIExpression(), !5249)
    #dbg_value(ptr %.sroa.017.05.i, !1807, !DIExpression(), !5251)
    #dbg_value(ptr %.sroa.019.04.i, !1793, !DIExpression(), !5243)
    #dbg_value(ptr %.sroa.019.04.i, !1818, !DIExpression(), !5253)
    #dbg_value(ptr poison, !1794, !DIExpression(), !5243)
    #dbg_value(i64 1, !1824, !DIExpression(), !5255)
    #dbg_value(i64 1, !1821, !DIExpression(), !5253)
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !dbg !5257, !range !1157, !alias.scope !5106, !noundef !124 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.017.05.i, i64 4, !dbg !5257
  %.sroa.017.0.val46.i = load i32, ptr %i.fy, align 4, !dbg !5257, !alias.scope !5106
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !dbg !5257, !range !1157, !alias.scope !5106, !noundef !124 ; 2 uses
  %i.fz = getelementptr i8, ptr %.sroa.015.06.i, i64 4, !dbg !5257
  %.sroa.015.0.val47.i = load i32, ptr %i.fz, align 4, !dbg !5257, !alias.scope !5106
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5258)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5258)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5258)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5260)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5260)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5262)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5264)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5264)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5266)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5266)
  %i.ga = icmp eq i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5268
    #dbg_value(i8 poison, !1186, !DIExpression(), !5269)
  %i.gb = icmp ult i32 %.sroa.017.0.val46.i, %.sroa.015.0.val47.i, !dbg !5270
  %i.gc = icmp samesign ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5270
  %i.gd = select i1 %i.ga, i1 %i.gb, i1 %i.gc, !dbg !5268 ; 3 uses
    #dbg_value(i1 %i.gd, !1795, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5271)
  %..i.i = select i1 %i.gd, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !5272
  %i.ge = xor i1 %i.gd, true, !dbg !5273
    #dbg_value(i1 %i.ge, !1795, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5271)
    #dbg_value(ptr %..i.i, !1827, !DIExpression(), !5255)
    #dbg_value(ptr %..i.i, !1797, !DIExpression(), !5274)
    #dbg_value(ptr %.sroa.019.04.i, !1828, !DIExpression(), !5255)
  %i.gf = load i64, ptr %..i.i, align 4, !dbg !5275, !alias.scope !5106, !noalias !5276
  store i64 %i.gf, ptr %.sroa.019.04.i, align 4, !dbg !5275, !noalias !5280
  %.neg.i.i = sext i1 %i.ge to i64, !dbg !5281
    #dbg_value(i1 %i.ge, !1804, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5249)
    #dbg_value(i64 %.neg.i.i, !1810, !DIExpression(), !5251)
  %i.gg = getelementptr [8 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !5282 ; 2 uses
    #dbg_value(ptr %i.gg, !1792, !DIExpression(), !5243)
    #dbg_value(ptr %i.gg, !1801, !DIExpression(), !5249)
    #dbg_value(ptr %i.gg, !1807, !DIExpression(), !5251)
  %.neg24.i.i = sext i1 %i.gd to i64, !dbg !5283
    #dbg_value(i1 %i.gd, !1804, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5245)
    #dbg_value(i64 %.neg24.i.i, !1810, !DIExpression(), !5247)
  %i.gh = getelementptr [8 x i8], ptr %.sroa.015.06.i, i64 %.neg24.i.i, !dbg !5284 ; 2 uses
    #dbg_value(ptr %i.gh, !1789, !DIExpression(), !5243)
    #dbg_value(ptr %i.gh, !1801, !DIExpression(), !5245)
    #dbg_value(ptr %i.gh, !1807, !DIExpression(), !5247)
  %i.gi = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -8, !dbg !5285
    #dbg_value(ptr %i.gi, !1793, !DIExpression(), !5243)
    #dbg_value(ptr %i.gi, !1818, !DIExpression(), !5253)
    #dbg_value(ptr %i.gh, !1696, !DIExpression(), !5145)
    #dbg_value(ptr %i.gh, !1688, !DIExpression(), !5143)
    #dbg_value(ptr %i.gh, !1664, !DIExpression(), !5180)
    #dbg_value(ptr %i.gg, !1696, !DIExpression(), !5149)
    #dbg_value(ptr %i.gg, !1688, !DIExpression(), !5147)
    #dbg_value(ptr %i.gg, !1666, !DIExpression(), !5181)
    #dbg_value(ptr %i.gi, !1668, !DIExpression(), !5172)
    #dbg_value(ptr undef, !5134, !DIExpression(), !5182)
    #dbg_value(ptr undef, !5129, !DIExpression(), !5183)
    #dbg_value(ptr undef, !5184, !DIExpression(), !5188)
    #dbg_value(ptr undef, !5187, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5190)
  %exitcond.not.i = icmp eq i64 %i.fk, %i.d, !dbg !5286
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !5195

bb.j:                                             ; preds = %._crit_edge.i
  %i.gj = icmp ult ptr %i.fw, %i.fg, !dbg !5287   ; 3 uses
    #dbg_value(i1 %i.gj, !1676, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5288)
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gj, ptr %i.fw, ptr %i.fu, !dbg !5289
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !5116, !DIExpression(), !5118)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !1678, !DIExpression(), !5290)
  %i.gk = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 4, !dbg !5291, !alias.scope !5106
  store i64 %i.gk, ptr %i.fx, align 4, !dbg !5291, !noalias !5106
  %i.gl = zext i1 %i.gj to i64, !dbg !5292
    #dbg_value(i64 %i.gl, !5162, !DIExpression(), !5174)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gl, !dbg !5293
    #dbg_value(ptr %i.gm, !1658, !DIExpression(), !5176)
    #dbg_value(ptr %i.gm, !5159, !DIExpression(), !5174)
  %i.gn = xor i1 %i.gj, true, !dbg !5294
  %i.go = zext i1 %i.gn to i64, !dbg !5294
    #dbg_value(i64 %i.go, !5162, !DIExpression(), !5177)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.go, !dbg !5295
    #dbg_value(ptr %i.gp, !1660, !DIExpression(), !5179)
    #dbg_value(ptr %i.gp, !5159, !DIExpression(), !5177)
  br label %bb.k, !dbg !5296

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.fu, %._crit_edge.i ], [ %i.gp, %bb.j ], !dbg !5176
  %.sroa.06.1.i = phi ptr [ %i.fw, %._crit_edge.i ], [ %i.gm, %bb.j ], !dbg !5169
    #dbg_value(ptr %.sroa.06.1.i, !5159, !DIExpression(), !5174)
    #dbg_value(ptr %.sroa.06.1.i, !1658, !DIExpression(), !5176)
    #dbg_value(ptr %.sroa.011.1.i, !5159, !DIExpression(), !5177)
    #dbg_value(ptr %.sroa.011.1.i, !1660, !DIExpression(), !5179)
  %i.gq = icmp ne ptr %.sroa.06.1.i, %i.fg, !dbg !5297
  %i.gr = icmp ne ptr %.sroa.011.1.i, %i.fh
  %or.cond.i = select i1 %i.gq, i1 true, i1 %i.gr, !dbg !5297, !prof !1032
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, !dbg !5297, !prof !1032

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc unwind label %bb.m, !dbg !5298

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !5298

bb.m:                                             ; preds = %bb.l
  %i.gs = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !2360, !DIExpression(), !4504)
    #dbg_value(ptr undef, !2350, !DIExpression(), !4501)
    #dbg_value(ptr %2, !2370, !DIExpression(), !5299)
    #dbg_value(ptr %0, !2373, !DIExpression(), !5299)
    #dbg_value(i64 %1, !2374, !DIExpression(), !5299)
  %i.gt = shl nuw nsw i64 %1, 3, !dbg !5301
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.gt, i1 false), !dbg !5301, !noalias !5302
  resume { ptr, i32 } %i.gs, !dbg !5307

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !5308

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.05.087 = phi i64 [ %i.hq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
    #dbg_value(i64 %.sroa.05.087, !4514, !DIExpression(), !5040)
    #dbg_value(i64 %.sroa.05.087, !4537, !DIExpression(), !4538)
    #dbg_value(i64 %.sroa.05.087, !4543, !DIExpression(), !4544)
    #dbg_value(i64 %.sroa.05.087, !4495, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(i64 %.sroa.05.087, !4497, !DIExpression(), !5041)
    #dbg_value(i64 %.sroa.05.087, !4549, !DIExpression(), !5027)
    #dbg_value(i64 %.sroa.05.087, !4549, !DIExpression(), !5030)
    #dbg_value(i64 %.sroa.05.087, !4549, !DIExpression(), !5032)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.087, !dbg !5042
    #dbg_value(ptr %i.gu, !4528, !DIExpression(), !4546)
  %.idx = shl nuw nsw i64 %.sroa.05.087, 3, !dbg !5043
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !5043 ; 4 uses
    #dbg_value(ptr %i.gv, !4529, !DIExpression(), !4546)
  %i.gw = load i64, ptr %i.gu, align 4, !dbg !5044 ; 4 uses
  store i64 %i.gw, ptr %i.gv, align 4, !dbg !5044
    #dbg_value(ptr poison, !2350, !DIExpression(), !5045)
    #dbg_value(ptr poison, !2360, !DIExpression(), !5049)
    #dbg_value(ptr poison, !2350, !DIExpression(), !5050)
    #dbg_value(ptr poison, !2360, !DIExpression(), !5053)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5054)
    #dbg_value(ptr poison, !2341, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5054)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5055)
    #dbg_value(ptr poison, !2370, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5055)
    #dbg_value(ptr undef, !2370, !DIExpression(), !5055)
    #dbg_value(ptr undef, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5054)
    #dbg_value(ptr %2, !2327, !DIExpression(), !5057)
    #dbg_value(ptr %i.gv, !2328, !DIExpression(), !5057)
    #dbg_value(ptr %i.gv, !2378, !DIExpression(), !5058)
    #dbg_value(ptr poison, !2329, !DIExpression(), !5057)
    #dbg_value(i64 1, !2381, !DIExpression(), !5058)
    #dbg_value(i64 1, !2384, !DIExpression(), !5060)
    #dbg_value(i64 1, !2381, !DIExpression(), !5062)
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -8, !dbg !5064 ; 3 uses
    #dbg_value(ptr %i.gx, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.gx, !2378, !DIExpression(), !5062)
  %i.gy = trunc i64 %i.gw to i32, !dbg !5066      ; 4 uses
  %i.gz = lshr i64 %i.gw, 32, !dbg !5066
  %i.ha = trunc nuw i64 %i.gz to i32, !dbg !5066  ; 2 uses
  %.val22.i = load i32, ptr %i.gx, align 4, !dbg !5066, !range !1157, !noundef !124 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gv, i64 -4, !dbg !5066
  %.val23.i = load i32, ptr %i.hb, align 4, !dbg !5066
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5067)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5067)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5067)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5069)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5069)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5071)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5073)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5073)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5075)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5075)
  %i.hc = icmp eq i32 %.val22.i, %i.gy, !dbg !5077
    #dbg_value(i8 poison, !1186, !DIExpression(), !5078)
  %i.hd = icmp ugt i32 %.val23.i, %i.ha, !dbg !5079
  %i.he = icmp samesign ugt i32 %.val22.i, %i.gy, !dbg !5079
  %i.hf = select i1 %i.hc, i1 %i.hd, i1 %i.he, !dbg !5077
  br i1 %i.hf, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5066

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %i.gv, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
    #dbg_value(ptr %i.gx, !2378, !DIExpression(), !5062)
    #dbg_value(ptr %i.gx, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.gx, !2387, !DIExpression(), !5060)
    #dbg_value(ptr %i.gv, !2388, !DIExpression(), !5060)
  %i.hg = load i64, ptr %i.gx, align 4, !dbg !5080
  store i64 %i.hg, ptr %i.gv, align 4, !dbg !5080
  %i.hh = icmp eq i64 %.sroa.05.087, 1, !dbg !5081
  br i1 %i.hh, label %._crit_edge, label %.lr.ph107, !dbg !5081

.preheader:                                       ; preds = %.lr.ph107
    #dbg_value(ptr %.sroa.0.0.i79106, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
    #dbg_value(ptr %i.hk, !2378, !DIExpression(), !5062)
    #dbg_value(ptr %i.hk, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.hk, !2387, !DIExpression(), !5060)
    #dbg_value(ptr %.sroa.0.0.i79106, !2388, !DIExpression(), !5060)
  %i.hi = load i64, ptr %i.hk, align 4, !dbg !5080
  store i64 %i.hi, ptr %.sroa.0.0.i79106, align 4, !dbg !5080
    #dbg_value(ptr %i.hk, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5054)
  %i.hj = icmp eq ptr %i.hk, %2, !dbg !5081
  br i1 %i.hj, label %._crit_edge, label %.lr.ph107, !dbg !5081

.lr.ph107:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i79106 = phi ptr [ %i.hk, %.preheader ], [ %i.gx, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79106, !2378, !DIExpression(), !5062)
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0.0.i79106, i64 -8, !dbg !5082 ; 4 uses
    #dbg_value(ptr %i.hk, !2330, !DIExpression(), !5065)
    #dbg_value(ptr %i.hk, !2378, !DIExpression(), !5062)
  %.val18.i = load i32, ptr %i.hk, align 4, !dbg !5083, !range !1157, !noundef !124 ; 2 uses
  %i.hl = getelementptr i8, ptr %.sroa.0.0.i79106, i64 -4, !dbg !5083
  %.val19.i = load i32, ptr %i.hl, align 4, !dbg !5083
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5084)
    #dbg_value(ptr poison, !1158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5084)
    #dbg_value(ptr poison, !1163, !DIExpression(), !5084)
    #dbg_value(ptr poison, !1173, !DIExpression(), !5086)
    #dbg_value(ptr poison, !1177, !DIExpression(), !5086)
    #dbg_declare(ptr poison, !1183, !DIExpression(), !5088)
    #dbg_value(ptr poison, !1191, !DIExpression(), !5090)
    #dbg_value(ptr poison, !1197, !DIExpression(), !5090)
    #dbg_value(ptr poison, !1200, !DIExpression(), !5092)
    #dbg_value(ptr poison, !1206, !DIExpression(), !5092)
  %i.hm = icmp eq i32 %.val18.i, %i.gy, !dbg !5094
    #dbg_value(i8 poison, !1186, !DIExpression(), !5095)
  %i.hn = icmp ugt i32 %.val19.i, %i.ha, !dbg !5096
  %i.ho = icmp samesign ugt i32 %.val18.i, %i.gy, !dbg !5096
  %i.hp = select i1 %i.hm, i1 %i.hn, i1 %i.ho, !dbg !5094
  br i1 %i.hp, label %.preheader, label %._crit_edge, !dbg !5083

._crit_edge:                                      ; preds = %.preheader, %.lr.ph107, %.preheader.preheader
  %.sroa.0.0.i79.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i79106, %.lr.ph107 ], !dbg !5057
    #dbg_value(ptr undef, !2360, !DIExpression(), !5049)
    #dbg_value(ptr undef, !2350, !DIExpression(), !5045)
    #dbg_value(ptr undef, !2370, !DIExpression(), !5055)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa, !2373, !DIExpression(), !5055)
    #dbg_value(i64 1, !2374, !DIExpression(), !5055)
  store i64 %i.gw, ptr %.sroa.0.0.i79.lcssa, align 4, !dbg !5097, !noalias !5098
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5103

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.hq = add nuw nsw i64 %.sroa.05.087, 1, !dbg !5104 ; 2 uses
    #dbg_value(i64 %i.hq, !4495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(ptr undef, !4519, !DIExpression(), !4523)
    #dbg_value(ptr undef, !4513, !DIExpression(), !4522)
    #dbg_value(ptr undef, !4505, !DIExpression(), !4509)
    #dbg_value(ptr undef, !4508, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5036)
  %exitcond.not = icmp eq i64 %i.hq, %i.d, !dbg !5037
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !4510
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5309 {
bb.a:
    #dbg_value(ptr poison, !5347, !DIExpression(), !5356)
    #dbg_value(ptr poison, !5360, !DIExpression(), !5364)
    #dbg_value(ptr poison, !5347, !DIExpression(), !5365)
    #dbg_value(ptr poison, !5360, !DIExpression(), !5368)
    #dbg_value(ptr poison, !5369, !DIExpression(), !5388)
    #dbg_value(ptr poison, !5377, !DIExpression(), !5390)
    #dbg_value(ptr poison, !5391, !DIExpression(), !5410)
    #dbg_value(i64 %4, !5318, !DIExpression(), !5412)
    #dbg_value(i64 %4, !5330, !DIExpression(), !5413)
    #dbg_value(i64 %4, !5338, !DIExpression(), !5414)
    #dbg_value(i64 %4, !5415, !DIExpression(), !5419)
    #dbg_value(i64 %4, !5421, !DIExpression(), !5425)
    #dbg_value(i64 %4, !5421, !DIExpression(), !5427)
    #dbg_value(ptr %0, !5316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5412)
    #dbg_value(i64 %1, !5316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5412)
    #dbg_value(ptr %2, !5317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5412)
    #dbg_value(i64 %3, !5317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5412)
    #dbg_value(ptr %5, !5319, !DIExpression(), !5412)
    #dbg_value(i64 %1, !5320, !DIExpression(), !5429)
    #dbg_value(i64 %1, !5421, !DIExpression(), !5430)
  %i.a = icmp eq i64 %4, 0, !dbg !5432
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !5432
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !5432

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !5433       ; 2 uses
    #dbg_value(i64 %i.c, !5332, !DIExpression(), !5434)
    #dbg_value(i64 %i.c, !5418, !DIExpression(), !5419)
    #dbg_value(ptr undef, !5435, !DIExpression(DW_OP_deref), !5442)
    #dbg_value(ptr undef, !5439, !DIExpression(DW_OP_deref), !5442)
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !5444 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i, !dbg !5445
  br i1 %i.d, label %bb.c, label %.critedge, !dbg !5445

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr %2, !5322, !DIExpression(), !5446)
    #dbg_value(ptr %2, !5447, !DIExpression(), !5452)
    #dbg_value(ptr %2, !5424, !DIExpression(), !5427)
    #dbg_value(ptr %0, !5324, !DIExpression(), !5454)
    #dbg_value(ptr %0, !5336, !DIExpression(), !5455)
    #dbg_value(ptr %0, !5424, !DIExpression(), !5425)
    #dbg_value(ptr %0, !5424, !DIExpression(), !5430)
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %4, !dbg !5456 ; 3 uses
    #dbg_value(ptr %i.e, !5326, !DIExpression(), !5457)
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !5458 ; 2 uses
    #dbg_value(ptr %i.f, !5328, !DIExpression(), !5459)
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !5460 ; 2 uses
    #dbg_value(i1 %.not, !5334, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5461)
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !5462
    #dbg_value(i64 %..i, !5421, !DIExpression(), !5425)
    #dbg_value(i64 %..i, !5415, !DIExpression(), !5419)
    #dbg_value(i64 %..i, !5338, !DIExpression(), !5414)
    #dbg_value(i64 %..i, !5330, !DIExpression(), !5413)
    #dbg_value(i64 %..i, !5318, !DIExpression(), !5412)
    #dbg_value(ptr %spec.select, !5424, !DIExpression(), !5425)
    #dbg_value(ptr %spec.select, !5336, !DIExpression(), !5455)
    #dbg_value(ptr %spec.select, !5324, !DIExpression(), !5454)
    #dbg_value(ptr %spec.select, !5450, !DIExpression(), !5452)
    #dbg_value(i64 %..i, !5451, !DIExpression(), !5452)
  %i.g = mul nuw nsw i64 %..i, 48, !dbg !5463     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !5463
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !5464 ; 3 uses
    #dbg_value(ptr %2, !5340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5465)
    #dbg_value(ptr %i.h, !5340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5465)
    #dbg_value(ptr %spec.select, !5340, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5465)
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !5466

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ], !dbg !5467 ; 2 uses
  %i.j = phi ptr [ %i.v, %.preheader ], [ %i.e, %.critedge ], !dbg !5473 ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
    #dbg_value(ptr %.sroa.0.0.i, !5470, !DIExpression(), !5474)
    #dbg_value(ptr %.sroa.0.0.i, !5400, !DIExpression(), !5410)
    #dbg_value(ptr %i.j, !5470, !DIExpression(), !5476)
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -48, !dbg !5467 ; 3 uses
    #dbg_value(ptr %i.k, !5402, !DIExpression(), !5477)
    #dbg_value(ptr %i.k, !5478, !DIExpression(), !5482)
    #dbg_value(ptr %i.i, !5470, !DIExpression(), !5484)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -48, !dbg !5486 ; 3 uses
    #dbg_value(ptr %i.l, !5404, !DIExpression(), !5487)
    #dbg_value(ptr %i.l, !5478, !DIExpression(), !5488)
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48, !dbg !5490 ; 2 uses
    #dbg_value(ptr %i.m, !5400, !DIExpression(), !5410)
    #dbg_value(ptr %i.m, !5470, !DIExpression(), !5474)
  %.val.i = load i64, ptr %i.l, align 8, !dbg !5491, !noalias !5492, !noundef !124 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -24, !dbg !5491
  %.val27.i = load i64, ptr %i.n, align 8, !dbg !5491, !noalias !5492
  %.val28.i = load i64, ptr %i.k, align 8, !dbg !5491, !noalias !5492, !noundef !124 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -24, !dbg !5491
  %.val29.i = load i64, ptr %i.o, align 8, !dbg !5491, !noalias !5492
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5495)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5495)
    #dbg_value(ptr poison, !2020, !DIExpression(), !5495)
    #dbg_value(ptr poison, !2030, !DIExpression(), !5497)
    #dbg_value(ptr poison, !2034, !DIExpression(), !5497)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !5499)
    #dbg_value(ptr poison, !2048, !DIExpression(), !5501)
    #dbg_value(ptr poison, !2058, !DIExpression(), !5503)
    #dbg_value(ptr poison, !2055, !DIExpression(), !5501)
    #dbg_value(ptr poison, !2064, !DIExpression(), !5503)
    #dbg_value(ptr poison, !2067, !DIExpression(), !5505)
    #dbg_value(ptr poison, !2081, !DIExpression(), !5507)
  %i.p = icmp eq i64 %.val.i, %.val28.i, !dbg !5508
    #dbg_value(i8 poison, !2043, !DIExpression(), !5509)
  %i.q = icmp ult i64 %.val27.i, %.val29.i, !dbg !5510
  %i.r = icmp ult i64 %.val.i, %.val28.i, !dbg !5510
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r, !dbg !5508 ; 3 uses
    #dbg_value(i1 %i.s, !5406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5511)
  %..i30 = select i1 %i.s, ptr %i.k, ptr %i.l, !dbg !5512
    #dbg_value(ptr %..i30, !5408, !DIExpression(), !5513)
    #dbg_value(ptr %..i30, !5514, !DIExpression(), !5519)
    #dbg_value(ptr %i.m, !5517, !DIExpression(), !5519)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %..i30, i64 48, i1 false), !dbg !5521, !noalias !5492
  %i.t = xor i1 %i.s, true, !dbg !5522
  %i.u = zext i1 %i.t to i64, !dbg !5522
    #dbg_value(i64 %i.u, !5481, !DIExpression(), !5482)
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %i.u, !dbg !5523 ; 3 uses
  %i.w = zext i1 %i.s to i64, !dbg !5524
    #dbg_value(i64 %i.w, !5481, !DIExpression(), !5488)
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.w, !dbg !5525 ; 3 uses
  %i.y = icmp eq ptr %i.v, %0, !dbg !5526
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z, !dbg !5526
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit, label %.preheader, !dbg !5526

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %.critedge ], !dbg !5527 ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
    #dbg_value(ptr %.sroa.0.02.i, !5528, !DIExpression(), !5532)
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !dbg !5527, !noalias !5534, !noundef !124 ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 24, !dbg !5527
  %.sroa.0.0.val17.i = load i64, ptr %i.ac, align 8, !dbg !5527, !noalias !5534
  %.val.i32 = load i64, ptr %i.ab, align 8, !dbg !5527, !noalias !5534, !noundef !124 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 24, !dbg !5527
  %.val18.i = load i64, ptr %i.ad, align 8, !dbg !5527, !noalias !5534
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5537)
    #dbg_value(ptr poison, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5537)
    #dbg_value(ptr poison, !2020, !DIExpression(), !5537)
    #dbg_value(ptr poison, !2030, !DIExpression(), !5539)
    #dbg_value(ptr poison, !2034, !DIExpression(), !5539)
    #dbg_declare(ptr poison, !2040, !DIExpression(), !5541)
    #dbg_value(ptr poison, !2048, !DIExpression(), !5543)
    #dbg_value(ptr poison, !2058, !DIExpression(), !5545)
    #dbg_value(ptr poison, !2055, !DIExpression(), !5543)
    #dbg_value(ptr poison, !2064, !DIExpression(), !5545)
    #dbg_value(ptr poison, !2067, !DIExpression(), !5547)
    #dbg_value(ptr poison, !2081, !DIExpression(), !5549)
  %i.ae = icmp eq i64 %.sroa.0.0.val.i, %.val.i32, !dbg !5550
    #dbg_value(i8 poison, !2043, !DIExpression(), !5551)
  %i.af = icmp ult i64 %.sroa.0.0.val17.i, %.val18.i, !dbg !5552
  %i.ag = icmp ult i64 %.sroa.0.0.val.i, %.val.i32, !dbg !5552
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag, !dbg !5550 ; 3 uses
  %i.ai = xor i1 %i.ah, true, !dbg !5553
    #dbg_value(i1 %i.ai, !5384, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5554)
  %.sroa.05.0.i = select i1 %i.ah, ptr %.sroa.0.02.i, ptr %i.ab, !dbg !5555
    #dbg_value(ptr %.sroa.05.0.i, !5556, !DIExpression(), !5561)
    #dbg_value(ptr %.sroa.05.0.i, !5386, !DIExpression(), !5563)
    #dbg_value(ptr %i.aa, !5559, !DIExpression(), !5561)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i, i64 48, i1 false), !dbg !5564, !noalias !5534
    #dbg_value(ptr %i.ab, !5565, !DIExpression(), !5570)
  %i.aj = zext i1 %i.ai to i64, !dbg !5572
    #dbg_value(i64 %i.aj, !5568, !DIExpression(), !5570)
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.aj, !dbg !5573 ; 3 uses
  %i.al = zext i1 %i.ah to i64, !dbg !5574
    #dbg_value(i64 %i.al, !5531, !DIExpression(), !5532)
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i, i64 %i.al, !dbg !5575 ; 2 uses
    #dbg_value(ptr %i.am, !5378, !DIExpression(), !5390)
    #dbg_value(ptr %i.am, !5528, !DIExpression(), !5532)
    #dbg_value(ptr %i.aa, !5565, !DIExpression(), !5576)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !5578 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h, !dbg !5579
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i33 = select i1 %i.ao, i1 %i.ap, i1 false, !dbg !5579
  br i1 %or.cond.i33, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit, !dbg !5579

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.v, %.preheader ], [ %i.an, %.lr.ph.i ], !dbg !5465
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ], !dbg !5414
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ak, %.lr.ph.i ], !dbg !5414 ; 2 uses
    #dbg_value(ptr %.sroa.0.0, !5340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5465)
    #dbg_value(ptr %.sroa.7.0, !5340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5465)
end_hunk_2
begin_hunk_3_@llvm.umin.i64
!2017 = !DISubroutineType(cc: DW_CC_nocall, types: !2018)
!2018 = !{!129, !1884, !1888, !1888}
!2019 = !{!2020, !2015}
!2020 = !DILocalVariable(arg: 1, scope: !2016, file: !281, line: 166, type: !1884)
!2021 = !{!2022, !2023}
!2022 = !DITemplateTypeParameter(name: "Self", type: !1885)
!2023 = !DITemplateTypeParameter(name: "Args", type: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_syntax::ast::Span, &regex_syntax::ast::Span)", file: !10, size: 128, align: 64, elements: !2025, templateParams: !124, identifier: "3c44fc74bb05d23fa0337f70a4f960dd")
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2024, file: !10, baseType: !1888, size: 64, align: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !2024, file: !10, baseType: !1888, size: 64, align: 64, offset: 64)
!2028 = !DILocation(line: 0, scope: !2016, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 541, column: 13, scope: !1930, inlinedAt: !1957)
!2030 = !DILocalVariable(name: "self", arg: 1, scope: !2031, file: !300, line: 1470, type: !1888)
!2031 = distinct !DISubprogram(name: "lt<regex_syntax::ast::Span, regex_syntax::ast::Span>", linkageName: "_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltB6_", scope: !301, file: !300, line: 1470, type: !2032, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2035, retainedNodes: !2033)
!2032 = !DISubroutineType(cc: DW_CC_nocall, types: !1887)
!2033 = !{!2030, !2034}
!2034 = !DILocalVariable(name: "other", arg: 2, scope: !2031, file: !300, line: 1470, type: !1888)
!2035 = !{!2036, !2037}
!2036 = !DITemplateTypeParameter(name: "Self", type: !1874)
!2037 = !DITemplateTypeParameter(name: "Rhs", type: !1874)
!2038 = !DILocation(line: 0, scope: !2031, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 166, column: 5, scope: !2016, inlinedAt: !2029)
!2040 = !DILocalVariable(name: "f", scope: !2041, file: !312, line: 659, type: !329, align: 8)
!2041 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_ltECs3roNzt6HBWW_12regex_syntax", scope: !313, file: !312, line: 659, type: !327, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !333, declaration: !332, retainedNodes: !2042)
!2042 = !{!2043, !2040, !2044}
!2043 = !DILocalVariable(name: "self", arg: 1, scope: !2041, file: !312, line: 659, type: !313)
!2044 = !DILocalVariable(name: "x", scope: !2045, file: !312, line: 662, type: !81, align: 8)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !312, line: 662, column: 13)
!2046 = !DILocation(line: 659, column: 36, scope: !2041, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 1471, column: 33, scope: !2031, inlinedAt: !2039)
!2048 = !DILocalVariable(name: "self", arg: 1, scope: !2049, file: !2050, line: 339, type: !1888)
!2049 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs4_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp", scope: !2051, file: !2050, line: 339, type: !2052, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !2054)
!2050 = !DIFile(filename: "regex-syntax/src/ast/mod.rs", directory: "/opt-bench/work/regex-rs/regex", checksumkind: CSK_MD5, checksum: "f034c0c444108afde9ae32c3243ae9cf")
!2051 = !DINamespace(name: "{impl#6}", scope: !11)
!2052 = !DISubroutineType(cc: DW_CC_nocall, types: !2053)
!2053 = !{!313, !1888, !1888}
!2054 = !{!2048, !2055}
!2055 = !DILocalVariable(name: "other", arg: 2, scope: !2049, file: !2050, line: 339, type: !1888)
!2056 = !DILocation(line: 0, scope: !2049, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 1471, column: 14, scope: !2031, inlinedAt: !2039)
!2058 = !DILocalVariable(name: "self", arg: 1, scope: !2059, file: !2050, line: 333, type: !1888)
!2059 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs3_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp", scope: !2060, file: !2050, line: 333, type: !2061, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !2063)
!2060 = !DINamespace(name: "{impl#5}", scope: !11)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!81, !1888, !1888}
!2063 = !{!2058, !2064}
!2064 = !DILocalVariable(name: "other", arg: 2, scope: !2059, file: !2050, line: 333, type: !1888)
!2065 = !DILocation(line: 0, scope: !2059, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 340, column: 19, scope: !2049, inlinedAt: !2057)
!2067 = !DILocalVariable(name: "self", arg: 1, scope: !2068, file: !2069, line: 114, type: !2074)
!2068 = distinct !DISubprogram(name: "cmp<&regex_syntax::ast::Position, &regex_syntax::ast::Position>", linkageName: "_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTRNtNtCs3roNzt6HBWW_12regex_syntax3ast8PositionBx_ENtNtB7_3cmp3Ord3cmpBC_", scope: !2070, file: !2069, line: 114, type: !2072, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2084, retainedNodes: !2080)
!2069 = !DIFile(filename: "library/core/src/tuple.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "72a1c24e9d114d0357c3c64099741cf3")
!2070 = !DINamespace(name: "{impl#15}", scope: !2071)
!2071 = !DINamespace(name: "tuple", scope: !83)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!81, !2074, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&(&regex_syntax::ast::Position, &regex_syntax::ast::Position)", baseType: !2075, size: 64, align: 64, dwarfAddressSpace: 0)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_syntax::ast::Position, &regex_syntax::ast::Position)", file: !10, size: 128, align: 64, elements: !2076, templateParams: !124, identifier: "d7205e4078758bd5a523b0eba7fa175e")
!2076 = !{!2077, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2075, file: !10, baseType: !2078, size: 64, align: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::ast::Position", baseType: !1877, size: 64, align: 64, dwarfAddressSpace: 0)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !2075, file: !10, baseType: !2078, size: 64, align: 64, offset: 64)
!2080 = !{!2067, !2081, !2082}
!2081 = !DILocalVariable(name: "other", arg: 2, scope: !2068, file: !2069, line: 114, type: !2074)
!2082 = !DILocalVariable(name: "ordering", scope: !2083, file: !2069, line: 232, type: !81, align: 8)
!2083 = distinct !DILexicalBlock(scope: !2068, file: !2069, line: 232, column: 13)
!2084 = !{!2085, !2086}
!2085 = !DITemplateTypeParameter(name: "U", type: !2078)
!2086 = !DITemplateTypeParameter(name: "T", type: !2078)
!2087 = !DILocation(line: 114, column: 24, scope: !2068, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 334, column: 34, scope: !2059, inlinedAt: !2066)
!2089 = !DILocation(line: 114, column: 31, scope: !2068, inlinedAt: !2088)
!2090 = !DILocation(line: 230, column: 9, scope: !2068, inlinedAt: !2088)
!2091 = !DILocation(line: 0, scope: !2041, inlinedAt: !2047)
!2092 = !DILocation(line: 660, column: 9, scope: !2041, inlinedAt: !2047)
!2093 = !DILocation(line: 550, column: 13, scope: !1930, inlinedAt: !1957)
!2094 = !DILocation(line: 1755, column: 9, scope: !2095, inlinedAt: !2098)
!2095 = distinct !DISubprogram(name: "read<regex_syntax::ast::Span>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr4readNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEBA_", scope: !145, file: !253, line: 1716, type: !2096, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!1874, !1954, !149}
!2098 = distinct !DILocation(line: 1246, column: 18, scope: !1998, inlinedAt: !2003)
!2099 = !DILocation(line: 0, scope: !1940, inlinedAt: !1957)
!2100 = !DILocation(line: 573, column: 14, scope: !2005, inlinedAt: !2010)
!2101 = !DILocation(line: 560, column: 16, scope: !1950, inlinedAt: !1957)
!2102 = !DILocation(line: 1054, column: 22, scope: !1992, inlinedAt: !2012)
!2103 = !DILocation(line: 566, column: 17, scope: !1950, inlinedAt: !1957)
!2104 = !DILocation(line: 0, scope: !2016, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 566, column: 17, scope: !1950, inlinedAt: !1957)
!2106 = !DILocation(line: 0, scope: !2031, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 166, column: 5, scope: !2016, inlinedAt: !2105)
!2108 = !DILocation(line: 659, column: 36, scope: !2041, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 1471, column: 33, scope: !2031, inlinedAt: !2107)
!2110 = !DILocation(line: 0, scope: !2049, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 1471, column: 14, scope: !2031, inlinedAt: !2107)
!2112 = !DILocation(line: 0, scope: !2059, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 340, column: 19, scope: !2049, inlinedAt: !2111)
!2114 = !DILocation(line: 114, column: 24, scope: !2068, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 334, column: 34, scope: !2059, inlinedAt: !2113)
!2116 = !DILocation(line: 114, column: 31, scope: !2068, inlinedAt: !2115)
!2117 = !DILocation(line: 230, column: 9, scope: !2068, inlinedAt: !2115)
!2118 = !DILocation(line: 0, scope: !2041, inlinedAt: !2109)
!2119 = !DILocation(line: 660, column: 9, scope: !2041, inlinedAt: !2109)
!2120 = !DILocation(line: 573, column: 14, scope: !1981, inlinedAt: !1988)
!2121 = !{!2122, !2124}
!2122 = distinct !{!2122, !2123, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!2123 = distinct !{!2123, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!2124 = distinct !{!2124, !2125, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEEB1x_: argument 0"}
!2125 = distinct !{!2125, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEEB1x_"}
!2126 = !DILocation(line: 570, column: 5, scope: !1930, inlinedAt: !1957)
!2127 = !DILocation(line: 571, column: 2, scope: !1931, inlinedAt: !1957)
!2128 = !DILocation(line: 970, column: 18, scope: !1907, inlinedAt: !1917)
!2129 = distinct !DISubprogram(name: "insertion_sort_shift_left<regex_syntax::hir::ClassBytesRange, fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_", scope: !113, file: !112, line: 574, type: !2130, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !136, retainedNodes: !2136)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2132, !148, !125}
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [regex_syntax::hir::ClassBytesRange]", file: !10, size: 128, align: 64, elements: !2133, templateParams: !124, identifier: "c9ae078c7f027d531104b0a69b8bb704")
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2132, file: !10, baseType: !806, size: 64, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2132, file: !10, baseType: !148, size: 64, align: 64, offset: 64)
!2136 = !{!2137, !2138, !2139, !2140, !2142, !2144, !2146}
!2137 = !DILocalVariable(name: "v", arg: 1, scope: !2129, file: !112, line: 575, type: !2132)
!2138 = !DILocalVariable(name: "offset", arg: 2, scope: !2129, file: !112, line: 576, type: !148)
!2139 = !DILocalVariable(name: "is_less", arg: 3, scope: !2129, file: !112, line: 577, type: !125)
!2140 = !DILocalVariable(name: "len", scope: !2141, file: !112, line: 579, type: !148, align: 64)
!2141 = distinct !DILexicalBlock(scope: !2129, file: !112, line: 579, column: 5)
!2142 = !DILocalVariable(name: "v_base", scope: !2143, file: !112, line: 590, type: !119, align: 64)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !112, line: 590, column: 9)
!2144 = !DILocalVariable(name: "v_end", scope: !2145, file: !112, line: 591, type: !119, align: 64)
!2145 = distinct !DILexicalBlock(scope: !2143, file: !112, line: 591, column: 9)
!2146 = !DILocalVariable(name: "tail", scope: !2147, file: !112, line: 592, type: !119, align: 64)
!2147 = distinct !DILexicalBlock(scope: !2145, file: !112, line: 592, column: 9)
!2148 = !DILocation(line: 0, scope: !2129)
!2149 = !DILocalVariable(name: "count", arg: 2, scope: !2150, file: !142, line: 936, type: !148)
!2150 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3addBG_", scope: !143, file: !142, line: 936, type: !146, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !2151)
!2151 = !{!2152, !2149, !2153}
!2152 = !DILocalVariable(name: "self", arg: 1, scope: !2150, file: !142, line: 936, type: !119)
!2153 = !DILocalVariable(name: "count", scope: !2150, file: !142, line: 936, type: !148, align: 64)
!2154 = !DILocation(line: 0, scope: !2150, inlinedAt: !2155)
!2155 = !DILocation(line: 592, column: 31, scope: !2145)
!2156 = !DILocation(line: 0, scope: !2150, inlinedAt: !2157)
!2157 = !DILocation(line: 599, column: 25, scope: !2147)
!2158 = !DILocation(line: 0, scope: !2141)
!2159 = !DILocation(line: 0, scope: !2150, inlinedAt: !2160)
!2160 = !DILocation(line: 591, column: 28, scope: !2143)
!2161 = !DILocation(line: 580, column: 8, scope: !2141)
!2162 = !DILocation(line: 581, column: 9, scope: !2141)
!2163 = !DILocation(line: 0, scope: !2143)
!2164 = !DILocation(line: 970, column: 18, scope: !2150, inlinedAt: !2160)
!2165 = !DILocation(line: 0, scope: !2145)
!2166 = !DILocation(line: 0, scope: !2147)
!2167 = !DILocation(line: 593, column: 15, scope: !2147)
!2168 = !DILocation(line: 970, column: 18, scope: !2150, inlinedAt: !2155)
!2169 = !DILocation(line: 541, column: 13, scope: !2170, inlinedAt: !2196)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !112, line: 540, column: 9)
!2171 = distinct !DISubprogram(name: "insert_tail<regex_syntax::hir::ClassBytesRange, fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_", scope: !113, file: !112, line: 536, type: !2172, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !136, retainedNodes: !2174)
!2172 = !DISubroutineType(cc: DW_CC_nocall, types: !2173)
!2173 = !{null, !119, !119, !125}
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2189}
!2175 = !DILocalVariable(name: "begin", arg: 1, scope: !2171, file: !112, line: 536, type: !119)
!2176 = !DILocalVariable(name: "tail", arg: 2, scope: !2171, file: !112, line: 536, type: !119)
!2177 = !DILocalVariable(name: "is_less", arg: 3, scope: !2171, file: !112, line: 536, type: !125)
!2178 = !DILocalVariable(name: "sift", scope: !2170, file: !112, line: 540, type: !119, align: 64)
!2179 = !DILocalVariable(name: "tmp", scope: !2180, file: !112, line: 550, type: !2181, align: 8)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !112, line: 550, column: 9)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<regex_syntax::hir::ClassBytesRange>", scope: !448, file: !10, size: 16, align: 8, flags: DIFlagPublic, elements: !2182, templateParams: !182, identifier: "9e4ff0087b6fc742c862cae1ded4c3e7")
!2182 = !{!2183}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2181, file: !10, baseType: !2184, size: 16, align: 8, flags: DIFlagPrivate)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<regex_syntax::hir::ClassBytesRange>", scope: !452, file: !10, size: 16, align: 8, flags: DIFlagPublic, elements: !2185, templateParams: !2187, identifier: "2c0fb679c0bd2dd58d55da6741e5cea8")
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2184, file: !10, baseType: !120, size: 16, align: 8, flags: DIFlagPrivate)
!2187 = !{!2188}
!2188 = !DITemplateTypeParameter(name: "P", type: !120)
!2189 = !DILocalVariable(name: "gap_guard", scope: !2190, file: !112, line: 551, type: !2191, align: 64)
!2190 = distinct !DILexicalBlock(scope: !2180, file: !112, line: 551, column: 9)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CopyOnDrop<regex_syntax::hir::ClassBytesRange>", scope: !113, file: !10, size: 192, align: 64, flags: DIFlagPrivate, elements: !2192, templateParams: !182, identifier: "96bb0da3dcd6a954bc5e8c6cb494adde")
!2192 = !{!2193, !2194, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2191, file: !10, baseType: !191, size: 64, align: 64, flags: DIFlagPrivate)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2191, file: !10, baseType: !119, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2191, file: !10, baseType: !148, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!2196 = distinct !DILocation(line: 596, column: 13, scope: !2147)
!2197 = !DILocation(line: 602, column: 2, scope: !2129)
!2198 = !DILocalVariable(name: "self", arg: 1, scope: !2199, file: !112, line: 302, type: !2202)
!2199 = distinct !DISubprogram(name: "drop<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_", scope: !1961, file: !112, line: 302, type: !2200, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !2203)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassBytesRange>", baseType: !2191, size: 64, align: 64, dwarfAddressSpace: 0)
!2203 = !{!2198}
!2204 = !DILocation(line: 0, scope: !2199, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 847, column: 1, scope: !2206, inlinedAt: !2211)
!2206 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassBytesRange>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_", scope: !145, file: !253, line: 847, type: !2200, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2209, retainedNodes: !2207)
!2207 = !{!2208}
!2208 = !DILocalVariable(arg: 1, scope: !2206, file: !253, line: 847, type: !2202)
!2209 = !{!2210}
!2210 = !DITemplateTypeParameter(name: "T", type: !2191)
!2211 = distinct !DILocation(line: 570, column: 5, scope: !2180, inlinedAt: !2196)
!2212 = !DILocation(line: 0, scope: !2206, inlinedAt: !2211)
!2213 = !DILocation(line: 0, scope: !2199, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 847, column: 1, scope: !2206, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 570, column: 5, scope: !2180, inlinedAt: !2196)
!2216 = !DILocation(line: 0, scope: !2206, inlinedAt: !2215)
!2217 = !DILocation(line: 0, scope: !2190, inlinedAt: !2196)
!2218 = !DILocalVariable(name: "src", arg: 1, scope: !2219, file: !253, line: 552, type: !191)
!2219 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEBQ_", scope: !145, file: !253, line: 552, type: !254, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !2220)
!2220 = !{!2218, !2221, !2222}
!2221 = !DILocalVariable(name: "dst", arg: 2, scope: !2219, file: !253, line: 552, type: !119)
!2222 = !DILocalVariable(name: "count", arg: 3, scope: !2219, file: !253, line: 552, type: !148)
!2223 = !DILocation(line: 0, scope: !2219, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 306, column: 13, scope: !2199, inlinedAt: !2205)
!2225 = !DILocation(line: 0, scope: !2171, inlinedAt: !2196)
!2226 = !DILocalVariable(name: "self", arg: 1, scope: !2227, file: !142, line: 1015, type: !119)
!2227 = distinct !DISubprogram(name: "sub<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3subBG_", scope: !143, file: !142, line: 1015, type: !146, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !2228)
!2228 = !{!2226, !2229}
!2229 = !DILocalVariable(name: "count", scope: !2227, file: !142, line: 1015, type: !148, align: 64)
!2230 = !DILocation(line: 0, scope: !2227, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 540, column: 29, scope: !2171, inlinedAt: !2196)
!2232 = !DILocalVariable(name: "count", scope: !2233, file: !253, line: 552, type: !148, align: 64)
!2233 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEBQ_", scope: !145, file: !253, line: 552, type: !254, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !2234)
!2234 = !{!2235, !2236, !2232}
!2235 = !DILocalVariable(name: "src", arg: 1, scope: !2233, file: !253, line: 552, type: !191)
!2236 = !DILocalVariable(name: "dst", arg: 2, scope: !2233, file: !253, line: 552, type: !119)
!2237 = !DILocation(line: 0, scope: !2233, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 557, column: 13, scope: !2190, inlinedAt: !2196)
!2239 = !DILocation(line: 0, scope: !2227, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 565, column: 25, scope: !2190, inlinedAt: !2196)
!2241 = !DILocation(line: 1054, column: 22, scope: !2227, inlinedAt: !2231)
!2242 = !DILocation(line: 0, scope: !2170, inlinedAt: !2196)
!2243 = !DILocation(line: 0, scope: !280, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 541, column: 13, scope: !2170, inlinedAt: !2196)
!2245 = !DILocation(line: 0, scope: !299, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !2244)
!2247 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !2246)
!2249 = !DILocation(line: 0, scope: !342, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !2246)
!2251 = !DILocation(line: 0, scope: !352, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !2250)
!2253 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !2252)
!2254 = !DILocation(line: 0, scope: !311, inlinedAt: !2248)
!2255 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !2248)
!2256 = !DILocation(line: 573, column: 14, scope: !2233, inlinedAt: !2238)
!2257 = !DILocation(line: 560, column: 16, scope: !2190, inlinedAt: !2196)
!2258 = !DILocation(line: 1054, column: 22, scope: !2227, inlinedAt: !2240)
!2259 = !DILocation(line: 566, column: 17, scope: !2190, inlinedAt: !2196)
!2260 = !DILocation(line: 0, scope: !280, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 566, column: 17, scope: !2190, inlinedAt: !2196)
!2262 = !DILocation(line: 0, scope: !299, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !2261)
!2264 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !2263)
!2266 = !DILocation(line: 0, scope: !342, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !2263)
!2268 = !DILocation(line: 0, scope: !352, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !2267)
!2270 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !2269)
!2271 = !DILocation(line: 0, scope: !311, inlinedAt: !2265)
!2272 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !2265)
!2273 = !DILocation(line: 573, column: 14, scope: !2219, inlinedAt: !2224)
!2274 = !{!2275, !2277}
!2275 = distinct !{!2275, !2276, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!2276 = distinct !{!2276, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!2277 = distinct !{!2277, !2278, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_: argument 0"}
!2278 = distinct !{!2278, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_"}
!2279 = !DILocation(line: 571, column: 2, scope: !2171, inlinedAt: !2196)
!2280 = !DILocation(line: 970, column: 18, scope: !2150, inlinedAt: !2157)
!2281 = distinct !DISubprogram(name: "insertion_sort_shift_left<regex_syntax::hir::ClassUnicodeRange, fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_", scope: !113, file: !112, line: 574, type: !2282, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1054, retainedNodes: !2288)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2284, !148, !1044}
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [regex_syntax::hir::ClassUnicodeRange]", file: !10, size: 128, align: 64, elements: !2285, templateParams: !124, identifier: "7eb26f4b7cc718ee50a87ff9e83803b7")
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2284, file: !10, baseType: !1647, size: 64, align: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2284, file: !10, baseType: !148, size: 64, align: 64, offset: 64)
!2288 = !{!2289, !2290, !2291, !2292, !2294, !2296, !2298}
!2289 = !DILocalVariable(name: "v", arg: 1, scope: !2281, file: !112, line: 575, type: !2284)
!2290 = !DILocalVariable(name: "offset", arg: 2, scope: !2281, file: !112, line: 576, type: !148)
!2291 = !DILocalVariable(name: "is_less", arg: 3, scope: !2281, file: !112, line: 577, type: !1044)
!2292 = !DILocalVariable(name: "len", scope: !2293, file: !112, line: 579, type: !148, align: 64)
!2293 = distinct !DILexicalBlock(scope: !2281, file: !112, line: 579, column: 5)
!2294 = !DILocalVariable(name: "v_base", scope: !2295, file: !112, line: 590, type: !1038, align: 64)
!2295 = distinct !DILexicalBlock(scope: !2293, file: !112, line: 590, column: 9)
!2296 = !DILocalVariable(name: "v_end", scope: !2297, file: !112, line: 591, type: !1038, align: 64)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !112, line: 591, column: 9)
!2298 = !DILocalVariable(name: "tail", scope: !2299, file: !112, line: 592, type: !1038, align: 64)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !112, line: 592, column: 9)
!2300 = !DILocation(line: 0, scope: !2281)
!2301 = !DILocalVariable(name: "count", arg: 2, scope: !2302, file: !142, line: 936, type: !148)
!2302 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3addBG_", scope: !143, file: !142, line: 936, type: !1060, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !2303)
!2303 = !{!2304, !2301, !2305}
!2304 = !DILocalVariable(name: "self", arg: 1, scope: !2302, file: !142, line: 936, type: !1038)
!2305 = !DILocalVariable(name: "count", scope: !2302, file: !142, line: 936, type: !148, align: 64)
!2306 = !DILocation(line: 0, scope: !2302, inlinedAt: !2307)
!2307 = !DILocation(line: 592, column: 31, scope: !2297)
!2308 = !DILocation(line: 0, scope: !2302, inlinedAt: !2309)
!2309 = !DILocation(line: 599, column: 25, scope: !2299)
!2310 = !DILocation(line: 0, scope: !2293)
!2311 = !DILocation(line: 0, scope: !2302, inlinedAt: !2312)
!2312 = !DILocation(line: 591, column: 28, scope: !2295)
!2313 = !DILocation(line: 580, column: 8, scope: !2293)
!2314 = !DILocation(line: 581, column: 9, scope: !2293)
!2315 = !DILocation(line: 0, scope: !2295)
!2316 = !DILocation(line: 970, column: 18, scope: !2302, inlinedAt: !2312)
!2317 = !DILocation(line: 0, scope: !2297)
!2318 = !DILocation(line: 0, scope: !2299)
!2319 = !DILocation(line: 593, column: 15, scope: !2299)
!2320 = !DILocation(line: 970, column: 18, scope: !2302, inlinedAt: !2307)
!2321 = !DILocation(line: 541, column: 13, scope: !2322, inlinedAt: !2348)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !112, line: 540, column: 9)
!2323 = distinct !DISubprogram(name: "insert_tail<regex_syntax::hir::ClassUnicodeRange, fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_", scope: !113, file: !112, line: 536, type: !2324, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1054, retainedNodes: !2326)
!2324 = !DISubroutineType(cc: DW_CC_nocall, types: !2325)
!2325 = !{null, !1038, !1038, !1044}
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2341}
!2327 = !DILocalVariable(name: "begin", arg: 1, scope: !2323, file: !112, line: 536, type: !1038)
!2328 = !DILocalVariable(name: "tail", arg: 2, scope: !2323, file: !112, line: 536, type: !1038)
!2329 = !DILocalVariable(name: "is_less", arg: 3, scope: !2323, file: !112, line: 536, type: !1044)
!2330 = !DILocalVariable(name: "sift", scope: !2322, file: !112, line: 540, type: !1038, align: 64)
!2331 = !DILocalVariable(name: "tmp", scope: !2332, file: !112, line: 550, type: !2333, align: 32)
!2332 = distinct !DILexicalBlock(scope: !2322, file: !112, line: 550, column: 9)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<regex_syntax::hir::ClassUnicodeRange>", scope: !448, file: !10, size: 64, align: 32, flags: DIFlagPublic, elements: !2334, templateParams: !1064, identifier: "838cd1706f48c0cca5538ec2ec37e10a")
!2334 = !{!2335}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2333, file: !10, baseType: !2336, size: 64, align: 32, flags: DIFlagPrivate)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<regex_syntax::hir::ClassUnicodeRange>", scope: !452, file: !10, size: 64, align: 32, flags: DIFlagPublic, elements: !2337, templateParams: !2339, identifier: "e2132affd99ef982a2ee668627964c88")
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2336, file: !10, baseType: !1039, size: 64, align: 32, flags: DIFlagPrivate)
!2339 = !{!2340}
!2340 = !DITemplateTypeParameter(name: "P", type: !1039)
!2341 = !DILocalVariable(name: "gap_guard", scope: !2342, file: !112, line: 551, type: !2343, align: 64)
!2342 = distinct !DILexicalBlock(scope: !2332, file: !112, line: 551, column: 9)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>", scope: !113, file: !10, size: 192, align: 64, flags: DIFlagPrivate, elements: !2344, templateParams: !1064, identifier: "80f9725b120ae11b5b954bce4dbb446")
!2344 = !{!2345, !2346, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2343, file: !10, baseType: !1073, size: 64, align: 64, flags: DIFlagPrivate)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2343, file: !10, baseType: !1038, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2343, file: !10, baseType: !148, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!2348 = distinct !DILocation(line: 596, column: 13, scope: !2299)
!2349 = !DILocation(line: 602, column: 2, scope: !2281)
!2350 = !DILocalVariable(name: "self", arg: 1, scope: !2351, file: !112, line: 302, type: !2354)
!2351 = distinct !DISubprogram(name: "drop<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_", scope: !1961, file: !112, line: 302, type: !2352, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !2355)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>", baseType: !2343, size: 64, align: 64, dwarfAddressSpace: 0)
!2355 = !{!2350}
!2356 = !DILocation(line: 0, scope: !2351, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 847, column: 1, scope: !2358, inlinedAt: !2363)
!2358 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_", scope: !145, file: !253, line: 847, type: !2352, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2361, retainedNodes: !2359)
!2359 = !{!2360}
!2360 = !DILocalVariable(arg: 1, scope: !2358, file: !253, line: 847, type: !2354)
!2361 = !{!2362}
!2362 = !DITemplateTypeParameter(name: "T", type: !2343)
!2363 = distinct !DILocation(line: 570, column: 5, scope: !2332, inlinedAt: !2348)
!2364 = !DILocation(line: 0, scope: !2358, inlinedAt: !2363)
!2365 = !DILocation(line: 0, scope: !2351, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 847, column: 1, scope: !2358, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 570, column: 5, scope: !2332, inlinedAt: !2348)
!2368 = !DILocation(line: 0, scope: !2358, inlinedAt: !2367)
!2369 = !DILocation(line: 0, scope: !2342, inlinedAt: !2348)
!2370 = !DILocalVariable(name: "src", arg: 1, scope: !2371, file: !253, line: 552, type: !1073)
!2371 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEBQ_", scope: !145, file: !253, line: 552, type: !1132, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !2372)
!2372 = !{!2370, !2373, !2374}
!2373 = !DILocalVariable(name: "dst", arg: 2, scope: !2371, file: !253, line: 552, type: !1038)
!2374 = !DILocalVariable(name: "count", arg: 3, scope: !2371, file: !253, line: 552, type: !148)
!2375 = !DILocation(line: 0, scope: !2371, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 306, column: 13, scope: !2351, inlinedAt: !2357)
!2377 = !DILocation(line: 0, scope: !2323, inlinedAt: !2348)
!2378 = !DILocalVariable(name: "self", arg: 1, scope: !2379, file: !142, line: 1015, type: !1038)
!2379 = distinct !DISubprogram(name: "sub<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3subBG_", scope: !143, file: !142, line: 1015, type: !1060, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !2380)
!2380 = !{!2378, !2381}
!2381 = !DILocalVariable(name: "count", scope: !2379, file: !142, line: 1015, type: !148, align: 64)
!2382 = !DILocation(line: 0, scope: !2379, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 540, column: 29, scope: !2323, inlinedAt: !2348)
!2384 = !DILocalVariable(name: "count", scope: !2385, file: !253, line: 552, type: !148, align: 64)
!2385 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEBQ_", scope: !145, file: !253, line: 552, type: !1132, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !2386)
!2386 = !{!2387, !2388, !2384}
!2387 = !DILocalVariable(name: "src", arg: 1, scope: !2385, file: !253, line: 552, type: !1073)
!2388 = !DILocalVariable(name: "dst", arg: 2, scope: !2385, file: !253, line: 552, type: !1038)
!2389 = !DILocation(line: 0, scope: !2385, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 557, column: 13, scope: !2342, inlinedAt: !2348)
!2391 = !DILocation(line: 0, scope: !2379, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 565, column: 25, scope: !2342, inlinedAt: !2348)
!2393 = !DILocation(line: 1054, column: 22, scope: !2379, inlinedAt: !2383)
!2394 = !DILocation(line: 0, scope: !2322, inlinedAt: !2348)
!2395 = !DILocation(line: 0, scope: !1159, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 541, column: 13, scope: !2322, inlinedAt: !2348)
!2397 = !DILocation(line: 0, scope: !1174, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !2396)
!2399 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !2398)
!2401 = !DILocation(line: 0, scope: !1192, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !2398)
!2403 = !DILocation(line: 0, scope: !1201, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !2402)
!2405 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !2404)
!2406 = !DILocation(line: 0, scope: !1184, inlinedAt: !2400)
!2407 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !2400)
!2408 = !DILocation(line: 573, column: 14, scope: !2385, inlinedAt: !2390)
!2409 = !DILocation(line: 560, column: 16, scope: !2342, inlinedAt: !2348)
!2410 = !DILocation(line: 1054, column: 22, scope: !2379, inlinedAt: !2392)
!2411 = !DILocation(line: 566, column: 17, scope: !2342, inlinedAt: !2348)
!2412 = !DILocation(line: 0, scope: !1159, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 566, column: 17, scope: !2342, inlinedAt: !2348)
!2414 = !DILocation(line: 0, scope: !1174, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !2413)
!2416 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !2415)
!2418 = !DILocation(line: 0, scope: !1192, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !2415)
!2420 = !DILocation(line: 0, scope: !1201, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !2419)
!2422 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !2421)
!2423 = !DILocation(line: 0, scope: !1184, inlinedAt: !2417)
!2424 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !2417)
!2425 = !DILocation(line: 573, column: 14, scope: !2371, inlinedAt: !2376)
!2426 = !{!2427, !2429}
!2427 = distinct !{!2427, !2428, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!2428 = distinct !{!2428, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!2429 = distinct !{!2429, !2430, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_: argument 0"}
!2430 = distinct !{!2430, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_"}
!2431 = !DILocation(line: 571, column: 2, scope: !2323, inlinedAt: !2348)
!2432 = !DILocation(line: 970, column: 18, scope: !2302, inlinedAt: !2309)
!2433 = distinct !DISubprogram(name: "small_sort_general_with_scratch<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_", scope: !113, file: !112, line: 220, type: !2434, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1902, retainedNodes: !2445)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !1870, !2436, !1884}
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [core::mem::maybe_uninit::MaybeUninit<regex_syntax::ast::Span>]", file: !10, size: 128, align: 64, elements: !2437, templateParams: !124, identifier: "11e11a56ae1b0bf52c64437639c16421")
!2437 = !{!2438, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2436, file: !10, baseType: !2439, size: 64, align: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64, align: 64, dwarfAddressSpace: 0)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<regex_syntax::ast::Span>", scope: !441, file: !10, size: 384, align: 64, elements: !2441, templateParams: !1913, identifier: "216d69c0a4dcd663d28e4db7a934fc46")
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !2440, file: !10, baseType: !445, align: 8)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2440, file: !10, baseType: !1941, size: 384, align: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2436, file: !10, baseType: !148, size: 64, align: 64, offset: 64)
!2445 = !{!2446, !2447, !2448, !2449, !2451, !2453, !2455, !2457, !2459, !2505, !2507, !2509, !2511, !2513, !2515, !2517}
!2446 = !DILocalVariable(name: "v", arg: 1, scope: !2433, file: !112, line: 221, type: !1870)
!2447 = !DILocalVariable(name: "scratch", arg: 2, scope: !2433, file: !112, line: 222, type: !2436)
!2448 = !DILocalVariable(name: "is_less", arg: 3, scope: !2433, file: !112, line: 223, type: !1884)
!2449 = !DILocalVariable(name: "len", scope: !2450, file: !112, line: 225, type: !148, align: 64)
!2450 = distinct !DILexicalBlock(scope: !2433, file: !112, line: 225, column: 5)
!2451 = !DILocalVariable(name: "v_base", scope: !2452, file: !112, line: 234, type: !1897, align: 64)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !112, line: 234, column: 5)
!2453 = !DILocalVariable(name: "len_div_2", scope: !2454, file: !112, line: 235, type: !148, align: 64)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !112, line: 235, column: 5)
!2455 = !DILocalVariable(name: "scratch_base", scope: !2456, file: !112, line: 239, type: !1897, align: 64)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !112, line: 239, column: 9)
!2457 = !DILocalVariable(name: "presorted_len", scope: !2458, file: !112, line: 241, type: !148, align: 64)
!2458 = distinct !DILexicalBlock(scope: !2456, file: !112, line: 241, column: 9)
!2459 = !DILocalVariable(name: "iter", scope: !2460, file: !112, line: 265, type: !2461, align: 64)
!2460 = distinct !DILexicalBlock(scope: !2458, file: !112, line: 265, column: 9)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<usize, 2>", scope: !2462, file: !10, size: 256, align: 64, flags: DIFlagPublic, elements: !2464, templateParams: !2495, identifier: "b65ca347882d861245c1de4e880f1347")
!2462 = !DINamespace(name: "iter", scope: !2463)
!2463 = !DINamespace(name: "array", scope: !83)
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !2461, file: !10, baseType: !2466, size: 256, align: 64, flags: DIFlagPrivate)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !448, file: !10, size: 256, align: 64, flags: DIFlagPublic, elements: !2467, templateParams: !2503, identifier: "7272d5db6351c5bd9047b49ae3d0441")
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2466, file: !10, baseType: !2469, size: 256, align: 64, flags: DIFlagPrivate)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !452, file: !10, size: 256, align: 64, flags: DIFlagPublic, elements: !2470, templateParams: !2501, identifier: "db2accff23916fd9709d88ee94b9ff3d")
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2469, file: !10, baseType: !2472, size: 256, align: 64, flags: DIFlagPrivate)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>", scope: !2473, file: !10, size: 256, align: 64, flags: DIFlagProtected, elements: !2474, templateParams: !2499, identifier: "b4adea54be96b478b313c53b87450e62")
!2473 = !DINamespace(name: "iter_inner", scope: !2462)
!2474 = !{!2475, !2481}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !2472, file: !10, baseType: !2476, size: 128, align: 64, flags: DIFlagPrivate)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IndexRange", scope: !2477, file: !10, size: 128, align: 64, flags: DIFlagProtected, elements: !2478, templateParams: !124, identifier: "6399049c448f3d948340da31d7f9cb52")
!2477 = !DINamespace(name: "index_range", scope: !284)
!2478 = !{!2479, !2480}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2476, file: !10, baseType: !148, size: 64, align: 64, flags: DIFlagPrivate)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2476, file: !10, baseType: !148, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2472, file: !10, baseType: !2482, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 128, align: 64, elements: !2497)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<usize>", scope: !441, file: !10, size: 64, align: 64, elements: !2484, templateParams: !2495, identifier: "66ae3aaa7001991d6ff5932061b4982f")
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !2483, file: !10, baseType: !445, align: 8)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2483, file: !10, baseType: !2487, size: 64, align: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<usize>", scope: !448, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !2488, templateParams: !2495, identifier: "2e69883e45a3a3af5bde60f15769dfdf")
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2487, file: !10, baseType: !2490, size: 64, align: 64, flags: DIFlagPrivate)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<usize>", scope: !452, file: !10, size: 64, align: 64, flags: DIFlagPublic, elements: !2491, templateParams: !2493, identifier: "bbe7413233f440b9253e9d941ef2e852")
!2491 = !{!2492}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2490, file: !10, baseType: !148, size: 64, align: 64, flags: DIFlagPrivate)
!2493 = !{!2494}
!2494 = !DITemplateTypeParameter(name: "P", type: !148)
!2495 = !{!2496}
!2496 = !DITemplateTypeParameter(name: "T", type: !148)
!2497 = !{!2498}
!2498 = !DISubrange(count: 2, lowerBound: 0)
!2499 = !{!2500}
!2500 = !DITemplateTypeParameter(name: "DATA", type: !2482)
!2501 = !{!2502}
!2502 = !DITemplateTypeParameter(name: "P", type: !2472)
!2503 = !{!2504}
!2504 = !DITemplateTypeParameter(name: "T", type: !2472)
!2505 = !DILocalVariable(name: "offset", scope: !2506, file: !112, line: 265, type: !148, align: 64)
!2506 = distinct !DILexicalBlock(scope: !2460, file: !112, line: 265, column: 9)
!2507 = !DILocalVariable(name: "src", scope: !2508, file: !112, line: 268, type: !1897, align: 64)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !112, line: 268, column: 13)
!2509 = !DILocalVariable(name: "dst", scope: !2510, file: !112, line: 269, type: !1897, align: 64)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !112, line: 269, column: 13)
!2511 = !DILocalVariable(name: "desired_len", scope: !2512, file: !112, line: 270, type: !148, align: 64)
!2512 = distinct !DILexicalBlock(scope: !2510, file: !112, line: 270, column: 13)
!2513 = !DILocalVariable(name: "iter", scope: !2514, file: !112, line: 272, type: !831, align: 64)
!2514 = distinct !DILexicalBlock(scope: !2512, file: !112, line: 272, column: 13)
!2515 = !DILocalVariable(name: "i", scope: !2516, file: !112, line: 272, type: !148, align: 64)
!2516 = distinct !DILexicalBlock(scope: !2514, file: !112, line: 272, column: 13)
!2517 = !DILocalVariable(name: "drop_guard", scope: !2518, file: !112, line: 279, type: !1951, align: 64)
!2518 = distinct !DILexicalBlock(scope: !2458, file: !112, line: 279, column: 9)
!2519 = !DILocation(line: 0, scope: !1960, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 847, column: 1, scope: !1968, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 292, column: 5, scope: !2458)
!2522 = !DILocation(line: 0, scope: !1968, inlinedAt: !2521)
!2523 = !DILocalVariable(name: "self", arg: 1, scope: !2524, file: !300, line: 2192, type: !2529)
!2524 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2525, file: !300, line: 2192, type: !2527, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !2530)
!2525 = !DINamespace(name: "{impl#58}", scope: !2526)
!2526 = !DINamespace(name: "impls", scope: !82)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!129, !2529, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !148, size: 64, align: 64, dwarfAddressSpace: 0)
!2530 = !{!2523, !2531}
!2531 = !DILocalVariable(name: "other", arg: 2, scope: !2524, file: !300, line: 2192, type: !2529)
!2532 = !DILocation(line: 2192, column: 19, scope: !2524, inlinedAt: !2533)
!2533 = !DILocation(line: 1100, column: 12, scope: !2534, inlinedAt: !2558)
!2534 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !2536, file: !2535, line: 1099, type: !2539, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2495, retainedNodes: !2554)
!2535 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!2536 = !DINamespace(name: "{impl#5}", scope: !2537)
!2537 = !DINamespace(name: "range", scope: !2538)
!2538 = !DINamespace(name: "iter", scope: !83)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!2541, !2553}
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !314, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !2542, templateParams: !124, identifier: "b643a56aa2623189b44587abe860a5b4")
!2542 = !{!2543}
!2543 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !2541, file: !10, size: 128, align: 64, elements: !2544, templateParams: !124, identifier: "87d5457d94278123d8996077ab9b85f", discriminator: !2551)
!2544 = !{!2545, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !2543, file: !10, baseType: !2546, size: 128, align: 64, extraData: i64 0)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !2541, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !124, templateParams: !2495, identifier: "541db2e223a81e99ac66f8bc7d9cbb24")
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !2543, file: !10, baseType: !2548, size: 128, align: 64, extraData: i64 1)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !2541, file: !10, size: 128, align: 64, flags: DIFlagPublic, elements: !2549, templateParams: !2495, identifier: "c40c3c307e2103e7409a090af8cdf371")
!2549 = !{!2550}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2548, file: !10, baseType: !148, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !10, baseType: !2552, size: 64, align: 64, flags: DIFlagArtificial)
!2552 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !831, size: 64, align: 64, dwarfAddressSpace: 0)
!2554 = !{!2555, !2556}
!2555 = !DILocalVariable(name: "self", arg: 1, scope: !2534, file: !2535, line: 1099, type: !2553)
!2556 = !DILocalVariable(name: "old", scope: !2557, file: !2535, line: 1101, type: !148, align: 64)
!2557 = distinct !DILexicalBlock(scope: !2534, file: !2535, line: 1101, column: 13)
!2558 = !DILocation(line: 1185, column: 14, scope: !2559, inlinedAt: !2565)
!2559 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !2560, file: !2535, line: 1184, type: !2539, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2563, retainedNodes: !2561)
!2560 = !DINamespace(name: "{impl#6}", scope: !2537)
!2561 = !{!2562}
!2562 = !DILocalVariable(name: "self", arg: 1, scope: !2559, file: !2535, line: 1184, type: !2553)
!2563 = !{!2564}
!2564 = !DITemplateTypeParameter(name: "A", type: !148)
!2565 = !DILocation(line: 272, column: 22, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2514, file: !112, discriminator: 2)
!2567 = !DILocation(line: 1099, column: 18, scope: !2534, inlinedAt: !2558)
!2568 = !DILocation(line: 1184, column: 13, scope: !2559, inlinedAt: !2565)
!2569 = !DILocation(line: 0, scope: !2433)
!2570 = !DILocalVariable(name: "count", scope: !2571, file: !253, line: 552, type: !148, align: 64)
!2571 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::ast::Span>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEBQ_", scope: !145, file: !253, line: 552, type: !1982, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !2572)
!2572 = !{!2573, !2574, !2570}
!2573 = !DILocalVariable(name: "src", arg: 1, scope: !2571, file: !253, line: 552, type: !1954)
!2574 = !DILocalVariable(name: "dst", arg: 2, scope: !2571, file: !253, line: 552, type: !1897)
!2575 = !DILocation(line: 0, scope: !2571, inlinedAt: !2576)
!2576 = !DILocation(line: 259, column: 13, scope: !2456)
!2577 = !DILocation(line: 0, scope: !2571, inlinedAt: !2578)
!2578 = !DILocation(line: 260, column: 13, scope: !2456)
!2579 = !DILocalVariable(name: "n", scope: !2580, file: !2535, line: 263, type: !148, align: 64)
!2580 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2581, file: !2535, line: 263, type: !2582, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !2584)
!2581 = !DINamespace(name: "{impl#49}", scope: !2537)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!148, !148, !148}
!2584 = !{!2585, !2579}
!2585 = !DILocalVariable(name: "start", arg: 1, scope: !2580, file: !2535, line: 263, type: !148)
!2586 = !DILocation(line: 0, scope: !2580, inlinedAt: !2587)
!2587 = !DILocation(line: 1103, column: 35, scope: !2557, inlinedAt: !2558)
!2588 = !DILocalVariable(name: "rhs", scope: !2589, file: !2590, line: 1001, type: !148, align: 64)
!2589 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2591, file: !2590, line: 1001, type: !2593, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !2595)
!2590 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "8efc3154315017505353298565bdaf01")
!2591 = !DINamespace(name: "{impl#11}", scope: !2592)
!2592 = !DINamespace(name: "num", scope: !83)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!148, !148, !148, !149}
!2595 = !{!2596, !2588}
!2596 = !DILocalVariable(name: "self", arg: 1, scope: !2589, file: !2590, line: 1001, type: !148)
!2597 = !DILocation(line: 0, scope: !2589, inlinedAt: !2598)
!2598 = !DILocation(line: 265, column: 28, scope: !2580, inlinedAt: !2587)
!2599 = !DILocation(line: 0, scope: !2571, inlinedAt: !2600)
!2600 = !DILocation(line: 273, column: 17, scope: !2516)
!2601 = !DILocation(line: 0, scope: !2450)
!2602 = !DILocalVariable(name: "count", arg: 2, scope: !2603, file: !142, line: 936, type: !148)
!2603 = distinct !DISubprogram(name: "add<regex_syntax::ast::Span>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3ast4Span3addBG_", scope: !143, file: !142, line: 936, type: !1908, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !2604)
!2604 = !{!2605, !2602}
!2605 = !DILocalVariable(name: "self", arg: 1, scope: !2603, file: !142, line: 936, type: !1897)
!2606 = !DILocation(line: 0, scope: !2603, inlinedAt: !2607)
!2607 = !DILocation(line: 243, column: 61, scope: !2456)
!2608 = !DILocation(line: 226, column: 8, scope: !2450)
!2609 = !DILocation(line: 230, column: 24, scope: !2450)
!2610 = !DILocation(line: 230, column: 8, scope: !2450)
!2611 = !DILocation(line: 0, scope: !2452)
!2612 = !DILocation(line: 0, scope: !2603, inlinedAt: !2613)
!2613 = !DILocation(line: 245, column: 24, scope: !2456)
!2614 = !DILocation(line: 0, scope: !2603, inlinedAt: !2615)
!2615 = !DILocation(line: 255, column: 33, scope: !2456)
!2616 = !DILocation(line: 0, scope: !2603, inlinedAt: !2617)
!2617 = !DILocation(line: 260, column: 45, scope: !2456)
!2618 = !DILocation(line: 0, scope: !2603, inlinedAt: !2619)
!2619 = !DILocation(line: 268, column: 30, scope: !2506)
!2620 = !DILocation(line: 235, column: 21, scope: !2452)
!2621 = !DILocation(line: 0, scope: !2454)
!2622 = !DILocation(line: 0, scope: !2603, inlinedAt: !2623)
!2623 = !DILocation(line: 246, column: 30, scope: !2456)
!2624 = !DILocation(line: 0, scope: !2603, inlinedAt: !2625)
!2625 = !DILocation(line: 255, column: 62, scope: !2456)
end_hunk_3
begin_hunk_4_@llvm.umin.i64
!4004 = !DILocation(line: 0, scope: !311, inlinedAt: !3998)
!4005 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !3998)
!4006 = !DILocation(line: 0, scope: !196, inlinedAt: !3962)
!4007 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3966)
!4008 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3968)
!4009 = !DILocation(line: 621, column: 18, scope: !196, inlinedAt: !3962)
!4010 = !DILocation(line: 0, scope: !280, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 621, column: 18, scope: !196, inlinedAt: !3962)
!4012 = !DILocation(line: 0, scope: !299, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4011)
!4014 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4013)
!4016 = !DILocation(line: 0, scope: !342, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4013)
!4018 = !DILocation(line: 0, scope: !352, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4017)
!4020 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4019)
!4021 = !DILocation(line: 0, scope: !311, inlinedAt: !4015)
!4022 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4015)
!4023 = !DILocation(line: 0, scope: !198, inlinedAt: !3962)
!4024 = !DILocation(line: 622, column: 28, scope: !198, inlinedAt: !3962)
!4025 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3970)
!4026 = !DILocation(line: 0, scope: !200, inlinedAt: !3962)
!4027 = !DILocation(line: 623, column: 28, scope: !200, inlinedAt: !3962)
!4028 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3972)
!4029 = !DILocation(line: 0, scope: !202, inlinedAt: !3962)
!4030 = !DILocation(line: 624, column: 28, scope: !202, inlinedAt: !3962)
!4031 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3974)
!4032 = !DILocation(line: 0, scope: !204, inlinedAt: !3962)
!4033 = !DILocation(line: 625, column: 28, scope: !204, inlinedAt: !3962)
!4034 = !DILocation(line: 871, column: 18, scope: !228, inlinedAt: !3976)
!4035 = !DILocation(line: 0, scope: !206, inlinedAt: !3962)
!4036 = !DILocation(line: 635, column: 18, scope: !206, inlinedAt: !3962)
!4037 = !DILocation(line: 0, scope: !280, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 635, column: 18, scope: !206, inlinedAt: !3962)
!4039 = !DILocation(line: 0, scope: !299, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4038)
!4041 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4040)
!4043 = !DILocation(line: 0, scope: !342, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4040)
!4045 = !DILocation(line: 0, scope: !352, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4044)
!4047 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4046)
!4048 = !DILocation(line: 0, scope: !311, inlinedAt: !4042)
!4049 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4042)
!4050 = !DILocation(line: 0, scope: !208, inlinedAt: !3962)
!4051 = !DILocation(line: 636, column: 18, scope: !208, inlinedAt: !3962)
!4052 = !DILocation(line: 0, scope: !280, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 636, column: 18, scope: !208, inlinedAt: !3962)
!4054 = !DILocation(line: 0, scope: !299, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4053)
!4056 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4055)
!4058 = !DILocation(line: 0, scope: !342, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4055)
!4060 = !DILocation(line: 0, scope: !352, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4059)
!4062 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4061)
!4063 = !DILocation(line: 0, scope: !311, inlinedAt: !4057)
!4064 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4057)
!4065 = !DILocation(line: 0, scope: !210, inlinedAt: !3962)
!4066 = !DILocation(line: 0, scope: !431, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 637, column: 19, scope: !210, inlinedAt: !3962)
!4068 = !DILocation(line: 0, scope: !430, inlinedAt: !4067)
!4069 = !DILocation(line: 0, scope: !429, inlinedAt: !4067)
!4070 = !DILocation(line: 0, scope: !428, inlinedAt: !4067)
!4071 = !DILocation(line: 0, scope: !426, inlinedAt: !4067)
!4072 = !DILocation(line: 0, scope: !463, inlinedAt: !4067)
!4073 = !DILocation(line: 0, scope: !465, inlinedAt: !4067)
!4074 = !DILocation(line: 0, scope: !467, inlinedAt: !4067)
!4075 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4067)
!4076 = !DILocation(line: 0, scope: !212, inlinedAt: !3962)
!4077 = !DILocation(line: 0, scope: !431, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 638, column: 19, scope: !212, inlinedAt: !3962)
!4079 = !DILocation(line: 0, scope: !430, inlinedAt: !4078)
!4080 = !DILocation(line: 0, scope: !429, inlinedAt: !4078)
!4081 = !DILocation(line: 0, scope: !428, inlinedAt: !4078)
!4082 = !DILocation(line: 0, scope: !426, inlinedAt: !4078)
!4083 = !DILocation(line: 0, scope: !463, inlinedAt: !4078)
!4084 = !DILocation(line: 0, scope: !465, inlinedAt: !4078)
!4085 = !DILocation(line: 0, scope: !467, inlinedAt: !4078)
!4086 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4078)
!4087 = !DILocation(line: 0, scope: !214, inlinedAt: !3962)
!4088 = !DILocation(line: 0, scope: !431, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 639, column: 62, scope: !214, inlinedAt: !3962)
!4090 = !DILocation(line: 0, scope: !430, inlinedAt: !4089)
!4091 = !DILocation(line: 0, scope: !429, inlinedAt: !4089)
!4092 = !DILocation(line: 0, scope: !428, inlinedAt: !4089)
!4093 = !DILocation(line: 0, scope: !426, inlinedAt: !4089)
!4094 = !DILocation(line: 0, scope: !463, inlinedAt: !4089)
!4095 = !DILocation(line: 0, scope: !465, inlinedAt: !4089)
!4096 = !DILocation(line: 0, scope: !467, inlinedAt: !4089)
!4097 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4089)
!4098 = !DILocation(line: 0, scope: !431, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 639, column: 28, scope: !214, inlinedAt: !3962)
!4100 = !DILocation(line: 0, scope: !430, inlinedAt: !4099)
!4101 = !DILocation(line: 0, scope: !429, inlinedAt: !4099)
!4102 = !DILocation(line: 0, scope: !428, inlinedAt: !4099)
!4103 = !DILocation(line: 0, scope: !426, inlinedAt: !4099)
!4104 = !DILocation(line: 0, scope: !463, inlinedAt: !4099)
!4105 = !DILocation(line: 0, scope: !465, inlinedAt: !4099)
!4106 = !DILocation(line: 0, scope: !467, inlinedAt: !4099)
!4107 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4099)
!4108 = !DILocation(line: 0, scope: !216, inlinedAt: !3962)
!4109 = !DILocation(line: 0, scope: !431, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 640, column: 63, scope: !216, inlinedAt: !3962)
!4111 = !DILocation(line: 0, scope: !430, inlinedAt: !4110)
!4112 = !DILocation(line: 0, scope: !429, inlinedAt: !4110)
!4113 = !DILocation(line: 0, scope: !428, inlinedAt: !4110)
!4114 = !DILocation(line: 0, scope: !426, inlinedAt: !4110)
!4115 = !DILocation(line: 0, scope: !463, inlinedAt: !4110)
!4116 = !DILocation(line: 0, scope: !465, inlinedAt: !4110)
!4117 = !DILocation(line: 0, scope: !467, inlinedAt: !4110)
!4118 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4110)
!4119 = !DILocation(line: 0, scope: !431, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 640, column: 29, scope: !216, inlinedAt: !3962)
!4121 = !DILocation(line: 0, scope: !430, inlinedAt: !4120)
!4122 = !DILocation(line: 0, scope: !429, inlinedAt: !4120)
!4123 = !DILocation(line: 0, scope: !428, inlinedAt: !4120)
!4124 = !DILocation(line: 0, scope: !426, inlinedAt: !4120)
!4125 = !DILocation(line: 0, scope: !463, inlinedAt: !4120)
!4126 = !DILocation(line: 0, scope: !465, inlinedAt: !4120)
!4127 = !DILocation(line: 0, scope: !467, inlinedAt: !4120)
!4128 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4120)
!4129 = !DILocation(line: 0, scope: !218, inlinedAt: !3962)
!4130 = !DILocation(line: 643, column: 18, scope: !218, inlinedAt: !3962)
!4131 = !DILocation(line: 0, scope: !280, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 643, column: 18, scope: !218, inlinedAt: !3962)
!4133 = !DILocation(line: 0, scope: !299, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4132)
!4135 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4134)
!4137 = !DILocation(line: 0, scope: !342, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4134)
!4139 = !DILocation(line: 0, scope: !352, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4138)
!4141 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4140)
!4142 = !DILocation(line: 0, scope: !311, inlinedAt: !4136)
!4143 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4136)
!4144 = !DILocation(line: 0, scope: !220, inlinedAt: !3962)
!4145 = !DILocation(line: 0, scope: !431, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 644, column: 18, scope: !220, inlinedAt: !3962)
!4147 = !DILocation(line: 0, scope: !430, inlinedAt: !4146)
!4148 = !DILocation(line: 0, scope: !429, inlinedAt: !4146)
!4149 = !DILocation(line: 0, scope: !428, inlinedAt: !4146)
!4150 = !DILocation(line: 0, scope: !426, inlinedAt: !4146)
!4151 = !DILocation(line: 0, scope: !463, inlinedAt: !4146)
!4152 = !DILocation(line: 0, scope: !465, inlinedAt: !4146)
!4153 = !DILocation(line: 0, scope: !467, inlinedAt: !4146)
!4154 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4146)
!4155 = !DILocation(line: 0, scope: !222, inlinedAt: !3962)
!4156 = !DILocation(line: 0, scope: !431, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 645, column: 18, scope: !222, inlinedAt: !3962)
!4158 = !DILocation(line: 0, scope: !430, inlinedAt: !4157)
!4159 = !DILocation(line: 0, scope: !429, inlinedAt: !4157)
!4160 = !DILocation(line: 0, scope: !428, inlinedAt: !4157)
!4161 = !DILocation(line: 0, scope: !426, inlinedAt: !4157)
!4162 = !DILocation(line: 0, scope: !463, inlinedAt: !4157)
!4163 = !DILocation(line: 0, scope: !465, inlinedAt: !4157)
!4164 = !DILocation(line: 0, scope: !467, inlinedAt: !4157)
!4165 = !DILocation(line: 879, column: 9, scope: !467, inlinedAt: !4157)
!4166 = !DILocation(line: 0, scope: !224, inlinedAt: !3962)
!4167 = !DILocation(line: 573, column: 14, scope: !252, inlinedAt: !3978)
!4168 = !DILocation(line: 970, column: 18, scope: !262, inlinedAt: !3980)
!4169 = !DILocation(line: 573, column: 14, scope: !252, inlinedAt: !3986)
!4170 = !DILocation(line: 970, column: 18, scope: !262, inlinedAt: !3982)
!4171 = !DILocation(line: 573, column: 14, scope: !252, inlinedAt: !3988)
!4172 = !DILocation(line: 970, column: 18, scope: !262, inlinedAt: !3984)
!4173 = !DILocation(line: 573, column: 14, scope: !252, inlinedAt: !3990)
!4174 = !DILocation(line: 0, scope: !3636)
!4175 = !DILocation(line: 0, scope: !3638)
!4176 = !DILocation(line: 0, scope: !3640)
!4177 = !DILocation(line: 0, scope: !3700, inlinedAt: !4178)
!4178 = !DILocation(line: 273, column: 46, scope: !3648)
!4179 = !DILocation(line: 0, scope: !3642)
!4180 = !DILocation(line: 0, scope: !3700, inlinedAt: !4181)
!4181 = !DILocation(line: 273, column: 58, scope: !3648)
!4182 = !DILocation(line: 0, scope: !3700, inlinedAt: !4183)
!4183 = !DILocation(line: 274, column: 38, scope: !3648)
!4184 = !DILocation(line: 0, scope: !3644)
!4185 = !DILocation(line: 0, scope: !3646)
!4186 = !DILocation(line: 2192, column: 26, scope: !3656, inlinedAt: !3660)
!4187 = !DILocation(line: 2192, column: 50, scope: !3656, inlinedAt: !3660)
!4188 = !DILocation(line: 970, column: 18, scope: !3700, inlinedAt: !3716)
!4189 = !DILocation(line: 970, column: 18, scope: !3700, inlinedAt: !3729)
!4190 = !DILocation(line: 0, scope: !3665, inlinedAt: !3666)
!4191 = !DILocation(line: 0, scope: !3648)
!4192 = !DILocation(line: 970, column: 18, scope: !3700, inlinedAt: !4178)
!4193 = !DILocation(line: 970, column: 18, scope: !3700, inlinedAt: !4181)
!4194 = !DILocation(line: 573, column: 14, scope: !3676, inlinedAt: !3697)
!4195 = !DILocation(line: 0, scope: !2199, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 847, column: 1, scope: !2206, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 570, column: 5, scope: !2180, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 274, column: 17, scope: !3648)
!4199 = !DILocation(line: 0, scope: !2206, inlinedAt: !4197)
!4200 = !DILocation(line: 0, scope: !2199, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 847, column: 1, scope: !2206, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 570, column: 5, scope: !2180, inlinedAt: !4198)
!4203 = !DILocation(line: 0, scope: !2206, inlinedAt: !4202)
!4204 = !DILocation(line: 0, scope: !2190, inlinedAt: !4198)
!4205 = !DILocation(line: 0, scope: !2219, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 306, column: 13, scope: !2199, inlinedAt: !4196)
!4207 = !DILocation(line: 0, scope: !2171, inlinedAt: !4198)
!4208 = !DILocation(line: 0, scope: !2227, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 540, column: 29, scope: !2171, inlinedAt: !4198)
!4210 = !DILocation(line: 0, scope: !2233, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 557, column: 13, scope: !2190, inlinedAt: !4198)
!4212 = !DILocation(line: 0, scope: !2227, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 565, column: 25, scope: !2190, inlinedAt: !4198)
!4214 = !DILocation(line: 1054, column: 22, scope: !2227, inlinedAt: !4209)
!4215 = !DILocation(line: 0, scope: !2170, inlinedAt: !4198)
!4216 = !DILocation(line: 541, column: 13, scope: !2170, inlinedAt: !4198)
!4217 = !DILocation(line: 0, scope: !280, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 541, column: 13, scope: !2170, inlinedAt: !4198)
!4219 = !DILocation(line: 0, scope: !299, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4218)
!4221 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4220)
!4223 = !DILocation(line: 0, scope: !342, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4220)
!4225 = !DILocation(line: 0, scope: !352, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4224)
!4227 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4226)
!4228 = !DILocation(line: 0, scope: !311, inlinedAt: !4222)
!4229 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4222)
!4230 = !DILocation(line: 573, column: 14, scope: !2233, inlinedAt: !4211)
!4231 = !DILocation(line: 560, column: 16, scope: !2190, inlinedAt: !4198)
!4232 = !DILocation(line: 1054, column: 22, scope: !2227, inlinedAt: !4213)
!4233 = !DILocation(line: 566, column: 17, scope: !2190, inlinedAt: !4198)
!4234 = !DILocation(line: 0, scope: !280, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 566, column: 17, scope: !2190, inlinedAt: !4198)
!4236 = !DILocation(line: 0, scope: !299, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4235)
!4238 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4237)
!4240 = !DILocation(line: 0, scope: !342, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4237)
!4242 = !DILocation(line: 0, scope: !352, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4241)
!4244 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4243)
!4245 = !DILocation(line: 0, scope: !311, inlinedAt: !4239)
!4246 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4239)
!4247 = !DILocation(line: 573, column: 14, scope: !2219, inlinedAt: !4206)
!4248 = !{!4249, !4251}
!4249 = distinct !{!4249, !4250, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!4250 = distinct !{!4250, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!4251 = distinct !{!4251, !4252, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_: argument 0"}
!4252 = distinct !{!4252, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_"}
!4253 = !DILocation(line: 571, column: 2, scope: !2171, inlinedAt: !4198)
!4254 = !DILocation(line: 1013, column: 17, scope: !3691, inlinedAt: !3695)
!4255 = !DILocation(line: 0, scope: !3650)
!4256 = !{!4257}
!4257 = distinct !{!4257, !4258, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_: argument 0"}
!4258 = distinct !{!4258, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_"}
!4259 = !DILocation(line: 286, column: 9, scope: !3650)
!4260 = !DILocation(line: 0, scope: !800, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 286, column: 9, scope: !3650)
!4262 = !DILocation(line: 0, scope: !822, inlinedAt: !4261)
!4263 = !DILocalVariable(name: "dst", arg: 2, scope: !4264, file: !253, line: 552, type: !119)
!4264 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEBQ_", scope: !145, file: !253, line: 552, type: !254, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !4265)
!4265 = !{!4266, !4263, !4267}
!4266 = !DILocalVariable(name: "src", arg: 1, scope: !4264, file: !253, line: 552, type: !191)
!4267 = !DILocalVariable(name: "count", scope: !4264, file: !253, line: 552, type: !148, align: 64)
!4268 = !DILocation(line: 0, scope: !4264, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 823, column: 13, scope: !845, inlinedAt: !4261)
!4270 = !DILocalVariable(name: "n", scope: !4271, file: !2535, line: 263, type: !148, align: 64)
!4271 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2581, file: !2535, line: 263, type: !2582, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4272)
!4272 = !{!4273, !4270}
!4273 = !DILocalVariable(name: "start", arg: 1, scope: !4271, file: !2535, line: 263, type: !148)
!4274 = !DILocation(line: 0, scope: !4271, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 1103, column: 35, scope: !4276, inlinedAt: !4281)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !2535, line: 1101, column: 13)
!4277 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !2536, file: !2535, line: 1099, type: !2539, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2495, retainedNodes: !4278)
!4278 = !{!4279, !4280}
!4279 = !DILocalVariable(name: "self", arg: 1, scope: !4277, file: !2535, line: 1099, type: !2553)
!4280 = !DILocalVariable(name: "old", scope: !4276, file: !2535, line: 1101, type: !148, align: 64)
!4281 = distinct !DILocation(line: 1185, column: 14, scope: !4282, inlinedAt: !4285)
!4282 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !2560, file: !2535, line: 1184, type: !2539, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2563, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "self", arg: 1, scope: !4282, file: !2535, line: 1184, type: !2553)
!4285 = distinct !DILocation(line: 811, column: 18, scope: !4286, inlinedAt: !4261)
!4286 = !DILexicalBlockFile(scope: !830, file: !112, discriminator: 2)
!4287 = !DILocalVariable(name: "rhs", scope: !4288, file: !2590, line: 1001, type: !148, align: 64)
!4288 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2591, file: !2590, line: 1001, type: !2593, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4289)
!4289 = !{!4290, !4287}
!4290 = !DILocalVariable(name: "self", arg: 1, scope: !4288, file: !2590, line: 1001, type: !148)
!4291 = !DILocation(line: 0, scope: !4288, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 265, column: 28, scope: !4271, inlinedAt: !4275)
!4293 = !DILocation(line: 0, scope: !850, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 816, column: 33, scope: !828, inlinedAt: !4261)
!4295 = !DILocation(line: 0, scope: !858, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 1039, column: 14, scope: !850, inlinedAt: !4294)
!4297 = !DILocation(line: 0, scope: !850, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 817, column: 35, scope: !839, inlinedAt: !4261)
!4299 = !DILocation(line: 0, scope: !858, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 1039, column: 14, scope: !870, inlinedAt: !4298)
!4301 = !DILocalVariable(name: "rhs", scope: !4302, file: !2590, line: 3872, type: !148, align: 64)
!4302 = distinct !DISubprogram(name: "is_multiple_of", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj14is_multiple_of", scope: !2591, file: !2590, line: 3872, type: !3382, scopeLine: 3872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4303)
!4303 = !{!4304, !4301}
!4304 = !DILocalVariable(name: "self", arg: 1, scope: !4302, file: !2590, line: 3872, type: !148)
!4305 = !DILocation(line: 0, scope: !4302, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 820, column: 17, scope: !841, inlinedAt: !4261)
!4307 = !DILocation(line: 0, scope: !812, inlinedAt: !4261)
!4308 = !DILocation(line: 0, scope: !814, inlinedAt: !4261)
!4309 = !DILocalVariable(name: "self", arg: 1, scope: !4310, file: !229, line: 837, type: !191)
!4310 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3addBI_", scope: !230, file: !229, line: 837, type: !232, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !182, retainedNodes: !4311)
!4311 = !{!4309, !4312}
!4312 = !DILocalVariable(name: "count", arg: 2, scope: !4310, file: !229, line: 837, type: !148)
!4313 = !DILocation(line: 0, scope: !4310, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 804, column: 29, scope: !818, inlinedAt: !4261)
!4315 = !DILocation(line: 0, scope: !4310, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 807, column: 32, scope: !822, inlinedAt: !4261)
!4317 = !DILocation(line: 0, scope: !4310, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 808, column: 33, scope: !824, inlinedAt: !4261)
!4319 = !DILocation(line: 0, scope: !816, inlinedAt: !4261)
!4320 = !DILocation(line: 0, scope: !875, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 809, column: 31, scope: !826, inlinedAt: !4261)
!4322 = !DILocation(line: 0, scope: !828, inlinedAt: !4261)
!4323 = !DILocation(line: 0, scope: !830, inlinedAt: !4261)
!4324 = !DILocation(line: 0, scope: !4310, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 824, column: 25, scope: !845, inlinedAt: !4261)
!4326 = !DILocation(line: 0, scope: !818, inlinedAt: !4261)
!4327 = !DILocation(line: 0, scope: !4310, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 825, column: 27, scope: !845, inlinedAt: !4261)
!4329 = !DILocation(line: 0, scope: !820, inlinedAt: !4261)
!4330 = !DILocation(line: 0, scope: !824, inlinedAt: !4261)
!4331 = !DILocation(line: 0, scope: !826, inlinedAt: !4261)
!4332 = !DILocation(line: 1184, column: 13, scope: !4282, inlinedAt: !4285)
!4333 = !DILocation(line: 1099, column: 18, scope: !4277, inlinedAt: !4281)
!4334 = !DILocalVariable(name: "self", arg: 1, scope: !4335, file: !300, line: 2192, type: !2529)
!4335 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2525, file: !300, line: 2192, type: !2527, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4336)
!4336 = !{!4334, !4337}
!4337 = !DILocalVariable(name: "other", arg: 2, scope: !4335, file: !300, line: 2192, type: !2529)
!4338 = !DILocation(line: 2192, column: 19, scope: !4335, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 1100, column: 12, scope: !4277, inlinedAt: !4281)
!4340 = !DILocation(line: 2192, column: 26, scope: !4335, inlinedAt: !4339)
!4341 = !DILocation(line: 808, column: 37, scope: !824, inlinedAt: !4261)
!4342 = !DILocation(line: 970, column: 18, scope: !875, inlinedAt: !4321)
!4343 = !DILocation(line: 871, column: 18, scope: !4310, inlinedAt: !4318)
!4344 = !DILocation(line: 871, column: 18, scope: !4310, inlinedAt: !4316)
!4345 = !DILocation(line: 1100, column: 12, scope: !4277, inlinedAt: !4281)
!4346 = !DILocation(line: 473, column: 18, scope: !858, inlinedAt: !4296)
!4347 = !DILocation(line: 0, scope: !839, inlinedAt: !4261)
!4348 = !DILocation(line: 473, column: 18, scope: !858, inlinedAt: !4300)
!4349 = !DILocation(line: 0, scope: !841, inlinedAt: !4261)
!4350 = !DILocation(line: 3875, column: 22, scope: !4302, inlinedAt: !4306)
!4351 = !DILocation(line: 820, column: 13, scope: !841, inlinedAt: !4261)
!4352 = !DILocation(line: 0, scope: !4276, inlinedAt: !4281)
!4353 = !DILocation(line: 1013, column: 17, scope: !4288, inlinedAt: !4292)
!4354 = !DILocation(line: 0, scope: !888, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 812, column: 34, scope: !830, inlinedAt: !4261)
!4356 = !DILocation(line: 0, scope: !907, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 702, column: 29, scope: !903, inlinedAt: !4355)
!4358 = !DILocation(line: 0, scope: !907, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 701, column: 31, scope: !903, inlinedAt: !4355)
!4360 = !DILocation(line: 0, scope: !915, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 703, column: 19, scope: !903, inlinedAt: !4355)
!4362 = !DILocation(line: 0, scope: !921, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 700, column: 9, scope: !903, inlinedAt: !4355)
!4364 = !DILocation(line: 698, column: 21, scope: !888, inlinedAt: !4355)
!4365 = !DILocation(line: 0, scope: !280, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 698, column: 21, scope: !888, inlinedAt: !4355)
!4367 = !DILocation(line: 0, scope: !299, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4366)
!4369 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4368)
!4371 = !DILocation(line: 0, scope: !342, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4368)
!4373 = !DILocation(line: 0, scope: !352, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4372)
!4375 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4374)
!4376 = !DILocation(line: 0, scope: !311, inlinedAt: !4370)
!4377 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4370)
!4378 = !DILocation(line: 0, scope: !901, inlinedAt: !4355)
!4379 = !DILocation(line: 699, column: 19, scope: !901, inlinedAt: !4355)
!4380 = !DILocation(line: 698, column: 20, scope: !888, inlinedAt: !4355)
!4381 = !DILocation(line: 0, scope: !903, inlinedAt: !4355)
!4382 = !DILocation(line: 573, column: 14, scope: !921, inlinedAt: !4363)
!4383 = !{!4384, !4386}
!4384 = distinct !{!4384, !4385, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_: argument 0"}
!4385 = distinct !{!4385, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_"}
!4386 = distinct !{!4386, !4385, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_: argument 1"}
!4387 = !{!4384, !4386, !4257}
!4388 = !DILocation(line: 701, column: 35, scope: !903, inlinedAt: !4355)
!4389 = !DILocation(line: 871, column: 18, scope: !907, inlinedAt: !4359)
!4390 = !DILocation(line: 702, column: 33, scope: !903, inlinedAt: !4355)
!4391 = !DILocation(line: 871, column: 18, scope: !907, inlinedAt: !4357)
!4392 = !DILocation(line: 970, column: 18, scope: !915, inlinedAt: !4361)
!4393 = !DILocation(line: 0, scope: !957, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 813, column: 46, scope: !830, inlinedAt: !4261)
!4395 = !DILocation(line: 0, scope: !969, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 735, column: 29, scope: !965, inlinedAt: !4394)
!4397 = !DILocation(line: 0, scope: !975, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 1118, column: 14, scope: !980, inlinedAt: !4396)
!4399 = !DILocation(line: 0, scope: !969, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 734, column: 31, scope: !965, inlinedAt: !4394)
!4401 = !DILocation(line: 0, scope: !975, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 1118, column: 14, scope: !969, inlinedAt: !4400)
!4403 = !DILocation(line: 0, scope: !986, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 736, column: 19, scope: !965, inlinedAt: !4394)
!4405 = !DILocation(line: 0, scope: !992, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 733, column: 9, scope: !965, inlinedAt: !4394)
!4407 = !DILocation(line: 731, column: 21, scope: !957, inlinedAt: !4394)
!4408 = !DILocation(line: 0, scope: !280, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 731, column: 21, scope: !957, inlinedAt: !4394)
!4410 = !DILocation(line: 0, scope: !299, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 166, column: 5, scope: !280, inlinedAt: !4409)
!4412 = !DILocation(line: 659, column: 36, scope: !311, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 1471, column: 33, scope: !299, inlinedAt: !4411)
!4414 = !DILocation(line: 0, scope: !342, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 1471, column: 14, scope: !299, inlinedAt: !4411)
!4416 = !DILocation(line: 0, scope: !352, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 1518, column: 47, scope: !342, inlinedAt: !4415)
!4418 = !DILocation(line: 1520, column: 5, scope: !352, inlinedAt: !4417)
!4419 = !DILocation(line: 0, scope: !311, inlinedAt: !4413)
!4420 = !DILocation(line: 660, column: 9, scope: !311, inlinedAt: !4413)
!4421 = !DILocation(line: 0, scope: !963, inlinedAt: !4394)
!4422 = !DILocation(line: 732, column: 19, scope: !963, inlinedAt: !4394)
!4423 = !DILocation(line: 731, column: 20, scope: !957, inlinedAt: !4394)
!4424 = !DILocation(line: 0, scope: !965, inlinedAt: !4394)
!4425 = !DILocation(line: 573, column: 14, scope: !992, inlinedAt: !4406)
!4426 = !{!4427, !4429}
!4427 = distinct !{!4427, !4428, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_: argument 0"}
!4428 = distinct !{!4428, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_"}
!4429 = distinct !{!4429, !4428, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_: argument 1"}
!4430 = !{!4427, !4429, !4257}
!4431 = !DILocation(line: 734, column: 44, scope: !965, inlinedAt: !4394)
!4432 = !DILocation(line: 473, column: 18, scope: !975, inlinedAt: !4402)
!4433 = !DILocation(line: 735, column: 42, scope: !965, inlinedAt: !4394)
!4434 = !DILocation(line: 473, column: 18, scope: !975, inlinedAt: !4398)
!4435 = !DILocation(line: 1054, column: 22, scope: !986, inlinedAt: !4404)
!4436 = !DILocation(line: 2192, column: 50, scope: !4335, inlinedAt: !4339)
!4437 = !DILocation(line: 821, column: 33, scope: !841, inlinedAt: !4261)
!4438 = !DILocation(line: 0, scope: !843, inlinedAt: !4261)
!4439 = !DILocation(line: 822, column: 28, scope: !843, inlinedAt: !4261)
!4440 = !DILocation(line: 0, scope: !845, inlinedAt: !4261)
!4441 = !DILocation(line: 573, column: 14, scope: !4264, inlinedAt: !4269)
!4442 = !DILocation(line: 824, column: 29, scope: !845, inlinedAt: !4261)
!4443 = !DILocation(line: 871, column: 18, scope: !4310, inlinedAt: !4325)
!4444 = !DILocation(line: 825, column: 31, scope: !845, inlinedAt: !4261)
!4445 = !DILocation(line: 871, column: 18, scope: !4310, inlinedAt: !4328)
!4446 = !DILocation(line: 820, column: 9, scope: !841, inlinedAt: !4261)
!4447 = !DILocation(line: 831, column: 12, scope: !841, inlinedAt: !4261)
!4448 = !DILocation(line: 832, column: 13, scope: !841, inlinedAt: !4261)
!4449 = !DILocation(line: 0, scope: !2219, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 306, column: 13, scope: !2199, inlinedAt: !3652)
!4451 = !DILocation(line: 573, column: 14, scope: !2219, inlinedAt: !4450)
!4452 = !{!4453, !4455}
!4453 = distinct !{!4453, !4454, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!4454 = distinct !{!4454, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!4455 = distinct !{!4455, !4456, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_: argument 0"}
!4456 = distinct !{!4456, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEEB1x_"}
!4457 = !DILocation(line: 220, column: 1, scope: !3609)
!4458 = !DILocation(line: 293, column: 2, scope: !3609)
!4459 = distinct !DISubprogram(name: "small_sort_general_with_scratch<regex_syntax::hir::ClassUnicodeRange, fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_", scope: !113, file: !112, line: 220, type: !4460, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1054, retainedNodes: !4471)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !2284, !4462, !1044}
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [core::mem::maybe_uninit::MaybeUninit<regex_syntax::hir::ClassUnicodeRange>]", file: !10, size: 128, align: 64, elements: !4463, templateParams: !124, identifier: "c5ed4cf7932c04c79dcaaae7a635104b")
!4463 = !{!4464, !4470}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !4462, file: !10, baseType: !4465, size: 64, align: 64)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64, align: 64, dwarfAddressSpace: 0)
!4466 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<regex_syntax::hir::ClassUnicodeRange>", scope: !441, file: !10, size: 64, align: 32, elements: !4467, templateParams: !1064, identifier: "f66cabe8b5b5feba57caac31f3f838c6")
!4467 = !{!4468, !4469}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !4466, file: !10, baseType: !445, align: 8)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4466, file: !10, baseType: !2333, size: 64, align: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4462, file: !10, baseType: !148, size: 64, align: 64, offset: 64)
!4471 = !{!4472, !4473, !4474, !4475, !4477, !4479, !4481, !4483, !4485, !4487, !4489, !4491, !4493, !4495, !4497, !4499}
!4472 = !DILocalVariable(name: "v", arg: 1, scope: !4459, file: !112, line: 221, type: !2284)
!4473 = !DILocalVariable(name: "scratch", arg: 2, scope: !4459, file: !112, line: 222, type: !4462)
!4474 = !DILocalVariable(name: "is_less", arg: 3, scope: !4459, file: !112, line: 223, type: !1044)
!4475 = !DILocalVariable(name: "len", scope: !4476, file: !112, line: 225, type: !148, align: 64)
!4476 = distinct !DILexicalBlock(scope: !4459, file: !112, line: 225, column: 5)
!4477 = !DILocalVariable(name: "v_base", scope: !4478, file: !112, line: 234, type: !1038, align: 64)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !112, line: 234, column: 5)
!4479 = !DILocalVariable(name: "len_div_2", scope: !4480, file: !112, line: 235, type: !148, align: 64)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !112, line: 235, column: 5)
!4481 = !DILocalVariable(name: "scratch_base", scope: !4482, file: !112, line: 239, type: !1038, align: 64)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !112, line: 239, column: 9)
!4483 = !DILocalVariable(name: "presorted_len", scope: !4484, file: !112, line: 241, type: !148, align: 64)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !112, line: 241, column: 9)
!4485 = !DILocalVariable(name: "iter", scope: !4486, file: !112, line: 265, type: !2461, align: 64)
!4486 = distinct !DILexicalBlock(scope: !4484, file: !112, line: 265, column: 9)
!4487 = !DILocalVariable(name: "offset", scope: !4488, file: !112, line: 265, type: !148, align: 64)
!4488 = distinct !DILexicalBlock(scope: !4486, file: !112, line: 265, column: 9)
!4489 = !DILocalVariable(name: "src", scope: !4490, file: !112, line: 268, type: !1038, align: 64)
!4490 = distinct !DILexicalBlock(scope: !4488, file: !112, line: 268, column: 13)
!4491 = !DILocalVariable(name: "dst", scope: !4492, file: !112, line: 269, type: !1038, align: 64)
!4492 = distinct !DILexicalBlock(scope: !4490, file: !112, line: 269, column: 13)
!4493 = !DILocalVariable(name: "desired_len", scope: !4494, file: !112, line: 270, type: !148, align: 64)
!4494 = distinct !DILexicalBlock(scope: !4492, file: !112, line: 270, column: 13)
!4495 = !DILocalVariable(name: "iter", scope: !4496, file: !112, line: 272, type: !831, align: 64)
!4496 = distinct !DILexicalBlock(scope: !4494, file: !112, line: 272, column: 13)
!4497 = !DILocalVariable(name: "i", scope: !4498, file: !112, line: 272, type: !148, align: 64)
!4498 = distinct !DILexicalBlock(scope: !4496, file: !112, line: 272, column: 13)
!4499 = !DILocalVariable(name: "drop_guard", scope: !4500, file: !112, line: 279, type: !2343, align: 64)
!4500 = distinct !DILexicalBlock(scope: !4484, file: !112, line: 279, column: 9)
!4501 = !DILocation(line: 0, scope: !2351, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 847, column: 1, scope: !2358, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 292, column: 5, scope: !4484)
!4504 = !DILocation(line: 0, scope: !2358, inlinedAt: !4503)
!4505 = !DILocalVariable(name: "self", arg: 1, scope: !4506, file: !300, line: 2192, type: !2529)
!4506 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2525, file: !300, line: 2192, type: !2527, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4507)
!4507 = !{!4505, !4508}
!4508 = !DILocalVariable(name: "other", arg: 2, scope: !4506, file: !300, line: 2192, type: !2529)
!4509 = !DILocation(line: 2192, column: 19, scope: !4506, inlinedAt: !4510)
!4510 = !DILocation(line: 1100, column: 12, scope: !4511, inlinedAt: !4516)
!4511 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !2536, file: !2535, line: 1099, type: !2539, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2495, retainedNodes: !4512)
!4512 = !{!4513, !4514}
!4513 = !DILocalVariable(name: "self", arg: 1, scope: !4511, file: !2535, line: 1099, type: !2553)
!4514 = !DILocalVariable(name: "old", scope: !4515, file: !2535, line: 1101, type: !148, align: 64)
!4515 = distinct !DILexicalBlock(scope: !4511, file: !2535, line: 1101, column: 13)
!4516 = !DILocation(line: 1185, column: 14, scope: !4517, inlinedAt: !4520)
!4517 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !2560, file: !2535, line: 1184, type: !2539, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2563, retainedNodes: !4518)
!4518 = !{!4519}
!4519 = !DILocalVariable(name: "self", arg: 1, scope: !4517, file: !2535, line: 1184, type: !2553)
!4520 = !DILocation(line: 272, column: 22, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !4496, file: !112, discriminator: 2)
!4522 = !DILocation(line: 1099, column: 18, scope: !4511, inlinedAt: !4516)
!4523 = !DILocation(line: 1184, column: 13, scope: !4517, inlinedAt: !4520)
!4524 = !DILocation(line: 0, scope: !4459)
!4525 = !DILocalVariable(name: "count", scope: !4526, file: !253, line: 552, type: !148, align: 64)
!4526 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEBQ_", scope: !145, file: !253, line: 552, type: !1132, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !4527)
!4527 = !{!4528, !4529, !4525}
!4528 = !DILocalVariable(name: "src", arg: 1, scope: !4526, file: !253, line: 552, type: !1073)
!4529 = !DILocalVariable(name: "dst", arg: 2, scope: !4526, file: !253, line: 552, type: !1038)
!4530 = !DILocation(line: 0, scope: !4526, inlinedAt: !4531)
!4531 = !DILocation(line: 259, column: 13, scope: !4482)
!4532 = !DILocation(line: 0, scope: !4526, inlinedAt: !4533)
!4533 = !DILocation(line: 260, column: 13, scope: !4482)
!4534 = !DILocalVariable(name: "n", scope: !4535, file: !2535, line: 263, type: !148, align: 64)
!4535 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2581, file: !2535, line: 263, type: !2582, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4536)
!4536 = !{!4537, !4534}
!4537 = !DILocalVariable(name: "start", arg: 1, scope: !4535, file: !2535, line: 263, type: !148)
!4538 = !DILocation(line: 0, scope: !4535, inlinedAt: !4539)
!4539 = !DILocation(line: 1103, column: 35, scope: !4515, inlinedAt: !4516)
!4540 = !DILocalVariable(name: "rhs", scope: !4541, file: !2590, line: 1001, type: !148, align: 64)
!4541 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2591, file: !2590, line: 1001, type: !2593, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !4542)
!4542 = !{!4543, !4540}
!4543 = !DILocalVariable(name: "self", arg: 1, scope: !4541, file: !2590, line: 1001, type: !148)
!4544 = !DILocation(line: 0, scope: !4541, inlinedAt: !4545)
!4545 = !DILocation(line: 265, column: 28, scope: !4535, inlinedAt: !4539)
!4546 = !DILocation(line: 0, scope: !4526, inlinedAt: !4547)
!4547 = !DILocation(line: 273, column: 17, scope: !4498)
!4548 = !DILocation(line: 0, scope: !4476)
!4549 = !DILocalVariable(name: "count", arg: 2, scope: !4550, file: !142, line: 936, type: !148)
!4550 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3addBG_", scope: !143, file: !142, line: 936, type: !1060, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !4551)
!4551 = !{!4552, !4549}
!4552 = !DILocalVariable(name: "self", arg: 1, scope: !4550, file: !142, line: 936, type: !1038)
!4553 = !DILocation(line: 0, scope: !4550, inlinedAt: !4554)
!4554 = !DILocation(line: 243, column: 61, scope: !4482)
!4555 = !DILocation(line: 226, column: 8, scope: !4476)
!4556 = !DILocation(line: 230, column: 24, scope: !4476)
!4557 = !DILocation(line: 230, column: 8, scope: !4476)
!4558 = !DILocation(line: 0, scope: !4478)
!4559 = !DILocation(line: 0, scope: !4550, inlinedAt: !4560)
!4560 = !DILocation(line: 245, column: 24, scope: !4482)
!4561 = !DILocation(line: 0, scope: !4550, inlinedAt: !4562)
!4562 = !DILocation(line: 255, column: 33, scope: !4482)
!4563 = !DILocation(line: 0, scope: !4550, inlinedAt: !4564)
!4564 = !DILocation(line: 260, column: 45, scope: !4482)
!4565 = !DILocation(line: 0, scope: !4550, inlinedAt: !4566)
!4566 = !DILocation(line: 268, column: 30, scope: !4488)
!4567 = !DILocation(line: 235, column: 21, scope: !4478)
!4568 = !DILocation(line: 0, scope: !4480)
!4569 = !DILocation(line: 0, scope: !4550, inlinedAt: !4570)
!4570 = !DILocation(line: 246, column: 30, scope: !4482)
!4571 = !DILocation(line: 0, scope: !4550, inlinedAt: !4572)
!4572 = !DILocation(line: 255, column: 62, scope: !4482)
!4573 = !DILocation(line: 0, scope: !4550, inlinedAt: !4574)
!4574 = !DILocation(line: 260, column: 74, scope: !4482)
!4575 = !DILocation(line: 0, scope: !4482)
!4576 = !DILocation(line: 0, scope: !4550, inlinedAt: !4577)
!4577 = !DILocation(line: 247, column: 30, scope: !4482)
!4578 = !DILocation(line: 0, scope: !4550, inlinedAt: !4579)
!4579 = !DILocation(line: 269, column: 36, scope: !4490)
!4580 = !DILocation(line: 241, column: 66, scope: !4482)
!4581 = !DILocation(line: 231, column: 9, scope: !4476)
!4582 = !DILocation(line: 252, column: 19, scope: !4482)
!4583 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4554)
!4584 = !DILocation(line: 243, column: 13, scope: !4482)
!4585 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4560)
!4586 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4570)
!4587 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4577)
!4588 = !DILocation(line: 244, column: 13, scope: !4482)
!4589 = !DILocation(line: 0, scope: !4484)
!4590 = !DILocation(line: 241, column: 29, scope: !4482)
!4591 = !DILocation(line: 573, column: 14, scope: !4526, inlinedAt: !4531)
!4592 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4564)
!4593 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4574)
!4594 = !DILocation(line: 573, column: 14, scope: !4526, inlinedAt: !4533)
!4595 = !DILocation(line: 252, column: 16, scope: !4482)
!4596 = !DILocation(line: 0, scope: !1070, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 254, column: 13, scope: !4482)
!4598 = !DILocation(line: 0, scope: !1110, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 620, column: 35, scope: !1070, inlinedAt: !4597)
!4600 = !DILocation(line: 0, scope: !1110, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 621, column: 35, scope: !1078, inlinedAt: !4597)
!4602 = !DILocation(line: 0, scope: !1110, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 621, column: 52, scope: !1078, inlinedAt: !4597)
!4604 = !DILocation(line: 0, scope: !1110, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 622, column: 24, scope: !1080, inlinedAt: !4597)
!4606 = !DILocation(line: 0, scope: !1110, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 623, column: 24, scope: !1082, inlinedAt: !4597)
!4608 = !DILocation(line: 0, scope: !1110, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 624, column: 24, scope: !1084, inlinedAt: !4597)
!4610 = !DILocation(line: 0, scope: !1110, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 625, column: 24, scope: !1086, inlinedAt: !4597)
!4612 = !DILocation(line: 0, scope: !1131, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 647, column: 9, scope: !1106, inlinedAt: !4597)
!4614 = !DILocation(line: 0, scope: !1140, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 648, column: 42, scope: !1106, inlinedAt: !4597)
!4616 = !DILocation(line: 0, scope: !1140, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 649, column: 42, scope: !1106, inlinedAt: !4597)
!4618 = !DILocation(line: 0, scope: !1140, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 650, column: 43, scope: !1106, inlinedAt: !4597)
!4620 = !DILocation(line: 0, scope: !1131, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 648, column: 9, scope: !1106, inlinedAt: !4597)
!4622 = !DILocation(line: 0, scope: !1131, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 649, column: 9, scope: !1106, inlinedAt: !4597)
!4624 = !DILocation(line: 0, scope: !1131, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 650, column: 9, scope: !1106, inlinedAt: !4597)
!4626 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4599)
!4627 = !DILocation(line: 620, column: 18, scope: !1070, inlinedAt: !4597)
!4628 = !DILocation(line: 0, scope: !1159, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 620, column: 18, scope: !1070, inlinedAt: !4597)
!4630 = !DILocation(line: 0, scope: !1174, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4629)
!4632 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4631)
!4634 = !DILocation(line: 0, scope: !1192, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !4631)
!4636 = !DILocation(line: 0, scope: !1201, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !4635)
!4638 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !4637)
!4639 = !DILocation(line: 0, scope: !1184, inlinedAt: !4633)
!4640 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4633)
!4641 = !DILocation(line: 0, scope: !1078, inlinedAt: !4597)
!4642 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4601)
!4643 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4603)
!4644 = !DILocation(line: 621, column: 18, scope: !1078, inlinedAt: !4597)
!4645 = !DILocation(line: 0, scope: !1159, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 621, column: 18, scope: !1078, inlinedAt: !4597)
!4647 = !DILocation(line: 0, scope: !1174, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4646)
!4649 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4648)
!4651 = !DILocation(line: 0, scope: !1192, inlinedAt: !4652)
end_hunk_4
begin_hunk_5_@llvm.umin.i64
!4854 = !DILocation(line: 0, scope: !1184, inlinedAt: !4848)
!4855 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4848)
!4856 = !DILocation(line: 0, scope: !1078, inlinedAt: !4812)
!4857 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4816)
!4858 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4818)
!4859 = !DILocation(line: 621, column: 18, scope: !1078, inlinedAt: !4812)
!4860 = !DILocation(line: 0, scope: !1159, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 621, column: 18, scope: !1078, inlinedAt: !4812)
!4862 = !DILocation(line: 0, scope: !1174, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4861)
!4864 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4863)
!4866 = !DILocation(line: 0, scope: !1192, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !4863)
!4868 = !DILocation(line: 0, scope: !1201, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !4867)
!4870 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !4869)
!4871 = !DILocation(line: 0, scope: !1184, inlinedAt: !4865)
!4872 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4865)
!4873 = !DILocation(line: 0, scope: !1080, inlinedAt: !4812)
!4874 = !DILocation(line: 622, column: 28, scope: !1080, inlinedAt: !4812)
!4875 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4820)
!4876 = !DILocation(line: 0, scope: !1082, inlinedAt: !4812)
!4877 = !DILocation(line: 623, column: 28, scope: !1082, inlinedAt: !4812)
!4878 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4822)
!4879 = !DILocation(line: 0, scope: !1084, inlinedAt: !4812)
!4880 = !DILocation(line: 624, column: 28, scope: !1084, inlinedAt: !4812)
!4881 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4824)
!4882 = !DILocation(line: 0, scope: !1086, inlinedAt: !4812)
!4883 = !DILocation(line: 625, column: 28, scope: !1086, inlinedAt: !4812)
!4884 = !DILocation(line: 871, column: 18, scope: !1110, inlinedAt: !4826)
!4885 = !DILocation(line: 0, scope: !1088, inlinedAt: !4812)
!4886 = !DILocation(line: 635, column: 18, scope: !1088, inlinedAt: !4812)
!4887 = !DILocation(line: 0, scope: !1159, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 635, column: 18, scope: !1088, inlinedAt: !4812)
!4889 = !DILocation(line: 0, scope: !1174, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4888)
!4891 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4890)
!4893 = !DILocation(line: 0, scope: !1192, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !4890)
!4895 = !DILocation(line: 0, scope: !1201, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !4894)
!4897 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !4896)
!4898 = !DILocation(line: 0, scope: !1184, inlinedAt: !4892)
!4899 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4892)
!4900 = !DILocation(line: 0, scope: !1090, inlinedAt: !4812)
!4901 = !DILocation(line: 636, column: 18, scope: !1090, inlinedAt: !4812)
!4902 = !DILocation(line: 0, scope: !1159, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 636, column: 18, scope: !1090, inlinedAt: !4812)
!4904 = !DILocation(line: 0, scope: !1174, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4903)
!4906 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4905)
!4908 = !DILocation(line: 0, scope: !1192, inlinedAt: !4909)
!4909 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !4905)
!4910 = !DILocation(line: 0, scope: !1201, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !4909)
!4912 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !4911)
!4913 = !DILocation(line: 0, scope: !1184, inlinedAt: !4907)
!4914 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4907)
!4915 = !DILocation(line: 0, scope: !1092, inlinedAt: !4812)
!4916 = !DILocation(line: 0, scope: !1279, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 637, column: 19, scope: !1092, inlinedAt: !4812)
!4918 = !DILocation(line: 0, scope: !1278, inlinedAt: !4917)
!4919 = !DILocation(line: 0, scope: !1277, inlinedAt: !4917)
!4920 = !DILocation(line: 0, scope: !1276, inlinedAt: !4917)
!4921 = !DILocation(line: 0, scope: !1275, inlinedAt: !4917)
!4922 = !DILocation(line: 0, scope: !1305, inlinedAt: !4917)
!4923 = !DILocation(line: 0, scope: !1307, inlinedAt: !4917)
!4924 = !DILocation(line: 0, scope: !1309, inlinedAt: !4917)
!4925 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4917)
!4926 = !DILocation(line: 0, scope: !1094, inlinedAt: !4812)
!4927 = !DILocation(line: 0, scope: !1279, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 638, column: 19, scope: !1094, inlinedAt: !4812)
!4929 = !DILocation(line: 0, scope: !1278, inlinedAt: !4928)
!4930 = !DILocation(line: 0, scope: !1277, inlinedAt: !4928)
!4931 = !DILocation(line: 0, scope: !1276, inlinedAt: !4928)
!4932 = !DILocation(line: 0, scope: !1275, inlinedAt: !4928)
!4933 = !DILocation(line: 0, scope: !1305, inlinedAt: !4928)
!4934 = !DILocation(line: 0, scope: !1307, inlinedAt: !4928)
!4935 = !DILocation(line: 0, scope: !1309, inlinedAt: !4928)
!4936 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4928)
!4937 = !DILocation(line: 0, scope: !1096, inlinedAt: !4812)
!4938 = !DILocation(line: 0, scope: !1279, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 639, column: 62, scope: !1096, inlinedAt: !4812)
!4940 = !DILocation(line: 0, scope: !1278, inlinedAt: !4939)
!4941 = !DILocation(line: 0, scope: !1277, inlinedAt: !4939)
!4942 = !DILocation(line: 0, scope: !1276, inlinedAt: !4939)
!4943 = !DILocation(line: 0, scope: !1275, inlinedAt: !4939)
!4944 = !DILocation(line: 0, scope: !1305, inlinedAt: !4939)
!4945 = !DILocation(line: 0, scope: !1307, inlinedAt: !4939)
!4946 = !DILocation(line: 0, scope: !1309, inlinedAt: !4939)
!4947 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4939)
!4948 = !DILocation(line: 0, scope: !1279, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 639, column: 28, scope: !1096, inlinedAt: !4812)
!4950 = !DILocation(line: 0, scope: !1278, inlinedAt: !4949)
!4951 = !DILocation(line: 0, scope: !1277, inlinedAt: !4949)
!4952 = !DILocation(line: 0, scope: !1276, inlinedAt: !4949)
!4953 = !DILocation(line: 0, scope: !1275, inlinedAt: !4949)
!4954 = !DILocation(line: 0, scope: !1305, inlinedAt: !4949)
!4955 = !DILocation(line: 0, scope: !1307, inlinedAt: !4949)
!4956 = !DILocation(line: 0, scope: !1309, inlinedAt: !4949)
!4957 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4949)
!4958 = !DILocation(line: 0, scope: !1098, inlinedAt: !4812)
!4959 = !DILocation(line: 0, scope: !1279, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 640, column: 63, scope: !1098, inlinedAt: !4812)
!4961 = !DILocation(line: 0, scope: !1278, inlinedAt: !4960)
!4962 = !DILocation(line: 0, scope: !1277, inlinedAt: !4960)
!4963 = !DILocation(line: 0, scope: !1276, inlinedAt: !4960)
!4964 = !DILocation(line: 0, scope: !1275, inlinedAt: !4960)
!4965 = !DILocation(line: 0, scope: !1305, inlinedAt: !4960)
!4966 = !DILocation(line: 0, scope: !1307, inlinedAt: !4960)
!4967 = !DILocation(line: 0, scope: !1309, inlinedAt: !4960)
!4968 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4960)
!4969 = !DILocation(line: 0, scope: !1279, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 640, column: 29, scope: !1098, inlinedAt: !4812)
!4971 = !DILocation(line: 0, scope: !1278, inlinedAt: !4970)
!4972 = !DILocation(line: 0, scope: !1277, inlinedAt: !4970)
!4973 = !DILocation(line: 0, scope: !1276, inlinedAt: !4970)
!4974 = !DILocation(line: 0, scope: !1275, inlinedAt: !4970)
!4975 = !DILocation(line: 0, scope: !1305, inlinedAt: !4970)
!4976 = !DILocation(line: 0, scope: !1307, inlinedAt: !4970)
!4977 = !DILocation(line: 0, scope: !1309, inlinedAt: !4970)
!4978 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4970)
!4979 = !DILocation(line: 0, scope: !1100, inlinedAt: !4812)
!4980 = !DILocation(line: 643, column: 18, scope: !1100, inlinedAt: !4812)
!4981 = !DILocation(line: 0, scope: !1159, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 643, column: 18, scope: !1100, inlinedAt: !4812)
!4983 = !DILocation(line: 0, scope: !1174, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !4982)
!4985 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !4984)
!4987 = !DILocation(line: 0, scope: !1192, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !4984)
!4989 = !DILocation(line: 0, scope: !1201, inlinedAt: !4990)
!4990 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !4988)
!4991 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !4990)
!4992 = !DILocation(line: 0, scope: !1184, inlinedAt: !4986)
!4993 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !4986)
!4994 = !DILocation(line: 0, scope: !1102, inlinedAt: !4812)
!4995 = !DILocation(line: 0, scope: !1279, inlinedAt: !4996)
!4996 = distinct !DILocation(line: 644, column: 18, scope: !1102, inlinedAt: !4812)
!4997 = !DILocation(line: 0, scope: !1278, inlinedAt: !4996)
!4998 = !DILocation(line: 0, scope: !1277, inlinedAt: !4996)
!4999 = !DILocation(line: 0, scope: !1276, inlinedAt: !4996)
!5000 = !DILocation(line: 0, scope: !1275, inlinedAt: !4996)
!5001 = !DILocation(line: 0, scope: !1305, inlinedAt: !4996)
!5002 = !DILocation(line: 0, scope: !1307, inlinedAt: !4996)
!5003 = !DILocation(line: 0, scope: !1309, inlinedAt: !4996)
!5004 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !4996)
!5005 = !DILocation(line: 0, scope: !1104, inlinedAt: !4812)
!5006 = !DILocation(line: 0, scope: !1279, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 645, column: 18, scope: !1104, inlinedAt: !4812)
!5008 = !DILocation(line: 0, scope: !1278, inlinedAt: !5007)
!5009 = !DILocation(line: 0, scope: !1277, inlinedAt: !5007)
!5010 = !DILocation(line: 0, scope: !1276, inlinedAt: !5007)
!5011 = !DILocation(line: 0, scope: !1275, inlinedAt: !5007)
!5012 = !DILocation(line: 0, scope: !1305, inlinedAt: !5007)
!5013 = !DILocation(line: 0, scope: !1307, inlinedAt: !5007)
!5014 = !DILocation(line: 0, scope: !1309, inlinedAt: !5007)
!5015 = !DILocation(line: 879, column: 9, scope: !1309, inlinedAt: !5007)
!5016 = !DILocation(line: 0, scope: !1106, inlinedAt: !4812)
!5017 = !DILocation(line: 573, column: 14, scope: !1131, inlinedAt: !4828)
!5018 = !DILocation(line: 970, column: 18, scope: !1140, inlinedAt: !4830)
!5019 = !DILocation(line: 573, column: 14, scope: !1131, inlinedAt: !4836)
!5020 = !DILocation(line: 970, column: 18, scope: !1140, inlinedAt: !4832)
!5021 = !DILocation(line: 573, column: 14, scope: !1131, inlinedAt: !4838)
!5022 = !DILocation(line: 970, column: 18, scope: !1140, inlinedAt: !4834)
!5023 = !DILocation(line: 573, column: 14, scope: !1131, inlinedAt: !4840)
!5024 = !DILocation(line: 0, scope: !4486)
!5025 = !DILocation(line: 0, scope: !4488)
!5026 = !DILocation(line: 0, scope: !4490)
!5027 = !DILocation(line: 0, scope: !4550, inlinedAt: !5028)
!5028 = !DILocation(line: 273, column: 46, scope: !4498)
!5029 = !DILocation(line: 0, scope: !4492)
!5030 = !DILocation(line: 0, scope: !4550, inlinedAt: !5031)
!5031 = !DILocation(line: 273, column: 58, scope: !4498)
!5032 = !DILocation(line: 0, scope: !4550, inlinedAt: !5033)
!5033 = !DILocation(line: 274, column: 38, scope: !4498)
!5034 = !DILocation(line: 0, scope: !4494)
!5035 = !DILocation(line: 0, scope: !4496)
!5036 = !DILocation(line: 2192, column: 26, scope: !4506, inlinedAt: !4510)
!5037 = !DILocation(line: 2192, column: 50, scope: !4506, inlinedAt: !4510)
!5038 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4566)
!5039 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !4579)
!5040 = !DILocation(line: 0, scope: !4515, inlinedAt: !4516)
!5041 = !DILocation(line: 0, scope: !4498)
!5042 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !5028)
!5043 = !DILocation(line: 970, column: 18, scope: !4550, inlinedAt: !5031)
!5044 = !DILocation(line: 573, column: 14, scope: !4526, inlinedAt: !4547)
!5045 = !DILocation(line: 0, scope: !2351, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 847, column: 1, scope: !2358, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 570, column: 5, scope: !2332, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 274, column: 17, scope: !4498)
!5049 = !DILocation(line: 0, scope: !2358, inlinedAt: !5047)
!5050 = !DILocation(line: 0, scope: !2351, inlinedAt: !5051)
!5051 = distinct !DILocation(line: 847, column: 1, scope: !2358, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 570, column: 5, scope: !2332, inlinedAt: !5048)
!5053 = !DILocation(line: 0, scope: !2358, inlinedAt: !5052)
!5054 = !DILocation(line: 0, scope: !2342, inlinedAt: !5048)
!5055 = !DILocation(line: 0, scope: !2371, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 306, column: 13, scope: !2351, inlinedAt: !5046)
!5057 = !DILocation(line: 0, scope: !2323, inlinedAt: !5048)
!5058 = !DILocation(line: 0, scope: !2379, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 540, column: 29, scope: !2323, inlinedAt: !5048)
!5060 = !DILocation(line: 0, scope: !2385, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 557, column: 13, scope: !2342, inlinedAt: !5048)
!5062 = !DILocation(line: 0, scope: !2379, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 565, column: 25, scope: !2342, inlinedAt: !5048)
!5064 = !DILocation(line: 1054, column: 22, scope: !2379, inlinedAt: !5059)
!5065 = !DILocation(line: 0, scope: !2322, inlinedAt: !5048)
!5066 = !DILocation(line: 541, column: 13, scope: !2322, inlinedAt: !5048)
!5067 = !DILocation(line: 0, scope: !1159, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 541, column: 13, scope: !2322, inlinedAt: !5048)
!5069 = !DILocation(line: 0, scope: !1174, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !5068)
!5071 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !5070)
!5073 = !DILocation(line: 0, scope: !1192, inlinedAt: !5074)
!5074 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !5070)
!5075 = !DILocation(line: 0, scope: !1201, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !5074)
!5077 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !5076)
!5078 = !DILocation(line: 0, scope: !1184, inlinedAt: !5072)
!5079 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !5072)
!5080 = !DILocation(line: 573, column: 14, scope: !2385, inlinedAt: !5061)
!5081 = !DILocation(line: 560, column: 16, scope: !2342, inlinedAt: !5048)
!5082 = !DILocation(line: 1054, column: 22, scope: !2379, inlinedAt: !5063)
!5083 = !DILocation(line: 566, column: 17, scope: !2342, inlinedAt: !5048)
!5084 = !DILocation(line: 0, scope: !1159, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 566, column: 17, scope: !2342, inlinedAt: !5048)
!5086 = !DILocation(line: 0, scope: !1174, inlinedAt: !5087)
!5087 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !5085)
!5088 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !5087)
!5090 = !DILocation(line: 0, scope: !1192, inlinedAt: !5091)
!5091 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !5087)
!5092 = !DILocation(line: 0, scope: !1201, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !5091)
!5094 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !5093)
!5095 = !DILocation(line: 0, scope: !1184, inlinedAt: !5089)
!5096 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !5089)
!5097 = !DILocation(line: 573, column: 14, scope: !2371, inlinedAt: !5056)
!5098 = !{!5099, !5101}
!5099 = distinct !{!5099, !5100, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!5100 = distinct !{!5100, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!5101 = distinct !{!5101, !5102, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_: argument 0"}
!5102 = distinct !{!5102, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_"}
!5103 = !DILocation(line: 571, column: 2, scope: !2323, inlinedAt: !5048)
!5104 = !DILocation(line: 1013, column: 17, scope: !4541, inlinedAt: !4545)
!5105 = !DILocation(line: 0, scope: !4500)
!5106 = !{!5107}
!5107 = distinct !{!5107, !5108, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_: argument 0"}
!5108 = distinct !{!5108, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_"}
!5109 = !DILocation(line: 286, column: 9, scope: !4500)
!5110 = !DILocation(line: 0, scope: !1641, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 286, column: 9, scope: !4500)
!5112 = !DILocation(line: 0, scope: !1663, inlinedAt: !5111)
!5113 = !DILocalVariable(name: "dst", arg: 2, scope: !5114, file: !253, line: 552, type: !1038)
!5114 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEBQ_", scope: !145, file: !253, line: 552, type: !1132, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !5115)
!5115 = !{!5116, !5113, !5117}
!5116 = !DILocalVariable(name: "src", arg: 1, scope: !5114, file: !253, line: 552, type: !1073)
!5117 = !DILocalVariable(name: "count", scope: !5114, file: !253, line: 552, type: !148, align: 64)
!5118 = !DILocation(line: 0, scope: !5114, inlinedAt: !5119)
!5119 = distinct !DILocation(line: 823, column: 13, scope: !1679, inlinedAt: !5111)
!5120 = !DILocalVariable(name: "n", scope: !5121, file: !2535, line: 263, type: !148, align: 64)
!5121 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2581, file: !2535, line: 263, type: !2582, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !5122)
!5122 = !{!5123, !5120}
!5123 = !DILocalVariable(name: "start", arg: 1, scope: !5121, file: !2535, line: 263, type: !148)
!5124 = !DILocation(line: 0, scope: !5121, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 1103, column: 35, scope: !5126, inlinedAt: !5131)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !2535, line: 1101, column: 13)
!5127 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !2536, file: !2535, line: 1099, type: !2539, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2495, retainedNodes: !5128)
!5128 = !{!5129, !5130}
!5129 = !DILocalVariable(name: "self", arg: 1, scope: !5127, file: !2535, line: 1099, type: !2553)
!5130 = !DILocalVariable(name: "old", scope: !5126, file: !2535, line: 1101, type: !148, align: 64)
!5131 = distinct !DILocation(line: 1185, column: 14, scope: !5132, inlinedAt: !5135)
!5132 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !2560, file: !2535, line: 1184, type: !2539, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2563, retainedNodes: !5133)
!5133 = !{!5134}
!5134 = !DILocalVariable(name: "self", arg: 1, scope: !5132, file: !2535, line: 1184, type: !2553)
!5135 = distinct !DILocation(line: 811, column: 18, scope: !5136, inlinedAt: !5111)
!5136 = !DILexicalBlockFile(scope: !1671, file: !112, discriminator: 2)
!5137 = !DILocalVariable(name: "rhs", scope: !5138, file: !2590, line: 1001, type: !148, align: 64)
!5138 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2591, file: !2590, line: 1001, type: !2593, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !5139)
!5139 = !{!5140, !5137}
!5140 = !DILocalVariable(name: "self", arg: 1, scope: !5138, file: !2590, line: 1001, type: !148)
!5141 = !DILocation(line: 0, scope: !5138, inlinedAt: !5142)
!5142 = distinct !DILocation(line: 265, column: 28, scope: !5121, inlinedAt: !5125)
!5143 = !DILocation(line: 0, scope: !1684, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 816, column: 33, scope: !1669, inlinedAt: !5111)
!5145 = !DILocation(line: 0, scope: !1692, inlinedAt: !5146)
!5146 = distinct !DILocation(line: 1039, column: 14, scope: !1684, inlinedAt: !5144)
!5147 = !DILocation(line: 0, scope: !1684, inlinedAt: !5148)
!5148 = distinct !DILocation(line: 817, column: 35, scope: !1673, inlinedAt: !5111)
!5149 = !DILocation(line: 0, scope: !1692, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 1039, column: 14, scope: !1703, inlinedAt: !5148)
!5151 = !DILocalVariable(name: "rhs", scope: !5152, file: !2590, line: 3872, type: !148, align: 64)
!5152 = distinct !DISubprogram(name: "is_multiple_of", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj14is_multiple_of", scope: !2591, file: !2590, line: 3872, type: !3382, scopeLine: 3872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !5153)
!5153 = !{!5154, !5151}
!5154 = !DILocalVariable(name: "self", arg: 1, scope: !5152, file: !2590, line: 3872, type: !148)
!5155 = !DILocation(line: 0, scope: !5152, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 820, column: 17, scope: !1675, inlinedAt: !5111)
!5157 = !DILocation(line: 0, scope: !1653, inlinedAt: !5111)
!5158 = !DILocation(line: 0, scope: !1655, inlinedAt: !5111)
!5159 = !DILocalVariable(name: "self", arg: 1, scope: !5160, file: !229, line: 837, type: !1073)
!5160 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3addBI_", scope: !230, file: !229, line: 837, type: !1111, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1064, retainedNodes: !5161)
!5161 = !{!5159, !5162}
!5162 = !DILocalVariable(name: "count", arg: 2, scope: !5160, file: !229, line: 837, type: !148)
!5163 = !DILocation(line: 0, scope: !5160, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 804, column: 29, scope: !1659, inlinedAt: !5111)
!5165 = !DILocation(line: 0, scope: !5160, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 807, column: 32, scope: !1663, inlinedAt: !5111)
!5167 = !DILocation(line: 0, scope: !5160, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 808, column: 33, scope: !1665, inlinedAt: !5111)
!5169 = !DILocation(line: 0, scope: !1657, inlinedAt: !5111)
!5170 = !DILocation(line: 0, scope: !1708, inlinedAt: !5171)
!5171 = distinct !DILocation(line: 809, column: 31, scope: !1667, inlinedAt: !5111)
!5172 = !DILocation(line: 0, scope: !1669, inlinedAt: !5111)
!5173 = !DILocation(line: 0, scope: !1671, inlinedAt: !5111)
!5174 = !DILocation(line: 0, scope: !5160, inlinedAt: !5175)
!5175 = distinct !DILocation(line: 824, column: 25, scope: !1679, inlinedAt: !5111)
!5176 = !DILocation(line: 0, scope: !1659, inlinedAt: !5111)
!5177 = !DILocation(line: 0, scope: !5160, inlinedAt: !5178)
!5178 = distinct !DILocation(line: 825, column: 27, scope: !1679, inlinedAt: !5111)
!5179 = !DILocation(line: 0, scope: !1661, inlinedAt: !5111)
!5180 = !DILocation(line: 0, scope: !1665, inlinedAt: !5111)
!5181 = !DILocation(line: 0, scope: !1667, inlinedAt: !5111)
!5182 = !DILocation(line: 1184, column: 13, scope: !5132, inlinedAt: !5135)
!5183 = !DILocation(line: 1099, column: 18, scope: !5127, inlinedAt: !5131)
!5184 = !DILocalVariable(name: "self", arg: 1, scope: !5185, file: !300, line: 2192, type: !2529)
!5185 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2525, file: !300, line: 2192, type: !2527, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !124, retainedNodes: !5186)
!5186 = !{!5184, !5187}
!5187 = !DILocalVariable(name: "other", arg: 2, scope: !5185, file: !300, line: 2192, type: !2529)
!5188 = !DILocation(line: 2192, column: 19, scope: !5185, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 1100, column: 12, scope: !5127, inlinedAt: !5131)
!5190 = !DILocation(line: 2192, column: 26, scope: !5185, inlinedAt: !5189)
!5191 = !DILocation(line: 808, column: 37, scope: !1665, inlinedAt: !5111)
!5192 = !DILocation(line: 970, column: 18, scope: !1708, inlinedAt: !5171)
!5193 = !DILocation(line: 871, column: 18, scope: !5160, inlinedAt: !5168)
!5194 = !DILocation(line: 871, column: 18, scope: !5160, inlinedAt: !5166)
!5195 = !DILocation(line: 1100, column: 12, scope: !5127, inlinedAt: !5131)
!5196 = !DILocation(line: 473, column: 18, scope: !1692, inlinedAt: !5146)
!5197 = !DILocation(line: 0, scope: !1673, inlinedAt: !5111)
!5198 = !DILocation(line: 473, column: 18, scope: !1692, inlinedAt: !5150)
!5199 = !DILocation(line: 0, scope: !1675, inlinedAt: !5111)
!5200 = !DILocation(line: 3875, column: 22, scope: !5152, inlinedAt: !5156)
!5201 = !DILocation(line: 820, column: 13, scope: !1675, inlinedAt: !5111)
!5202 = !DILocation(line: 0, scope: !5126, inlinedAt: !5131)
!5203 = !DILocation(line: 1013, column: 17, scope: !5138, inlinedAt: !5142)
!5204 = !DILocation(line: 0, scope: !1721, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 812, column: 34, scope: !1671, inlinedAt: !5111)
!5206 = !DILocation(line: 0, scope: !1740, inlinedAt: !5207)
!5207 = distinct !DILocation(line: 702, column: 29, scope: !1736, inlinedAt: !5205)
!5208 = !DILocation(line: 0, scope: !1740, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 701, column: 31, scope: !1736, inlinedAt: !5205)
!5210 = !DILocation(line: 0, scope: !1748, inlinedAt: !5211)
!5211 = distinct !DILocation(line: 703, column: 19, scope: !1736, inlinedAt: !5205)
!5212 = !DILocation(line: 0, scope: !1754, inlinedAt: !5213)
!5213 = distinct !DILocation(line: 700, column: 9, scope: !1736, inlinedAt: !5205)
!5214 = !DILocation(line: 698, column: 21, scope: !1721, inlinedAt: !5205)
!5215 = !DILocation(line: 0, scope: !1159, inlinedAt: !5216)
!5216 = distinct !DILocation(line: 698, column: 21, scope: !1721, inlinedAt: !5205)
!5217 = !DILocation(line: 0, scope: !1174, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !5216)
!5219 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !5218)
!5221 = !DILocation(line: 0, scope: !1192, inlinedAt: !5222)
!5222 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !5218)
!5223 = !DILocation(line: 0, scope: !1201, inlinedAt: !5224)
!5224 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !5222)
!5225 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !5224)
!5226 = !DILocation(line: 0, scope: !1184, inlinedAt: !5220)
!5227 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !5220)
!5228 = !DILocation(line: 0, scope: !1734, inlinedAt: !5205)
!5229 = !DILocation(line: 699, column: 19, scope: !1734, inlinedAt: !5205)
!5230 = !DILocation(line: 698, column: 20, scope: !1721, inlinedAt: !5205)
!5231 = !DILocation(line: 0, scope: !1736, inlinedAt: !5205)
!5232 = !DILocation(line: 573, column: 14, scope: !1754, inlinedAt: !5213)
!5233 = !{!5234, !5236}
!5234 = distinct !{!5234, !5235, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_: argument 0"}
!5235 = distinct !{!5235, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_"}
!5236 = distinct !{!5236, !5235, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort8merge_upNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_: argument 1"}
!5237 = !{!5234, !5236, !5107}
!5238 = !DILocation(line: 701, column: 35, scope: !1736, inlinedAt: !5205)
!5239 = !DILocation(line: 871, column: 18, scope: !1740, inlinedAt: !5209)
!5240 = !DILocation(line: 702, column: 33, scope: !1736, inlinedAt: !5205)
!5241 = !DILocation(line: 871, column: 18, scope: !1740, inlinedAt: !5207)
!5242 = !DILocation(line: 970, column: 18, scope: !1748, inlinedAt: !5211)
!5243 = !DILocation(line: 0, scope: !1790, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 813, column: 46, scope: !1671, inlinedAt: !5111)
!5245 = !DILocation(line: 0, scope: !1802, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 735, column: 29, scope: !1798, inlinedAt: !5244)
!5247 = !DILocation(line: 0, scope: !1808, inlinedAt: !5248)
!5248 = distinct !DILocation(line: 1118, column: 14, scope: !1813, inlinedAt: !5246)
!5249 = !DILocation(line: 0, scope: !1802, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 734, column: 31, scope: !1798, inlinedAt: !5244)
!5251 = !DILocation(line: 0, scope: !1808, inlinedAt: !5252)
!5252 = distinct !DILocation(line: 1118, column: 14, scope: !1802, inlinedAt: !5250)
!5253 = !DILocation(line: 0, scope: !1819, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 736, column: 19, scope: !1798, inlinedAt: !5244)
!5255 = !DILocation(line: 0, scope: !1825, inlinedAt: !5256)
!5256 = distinct !DILocation(line: 733, column: 9, scope: !1798, inlinedAt: !5244)
!5257 = !DILocation(line: 731, column: 21, scope: !1790, inlinedAt: !5244)
!5258 = !DILocation(line: 0, scope: !1159, inlinedAt: !5259)
!5259 = distinct !DILocation(line: 731, column: 21, scope: !1790, inlinedAt: !5244)
!5260 = !DILocation(line: 0, scope: !1174, inlinedAt: !5261)
!5261 = distinct !DILocation(line: 166, column: 5, scope: !1159, inlinedAt: !5259)
!5262 = !DILocation(line: 659, column: 36, scope: !1184, inlinedAt: !5263)
!5263 = distinct !DILocation(line: 1471, column: 33, scope: !1174, inlinedAt: !5261)
!5264 = !DILocation(line: 0, scope: !1192, inlinedAt: !5265)
!5265 = distinct !DILocation(line: 1471, column: 14, scope: !1174, inlinedAt: !5261)
!5266 = !DILocation(line: 0, scope: !1201, inlinedAt: !5267)
!5267 = distinct !DILocation(line: 1240, column: 47, scope: !1192, inlinedAt: !5265)
!5268 = !DILocation(line: 1242, column: 5, scope: !1201, inlinedAt: !5267)
!5269 = !DILocation(line: 0, scope: !1184, inlinedAt: !5263)
!5270 = !DILocation(line: 660, column: 9, scope: !1184, inlinedAt: !5263)
!5271 = !DILocation(line: 0, scope: !1796, inlinedAt: !5244)
!5272 = !DILocation(line: 732, column: 19, scope: !1796, inlinedAt: !5244)
!5273 = !DILocation(line: 731, column: 20, scope: !1790, inlinedAt: !5244)
!5274 = !DILocation(line: 0, scope: !1798, inlinedAt: !5244)
!5275 = !DILocation(line: 573, column: 14, scope: !1825, inlinedAt: !5256)
!5276 = !{!5277, !5279}
!5277 = distinct !{!5277, !5278, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_: argument 0"}
!5278 = distinct !{!5278, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_"}
!5279 = distinct !{!5279, !5278, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort10merge_downNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_: argument 1"}
!5280 = !{!5277, !5279, !5107}
!5281 = !DILocation(line: 734, column: 44, scope: !1798, inlinedAt: !5244)
!5282 = !DILocation(line: 473, column: 18, scope: !1808, inlinedAt: !5252)
!5283 = !DILocation(line: 735, column: 42, scope: !1798, inlinedAt: !5244)
!5284 = !DILocation(line: 473, column: 18, scope: !1808, inlinedAt: !5248)
!5285 = !DILocation(line: 1054, column: 22, scope: !1819, inlinedAt: !5254)
!5286 = !DILocation(line: 2192, column: 50, scope: !5185, inlinedAt: !5189)
!5287 = !DILocation(line: 821, column: 33, scope: !1675, inlinedAt: !5111)
!5288 = !DILocation(line: 0, scope: !1677, inlinedAt: !5111)
!5289 = !DILocation(line: 822, column: 28, scope: !1677, inlinedAt: !5111)
!5290 = !DILocation(line: 0, scope: !1679, inlinedAt: !5111)
!5291 = !DILocation(line: 573, column: 14, scope: !5114, inlinedAt: !5119)
!5292 = !DILocation(line: 824, column: 29, scope: !1679, inlinedAt: !5111)
!5293 = !DILocation(line: 871, column: 18, scope: !5160, inlinedAt: !5175)
!5294 = !DILocation(line: 825, column: 31, scope: !1679, inlinedAt: !5111)
!5295 = !DILocation(line: 871, column: 18, scope: !5160, inlinedAt: !5178)
!5296 = !DILocation(line: 820, column: 9, scope: !1675, inlinedAt: !5111)
!5297 = !DILocation(line: 831, column: 12, scope: !1675, inlinedAt: !5111)
!5298 = !DILocation(line: 832, column: 13, scope: !1675, inlinedAt: !5111)
!5299 = !DILocation(line: 0, scope: !2371, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 306, column: 13, scope: !2351, inlinedAt: !4502)
!5301 = !DILocation(line: 573, column: 14, scope: !2371, inlinedAt: !5300)
!5302 = !{!5303, !5305}
!5303 = distinct !{!5303, !5304, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_: argument 0"}
!5304 = distinct !{!5304, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropB1k_"}
!5305 = distinct !{!5305, !5306, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_: argument 0"}
!5306 = distinct !{!5306, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1x_"}
!5307 = !DILocation(line: 220, column: 1, scope: !4459)
!5308 = !DILocation(line: 293, column: 2, scope: !4459)
!5309 = distinct !DISubprogram(name: "merge<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_", scope: !5311, file: !5310, line: 8, type: !5313, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1902, retainedNodes: !5315)
!5310 = !DIFile(filename: "library/core/src/slice/sort/stable/merge.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "90afbaa2075bc1e9689ef92c7df39f20")
!5311 = !DINamespace(name: "merge", scope: !5312)
!5312 = !DINamespace(name: "stable", scope: !115)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !1870, !2436, !148, !1884}
!5315 = !{!5316, !5317, !5318, !5319, !5320, !5322, !5324, !5326, !5328, !5330, !5332, !5334, !5336, !5338, !5340}
!5316 = !DILocalVariable(name: "v", arg: 1, scope: !5309, file: !5310, line: 9, type: !1870)
!5317 = !DILocalVariable(name: "scratch", arg: 2, scope: !5309, file: !5310, line: 10, type: !2436)
!5318 = !DILocalVariable(name: "mid", arg: 3, scope: !5309, file: !5310, line: 11, type: !148)
!5319 = !DILocalVariable(name: "is_less", arg: 4, scope: !5309, file: !5310, line: 12, type: !1884)
!5320 = !DILocalVariable(name: "len", scope: !5321, file: !5310, line: 14, type: !148, align: 64)
!5321 = distinct !DILexicalBlock(scope: !5309, file: !5310, line: 14, column: 5)
!5322 = !DILocalVariable(name: "buf", scope: !5323, file: !5310, line: 38, type: !1897, align: 64)
!5323 = distinct !DILexicalBlock(scope: !5321, file: !5310, line: 38, column: 9)
!5324 = !DILocalVariable(name: "v_base", scope: !5325, file: !5310, line: 40, type: !1897, align: 64)
!5325 = distinct !DILexicalBlock(scope: !5323, file: !5310, line: 40, column: 9)
!5326 = !DILocalVariable(name: "v_mid", scope: !5327, file: !5310, line: 41, type: !1897, align: 64)
!5327 = distinct !DILexicalBlock(scope: !5325, file: !5310, line: 41, column: 9)
!5328 = !DILocalVariable(name: "v_end", scope: !5329, file: !5310, line: 42, type: !1897, align: 64)
!5329 = distinct !DILexicalBlock(scope: !5327, file: !5310, line: 42, column: 9)
!5330 = !DILocalVariable(name: "left_len", scope: !5331, file: !5310, line: 44, type: !148, align: 64)
!5331 = distinct !DILexicalBlock(scope: !5329, file: !5310, line: 44, column: 9)
!5332 = !DILocalVariable(name: "right_len", scope: !5333, file: !5310, line: 45, type: !148, align: 64)
!5333 = distinct !DILexicalBlock(scope: !5331, file: !5310, line: 45, column: 9)
!5334 = !DILocalVariable(name: "left_is_shorter", scope: !5335, file: !5310, line: 47, type: !129, align: 8)
!5335 = distinct !DILexicalBlock(scope: !5333, file: !5310, line: 47, column: 9)
!5336 = !DILocalVariable(name: "save_base", scope: !5337, file: !5310, line: 48, type: !1897, align: 64)
!5337 = distinct !DILexicalBlock(scope: !5335, file: !5310, line: 48, column: 9)
!5338 = !DILocalVariable(name: "save_len", scope: !5339, file: !5310, line: 49, type: !148, align: 64)
!5339 = distinct !DILexicalBlock(scope: !5337, file: !5310, line: 49, column: 9)
!5340 = !DILocalVariable(name: "merge_state", scope: !5341, file: !5310, line: 53, type: !5342, align: 64)
!5341 = distinct !DILexicalBlock(scope: !5339, file: !5310, line: 53, column: 9)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MergeState<regex_syntax::ast::Span>", scope: !5311, file: !10, size: 192, align: 64, flags: DIFlagPrivate, elements: !5343, templateParams: !1913, identifier: "a9a59ffc93fc35c19770e69bea224d96")
!5343 = !{!5344, !5345, !5346}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5342, file: !10, baseType: !1897, size: 64, align: 64, flags: DIFlagPrivate)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5342, file: !10, baseType: !1897, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5342, file: !10, baseType: !1897, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!5347 = !DILocalVariable(name: "self", arg: 1, scope: !5348, file: !5310, line: 139, type: !5352)
!5348 = distinct !DISubprogram(name: "drop<regex_syntax::ast::Span>", linkageName: "_RNvXs_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanENtNtNtBc_3ops4drop4Drop4dropB1f_", scope: !5349, file: !5310, line: 139, type: !5350, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !5353)
!5349 = !DINamespace(name: "{impl#1}", scope: !5311)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{null, !5352}
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::stable::merge::MergeState<regex_syntax::ast::Span>", baseType: !5342, size: 64, align: 64, dwarfAddressSpace: 0)
!5353 = !{!5347, !5354}
!5354 = !DILocalVariable(name: "len", scope: !5355, file: !5310, line: 146, type: !148, align: 64)
!5355 = distinct !DILexicalBlock(scope: !5348, file: !5310, line: 146, column: 13)
!5356 = !DILocation(line: 0, scope: !5348, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 847, column: 1, scope: !5358, inlinedAt: !5363)
!5358 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::stable::merge::MergeState<regex_syntax::ast::Span>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEEB1t_", scope: !145, file: !253, line: 847, type: !5350, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !5361, retainedNodes: !5359)
!5359 = !{!5360}
!5360 = !DILocalVariable(arg: 1, scope: !5358, file: !253, line: 847, type: !5352)
!5361 = !{!5362}
!5362 = !DITemplateTypeParameter(name: "T", type: !5342)
!5363 = distinct !DILocation(line: 62, column: 5, scope: !5339)
!5364 = !DILocation(line: 0, scope: !5358, inlinedAt: !5363)
!5365 = !DILocation(line: 0, scope: !5348, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 847, column: 1, scope: !5358, inlinedAt: !5367)
!5367 = distinct !DILocation(line: 62, column: 5, scope: !5339)
!5368 = !DILocation(line: 0, scope: !5358, inlinedAt: !5367)
!5369 = !DILocalVariable(name: "left", scope: !5370, file: !5310, line: 86, type: !5383, align: 64)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !5310, line: 86, column: 13)
!5371 = distinct !DISubprogram(name: "merge_up<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_", scope: !5342, file: !5310, line: 78, type: !5372, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1902, declaration: !5374, retainedNodes: !5376)
!5372 = !DISubroutineType(cc: DW_CC_nocall, types: !5373)
!5373 = !{null, !5352, !1954, !1954, !1884}
!5374 = !DISubprogram(name: "merge_up<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_", scope: !5342, file: !5310, line: 78, type: !5375, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1902)
!5375 = !DISubroutineType(types: !5373)
!5376 = !{!5377, !5378, !5379, !5380, !5369, !5381, !5384, !5386}
!5377 = !DILocalVariable(name: "self", arg: 1, scope: !5371, file: !5310, line: 79, type: !5352)
!5378 = !DILocalVariable(name: "right", arg: 2, scope: !5371, file: !5310, line: 80, type: !1954)
!5379 = !DILocalVariable(name: "right_end", arg: 3, scope: !5371, file: !5310, line: 81, type: !1954)
!5380 = !DILocalVariable(name: "is_less", arg: 4, scope: !5371, file: !5310, line: 82, type: !1884)
!5381 = !DILocalVariable(name: "out", scope: !5382, file: !5310, line: 87, type: !5383, align: 64)
!5382 = distinct !DILexicalBlock(scope: !5370, file: !5310, line: 87, column: 13)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut *mut regex_syntax::ast::Span", baseType: !1897, size: 64, align: 64, dwarfAddressSpace: 0)
!5384 = !DILocalVariable(name: "consume_left", scope: !5385, file: !5310, line: 90, type: !129, align: 8)
!5385 = distinct !DILexicalBlock(scope: !5382, file: !5310, line: 90, column: 17)
!5386 = !DILocalVariable(name: "src", scope: !5387, file: !5310, line: 92, type: !1954, align: 64)
!5387 = distinct !DILexicalBlock(scope: !5385, file: !5310, line: 92, column: 17)
!5388 = !DILocation(line: 86, column: 17, scope: !5370, inlinedAt: !5389)
!5389 = distinct !DILocation(line: 56, column: 25, scope: !5341)
!5390 = !DILocation(line: 0, scope: !5371, inlinedAt: !5389)
!5391 = !DILocalVariable(name: "self", arg: 1, scope: !5392, file: !5310, line: 109, type: !5352)
!5392 = distinct !DISubprogram(name: "merge_down<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_", scope: !5342, file: !5310, line: 108, type: !5393, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1902, declaration: !5395, retainedNodes: !5397)
!5393 = !DISubroutineType(cc: DW_CC_nocall, types: !5394)
!5394 = !{null, !5352, !1954, !1954, !1897, !1884}
!5395 = !DISubprogram(name: "merge_down<regex_syntax::ast::Span, fn(&regex_syntax::ast::Span, &regex_syntax::ast::Span) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_", scope: !5342, file: !5310, line: 108, type: !5396, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1902)
!5396 = !DISubroutineType(types: !5394)
!5397 = !{!5391, !5398, !5399, !5400, !5401, !5402, !5404, !5406, !5408}
!5398 = !DILocalVariable(name: "left_end", arg: 2, scope: !5392, file: !5310, line: 110, type: !1954)
!5399 = !DILocalVariable(name: "right_end", arg: 3, scope: !5392, file: !5310, line: 111, type: !1954)
!5400 = !DILocalVariable(name: "out", arg: 4, scope: !5392, file: !5310, line: 112, type: !1897)
!5401 = !DILocalVariable(name: "is_less", arg: 5, scope: !5392, file: !5310, line: 113, type: !1884)
!5402 = !DILocalVariable(name: "left", scope: !5403, file: !5310, line: 118, type: !1897, align: 64)
!5403 = distinct !DILexicalBlock(scope: !5392, file: !5310, line: 118, column: 17)
!5404 = !DILocalVariable(name: "right", scope: !5405, file: !5310, line: 119, type: !1897, align: 64)
!5405 = distinct !DILexicalBlock(scope: !5403, file: !5310, line: 119, column: 17)
!5406 = !DILocalVariable(name: "consume_left", scope: !5407, file: !5310, line: 122, type: !129, align: 8)
!5407 = distinct !DILexicalBlock(scope: !5405, file: !5310, line: 122, column: 17)
!5408 = !DILocalVariable(name: "src", scope: !5409, file: !5310, line: 124, type: !1897, align: 64)
!5409 = distinct !DILexicalBlock(scope: !5407, file: !5310, line: 124, column: 17)
!5410 = !DILocation(line: 0, scope: !5392, inlinedAt: !5411)
!5411 = distinct !DILocation(line: 58, column: 25, scope: !5341)
!5412 = !DILocation(line: 0, scope: !5309)
!5413 = !DILocation(line: 0, scope: !5331)
!5414 = !DILocation(line: 0, scope: !5339)
!5415 = !DILocalVariable(name: "v1", arg: 1, scope: !5416, file: !300, line: 1634, type: !148)
!5416 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3cmp3minjECs3roNzt6HBWW_12regex_syntax", scope: !82, file: !300, line: 1634, type: !2582, scopeLine: 1634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !2495, retainedNodes: !5417)
!5417 = !{!5415, !5418}
!5418 = !DILocalVariable(name: "v2", arg: 2, scope: !5416, file: !300, line: 1634, type: !148)
!5419 = !DILocation(line: 0, scope: !5416, inlinedAt: !5420)
!5420 = !DILocation(line: 16, column: 50, scope: !5321)
!5421 = !DILocalVariable(name: "count", arg: 2, scope: !5422, file: !142, line: 936, type: !148)
!5422 = distinct !DISubprogram(name: "add<regex_syntax::ast::Span>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3ast4Span3addBG_", scope: !143, file: !142, line: 936, type: !1908, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !5423)
!5423 = !{!5424, !5421}
!5424 = !DILocalVariable(name: "self", arg: 1, scope: !5422, file: !142, line: 936, type: !1897)
!5425 = !DILocation(line: 0, scope: !5422, inlinedAt: !5426)
!5426 = !DILocation(line: 41, column: 28, scope: !5325)
!5427 = !DILocation(line: 0, scope: !5422, inlinedAt: !5428)
!5428 = !DILocation(line: 53, column: 65, scope: !5339)
!5429 = !DILocation(line: 0, scope: !5321)
!5430 = !DILocation(line: 0, scope: !5422, inlinedAt: !5431)
!5431 = !DILocation(line: 42, column: 28, scope: !5327)
!5432 = !DILocation(line: 16, column: 8, scope: !5321)
!5433 = !DILocation(line: 16, column: 64, scope: !5321)
!5434 = !DILocation(line: 0, scope: !5333)
!5435 = !DILocalVariable(name: "self", arg: 1, scope: !5436, file: !300, line: 1133, type: !148)
!5436 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCsj6eKBz9Db1c_4core3cmp3Ord3minCs3roNzt6HBWW_12regex_syntax", scope: !5437, file: !300, line: 1133, type: !2582, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !5440, retainedNodes: !5438)
!5437 = !DINamespace(name: "Ord", scope: !82)
!5438 = !{!5435, !5439}
!5439 = !DILocalVariable(name: "other", arg: 2, scope: !5436, file: !300, line: 1133, type: !148)
!5440 = !{!5441}
!5441 = !DITemplateTypeParameter(name: "Self", type: !148)
!5442 = !DILocation(line: 0, scope: !5436, inlinedAt: !5443)
!5443 = distinct !DILocation(line: 1635, column: 8, scope: !5416, inlinedAt: !5420)
!5444 = !DILocation(line: 1138, column: 5, scope: !5436, inlinedAt: !5443)
!5445 = !DILocation(line: 16, column: 34, scope: !5321)
!5446 = !DILocation(line: 0, scope: !5323)
!5447 = !DILocalVariable(name: "dst", arg: 2, scope: !5448, file: !253, line: 552, type: !1897)
!5448 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::ast::Span>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanEBQ_", scope: !145, file: !253, line: 552, type: !1982, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !5449)
!5449 = !{!5450, !5447, !5451}
!5450 = !DILocalVariable(name: "src", arg: 1, scope: !5448, file: !253, line: 552, type: !1954)
!5451 = !DILocalVariable(name: "count", arg: 3, scope: !5448, file: !253, line: 552, type: !148)
!5452 = !DILocation(line: 0, scope: !5448, inlinedAt: !5453)
!5453 = !DILocation(line: 51, column: 9, scope: !5339)
!5454 = !DILocation(line: 0, scope: !5325)
!5455 = !DILocation(line: 0, scope: !5337)
!5456 = !DILocation(line: 970, column: 18, scope: !5422, inlinedAt: !5426)
!5457 = !DILocation(line: 0, scope: !5327)
!5458 = !DILocation(line: 970, column: 18, scope: !5422, inlinedAt: !5431)
!5459 = !DILocation(line: 0, scope: !5329)
!5460 = !DILocation(line: 47, column: 31, scope: !5333)
!5461 = !DILocation(line: 0, scope: !5335)
!5462 = !DILocation(line: 48, column: 28, scope: !5335)
!5463 = !DILocation(line: 573, column: 14, scope: !5448, inlinedAt: !5453)
!5464 = !DILocation(line: 970, column: 18, scope: !5422, inlinedAt: !5428)
!5465 = !DILocation(line: 0, scope: !5341)
!5466 = !DILocation(line: 55, column: 12, scope: !5341)
!5467 = !DILocation(line: 1054, column: 22, scope: !5468, inlinedAt: !5472)
!5468 = distinct !DISubprogram(name: "sub<regex_syntax::ast::Span>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3ast4Span3subBG_", scope: !143, file: !142, line: 1015, type: !1908, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !5469)
!5469 = !{!5470, !5471}
!5470 = !DILocalVariable(name: "self", arg: 1, scope: !5468, file: !142, line: 1015, type: !1897)
!5471 = !DILocalVariable(name: "count", scope: !5468, file: !142, line: 1015, type: !148, align: 64)
!5472 = distinct !DILocation(line: 118, column: 37, scope: !5392, inlinedAt: !5411)
!5473 = !DILocation(line: 118, column: 28, scope: !5392, inlinedAt: !5411)
!5474 = !DILocation(line: 0, scope: !5468, inlinedAt: !5475)
!5475 = distinct !DILocation(line: 120, column: 27, scope: !5405, inlinedAt: !5411)
!5476 = !DILocation(line: 0, scope: !5468, inlinedAt: !5472)
!5477 = !DILocation(line: 0, scope: !5403, inlinedAt: !5411)
!5478 = !DILocalVariable(name: "self", arg: 1, scope: !5479, file: !142, line: 936, type: !1897)
!5479 = distinct !DISubprogram(name: "add<regex_syntax::ast::Span>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3ast4Span3addBG_", scope: !143, file: !142, line: 936, type: !1908, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !1913, retainedNodes: !5480)
!5480 = !{!5478, !5481}
!5481 = !DILocalVariable(name: "count", arg: 2, scope: !5479, file: !142, line: 936, type: !148)
!5482 = !DILocation(line: 0, scope: !5479, inlinedAt: !5483)
!5483 = distinct !DILocation(line: 127, column: 33, scope: !5409, inlinedAt: !5411)
!5484 = !DILocation(line: 0, scope: !5468, inlinedAt: !5485)
!5485 = distinct !DILocation(line: 119, column: 38, scope: !5403, inlinedAt: !5411)
!5486 = !DILocation(line: 1054, column: 22, scope: !5468, inlinedAt: !5485)
!5487 = !DILocation(line: 0, scope: !5405, inlinedAt: !5411)
!5488 = !DILocation(line: 0, scope: !5479, inlinedAt: !5489)
!5489 = distinct !DILocation(line: 128, column: 34, scope: !5409, inlinedAt: !5411)
!5490 = !DILocation(line: 1054, column: 22, scope: !5468, inlinedAt: !5475)
!5491 = !DILocation(line: 122, column: 36, scope: !5405, inlinedAt: !5411)
!5492 = !{!5493}
!5493 = distinct !{!5493, !5494, !"_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_: argument 0"}
!5494 = distinct !{!5494, !"_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_"}
!5495 = !DILocation(line: 0, scope: !2016, inlinedAt: !5496)
!5496 = distinct !DILocation(line: 122, column: 36, scope: !5405, inlinedAt: !5411)
!5497 = !DILocation(line: 0, scope: !2031, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 166, column: 5, scope: !2016, inlinedAt: !5496)
!5499 = !DILocation(line: 659, column: 36, scope: !2041, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 1471, column: 33, scope: !2031, inlinedAt: !5498)
!5501 = !DILocation(line: 0, scope: !2049, inlinedAt: !5502)
end_hunk_5
