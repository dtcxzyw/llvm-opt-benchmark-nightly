Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ffi-f9766417db433be2.polars_ffi.fcf6559a484eb8a8-cgu.2?download=true
inline.NumInlined: 194
inline.NumDeleted: 94
begin_hunk_0_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store i8 3, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !1926
  br label %bb.aj, !dbg !1927

bb.q:                                             ; preds = %bb.a
  store i8 15, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.t:                                             ; preds = %bb.a
  store i8 18, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.u:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !1928
  %i.g = load i8, ptr %i.f, align 1, !dbg !1928, !range !1862, !noundef !91
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1929 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !1929
  %i.j = load i8, ptr %i.i, align 1, !dbg !1929, !range !159, !noundef !91 ; 2 uses
  switch i8 %i.j, label %bb.am [
    i8 -38, label %bb.ak
    i8 -40, label %bb.al
  ], !dbg !1930

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !1931
  br label %bb.aj, !dbg !1927

bb.w:                                             ; preds = %bb.a
  store i8 21, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.x:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867), !dbg !1933
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi(), !dbg !1934, !noalias !1867, !inline_history !1786 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !1935, !alias.scope !1867, !nonnull !91, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1936, !noalias !1869
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #21
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit unwind label %bb.y, !dbg !1937, !noalias !1867, !inline_history !1796

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #17, !dbg !1938, !noalias !91
  br label %common.resume, !dbg !1876

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !1876

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !1939

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !1940, !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1941, !noalias !1869
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1942
  %i.p = load i64, ptr %i.o, align 8, !dbg !1942, !noundef !91
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1943
  store ptr %i.l, ptr %i.q, align 16, !dbg !1943
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1943
  store i64 %i.p, ptr %i.r, align 8, !dbg !1943
  store i8 22, ptr %0, align 16, !dbg !1943
  br label %bb.aj, !dbg !1927

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883), !dbg !1945
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi(), !dbg !1946, !noalias !1883, !inline_history !1786 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !1947, !alias.scope !1883, !nonnull !91, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1948, !noalias !1884
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #21
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17 unwind label %bb.aa, !dbg !1949, !noalias !1883, !inline_history !1796

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !1950

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !1951, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1952, !noalias !1884
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1953
  store ptr %i.t, ptr %i.w, align 8, !dbg !1953
  store i8 23, ptr %0, align 16, !dbg !1953
  br label %bb.aj, !dbg !1927

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !1954
  br label %bb.aj, !dbg !1927

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !1925
  br label %bb.aj, !dbg !1925

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1955
  %i.y = load ptr, ptr %i.x, align 8, !dbg !1955, !nonnull !91, !noundef !91 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !1956
  %i.aa = icmp slt i64 %i.z, 0, !dbg !1957
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !1957

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1958
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !1958, !nonnull !91, !noundef !91 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !1959
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !1960
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !1960

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1961
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1962
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af), !dbg !1963
  store i8 28, ptr %0, align 16, !dbg !1962
  br label %bb.aj, !dbg !1927

bb.ag:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1964
  %i.ai = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !dbg !1965 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0, !dbg !1965 ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1, !dbg !1965 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899), !dbg !1966
  %i.al = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi()
          to label %.noexc unwind label %bb.aw, !dbg !1967, !noalias !1899, !inline_history !1786 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1968
  %i.an = load ptr, ptr %i.am, align 8, !dbg !1969, !alias.scope !1899, !nonnull !91, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1970, !noalias !1900
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.an) #21
          to label %bb.ax unwind label %bb.ah, !dbg !1971, !noalias !1899, !inline_history !1796

bb.ah:                                            ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 48, i64 noundef 16) #17, !dbg !1972, !noalias !1899
  br label %.body, !dbg !1973

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !1974
  br label %bb.aj, !dbg !1927

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !1975

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ %i.j, %bb.u ], !dbg !1976
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1977
  store i8 %i.g, ptr %i.ap, align 1, !dbg !1977
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.aq, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !1977
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !1977
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !1977
  store i8 19, ptr %0, align 16, !dbg !1977
  br label %bb.aj, !dbg !1927

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #19, !dbg !1978
  br label %bb.an, !dbg !1978

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !1979
  br label %bb.an, !dbg !1980

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !1981
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !1981
  br label %bb.ak, !dbg !1982

bb.ao:                                            ; preds = %bb.ad
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1983
  %i.as = load ptr, ptr %i.ar, align 16, !dbg !1983, !nonnull !91, !noundef !91 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !1984
  %i.au = icmp slt i64 %i.at, 0, !dbg !1985
  br i1 %i.au, label %bb.ar, label %bb.aq, !dbg !1985

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !1986
  unreachable, !dbg !1986

bb.aq:                                            ; preds = %bb.ao
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1987
  store ptr %i.y, ptr %i.av, align 8, !dbg !1987
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1987
  store ptr %i.as, ptr %i.aw, align 16, !dbg !1987
  store i8 26, ptr %0, align 16, !dbg !1987
  br label %bb.aj, !dbg !1927

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !1988
  unreachable, !dbg !1988

bb.as:                                            ; preds = %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1989
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !1989, !nonnull !91, !noundef !91 ; 2 uses
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !dbg !1990
  %i.ba = icmp slt i64 %i.az, 0, !dbg !1991
  br i1 %i.ba, label %bb.av, label %bb.au, !dbg !1991

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !1992
  unreachable, !dbg !1992

bb.au:                                            ; preds = %bb.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1993
  store ptr %i.ac, ptr %i.bb, align 8, !dbg !1993
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1993
  store ptr %i.ay, ptr %i.bc, align 16, !dbg !1993
  store i8 27, ptr %0, align 16, !dbg !1993
  br label %bb.aj, !dbg !1927

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !1994
  unreachable, !dbg !1994

bb.aw:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !1995

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.aw ], [ %i.ao, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECslIvKsLJE9Zc_10polars_ffi(ptr %i.aj, ptr nonnull %i.ak) #16
          to label %common.resume unwind label %bb.ay, !dbg !1995

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !1996, !noalias !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1997, !noalias !1900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj), "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1998
  store ptr %i.aj, ptr %i.be, align 8, !dbg !1998
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1998
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !1998
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1998
  store ptr %i.al, ptr %i.bg, align 8, !dbg !1998
  store i8 29, ptr %0, align 16, !dbg !1998
  br label %bb.aj, !dbg !1927

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1925
  unreachable, !dbg !1925
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1999 !guid !2027 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2033
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2033, !nonnull !91, !noundef !91 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2034
  %i.d = load i64, ptr %i.c, align 8, !dbg !2034, !noundef !91 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032), !dbg !2035
  %i.e = icmp eq i64 %i.d, 0, !dbg !2036
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit, label %.lr.ph.i, !dbg !2036

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !2036 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !2036 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !2036, !alias.scope !2032 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !2036
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !2036, !alias.scope !2032, !nonnull !91, !align !162, !noundef !91 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !2037, !invariant.load !91, !noalias !2032 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !2037
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !2037

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !2037, !noalias !2032

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !2038
  %i.k = load i64, ptr %i.j, align 8, !dbg !2038, !range !119, !invariant.load !91, !noalias !2032 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !2039
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i, label %bb.d, !dbg !2039

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !2038
  %i.n = load i64, ptr %i.m, align 8, !dbg !2040, !range !120, !invariant.load !91, !noalias !2032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !dbg !2041, !noalias !2032
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i, !dbg !2042

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !2043
  %i.q = load i64, ptr %i.p, align 8, !dbg !2043, !range !119, !invariant.load !91, !noalias !2032 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !2044
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !2044

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !2043
  %i.t = load i64, ptr %i.s, align 8, !dbg !2045, !range !120, !invariant.load !91, !noalias !2032
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #17, !dbg !2046, !noalias !2032
  br label %.body.i, !dbg !2047

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !2036
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit, label %.lr.ph.i, !dbg !2036

bb.g:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.0.1.i17, 1, !dbg !2036 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !2036
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !2036

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !2036
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !2036

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !2036 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !2036, !alias.scope !2032
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !2036
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !2036, !alias.scope !2032, !nonnull !91, !align !162, !noundef !91
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi(ptr %.val.i, ptr nonnull %.val7.i) #16
          to label %bb.g unwind label %bb.h, !dbg !2036, !noalias !2032

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !2036

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !2036, !noalias !2032
  unreachable, !dbg !2036

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslIvKsLJE9Zc_10polars_ffi.exit.i, %bb.a
  ret void, !dbg !2048
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2049 !guid !2086 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2101
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2101, !nonnull !91, !noundef !91 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2102
  %i.d = load i64, ptr %i.c, align 8, !dbg !2102, !noundef !91 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !2103
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECslIvKsLJE9Zc_10polars_ffi.exit, label %.lr.ph.i, !dbg !2103

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECslIvKsLJE9Zc_10polars_ffi.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECslIvKsLJE9Zc_10polars_ffi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i, !dbg !2103 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1, !dbg !2103 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091), !dbg !2103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092), !dbg !2104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093), !dbg !2105
  %i.h = load ptr, ptr %i.f, align 8, !dbg !2106, !alias.scope !2094, !nonnull !91, !noundef !91
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !2107, !noalias !2095
end_hunk_0
