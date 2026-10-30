Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.01?download=true
inline.NumInlined: 198
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics:bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i9, %.lr.ph10 ], !dbg !1675
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !dbg !1676, !noalias !1650
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1677

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8, !dbg !1678 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b, !dbg !1655
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1655
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1679 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !1898
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2b_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2f_.exit, label %bb.b, !dbg !1898

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !1899
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !1900
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !1900

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1, !dbg !1901               ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !1902
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !1902

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !1903
  unreachable, !dbg !1903

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !1904
  br i1 %i.f, label %bb.g, label %bb.h, !dbg !1904

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %1, !dbg !1905 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB24_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB28_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !1906
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !1907
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !1908
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !1909
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB24_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB28_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !1910
  br label %bb.i, !dbg !1911

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1912
  %.val8.i = load i64, ptr %i.k, align 8, !dbg !1913, !noundef !229 ; 2 uses
  %.val9.i = load i64, ptr %0, align 8, !dbg !1913, !noundef !229 ; 2 uses
  %i.l = ashr i64 %.val8.i, 63, !dbg !1914
  %i.m = lshr i64 %i.l, 1, !dbg !1915
  %i.n = xor i64 %i.m, %.val8.i, !dbg !1916
  %i.o = ashr i64 %.val9.i, 63, !dbg !1917
  %i.p = lshr i64 %i.o, 1, !dbg !1918
  %i.q = xor i64 %i.p, %.val9.i, !dbg !1919
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !1920      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1921
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1922
  %.val6.i = load i64, ptr %i.s, align 8, !dbg !1923, !noundef !229 ; 2 uses
  %.val7.i = load i64, ptr %i.t, align 8, !dbg !1923, !noundef !229 ; 2 uses
  %i.u = ashr i64 %.val6.i, 63, !dbg !1924
  %i.v = lshr i64 %i.u, 1, !dbg !1925
  %i.w = xor i64 %i.v, %.val6.i, !dbg !1926
  %i.x = ashr i64 %.val7.i, 63, !dbg !1927
  %i.y = lshr i64 %i.x, 1, !dbg !1928
  %i.z = xor i64 %i.y, %.val7.i, !dbg !1929
  %i.aa = icmp slt i64 %i.w, %i.z, !dbg !1930     ; 2 uses
  %i.ab = zext i1 %i.r to i64, !dbg !1931
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ab, !dbg !1932 ; 3 uses
  %i.ad = xor i1 %i.r, true, !dbg !1933
  %i.ae = zext i1 %i.ad to i64, !dbg !1933
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae, !dbg !1934 ; 4 uses
  %i.ag = select i1 %i.aa, i64 3, i64 2, !dbg !1935
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag, !dbg !1936 ; 4 uses
  %i.ai = select i1 %i.aa, i64 2, i64 3, !dbg !1937
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai, !dbg !1938 ; 3 uses
  %.val4.i = load i64, ptr %i.ah, align 8, !dbg !1939, !noundef !229 ; 2 uses
  %.val5.i = load i64, ptr %i.ac, align 8, !dbg !1939, !noundef !229 ; 2 uses
  %i.ak = ashr i64 %.val4.i, 63, !dbg !1940
  %i.al = lshr i64 %i.ak, 1, !dbg !1941
  %i.am = xor i64 %i.al, %.val4.i, !dbg !1942
  %i.an = ashr i64 %.val5.i, 63, !dbg !1943
  %i.ao = lshr i64 %i.an, 1, !dbg !1944
  %i.ap = xor i64 %i.ao, %.val5.i, !dbg !1945
  %i.aq = icmp slt i64 %i.am, %i.ap, !dbg !1946   ; 3 uses
  %.val2.i = load i64, ptr %i.aj, align 8, !dbg !1947, !noundef !229 ; 2 uses
  %.val3.i = load i64, ptr %i.af, align 8, !dbg !1947, !noundef !229 ; 2 uses
  %i.ar = ashr i64 %.val2.i, 63, !dbg !1948
  %i.as = lshr i64 %i.ar, 1, !dbg !1949
  %i.at = xor i64 %i.as, %.val2.i, !dbg !1950
  %i.au = ashr i64 %.val3.i, 63, !dbg !1951
  %i.av = lshr i64 %i.au, 1, !dbg !1952
  %i.aw = xor i64 %i.av, %.val3.i, !dbg !1953
  %i.ax = icmp slt i64 %i.at, %i.aw, !dbg !1954   ; 3 uses
  %i.ay = select i1 %i.aq, ptr %i.ah, ptr %i.ac, !dbg !1955, !unpredictable !229
  %i.az = select i1 %i.ax, ptr %i.af, ptr %i.aj, !dbg !1956, !unpredictable !229
  %i.ba = select i1 %i.ax, ptr %i.ah, ptr %i.af, !dbg !1957, !unpredictable !229
  %i.bb = select i1 %i.aq, ptr %i.ac, ptr %i.ba, !dbg !1958, !unpredictable !229 ; 3 uses
  %i.bc = select i1 %i.aq, ptr %i.af, ptr %i.ah, !dbg !1959, !unpredictable !229
  %i.bd = select i1 %i.ax, ptr %i.aj, ptr %i.bc, !dbg !1960, !unpredictable !229 ; 3 uses
  %.val.i = load i64, ptr %i.bd, align 8, !dbg !1961, !noundef !229 ; 2 uses
  %.val1.i = load i64, ptr %i.bb, align 8, !dbg !1961, !noundef !229 ; 2 uses
  %i.be = ashr i64 %.val.i, 63, !dbg !1962
  %i.bf = lshr i64 %i.be, 1, !dbg !1963
  %i.bg = xor i64 %i.bf, %.val.i, !dbg !1964
  %i.bh = ashr i64 %.val1.i, 63, !dbg !1965
  %i.bi = lshr i64 %i.bh, 1, !dbg !1966
  %i.bj = xor i64 %i.bi, %.val1.i, !dbg !1967
  %i.bk = icmp slt i64 %i.bg, %i.bj, !dbg !1968   ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bd, ptr %i.bb, !dbg !1969, !unpredictable !229
  %i.bm = select i1 %i.bk, ptr %i.bb, ptr %i.bd, !dbg !1970, !unpredictable !229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !1971
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1972
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !dbg !1973
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !1974
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !dbg !1975
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !1976
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !1977
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !1978 ; 8 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !1979 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !1980
  %.val8.i30 = load i64, ptr %i.bs, align 8, !dbg !1981, !noundef !229 ; 2 uses
  %.val9.i31 = load i64, ptr %i.bq, align 8, !dbg !1981, !noundef !229 ; 2 uses
  %i.bt = ashr i64 %.val8.i30, 63, !dbg !1982
  %i.bu = lshr i64 %i.bt, 1, !dbg !1983
  %i.bv = xor i64 %i.bu, %.val8.i30, !dbg !1984
  %i.bw = ashr i64 %.val9.i31, 63, !dbg !1985
  %i.bx = lshr i64 %i.bw, 1, !dbg !1986
  %i.by = xor i64 %i.bx, %.val9.i31, !dbg !1987
  %i.bz = icmp slt i64 %i.bv, %i.by, !dbg !1988   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 48, !dbg !1989
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 32, !dbg !1990
  %.val6.i32 = load i64, ptr %i.ca, align 8, !dbg !1991, !noundef !229 ; 2 uses
  %.val7.i33 = load i64, ptr %i.cb, align 8, !dbg !1991, !noundef !229 ; 2 uses
  %i.cc = ashr i64 %.val6.i32, 63, !dbg !1992
  %i.cd = lshr i64 %i.cc, 1, !dbg !1993
  %i.ce = xor i64 %i.cd, %.val6.i32, !dbg !1994
  %i.cf = ashr i64 %.val7.i33, 63, !dbg !1995
  %i.cg = lshr i64 %i.cf, 1, !dbg !1996
  %i.ch = xor i64 %i.cg, %.val7.i33, !dbg !1997
  %i.ci = icmp slt i64 %i.ce, %i.ch, !dbg !1998   ; 2 uses
  %i.cj = zext i1 %i.bz to i64, !dbg !1999
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.cj, !dbg !2000 ; 3 uses
  %i.cl = xor i1 %i.bz, true, !dbg !2001
  %i.cm = zext i1 %i.cl to i64, !dbg !2001
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.cm, !dbg !2002 ; 4 uses
  %i.co = select i1 %i.ci, i64 3, i64 2, !dbg !2003
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.co, !dbg !2004 ; 4 uses
  %i.cq = select i1 %i.ci, i64 2, i64 3, !dbg !2005
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.cq, !dbg !2006 ; 3 uses
  %.val4.i34 = load i64, ptr %i.cp, align 8, !dbg !2007, !noundef !229 ; 2 uses
  %.val5.i35 = load i64, ptr %i.ck, align 8, !dbg !2007, !noundef !229 ; 2 uses
  %i.cs = ashr i64 %.val4.i34, 63, !dbg !2008
  %i.ct = lshr i64 %i.cs, 1, !dbg !2009
  %i.cu = xor i64 %i.ct, %.val4.i34, !dbg !2010
  %i.cv = ashr i64 %.val5.i35, 63, !dbg !2011
  %i.cw = lshr i64 %i.cv, 1, !dbg !2012
  %i.cx = xor i64 %i.cw, %.val5.i35, !dbg !2013
  %i.cy = icmp slt i64 %i.cu, %i.cx, !dbg !2014   ; 3 uses
  %.val2.i36 = load i64, ptr %i.cr, align 8, !dbg !2015, !noundef !229 ; 2 uses
  %.val3.i37 = load i64, ptr %i.cn, align 8, !dbg !2015, !noundef !229 ; 2 uses
  %i.cz = ashr i64 %.val2.i36, 63, !dbg !2016
  %i.da = lshr i64 %i.cz, 1, !dbg !2017
  %i.db = xor i64 %i.da, %.val2.i36, !dbg !2018
  %i.dc = ashr i64 %.val3.i37, 63, !dbg !2019
  %i.dd = lshr i64 %i.dc, 1, !dbg !2020
  %i.de = xor i64 %i.dd, %.val3.i37, !dbg !2021
  %i.df = icmp slt i64 %i.db, %i.de, !dbg !2022   ; 3 uses
  %i.dg = select i1 %i.cy, ptr %i.cp, ptr %i.ck, !dbg !2023, !unpredictable !229
  %i.dh = select i1 %i.df, ptr %i.cn, ptr %i.cr, !dbg !2024, !unpredictable !229
  %i.di = select i1 %i.df, ptr %i.cp, ptr %i.cn, !dbg !2025, !unpredictable !229
  %i.dj = select i1 %i.cy, ptr %i.ck, ptr %i.di, !dbg !2026, !unpredictable !229 ; 3 uses
  %i.dk = select i1 %i.cy, ptr %i.cn, ptr %i.cp, !dbg !2027, !unpredictable !229
  %i.dl = select i1 %i.df, ptr %i.cr, ptr %i.dk, !dbg !2028, !unpredictable !229 ; 3 uses
  %.val.i38 = load i64, ptr %i.dl, align 8, !dbg !2029, !noundef !229 ; 2 uses
  %.val1.i39 = load i64, ptr %i.dj, align 8, !dbg !2029, !noundef !229 ; 2 uses
  %i.dm = ashr i64 %.val.i38, 63, !dbg !2030
  %i.dn = lshr i64 %i.dm, 1, !dbg !2031
  %i.do = xor i64 %i.dn, %.val.i38, !dbg !2032
  %i.dp = ashr i64 %.val1.i39, 63, !dbg !2033
  %i.dq = lshr i64 %i.dp, 1, !dbg !2034
  %i.dr = xor i64 %i.dq, %.val1.i39, !dbg !2035
  %i.ds = icmp slt i64 %i.do, %i.dr, !dbg !2036   ; 2 uses
  %i.dt = select i1 %i.ds, ptr %i.dl, ptr %i.dj, !dbg !2037, !unpredictable !229
  %i.du = select i1 %i.ds, ptr %i.dj, ptr %i.dl, !dbg !2038, !unpredictable !229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false), !dbg !2039
  %i.dv = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !2040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !dbg !2041
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 32, !dbg !2042
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !dbg !2043
  %i.dx = getelementptr inbounds nuw i8, ptr %i.br, i64 48, !dbg !2044
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !dbg !2045
  br label %bb.i, !dbg !2046

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !2047
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !2048
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !2049
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !dbg !2050
  br label %bb.i, !dbg !2046

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %5 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], !dbg !2051 ; 2 uses
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ], !dbg !2051 ; 4 uses
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.eb = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !2052
  br i1 %i.eb, label %.lr.ph, label %.loopexit, !dbg !1884

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit, %bb.i
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !2053
  %i.ed = getelementptr [16 x i8], ptr %2, i64 %i.d, !dbg !2054 ; 6 uses
  %i.ee = icmp samesign ult i64 %.sroa.0.0, %i.ea, !dbg !2052
  br i1 %i.ee, label %.lr.ph.1, label %.loopexit.1, !dbg !1884

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1
  %.sroa.05.050.1 = phi i1 [ false, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1 ], [ %5, %.loopexit ]
  %.sroa.05.050.1.a = phi i64 [ %i.ex, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %.sroa.05.050.1.a, !dbg !2055
  %.idx84 = shl nuw nsw i64 %.sroa.05.050.1.a, 4, !dbg !2056
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx84, !dbg !2056 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !dbg !2057
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -16, !dbg !2058 ; 3 uses
  %.val9.i40.1 = load i64, ptr %i.eg, align 8, !dbg !2059, !noundef !229 ; 3 uses
  %.val10.i.1 = load i64, ptr %i.eh, align 8, !dbg !2059, !noundef !229 ; 2 uses
  %i.ei = ashr i64 %.val9.i40.1, 63, !dbg !2060
  %i.ej = lshr i64 %i.ei, 1, !dbg !2061
  %i.ek = xor i64 %i.ej, %.val9.i40.1, !dbg !2062 ; 2 uses
  %i.el = ashr i64 %.val10.i.1, 63, !dbg !2063
  %i.em = lshr i64 %i.el, 1, !dbg !2064
  %i.en = xor i64 %i.em, %.val10.i.1, !dbg !2065
  %i.eo = icmp slt i64 %i.ek, %i.en, !dbg !2066
  br i1 %i.eo, label %bb.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1, !dbg !2059

bb.j:                                             ; preds = %.lr.ph.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !2067
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !2067, !noundef !229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !dbg !2068
  br i1 %.sroa.05.050.1, label %._crit_edge80, label %.lr.ph79, !dbg !2069

bb.k:                                             ; preds = %.lr.ph79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.177, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !dbg !2068
  %i.er = icmp eq ptr %i.es, %i.ed, !dbg !2069
  br i1 %i.er, label %._crit_edge80, label %.lr.ph79, !dbg !2069

.lr.ph79:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i41.177 = phi ptr [ %i.es, %bb.k ], [ %i.eh, %bb.j ] ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.0.i41.177, i64 -16, !dbg !2070 ; 4 uses
  %.val8.i42.1 = load i64, ptr %i.es, align 8, !dbg !2071, !noundef !229 ; 2 uses
  %i.et = ashr i64 %.val8.i42.1, 63, !dbg !2072
  %i.eu = lshr i64 %i.et, 1, !dbg !2073
  %i.ev = xor i64 %i.eu, %.val8.i42.1, !dbg !2074
  %i.ew = icmp slt i64 %i.ek, %i.ev, !dbg !2075
  br i1 %i.ew, label %bb.k, label %._crit_edge80, !dbg !2071

._crit_edge80:                                    ; preds = %bb.k, %.lr.ph79, %bb.j
  %.sroa.0.0.i41.lcssa.1 = phi ptr [ %i.ed, %bb.j ], [ %i.ed, %bb.k ], [ %.sroa.0.0.i41.177, %.lr.ph79 ], !dbg !2076 ; 2 uses
  store i64 %.val9.i40.1, ptr %.sroa.0.0.i41.lcssa.1, align 8, !dbg !2077, !noalias !1890
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1, i64 8, !dbg !2077
  store i64 %i.eq, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !dbg !2077, !noalias !1890
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1, !dbg !2078

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1: ; preds = %._crit_edge80, %.lr.ph.1
  %i.ex = add nuw nsw i64 %.sroa.05.050.1.a, 1, !dbg !2079 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ex, %i.ea, !dbg !2052
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !1884

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit.1, %.loopexit
  %i.ey = add nsw i64 %1, -1, !dbg !2080          ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ey, !dbg !2081
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ey, !dbg !2082
  %i.fb = getelementptr i8, ptr %i.ed, i64 -16, !dbg !2083
  br label %.lr.ph.i, !dbg !2084

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fc = getelementptr i8, ptr %i.gd, i64 16, !dbg !2085 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.gc, i64 16, !dbg !2086
  %i.fe = and i64 %1, 1, !dbg !2087
  %i.ff = icmp eq i64 %i.fe, 0, !dbg !2087
  br i1 %i.ff, label %bb.m, label %bb.l, !dbg !2088

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.fg, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %i.ed, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.gd, %.lr.ph.i ], [ %i.fb, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.gc, %.lr.ph.i ], [ %i.fa, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ge, %.lr.ph.i ], [ %i.ez, %.loopexit.1 ] ; 2 uses
  %i.fg = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !2089 ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.07.i, align 8, !dbg !2090, !alias.scope !1894, !noundef !229 ; 2 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.08.i, align 8, !dbg !2090, !alias.scope !1894, !noundef !229 ; 2 uses
  %i.fh = ashr i64 %.sroa.011.0.val.i, 63, !dbg !2091
  %i.fi = lshr i64 %i.fh, 1, !dbg !2092
  %i.fj = xor i64 %i.fi, %.sroa.011.0.val.i, !dbg !2093
  %i.fk = ashr i64 %.sroa.06.0.val.i, 63, !dbg !2094
  %i.fl = lshr i64 %i.fk, 1, !dbg !2095
  %i.fm = xor i64 %i.fl, %.sroa.06.0.val.i, !dbg !2096
  %i.fn = icmp slt i64 %i.fj, %i.fm, !dbg !2097   ; 3 uses
  %..i21.i = select i1 %i.fn, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !2098
  %i.fo = xor i1 %i.fn, true, !dbg !2099
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !dbg !2100, !noalias !1895
  %i.fp = zext i1 %i.fn to i64, !dbg !2101
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i, i64 %i.fp, !dbg !2102 ; 4 uses
  %i.fr = zext i1 %i.fo to i64, !dbg !2103
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i, i64 %i.fr, !dbg !2104 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16, !dbg !2105 ; 2 uses
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.05.i, align 8, !dbg !2106, !alias.scope !1894, !noundef !229 ; 2 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.06.i, align 8, !dbg !2106, !alias.scope !1894, !noundef !229 ; 2 uses
  %i.fu = ashr i64 %.sroa.017.0.val.i, 63, !dbg !2107
  %i.fv = lshr i64 %i.fu, 1, !dbg !2108
  %i.fw = xor i64 %i.fv, %.sroa.017.0.val.i, !dbg !2109
  %i.fx = ashr i64 %.sroa.015.0.val.i, 63, !dbg !2110
  %i.fy = lshr i64 %i.fx, 1, !dbg !2111
  %i.fz = xor i64 %i.fy, %.sroa.015.0.val.i, !dbg !2112
  %i.ga = icmp slt i64 %i.fw, %i.fz, !dbg !2113   ; 3 uses
  %..i.i = select i1 %i.ga, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !2114
  %i.gb = xor i1 %i.ga, true, !dbg !2115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !dbg !2116, !noalias !1896
  %.neg.i.i = sext i1 %i.gb to i64, !dbg !2117
  %i.gc = getelementptr [16 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !2118 ; 2 uses
  %.neg13.i.i = sext i1 %i.ga to i64, !dbg !2119
  %i.gd = getelementptr [16 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i, !dbg !2120 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -16, !dbg !2121
  %exitcond.not.i = icmp eq i64 %i.fg, %i.d, !dbg !2122
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !2084

bb.l:                                             ; preds = %._crit_edge.i
  %i.gf = icmp ult ptr %i.fs, %i.fc, !dbg !2123   ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gf, ptr %i.fs, ptr %i.fq, !dbg !2124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i, i64 16, i1 false), !dbg !2125
  %i.gg = zext i1 %i.gf to i64, !dbg !2126
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.gg, !dbg !2127
  %i.gi = xor i1 %i.gf, true, !dbg !2128
  %i.gj = zext i1 %i.gi to i64, !dbg !2128
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.gj, !dbg !2129
  br label %bb.m, !dbg !2130

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.fq, %._crit_edge.i ], [ %i.gk, %bb.l ], !dbg !2131
  %.sroa.06.1.i = phi ptr [ %i.fs, %._crit_edge.i ], [ %i.gh, %bb.l ], !dbg !2132
  %i.gl = icmp ne ptr %.sroa.06.1.i, %i.fc, !dbg !2133
  %i.gm = icmp ne ptr %.sroa.011.1.i, %i.fd
  %or.cond.i = select i1 %i.gl, i1 true, i1 %i.gm, !dbg !2133, !prof !326
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2b_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2f_.exit, !dbg !2133, !prof !326

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #24
          to label %.noexc unwind label %bb.o, !dbg !2134

.noexc:                                           ; preds = %bb.n
  unreachable, !dbg !2134

bb.o:                                             ; preds = %bb.n
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = shl nuw nsw i64 %1, 4, !dbg !2135
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.go, i1 false), !dbg !2135, !noalias !1897
  resume { ptr, i32 } %i.gn, !dbg !2136

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2b_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2f_.exit: ; preds = %bb.m, %bb.a
  ret void, !dbg !2137

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit
  %.sroa.05.050 = phi i1 [ false, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit ], [ %5, %bb.i ]
  %.sroa.05.050.a = phi i64 [ %i.hh, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit ], [ %.sroa.0.0, %bb.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.050.a, !dbg !2055
  %.idx = shl nuw nsw i64 %.sroa.05.050.a, 4, !dbg !2056
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !2056 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !dbg !2057
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -16, !dbg !2058 ; 3 uses
  %.val9.i40 = load i64, ptr %i.gq, align 8, !dbg !2059, !noundef !229 ; 3 uses
  %.val10.i = load i64, ptr %i.gr, align 8, !dbg !2059, !noundef !229 ; 2 uses
  %i.gs = ashr i64 %.val9.i40, 63, !dbg !2060
  %i.gt = lshr i64 %i.gs, 1, !dbg !2061
  %i.gu = xor i64 %i.gt, %.val9.i40, !dbg !2062   ; 2 uses
  %i.gv = ashr i64 %.val10.i, 63, !dbg !2063
  %i.gw = lshr i64 %i.gv, 1, !dbg !2064
  %i.gx = xor i64 %i.gw, %.val10.i, !dbg !2065
  %i.gy = icmp slt i64 %i.gu, %i.gx, !dbg !2066
  br i1 %i.gy, label %bb.p, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit, !dbg !2059

bb.p:                                             ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 8, !dbg !2067
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !2067, !noundef !229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !dbg !2068
  br i1 %.sroa.05.050, label %._crit_edge, label %.lr.ph74, !dbg !2069

bb.q:                                             ; preds = %.lr.ph74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i4173, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !dbg !2068
  %i.hb = icmp eq ptr %i.hc, %2, !dbg !2069
  br i1 %i.hb, label %._crit_edge, label %.lr.ph74, !dbg !2069

.lr.ph74:                                         ; preds = %bb.p, %bb.q
  %.sroa.0.0.i4173 = phi ptr [ %i.hc, %bb.q ], [ %i.gr, %bb.p ] ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %.sroa.0.0.i4173, i64 -16, !dbg !2070 ; 4 uses
  %.val8.i42 = load i64, ptr %i.hc, align 8, !dbg !2071, !noundef !229 ; 2 uses
  %i.hd = ashr i64 %.val8.i42, 63, !dbg !2072
  %i.he = lshr i64 %i.hd, 1, !dbg !2073
  %i.hf = xor i64 %i.he, %.val8.i42, !dbg !2074
  %i.hg = icmp slt i64 %i.gu, %i.hf, !dbg !2075
  br i1 %i.hg, label %bb.q, label %._crit_edge, !dbg !2071

._crit_edge:                                      ; preds = %bb.q, %.lr.ph74, %bb.p
  %.sroa.0.0.i41.lcssa = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i4173, %.lr.ph74 ], !dbg !2076 ; 2 uses
  store i64 %.val9.i40, ptr %.sroa.0.0.i41.lcssa, align 8, !dbg !2077, !noalias !1890
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa, i64 8, !dbg !2077
  store i64 %i.ha, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !2077, !noalias !1890
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit, !dbg !2078

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB23_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB27_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.hh = add nuw nsw i64 %.sroa.05.050.a, 1, !dbg !2079 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hh, %i.d, !dbg !2052
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !1884
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2138 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !2355
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, label %bb.b, !dbg !2355

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !2356
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !2357
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !2357

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1, !dbg !2358               ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !2359
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !2359

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !2360
  unreachable, !dbg !2360

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !2361
  br i1 %i.f, label %bb.g, label %bb.h, !dbg !2361

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1, !dbg !2362 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stabledNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !2363
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !2364
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !2365
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !2366
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stabledNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !2367
  br label %bb.i, !dbg !2368

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2369
  %.val8.i = load i64, ptr %i.k, align 8, !dbg !2370, !noundef !229 ; 2 uses
  %.val9.i = load i64, ptr %0, align 8, !dbg !2370, !noundef !229 ; 2 uses
  %i.l = ashr i64 %.val8.i, 63, !dbg !2371
  %i.m = lshr i64 %i.l, 1, !dbg !2372
  %i.n = xor i64 %i.m, %.val8.i, !dbg !2373
  %i.o = ashr i64 %.val9.i, 63, !dbg !2374
  %i.p = lshr i64 %i.o, 1, !dbg !2375
  %i.q = xor i64 %i.p, %.val9.i, !dbg !2376
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !2377      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2378
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2379
  %.val6.i = load i64, ptr %i.s, align 8, !dbg !2380, !noundef !229 ; 2 uses
  %.val7.i = load i64, ptr %i.t, align 8, !dbg !2380, !noundef !229 ; 2 uses
  %i.u = ashr i64 %.val6.i, 63, !dbg !2381
  %i.v = lshr i64 %i.u, 1, !dbg !2382
  %i.w = xor i64 %i.v, %.val6.i, !dbg !2383
  %i.x = ashr i64 %.val7.i, 63, !dbg !2384
  %i.y = lshr i64 %i.x, 1, !dbg !2385
  %i.z = xor i64 %i.y, %.val7.i, !dbg !2386
  %i.aa = icmp slt i64 %i.w, %i.z, !dbg !2387     ; 2 uses
  %i.ab = zext i1 %i.r to i64, !dbg !2388
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab, !dbg !2389 ; 2 uses
  %i.ad = xor i1 %i.r, true, !dbg !2390
  %i.ae = zext i1 %i.ad to i64, !dbg !2390
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae, !dbg !2391 ; 3 uses
  %i.ag = select i1 %i.aa, i64 3, i64 2, !dbg !2392
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag, !dbg !2393 ; 3 uses
  %i.ai = select i1 %i.aa, i64 2, i64 3, !dbg !2394
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai, !dbg !2395 ; 2 uses
  %.val4.i = load i64, ptr %i.ah, align 8, !dbg !2396, !noundef !229 ; 3 uses
  %.val5.i = load i64, ptr %i.ac, align 8, !dbg !2396, !noundef !229 ; 3 uses
  %i.ak = ashr i64 %.val4.i, 63, !dbg !2397
  %i.al = lshr i64 %i.ak, 1, !dbg !2398
  %i.am = xor i64 %i.al, %.val4.i, !dbg !2399
  %i.an = ashr i64 %.val5.i, 63, !dbg !2400
  %i.ao = lshr i64 %i.an, 1, !dbg !2401
  %i.ap = xor i64 %i.ao, %.val5.i, !dbg !2402
  %i.aq = icmp slt i64 %i.am, %i.ap, !dbg !2403   ; 3 uses
  %.val2.i = load i64, ptr %i.aj, align 8, !dbg !2404, !noundef !229 ; 3 uses
  %.val3.i = load i64, ptr %i.af, align 8, !dbg !2404, !noundef !229 ; 3 uses
  %i.ar = ashr i64 %.val2.i, 63, !dbg !2405
  %i.as = lshr i64 %i.ar, 1, !dbg !2406
  %i.at = xor i64 %i.as, %.val2.i, !dbg !2407
  %i.au = ashr i64 %.val3.i, 63, !dbg !2408
  %i.av = lshr i64 %i.au, 1, !dbg !2409
  %i.aw = xor i64 %i.av, %.val3.i, !dbg !2410
  %i.ax = icmp slt i64 %i.at, %i.aw, !dbg !2411   ; 3 uses
  %i.ay = select i1 %i.ax, ptr %i.ah, ptr %i.af, !dbg !2412, !unpredictable !229
  %i.az = select i1 %i.aq, ptr %i.ac, ptr %i.ay, !dbg !2413, !unpredictable !229
  %i.ba = select i1 %i.aq, ptr %i.af, ptr %i.ah, !dbg !2414, !unpredictable !229
  %i.bb = select i1 %i.ax, ptr %i.aj, ptr %i.ba, !dbg !2415, !unpredictable !229
  %.val.i = load i64, ptr %i.bb, align 8, !dbg !2416, !noundef !229 ; 4 uses
  %.val1.i = load i64, ptr %i.az, align 8, !dbg !2416, !noundef !229 ; 4 uses
  %i.bc = ashr i64 %.val.i, 63, !dbg !2417
  %i.bd = lshr i64 %i.bc, 1, !dbg !2418
  %i.be = xor i64 %i.bd, %.val.i, !dbg !2419
  %i.bf = ashr i64 %.val1.i, 63, !dbg !2420
  %i.bg = lshr i64 %i.bf, 1, !dbg !2421
  %i.bh = xor i64 %i.bg, %.val1.i, !dbg !2422
  %i.bi = icmp slt i64 %i.be, %i.bh, !dbg !2423   ; 2 uses
  %i.bj = select i1 %i.aq, i64 %.val4.i, i64 %.val5.i, !dbg !2424, !unpredictable !229
  store i64 %i.bj, ptr %2, align 8, !dbg !2425
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !2426
  %i.bl = select i1 %i.bi, i64 %.val.i, i64 %.val1.i, !dbg !2427, !unpredictable !229
  store i64 %i.bl, ptr %i.bk, align 8, !dbg !2428
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !2429
  %i.bn = select i1 %i.bi, i64 %.val1.i, i64 %.val.i, !dbg !2430, !unpredictable !229
  store i64 %i.bn, ptr %i.bm, align 8, !dbg !2431
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !2432
  %i.bp = select i1 %i.ax, i64 %.val3.i, i64 %.val2.i, !dbg !2433, !unpredictable !229
  store i64 %i.bp, ptr %i.bo, align 8, !dbg !2434
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !2435 ; 8 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !2436 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !2437
  %.val8.i30 = load i64, ptr %i.bs, align 8, !dbg !2438, !noundef !229 ; 2 uses
  %.val9.i31 = load i64, ptr %i.bq, align 8, !dbg !2438, !noundef !229 ; 2 uses
  %i.bt = ashr i64 %.val8.i30, 63, !dbg !2439
  %i.bu = lshr i64 %i.bt, 1, !dbg !2440
  %i.bv = xor i64 %i.bu, %.val8.i30, !dbg !2441
  %i.bw = ashr i64 %.val9.i31, 63, !dbg !2442
  %i.bx = lshr i64 %i.bw, 1, !dbg !2443
  %i.by = xor i64 %i.bx, %.val9.i31, !dbg !2444
  %i.bz = icmp slt i64 %i.bv, %i.by, !dbg !2445   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !2446
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !2447
  %.val6.i32 = load i64, ptr %i.ca, align 8, !dbg !2448, !noundef !229 ; 2 uses
  %.val7.i33 = load i64, ptr %i.cb, align 8, !dbg !2448, !noundef !229 ; 2 uses
  %i.cc = ashr i64 %.val6.i32, 63, !dbg !2449
  %i.cd = lshr i64 %i.cc, 1, !dbg !2450
  %i.ce = xor i64 %i.cd, %.val6.i32, !dbg !2451
  %i.cf = ashr i64 %.val7.i33, 63, !dbg !2452
  %i.cg = lshr i64 %i.cf, 1, !dbg !2453
  %i.ch = xor i64 %i.cg, %.val7.i33, !dbg !2454
  %i.ci = icmp slt i64 %i.ce, %i.ch, !dbg !2455   ; 2 uses
  %i.cj = zext i1 %i.bz to i64, !dbg !2456
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cj, !dbg !2457 ; 2 uses
  %i.cl = xor i1 %i.bz, true, !dbg !2458
  %i.cm = zext i1 %i.cl to i64, !dbg !2458
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cm, !dbg !2459 ; 3 uses
  %i.co = select i1 %i.ci, i64 3, i64 2, !dbg !2460
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.co, !dbg !2461 ; 3 uses
  %i.cq = select i1 %i.ci, i64 2, i64 3, !dbg !2462
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cq, !dbg !2463 ; 2 uses
  %.val4.i34 = load i64, ptr %i.cp, align 8, !dbg !2464, !noundef !229 ; 3 uses
  %.val5.i35 = load i64, ptr %i.ck, align 8, !dbg !2464, !noundef !229 ; 3 uses
  %i.cs = ashr i64 %.val4.i34, 63, !dbg !2465
  %i.ct = lshr i64 %i.cs, 1, !dbg !2466
  %i.cu = xor i64 %i.ct, %.val4.i34, !dbg !2467
  %i.cv = ashr i64 %.val5.i35, 63, !dbg !2468
  %i.cw = lshr i64 %i.cv, 1, !dbg !2469
  %i.cx = xor i64 %i.cw, %.val5.i35, !dbg !2470
  %i.cy = icmp slt i64 %i.cu, %i.cx, !dbg !2471   ; 3 uses
  %.val2.i36 = load i64, ptr %i.cr, align 8, !dbg !2472, !noundef !229 ; 3 uses
  %.val3.i37 = load i64, ptr %i.cn, align 8, !dbg !2472, !noundef !229 ; 3 uses
  %i.cz = ashr i64 %.val2.i36, 63, !dbg !2473
  %i.da = lshr i64 %i.cz, 1, !dbg !2474
  %i.db = xor i64 %i.da, %.val2.i36, !dbg !2475
  %i.dc = ashr i64 %.val3.i37, 63, !dbg !2476
  %i.dd = lshr i64 %i.dc, 1, !dbg !2477
  %i.de = xor i64 %i.dd, %.val3.i37, !dbg !2478
  %i.df = icmp slt i64 %i.db, %i.de, !dbg !2479   ; 3 uses
  %i.dg = select i1 %i.df, ptr %i.cp, ptr %i.cn, !dbg !2480, !unpredictable !229
  %i.dh = select i1 %i.cy, ptr %i.ck, ptr %i.dg, !dbg !2481, !unpredictable !229
  %i.di = select i1 %i.cy, ptr %i.cn, ptr %i.cp, !dbg !2482, !unpredictable !229
  %i.dj = select i1 %i.df, ptr %i.cr, ptr %i.di, !dbg !2483, !unpredictable !229
  %.val.i38 = load i64, ptr %i.dj, align 8, !dbg !2484, !noundef !229 ; 4 uses
  %.val1.i39 = load i64, ptr %i.dh, align 8, !dbg !2484, !noundef !229 ; 4 uses
  %i.dk = ashr i64 %.val.i38, 63, !dbg !2485
  %i.dl = lshr i64 %i.dk, 1, !dbg !2486
  %i.dm = xor i64 %i.dl, %.val.i38, !dbg !2487
  %i.dn = ashr i64 %.val1.i39, 63, !dbg !2488
  %i.do = lshr i64 %i.dn, 1, !dbg !2489
  %i.dp = xor i64 %i.do, %.val1.i39, !dbg !2490
  %i.dq = icmp slt i64 %i.dm, %i.dp, !dbg !2491   ; 2 uses
  %i.dr = select i1 %i.cy, i64 %.val4.i34, i64 %.val5.i35, !dbg !2492, !unpredictable !229
  store i64 %i.dr, ptr %i.br, align 8, !dbg !2493
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !2494
  %i.dt = select i1 %i.dq, i64 %.val.i38, i64 %.val1.i39, !dbg !2495, !unpredictable !229
  store i64 %i.dt, ptr %i.ds, align 8, !dbg !2496
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !2497
  %i.dv = select i1 %i.dq, i64 %.val1.i39, i64 %.val.i38, !dbg !2498, !unpredictable !229
  store i64 %i.dv, ptr %i.du, align 8, !dbg !2499
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !2500
  %i.dx = select i1 %i.df, i64 %.val3.i37, i64 %.val2.i36, !dbg !2501, !unpredictable !229
  store i64 %i.dx, ptr %i.dw, align 8, !dbg !2502
  br label %bb.i, !dbg !2503

bb.h:                                             ; preds = %bb.e
  %i.dy = load i64, ptr %0, align 8, !dbg !2504
  store i64 %i.dy, ptr %2, align 8, !dbg !2504
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !2505
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !2506
  %i.eb = load i64, ptr %i.dz, align 8, !dbg !2507
  store i64 %i.eb, ptr %i.ea, align 8, !dbg !2507
  br label %bb.i, !dbg !2503

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %5 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], !dbg !2508 ; 2 uses
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ], !dbg !2508 ; 4 uses
  %i.ec = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.ed = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !2509
  br i1 %i.ed, label %.lr.ph, label %.loopexit, !dbg !2341

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, %bb.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !2510
  %i.ef = getelementptr [8 x i8], ptr %2, i64 %i.d, !dbg !2511 ; 6 uses
  %i.eg = icmp samesign ult i64 %.sroa.0.0, %i.ec, !dbg !2509
  br i1 %i.eg, label %.lr.ph.1, label %.loopexit.1, !dbg !2341

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1
  %.sroa.05.056.1 = phi i1 [ false, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1 ], [ %5, %.loopexit ]
  %.sroa.05.056.1.a = phi i64 [ %i.ey, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.05.056.1.a, !dbg !2512
  %.idx85 = shl nuw nsw i64 %.sroa.05.056.1.a, 3, !dbg !2513
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx85, !dbg !2513 ; 3 uses
  %i.ej = load i64, ptr %i.eh, align 8, !dbg !2514 ; 4 uses
  store i64 %i.ej, ptr %i.ei, align 8, !dbg !2514
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -8, !dbg !2515 ; 2 uses
  %.val10.i.1 = load i64, ptr %i.ek, align 8, !dbg !2516, !noundef !229 ; 3 uses
  %i.el = ashr i64 %i.ej, 63, !dbg !2517
  %i.em = lshr i64 %i.el, 1, !dbg !2518
  %i.en = xor i64 %i.em, %i.ej, !dbg !2519        ; 2 uses
  %i.eo = ashr i64 %.val10.i.1, 63, !dbg !2520
  %i.ep = lshr i64 %i.eo, 1, !dbg !2521
  %i.eq = xor i64 %i.ep, %.val10.i.1, !dbg !2522
  %i.er = icmp slt i64 %i.en, %i.eq, !dbg !2523
  br i1 %i.er, label %.preheader.1.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1, !dbg !2516

.preheader.1.preheader:                           ; preds = %.lr.ph.1
  store i64 %.val10.i.1, ptr %i.ei, align 8, !dbg !2524
  br i1 %.sroa.05.056.1, label %._crit_edge82, label %.lr.ph81, !dbg !2525

.preheader.1:                                     ; preds = %.lr.ph81
  store i64 %.val8.i48.1, ptr %.sroa.0.0.i47.180, align 8, !dbg !2524
  %i.es = icmp eq ptr %i.et, %i.ef, !dbg !2525
  br i1 %i.es, label %._crit_edge82, label %.lr.ph81, !dbg !2525

.lr.ph81:                                         ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i47.180 = phi ptr [ %i.et, %.preheader.1 ], [ %i.ek, %.preheader.1.preheader ] ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %.sroa.0.0.i47.180, i64 -8, !dbg !2526 ; 3 uses
  %.val8.i48.1 = load i64, ptr %i.et, align 8, !dbg !2527, !noundef !229 ; 3 uses
  %i.eu = ashr i64 %.val8.i48.1, 63, !dbg !2528
  %i.ev = lshr i64 %i.eu, 1, !dbg !2529
  %i.ew = xor i64 %i.ev, %.val8.i48.1, !dbg !2530
  %i.ex = icmp slt i64 %i.en, %i.ew, !dbg !2531
  br i1 %i.ex, label %.preheader.1, label %._crit_edge82, !dbg !2527

._crit_edge82:                                    ; preds = %.preheader.1, %.lr.ph81, %.preheader.1.preheader
  %.sroa.0.0.i47.lcssa.1 = phi ptr [ %i.ef, %.preheader.1.preheader ], [ %i.ef, %.preheader.1 ], [ %.sroa.0.0.i47.180, %.lr.ph81 ], !dbg !2532
  store i64 %i.ej, ptr %.sroa.0.0.i47.lcssa.1, align 8, !dbg !2533, !noalias !2347
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1, !dbg !2534

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1: ; preds = %._crit_edge82, %.lr.ph.1
  %i.ey = add nuw nsw i64 %.sroa.05.056.1.a, 1, !dbg !2535 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ey, %i.ec, !dbg !2509
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !2341

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350), !dbg !2536
  %i.ez = add nsw i64 %1, -1, !dbg !2537          ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ez, !dbg !2538
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez, !dbg !2539
  %i.fc = getelementptr i8, ptr %i.ef, i64 -8, !dbg !2540
  br label %.lr.ph.i, !dbg !2541

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fd = getelementptr i8, ptr %i.gg, i64 8, !dbg !2542 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.gf, i64 8, !dbg !2543
  %i.ff = and i64 %1, 1, !dbg !2544
  %i.fg = icmp eq i64 %i.ff, 0, !dbg !2544
  br i1 %i.fg, label %bb.k, label %bb.j, !dbg !2545

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.014.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.fh, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.012.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %i.ef, %.loopexit.1 ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.fc, %.loopexit.1 ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.fb, %.loopexit.1 ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.fa, %.loopexit.1 ] ; 2 uses
  %i.fh = add nuw nsw i64 %.sroa.04.013.i, 1, !dbg !2546 ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.011.i, align 8, !dbg !2547, !alias.scope !2350, !noundef !229 ; 3 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.012.i, align 8, !dbg !2547, !alias.scope !2350, !noundef !229 ; 3 uses
  %i.fi = ashr i64 %.sroa.011.0.val.i, 63, !dbg !2548
  %i.fj = lshr i64 %i.fi, 1, !dbg !2549
  %i.fk = xor i64 %i.fj, %.sroa.011.0.val.i, !dbg !2550
  %i.fl = ashr i64 %.sroa.06.0.val.i, 63, !dbg !2551
  %i.fm = lshr i64 %i.fl, 1, !dbg !2552
  %i.fn = xor i64 %i.fm, %.sroa.06.0.val.i, !dbg !2553
  %i.fo = icmp slt i64 %i.fk, %i.fn, !dbg !2554   ; 3 uses
  %i.fp = xor i1 %i.fo, true, !dbg !2555
  %i.fq = select i1 %i.fo, i64 %.sroa.011.0.val.i, i64 %.sroa.06.0.val.i, !dbg !2556
  store i64 %i.fq, ptr %.sroa.0.014.i, align 8, !dbg !2557, !noalias !2352
  %i.fr = zext i1 %i.fo to i64, !dbg !2558
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i, i64 %i.fr, !dbg !2559 ; 4 uses
  %i.ft = zext i1 %i.fp to i64, !dbg !2560
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i, i64 %i.ft, !dbg !2561 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8, !dbg !2562 ; 2 uses
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.09.i, align 8, !dbg !2563, !alias.scope !2350, !noundef !229 ; 3 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.010.i, align 8, !dbg !2563, !alias.scope !2350, !noundef !229 ; 3 uses
  %i.fw = ashr i64 %.sroa.017.0.val.i, 63, !dbg !2564
  %i.fx = lshr i64 %i.fw, 1, !dbg !2565
  %i.fy = xor i64 %i.fx, %.sroa.017.0.val.i, !dbg !2566
  %i.fz = ashr i64 %.sroa.015.0.val.i, 63, !dbg !2567
  %i.ga = lshr i64 %i.fz, 1, !dbg !2568
  %i.gb = xor i64 %i.ga, %.sroa.015.0.val.i, !dbg !2569
  %i.gc = icmp slt i64 %i.fy, %i.gb, !dbg !2570   ; 3 uses
  %i.gd = xor i1 %i.gc, true, !dbg !2571
  %i.ge = select i1 %i.gc, i64 %.sroa.015.0.val.i, i64 %.sroa.017.0.val.i, !dbg !2572
  store i64 %i.ge, ptr %.sroa.019.08.i, align 8, !dbg !2573, !noalias !2353
  %.neg.i.i = sext i1 %i.gd to i64, !dbg !2574
  %i.gf = getelementptr [8 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i, !dbg !2575 ; 2 uses
  %.neg13.i.i = sext i1 %i.gc to i64, !dbg !2576
  %i.gg = getelementptr [8 x i8], ptr %.sroa.015.010.i, i64 %.neg13.i.i, !dbg !2577 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -8, !dbg !2578
  %exitcond.not.i = icmp eq i64 %i.fh, %i.d, !dbg !2579
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !2541

bb.j:                                             ; preds = %._crit_edge.i
  %i.gi = icmp ult ptr %i.fu, %i.fd, !dbg !2580   ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gi, ptr %i.fu, ptr %i.fs, !dbg !2581
  %i.gj = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !dbg !2582, !alias.scope !2350
  store i64 %i.gj, ptr %i.fv, align 8, !dbg !2582, !noalias !2350
  %i.gk = zext i1 %i.gi to i64, !dbg !2583
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gk, !dbg !2584
  %i.gm = xor i1 %i.gi, true, !dbg !2585
  %i.gn = zext i1 %i.gm to i64, !dbg !2585
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gn, !dbg !2586
  br label %bb.k, !dbg !2587

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.fs, %._crit_edge.i ], [ %i.go, %bb.j ], !dbg !2588
  %.sroa.06.1.i = phi ptr [ %i.fu, %._crit_edge.i ], [ %i.gl, %bb.j ], !dbg !2589
  %i.gp = icmp ne ptr %.sroa.06.1.i, %i.fd, !dbg !2590
  %i.gq = icmp ne ptr %.sroa.011.1.i, %i.fe
  %or.cond.i = select i1 %i.gp, i1 true, i1 %i.gq, !dbg !2590, !prof !326
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2590, !prof !326

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #24
          to label %.noexc unwind label %bb.m, !dbg !2591

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !2591

bb.m:                                             ; preds = %bb.l
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = shl nuw nsw i64 %1, 3, !dbg !2592
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.gs, i1 false), !dbg !2592, !noalias !2354
  resume { ptr, i32 } %i.gr, !dbg !2593

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !2594

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.05.056 = phi i1 [ false, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %5, %bb.i ]
  %.sroa.05.056.a = phi i64 [ %i.hk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.0.0, %bb.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.056.a, !dbg !2512
  %.idx = shl nuw nsw i64 %.sroa.05.056.a, 3, !dbg !2513
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !2513 ; 3 uses
  %i.gv = load i64, ptr %i.gt, align 8, !dbg !2514 ; 4 uses
  store i64 %i.gv, ptr %i.gu, align 8, !dbg !2514
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -8, !dbg !2515 ; 2 uses
  %.val10.i = load i64, ptr %i.gw, align 8, !dbg !2516, !noundef !229 ; 3 uses
  %i.gx = ashr i64 %i.gv, 63, !dbg !2517
  %i.gy = lshr i64 %i.gx, 1, !dbg !2518
  %i.gz = xor i64 %i.gy, %i.gv, !dbg !2519        ; 2 uses
  %i.ha = ashr i64 %.val10.i, 63, !dbg !2520
  %i.hb = lshr i64 %i.ha, 1, !dbg !2521
  %i.hc = xor i64 %i.hb, %.val10.i, !dbg !2522
  %i.hd = icmp slt i64 %i.gz, %i.hc, !dbg !2523
  br i1 %i.hd, label %.preheader.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2516

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %i.gu, align 8, !dbg !2524
  br i1 %.sroa.05.056, label %._crit_edge, label %.lr.ph78, !dbg !2525

.preheader:                                       ; preds = %.lr.ph78
  store i64 %.val8.i48, ptr %.sroa.0.0.i4777, align 8, !dbg !2524
  %i.he = icmp eq ptr %i.hf, %2, !dbg !2525
  br i1 %i.he, label %._crit_edge, label %.lr.ph78, !dbg !2525

.lr.ph78:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i4777 = phi ptr [ %i.hf, %.preheader ], [ %i.gw, %.preheader.preheader ] ; 3 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.0.0.i4777, i64 -8, !dbg !2526 ; 3 uses
  %.val8.i48 = load i64, ptr %i.hf, align 8, !dbg !2527, !noundef !229 ; 3 uses
  %i.hg = ashr i64 %.val8.i48, 63, !dbg !2528
  %i.hh = lshr i64 %i.hg, 1, !dbg !2529
  %i.hi = xor i64 %i.hh, %.val8.i48, !dbg !2530
  %i.hj = icmp slt i64 %i.gz, %i.hi, !dbg !2531
  br i1 %i.hj, label %.preheader, label %._crit_edge, !dbg !2527

._crit_edge:                                      ; preds = %.preheader, %.lr.ph78, %.preheader.preheader
  %.sroa.0.0.i47.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4777, %.lr.ph78 ], !dbg !2532
  store i64 %i.gv, ptr %.sroa.0.0.i47.lcssa, align 8, !dbg !2533, !noalias !2347
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2534

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %._crit_edge, %.lr.ph
  %i.hk = add nuw nsw i64 %.sroa.05.056.a, 1, !dbg !2535 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hk, %i.d, !dbg !2509
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !2341
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs18_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB7_10BucketSpanNtNtCs2NttipCe0aR_5prost7message7Message10encode_rawINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !2595 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i32, ptr %0, align 4, !dbg !2629, !range !348, !noundef !229
  %i.d = trunc nuw i32 %i.c to i1, !dbg !2629
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !2629

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !2629
  %.val = load i32, ptr %i.e, align 4, !dbg !2629 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2630, !noalias !2626
  store i8 8, ptr %i.a, align 1, !dbg !2631, !noalias !2626
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2633, !noalias !2626
  %i.f = shl i32 %.val, 1, !dbg !2634
  %i.g = ashr i32 %.val, 31, !dbg !2635
  %i.h = xor i32 %i.f, %i.g, !dbg !2636
  %i.i = zext i32 %i.h to i64, !dbg !2636
  call fastcc void @_RINvNtNtCs2NttipCe0aR_5prost8encoding6varint13encode_varintINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22, !dbg !2637
  br label %bb.c, !dbg !2638

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2639
  %i.k = load i32, ptr %i.j, align 4, !dbg !2639, !range !348, !noundef !229
  %i.l = trunc nuw i32 %i.k to i1, !dbg !2639
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !2639

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !2639
  %.val1 = load i32, ptr %i.m, align 4, !dbg !2639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2640, !noalias !2627
  store i8 16, ptr %i.b, align 1, !dbg !2641, !noalias !2627
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !2642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2643, !noalias !2627
  %i.n = zext i32 %.val1 to i64, !dbg !2644
  call fastcc void @_RINvNtNtCs2NttipCe0aR_5prost8encoding6varint13encode_varintINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i64 noundef %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22, !dbg !2645
  br label %bb.e, !dbg !2638

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void, !dbg !2646
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1f_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB7_8ExemplarNtNtCs2NttipCe0aR_5prost7message7Message10encode_rawINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !2647 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2706
  %i.d = load ptr, ptr %i.c, align 8, !dbg !2706, !nonnull !229, !noundef !229 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2707
  %i.f = load i64, ptr %i.e, align 8, !dbg !2707, !noundef !229 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 48, !dbg !2708
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx, !dbg !2708
  %i.h = icmp eq i64 %i.f, 0, !dbg !2709
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !2702

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 48, !dbg !2710 ; 2 uses
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.02, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2711
  %i.j = icmp eq ptr %i.i, %i.g, !dbg !2709
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !dbg !2702

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = load i64, ptr %0, align 8, !dbg !2712, !range !365, !noundef !229
  %i.l = trunc nuw i64 %i.k to i1, !dbg !2712
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !2712

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2712
  %.val = load double, ptr %i.m, align 8, !dbg !2712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2713, !noalias !2704
  store i8 17, ptr %i.a, align 1, !dbg !2714, !noalias !2704
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !2715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2716, !noalias !2704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2717, !noalias !2705
  store double %.val, ptr %i.b, align 8, !dbg !2718, !noalias !2705
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !dbg !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2720, !noalias !2705
  br label %bb.c, !dbg !2690

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2721
  %i.o = load i64, ptr %i.n, align 8, !dbg !2721, !range !365, !noundef !229
  %i.p = trunc nuw i64 %i.o to i1, !dbg !2721
  br i1 %i.p, label %bb.d, label %bb.e, !dbg !2721

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2721
  call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtCsin6t8jixZiS_11prost_types8protobuf9TimestampINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2721
  br label %bb.e, !dbg !2690

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void, !dbg !2722
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1m_NtNtCskerazqDcV1J_28foundations_metrics_registry5proto5modelNtB7_6MetricNtNtCs2NttipCe0aR_5prost7message7Message10encode_rawINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(576) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !2723 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560, !dbg !2777
  %i.c = load ptr, ptr %i.b, align 8, !dbg !2777, !nonnull !229, !noundef !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568, !dbg !2778
  %i.e = load i64, ptr %i.d, align 8, !dbg !2778, !noundef !229 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 48, !dbg !2779
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx, !dbg !2779
  %i.g = icmp eq i64 %i.e, 0, !dbg !2780
  br i1 %i.g, label %._crit_edge, label %.lr.ph, !dbg !2773

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 48, !dbg !2781 ; 2 uses
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.06, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2782
  %i.i = icmp eq ptr %i.h, %i.f, !dbg !2780
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !2773

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2783 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !2783, !range !368, !noundef !229
  %.not = icmp eq i64 %i.k, 2, !dbg !2783
  br i1 %.not, label %bb.c, label %bb.b, !dbg !2783

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model5GaugeINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2783
  br label %bb.c, !dbg !2761

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2784 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2784, !range !368, !noundef !229
  %.not2 = icmp eq i64 %i.m, 2, !dbg !2784
  br i1 %.not2, label %bb.e, label %bb.d, !dbg !2784

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model7CounterINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2784
  br label %bb.e, !dbg !2761

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !2785 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !2785, !range !368, !noundef !229
  %.not3 = icmp eq i64 %i.o, 2, !dbg !2785
  br i1 %.not3, label %bb.g, label %bb.f, !dbg !2785

bb.f:                                             ; preds = %bb.e
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model7SummaryINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2785
  br label %bb.g, !dbg !2761

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !2786 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !2786, !range !368, !noundef !229
  %.not4 = icmp eq i64 %i.q, 2, !dbg !2786
  br i1 %.not4, label %bb.i, label %bb.h, !dbg !2786

bb.h:                                             ; preds = %bb.g
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model7UntypedINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i32 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2786
  br label %bb.i, !dbg !2761

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load i64, ptr %0, align 8, !dbg !2787, !range !365, !noundef !229
  %i.s = trunc nuw i64 %i.r to i1, !dbg !2787
  br i1 %i.s, label %bb.j, label %bb.k, !dbg !2787

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775), !dbg !2787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2788, !noalias !2776
  store i8 48, ptr %i.a, align 1, !dbg !2789, !noalias !2776
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !2790, !noalias !2775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2791, !noalias !2776
  %i.u = load i64, ptr %i.t, align 8, !dbg !2792, !alias.scope !2775, !noundef !229
  call fastcc void @_RINvNtNtCs2NttipCe0aR_5prost8encoding6varint13encode_varintINtNtCs1xwejQucwHj_5alloc3vec3VechEECsim2LhUzKY4R_19foundations_metrics(i64 noundef %i.u, ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22, !dbg !2793, !noalias !2775
  br label %bb.k, !dbg !2761
end_hunk_0
