Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.07?download=true
inline.NumInlined: 1744
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode16DecodeContextMapNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef range(i64 1, 0) %i.cs, i64 noundef 2) #18, !dbg !1922, !noalias !1816
  br label %.backedge87.i.backedge, !dbg !1923

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeEECsfISxE4fmY1Y_14polars_parquet.exit54.i
  %i.ct = icmp eq i64 %i.cl, 0, !dbg !1924
  br i1 %i.ct, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ab, !dbg !1924

bb.ab:                                            ; preds = %bb.aa
  %i.cu = shl nuw nsw i64 %i.cl, 2, !dbg !1925
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef range(i64 1, 0) %i.cu, i64 noundef 2) #18, !dbg !1926, !noalias !1816
  br label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1927

.lr.ph.i:                                         ; preds = %bb.j, %.backedge.i
  %.sroa.04.0168.i = phi i32 [ %.sroa.04.0.be.i, %.backedge.i ], [ %i.as, %bb.j ] ; 12 uses
  %.sroa.014.0167.i = phi i1 [ false, %.backedge.i ], [ %i.av, %bb.j ]
  br i1 %.sroa.014.0167.i, label %thread-pre-split.i, label %bb.ac, !dbg !1928

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  store i8 4, ptr %i.p, align 1, !dbg !1929, !alias.scope !1800, !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1930, !noalias !1810
  br label %.backedge87.i.backedge, !dbg !1931

.backedge87.i.backedge:                           ; preds = %._crit_edge.i, %bb.z, %bb.y, %.loopexit84.i
  br label %.backedge87.i, !dbg !1849

bb.ac:                                            ; preds = %.lr.ph.i
  %.val41.i = load ptr, ptr %i.t, align 8, !dbg !1932, !alias.scope !1800, !noalias !1803, !nonnull !107, !noundef !107
  %.val42.i = load i64, ptr %i.u, align 8, !dbg !1932, !alias.scope !1800, !noalias !1803, !noundef !107
  %i.cv = invoke noundef zeroext i1 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode14SafeReadSymbol(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %.val41.i, i64 noundef %.val42.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
          to label %.noexc16 unwind label %.loopexit, !dbg !1933

.noexc16:                                         ; preds = %bb.ac
  br i1 %i.cv, label %bb.ah, label %.loopexit85.sink.split.i, !dbg !1933

thread-pre-split.i:                               ; preds = %.lr.ph.i
  %.pr.i = load i32, ptr %i.a, align 4, !dbg !1934, !noalias !1810
  br label %bb.ad, !dbg !1935

bb.ad:                                            ; preds = %bb.aj, %thread-pre-split.i
  %i.cw = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ds, %bb.aj ], !dbg !1934 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1819), !dbg !1936
  call void @llvm.experimental.noalias.scope.decl(metadata !1820), !dbg !1936
  %.promoted.i57.i = load i32, ptr %i.w, align 8, !alias.scope !1821, !noalias !1822 ; 3 uses
  %i.cx = sub i32 64, %.promoted.i57.i, !dbg !1937
  %.not.i58.i = icmp ult i32 %i.cx, %i.cw, !dbg !1938
  br i1 %.not.i58.i, label %.lr.ph.i61.i, label %._crit_edge.i59.i, !dbg !1938

.lr.ph.i61.i:                                     ; preds = %bb.ad
  %.promoted17.i63.i = load i32, ptr %i.x, align 8, !alias.scope !1821, !noalias !1822 ; 2 uses
  %i.cy = icmp eq i32 %.promoted17.i63.i, 0, !dbg !1939
  br i1 %i.cy, label %.loopexit85.sink.split.i, label %.lr.ph, !dbg !1939

.lr.ph:                                           ; preds = %.lr.ph.i61.i
  %.promoted18.i64.i = load i32, ptr %i.y, align 4, !alias.scope !1821, !noalias !1822
  %.promoted14.i62.i = load i64, ptr %i.v, align 8, !alias.scope !1821, !noalias !1822
  br label %bb.af, !dbg !1939

._crit_edge.i59.i.loopexit:                       ; preds = %bb.ag
  store i64 %i.dn, ptr %i.v, align 8, !dbg !1940, !alias.scope !1821, !noalias !1822
  br label %._crit_edge.i59.i, !dbg !1941

._crit_edge.i59.i:                                ; preds = %._crit_edge.i59.i.loopexit, %bb.ad
  %.lcssa7.i60.i = phi i32 [ %.promoted.i57.i, %bb.ad ], [ %i.do, %._crit_edge.i59.i.loopexit ], !dbg !1942 ; 2 uses
  %i.cz = zext i32 %i.cw to i64, !dbg !1941       ; 2 uses
  %i.da = icmp ult i32 %i.cw, 33, !dbg !1943
  br i1 %i.da, label %bb.ao, label %.invoke, !dbg !1943

bb.ae:                                            ; preds = %bb.ag
  %i.db = icmp eq i32 %i.dp, 0, !dbg !1939
  br i1 %i.db, label %.loopexit85.sink.split.i.loopexit, label %bb.af, !dbg !1939

bb.af:                                            ; preds = %.lr.ph, %bb.ae
  %i.dc = phi i64 [ %.promoted14.i62.i, %.lr.ph ], [ %i.dn, %bb.ae ]
  %i.dd = phi i32 [ %.promoted.i57.i, %.lr.ph ], [ %i.do, %bb.ae ] ; 2 uses
  %i.de = phi i32 [ %.promoted17.i63.i, %.lr.ph ], [ %i.dp, %bb.ae ]
  %i.df = phi i32 [ %.promoted18.i64.i, %.lr.ph ], [ %i.dq, %bb.ae ] ; 2 uses
  %i.dg = lshr i64 %i.dc, 8, !dbg !1944           ; 2 uses
  %i.dh = zext i32 %i.df to i64, !dbg !1945       ; 3 uses
  %i.di = icmp samesign ugt i64 %4, %i.dh, !dbg !1946
  br i1 %i.di, label %bb.ag, label %.invoke.loopexit374, !dbg !1946

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 %i.dh, !dbg !1946
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !1946, !alias.scope !1823, !noalias !1824, !noundef !107
  %i.dl = zext i8 %i.dk to i64, !dbg !1947
  %i.dm = shl nuw i64 %i.dl, 56, !dbg !1947
  %i.dn = or disjoint i64 %i.dm, %i.dg, !dbg !1948 ; 3 uses
  %i.do = add i32 %i.dd, -8, !dbg !1949           ; 3 uses
  store i32 %i.do, ptr %i.w, align 8, !dbg !1949, !alias.scope !1821, !noalias !1822
  %i.dp = add i32 %i.de, -1, !dbg !1950           ; 3 uses
  store i32 %i.dp, ptr %i.x, align 8, !dbg !1950, !alias.scope !1821, !noalias !1822
  %i.dq = add i32 %i.df, 1, !dbg !1951            ; 2 uses
  store i32 %i.dq, ptr %i.y, align 4, !dbg !1951, !alias.scope !1821, !noalias !1822
  %i.dr = sub i32 72, %i.dd, !dbg !1937
  %.not19.i65.i = icmp ult i32 %i.dr, %i.cw, !dbg !1938
  br i1 %.not19.i65.i, label %bb.ae, label %._crit_edge.i59.i.loopexit, !dbg !1938

bb.ah:                                            ; preds = %.noexc16
  %i.ds = load i32, ptr %i.a, align 4, !dbg !1952, !noalias !1810, !noundef !107 ; 4 uses
  %i.dt = icmp eq i32 %i.ds, 0, !dbg !1952
  br i1 %i.dt, label %bb.ai, label %bb.aj, !dbg !1952

.loopexit85.sink.split.i.loopexit:                ; preds = %bb.ae
  store i64 %i.dn, ptr %i.v, align 8, !dbg !1940, !alias.scope !1821, !noalias !1822
  br label %.loopexit85.sink.split.i, !dbg !1953

.loopexit85.sink.split.i:                         ; preds = %.noexc16, %.lr.ph.i61.i, %.loopexit85.sink.split.i.loopexit
  %.lcssa252.sink.i = phi i32 [ %i.cw, %.loopexit85.sink.split.i.loopexit ], [ 65535, %.noexc16 ], [ %i.cw, %.lr.ph.i61.i ]
  store i32 %.lcssa252.sink.i, ptr %i.s, align 8, !dbg !1953, !alias.scope !1800, !noalias !1803
  store i32 %.sroa.04.0168.i, ptr %i.q, align 8, !dbg !1953, !alias.scope !1800, !noalias !1803
  br label %.loopexit85.i, !dbg !1930

.loopexit85.i:                                    ; preds = %bb.ao, %.loopexit85.sink.split.i
  %.sroa.0.1.i = phi i32 [ 2, %.loopexit85.sink.split.i ], [ -8, %bb.ao ], !dbg !1953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1930, !noalias !1810
  br label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1954

bb.ai:                                            ; preds = %bb.ah
  %i.du = zext i32 %.sroa.04.0168.i to i64, !dbg !1955 ; 3 uses
  %i.dv = icmp ugt i64 %.sroa.12.2.ph, %i.du, !dbg !1956
  br i1 %i.dv, label %bb.ak, label %.invoke, !dbg !1956

bb.aj:                                            ; preds = %bb.ah
  %i.dw = icmp ugt i32 %i.ds, %i.at, !dbg !1957
  br i1 %i.dw, label %bb.am, label %bb.ad, !dbg !1957

bb.ak:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.du, !dbg !1958
  store i8 0, ptr %i.dx, align 1, !dbg !1958, !noalias !1816
  br label %bb.al, !dbg !1959

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.04.1.i = add i32 %.sroa.04.0168.i, 1, !dbg !1953
  br label %.backedge.i, !dbg !1959

.backedge.i:                                      ; preds = %bb.ap, %bb.al
  %.sroa.04.0.be.i = phi i32 [ %.sroa.04.1.i, %bb.al ], [ %i.fu, %bb.ap ] ; 2 uses
  %i.dy = icmp ult i32 %.sroa.04.0.be.i, %i.o
  br i1 %i.dy, label %.lr.ph.i, label %._crit_edge.i, !dbg !1869

bb.am:                                            ; preds = %bb.aj
  %i.dz = zext i32 %.sroa.04.0168.i to i64, !dbg !1960 ; 3 uses
  %i.ea = icmp ugt i64 %.sroa.12.2.ph, %i.dz, !dbg !1956
  br i1 %i.ea, label %bb.an, label %.invoke, !dbg !1956

bb.an:                                            ; preds = %bb.am
  %i.eb = sub nuw i32 %i.ds, %i.at, !dbg !1961
  %i.ec = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.dz, !dbg !1962
  %i.ed = trunc i32 %i.eb to i8, !dbg !1962
  store i8 %i.ed, ptr %i.ec, align 1, !dbg !1962, !noalias !1816
  br label %bb.al, !dbg !1959

bb.ao:                                            ; preds = %._crit_edge.i59.i
  %i.ee = load i64, ptr %i.v, align 8, !dbg !1963, !alias.scope !1821, !noalias !1822, !noundef !107
  %i.ef = and i32 %.lcssa7.i60.i, 63, !dbg !1963
  %i.eg = zext nneg i32 %i.ef to i64, !dbg !1963
  %i.eh = lshr i64 %i.ee, %i.eg, !dbg !1963
  %i.ei = trunc i64 %i.eh to i32, !dbg !1964
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.cz, !dbg !1943
  %i.ek = load i32, ptr %i.ej, align 4, !dbg !1943, !noalias !1828, !noundef !107
  %i.el = and i32 %i.ek, %i.ei, !dbg !1965        ; 3 uses
  %i.em = add i32 %.lcssa7.i60.i, %i.cw, !dbg !1966
  store i32 %i.em, ptr %i.w, align 8, !dbg !1966, !alias.scope !1821, !noalias !1822
  %i.en = and i32 %i.cw, 31, !dbg !1967
  %i.eo = shl nuw i32 1, %i.en, !dbg !1967        ; 3 uses
  %i.ep = add i32 %i.el, %i.eo, !dbg !1968        ; 4 uses
  %i.eq = add i32 %i.ep, %.sroa.04.0168.i, !dbg !1969
  %i.er = icmp ugt i32 %i.eq, %i.o, !dbg !1970
  br i1 %i.er, label %.loopexit85.i, label %.preheader.i.preheader, !dbg !1970

.preheader.i.preheader:                           ; preds = %bb.ao
  %i.es = zext i32 %.sroa.04.0168.i to i64, !dbg !1971
  %i.et = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.2.ph, i64 %i.es), !dbg !1971
  %i.eu = add i32 %i.el, %i.eo, !dbg !1971
  %i.ev = add i32 %i.eu, -1, !dbg !1971
  %i.ew = zext i32 %i.ev to i64, !dbg !1971
  %i.ex = call i64 @llvm.umin.i64(i64 %i.et, i64 %i.ew), !dbg !1971
  %i.ey = trunc nuw i64 %i.ex to i32, !dbg !1971
  %i.ez = add i32 %i.ey, 1, !dbg !1971            ; 3 uses
  %min.iters.check = icmp ult i32 %i.ez, 33, !dbg !1971
  br i1 %min.iters.check, label %.preheader.i.preheader373, label %vector.scevcheck, !dbg !1971

vector.scevcheck:                                 ; preds = %.preheader.i.preheader
  %i.fa = zext i32 %.sroa.04.0168.i to i64, !dbg !1971
  %i.fb = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.2.ph, i64 %i.fa), !dbg !1971
  %i.fc = add i32 %i.el, -1, !dbg !1971
  %i.fd = add i32 %i.fc, %i.eo, !dbg !1971
  %i.fe = zext i32 %i.fd to i64, !dbg !1971
  %umin = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fe), !dbg !1971
  %i.ff = trunc nuw i64 %umin to i32, !dbg !1971
  %i.fg = xor i32 %.sroa.04.0168.i, -1, !dbg !1971
  %i.fh = icmp ult i32 %i.fg, %i.ff, !dbg !1971
  br i1 %i.fh, label %.preheader.i.preheader373, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.fi = and i32 %i.ez, 31                       ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = select i1 %i.fj, i32 32, i32 %i.fi
  %n.vec = sub i32 %i.ez, %i.fk                   ; 3 uses
  %i.fl = sub i32 %i.ep, %n.vec
  %5 = add i32 %.sroa.04.0168.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = add i32 %.sroa.04.0168.i, %index
  %i.fn = zext i32 %i.fm to i64, !dbg !1972
  %i.fo = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.fn, !dbg !1973 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !1973
  store <16 x i8> zeroinitializer, ptr %i.fo, align 1, !dbg !1973, !noalias !1816
  store <16 x i8> zeroinitializer, ptr %i.fp, align 1, !dbg !1973, !noalias !1816
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.fq = icmp eq i32 %index.next, %n.vec, !dbg !1974
  br i1 %i.fq, label %.preheader.i.preheader373, label %vector.body, !dbg !1974, !llvm.loop !1757

.preheader.i.preheader373:                        ; preds = %vector.body, %vector.scevcheck, %.preheader.i.preheader
  %.sroa.073.0.i.ph = phi i32 [ %i.ep, %vector.scevcheck ], [ %i.ep, %.preheader.i.preheader ], [ %i.fl, %vector.body ]
  %.sroa.04.2.i.ph = phi i32 [ %.sroa.04.0168.i, %vector.scevcheck ], [ %.sroa.04.0168.i, %.preheader.i.preheader ], [ %5, %vector.body ]
  br label %.preheader.i, !dbg !1971

.preheader.i:                                     ; preds = %.preheader.i.preheader373, %bb.ap
  %.sroa.073.0.i = phi i32 [ %i.fv, %bb.ap ], [ %.sroa.073.0.i.ph, %.preheader.i.preheader373 ], !dbg !1975
  %.sroa.04.2.i = phi i32 [ %i.fu, %bb.ap ], [ %.sroa.04.2.i.ph, %.preheader.i.preheader373 ], !dbg !1976 ; 2 uses
  %i.fr = zext i32 %.sroa.04.2.i to i64, !dbg !1972 ; 3 uses
  %i.fs = icmp ugt i64 %.sroa.12.2.ph, %i.fr, !dbg !1971
  br i1 %i.fs, label %bb.ap, label %.invoke, !dbg !1971

bb.ap:                                            ; preds = %.preheader.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.fr, !dbg !1973
  store i8 0, ptr %i.ft, align 1, !dbg !1973, !noalias !1816
  %i.fu = add i32 %.sroa.04.2.i, 1, !dbg !1977    ; 2 uses
  %i.fv = add i32 %.sroa.073.0.i, -1, !dbg !1978  ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0, !dbg !1974
  br i1 %i.fw, label %.backedge.i, label %.preheader.i, !dbg !1974, !llvm.loop !1758

.invoke.loopexit374:                              ; preds = %bb.af
  store i64 %i.dg, ptr %i.v, align 8, !dbg !1940, !alias.scope !1821, !noalias !1822
  br label %.invoke, !dbg !1976

.invoke:                                          ; preds = %bb.i, %bb.am, %bb.ai, %._crit_edge.i59.i, %.preheader.i, %.invoke.loopexit374, %bb.m
  %i.fx = phi i64 [ %i.az, %bb.m ], [ %i.fr, %.preheader.i ], [ %i.dz, %bb.am ], [ %i.dh, %.invoke.loopexit374 ], [ %i.cz, %._crit_edge.i59.i ], [ %i.du, %bb.ai ], [ %i.ai, %bb.i ]
  %i.fy = phi i64 [ %4, %bb.m ], [ %.sroa.12.2.ph, %.preheader.i ], [ %.sroa.12.2.ph, %bb.am ], [ %4, %.invoke.loopexit374 ], [ 33, %._crit_edge.i59.i ], [ %.sroa.12.2.ph, %bb.ai ], [ %4, %bb.i ]
  %i.fz = phi ptr [ @29, %bb.m ], [ @28, %.preheader.i ], [ @27, %bb.am ], [ @29, %.invoke.loopexit374 ], [ @25, %._crit_edge.i59.i ], [ @26, %bb.ai ], [ @29, %bb.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !1976

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.l
  store i8 4, ptr %i.p, align 1, !dbg !1979, !alias.scope !1800, !noalias !1803
  br label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1980

.loopexit.loopexit.i:                             ; preds = %bb.m
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 %i.az, !dbg !1876
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !1876, !alias.scope !1831, !noalias !1832, !noundef !107
  %i.gc = zext i8 %i.gb to i64, !dbg !1981
  %i.gd = shl nuw i64 %i.gc, 56, !dbg !1981
  %i.ge = or disjoint i64 %i.gd, %i.ay, !dbg !1982 ; 2 uses
  store i64 %i.ge, ptr %i.v, align 8, !dbg !1982, !alias.scope !1813, !noalias !1814
  store i32 56, ptr %i.w, align 8, !dbg !1983, !alias.scope !1813, !noalias !1814
  %i.gf = add i32 %.promoted17.i.i, -1, !dbg !1984
  store i32 %i.gf, ptr %i.x, align 8, !dbg !1984, !alias.scope !1813, !noalias !1814
  %i.gg = add i32 %.promoted18.i.i, 1, !dbg !1985
  store i32 %i.gg, ptr %i.y, align 4, !dbg !1985, !alias.scope !1813, !noalias !1814
  br label %.loopexit.i, !dbg !1872

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %..loopexit_crit_edge.i
  %i.gh = phi i64 [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.ge, %.loopexit.loopexit.i ], !dbg !1872
  %.lcssa7.i50.i = phi i32 [ %.promoted.i47.i, %..loopexit_crit_edge.i ], [ 56, %.loopexit.loopexit.i ], !dbg !1986 ; 2 uses
  %i.gi = and i32 %.lcssa7.i50.i, 63, !dbg !1872
  %i.gj = zext nneg i32 %i.gi to i64, !dbg !1872
  %i.gk = add i32 %.lcssa7.i50.i, 1, !dbg !1987
  store i32 %i.gk, ptr %i.w, align 8, !dbg !1987, !alias.scope !1813, !noalias !1814
  %i.gl = shl nuw i64 1, %i.gj, !dbg !1988
  %i.gm = and i64 %i.gl, %i.gh, !dbg !1988
  %i.gn = icmp eq i64 %i.gm, 0, !dbg !1988
  br i1 %i.gn, label %.noexc22, label %bb.aq, !dbg !1988

bb.aq:                                            ; preds = %.loopexit.i
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 2331, !dbg !1989
  %i.gp = load i8, ptr %i.go, align 1, !dbg !1989, !range !136, !alias.scope !1800, !noalias !1803, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1, !dbg !1989
  br i1 %i.gq, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ar, !dbg !1990

.noexc22:                                         ; preds = %bb.ar, %.loopexit.i
  store i8 0, ptr %i.p, align 1, !dbg !1991, !alias.scope !1800, !noalias !1803
  br label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1992

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 2332, !dbg !1993
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 2284, !dbg !1994
  invoke void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode27InverseMoveToFrontTransform(ptr noalias noundef nonnull %.val45170.i.ph, i64 noundef %.sroa.12.2.ph, i32 noundef %i.o, ptr noalias noundef nonnull dereferenceable(256) %i.gr, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.gs)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !1995

.loopexit:                                        ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %bb.u
  %lpad.loopexit380 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %bb.g, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.ar, %bb.au, %bb.at
  %.sroa.12.0.ph.ph = phi i64 [ %.sroa.12.5, %bb.at ], [ %.sroa.12.2.ph, %bb.ar ], [ %.sroa.12.5, %bb.au ], [ %.sroa.12.2.ph, %.invoke ]
  %.sroa.0.036.ph.ph = phi ptr [ %.sroa.0.5, %bb.at ], [ %.val45170.i.ph, %bb.ar ], [ %.sroa.0.5, %bb.au ], [ %.val45170.i.ph, %.invoke ]
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t
  %.sroa.12.4 = phi i64 [ %.sroa.12.2.ph, %bb.s ], [ %.sroa.12.2.ph, %bb.t ], [ %.sroa.12.2.ph, %.loopexit ], [ %.sroa.12.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.12.2.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.12.2.ph, %.loopexit.split-lp.loopexit.loopexit ], !dbg !1798 ; 2 uses
  %.sroa.0.4 = phi ptr [ %.val45170.i.ph, %bb.s ], [ %.val45170.i.ph, %bb.t ], [ %.val45170.i.ph, %.loopexit ], [ %.sroa.0.036.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.val45170.i.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.val45170.i.ph, %.loopexit.split-lp.loopexit.loopexit ], !dbg !1798 ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %i.bx, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit380, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  %i.gt = icmp eq i64 %.sroa.12.4, 0, !dbg !1996
  br i1 %i.gt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.as, !dbg !1996

bb.as:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.4) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.4, i64 noundef range(i64 1, 0) %.sroa.12.4, i64 noundef 1) #18, !dbg !1997
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1998

_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.lr.ph.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i, %.noexc, %.noexc22, %bb.aq, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, %.loopexit85.i, %bb.ab, %bb.aa, %.lr.ph.preheader.i.i, %bb.r
  %.sroa.12.5 = phi i64 [ %.sroa.12.2.ph, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 0, %bb.r ], [ %i.bf, %.lr.ph.preheader.i.i ], [ %.sroa.12.2.ph, %.noexc22 ], [ %.sroa.12.2.ph, %bb.aq ], [ %.sroa.12.2.ph, %bb.aa ], [ %.sroa.12.2.ph, %bb.ab ], [ %.sroa.12.2.ph, %.loopexit85.i ], [ %.sroa.12.2.ph, %.lr.ph.i.i ], [ %.sroa.12.2.ph, %.noexc ], [ %i.bf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !1798 ; 4 uses
  %.sroa.0.5 = phi ptr [ %.val45170.i.ph, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ %i.be, %bb.r ], [ %i.be, %.lr.ph.preheader.i.i ], [ %.val45170.i.ph, %.noexc22 ], [ %.val45170.i.ph, %bb.aq ], [ %.val45170.i.ph, %bb.aa ], [ %.val45170.i.ph, %bb.ab ], [ %.val45170.i.ph, %.loopexit85.i ], [ %.val45170.i.ph, %.lr.ph.i.i ], [ %.val45170.i.ph, %.noexc ], [ %i.be, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !1798 ; 4 uses
  %.sroa.0.0.i = phi i32 [ 2, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 1, %bb.r ], [ 1, %.lr.ph.preheader.i.i ], [ 1, %.noexc22 ], [ -31, %bb.aq ], [ %i.ci, %bb.aa ], [ %i.ci, %bb.ab ], [ %.sroa.0.1.i, %.loopexit85.i ], [ 2, %.lr.ph.i.i ], [ %i.ad, %.noexc ], [ -25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !1976
  %i.gu = load i32, ptr %i.b, align 4, !dbg !1999, !noundef !107 ; 2 uses
  br i1 %1, label %bb.au, label %bb.at, !dbg !2000

bb.at:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 2292, !dbg !2001
  store i32 %i.gu, ptr %i.gv, align 4, !dbg !2001
  %i.gw = invoke { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet()
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !2002 ; 2 uses

bb.au:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 2232, !dbg !2003
  store i32 %i.gu, ptr %i.gx, align 8, !dbg !2003
  %i.gy = invoke { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet()
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !2004 ; 2 uses

bb.av:                                            ; preds = %bb.at
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 1840, !dbg !2005 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !dbg !2005, !nonnull !107, !noundef !107
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 1848, !dbg !2005 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !dbg !2005, !noundef !107 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.gz, align 8, !dbg !2006
  store i64 %.sroa.12.5, ptr %i.hb, align 8, !dbg !2006
  %i.hd = icmp eq i64 %i.hc, 0, !dbg !2007
  br i1 %i.hd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23, label %bb.aw, !dbg !2007

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ha, i64 noundef range(i64 1, 0) %i.hc, i64 noundef 1) #18, !dbg !2008
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23, !dbg !2009

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23: ; preds = %bb.ay, %bb.az, %bb.av, %bb.aw
  %.pn = phi { ptr, i64 } [ %i.gw, %bb.av ], [ %i.gw, %bb.aw ], [ %i.gy, %bb.az ], [ %i.gy, %bb.ay ] ; 2 uses
  %.sroa.12.1 = extractvalue { ptr, i64 } %.pn, 1, !dbg !1999 ; 2 uses
  %i.he = icmp eq i64 %.sroa.12.1, 0, !dbg !2010
  br i1 %i.he, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit24, label %bb.ax, !dbg !2010

bb.ax:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23
  %.sroa.0.1 = extractvalue { ptr, i64 } %.pn, 0, !dbg !1999 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.12.1, i64 noundef 1) #18, !dbg !2011
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit24, !dbg !2012

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit24: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2013
  ret i32 %.sroa.0.0.i, !dbg !2014

bb.ay:                                            ; preds = %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 1792, !dbg !2015 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !dbg !2015, !nonnull !107, !noundef !107
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 1800, !dbg !2015 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !2015, !noundef !107 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.hf, align 8, !dbg !2016
  store i64 %.sroa.12.5, ptr %i.hh, align 8, !dbg !2016
  %i.hj = icmp eq i64 %i.hi, 0, !dbg !2017
  br i1 %i.hj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23, label %bb.az, !dbg !2017

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hg, i64 noundef range(i64 1, 0) %i.hi, i64 noundef 1) #18, !dbg !2018
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit23, !dbg !2019

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.as, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !2020
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode20ReadDistanceInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB16_B16_ECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(4096) %4) unnamed_addr #0 !dbg !2021 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  br i1 %0, label %bb.b, label %bb.c, !dbg !2173

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !2174
  store i32 0, ptr %i.i, align 4, !dbg !2175
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1872, !dbg !2176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !2176, !noundef !107
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1880, !dbg !2177
  %i.m = load <2 x i32>, ptr %i.l, align 8, !dbg !2177
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1888, !dbg !2178
end_hunk_0
begin_hunk_1_@_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  br label %bb.af, !dbg !5425

bb.ai:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread, %bb.a, %bb.r, %bb.af
  %.sroa.0.1 = phi i1 [ true, %bb.af ], [ false, %bb.r ], [ false, %bb.a ], [ false, %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread ], !dbg !5426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5427
  ret i1 %.sroa.0.1, !dbg !5423
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 !dbg !80 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c, !dbg !5445

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %4 to i64, !dbg !5446           ; 2 uses
  %i.b = icmp ult i32 %4, 26, !dbg !5447
  br i1 %i.b, label %bb.d, label %bb.i, !dbg !5447

.sink.split:                                      ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, %._crit_edge.i
  %.sink = phi i8 [ 0, %._crit_edge.i ], [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %.sroa.0.0.ph = phi i1 [ true, %._crit_edge.i ], [ false, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5448
  store i8 %.sink, ptr %i.c, align 4, !dbg !5448
  br label %bb.c, !dbg !5449

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ], !dbg !5450
  ret i1 %.sroa.0.0, !dbg !5449

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @82, i64 %i.a, !dbg !5451 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !5452
  %i.f = load i8, ptr %i.e, align 2, !dbg !5452, !noundef !107 ; 2 uses
  %i.g = zext i8 %i.f to i32, !dbg !5453          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5439), !dbg !5454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5440), !dbg !5454
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i = load i32, ptr %i.h, align 8, !alias.scope !5439, !noalias !5441 ; 3 uses
  %i.i = sub i32 64, %.promoted.i, !dbg !5455
  %.not.i = icmp ult i32 %i.i, %i.g, !dbg !5456
  %.promoted14.i = load i64, ptr %1, align 8, !alias.scope !5439, !noalias !5441 ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5456

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.promoted17.i = load i32, ptr %i.j, align 8, !alias.scope !5439, !noalias !5441
  %.promoted18.i = load i32, ptr %i.k, align 4, !alias.scope !5439, !noalias !5441
  br label %bb.e, !dbg !5456

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %i.l = phi i32 [ %.promoted18.i, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.m = phi i32 [ %.promoted17.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.n = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.o = phi i64 [ %.promoted14.i, %.lr.ph.i ], [ %i.x, %bb.g ]
  %i.p = icmp eq i32 %i.m, 0, !dbg !5457
  br i1 %i.p, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.f, !dbg !5457

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %i.o, 8, !dbg !5458             ; 2 uses
  store i64 %i.q, ptr %1, align 8, !dbg !5458, !alias.scope !5439, !noalias !5441
  %i.r = zext i32 %i.l to i64, !dbg !5459         ; 3 uses
  %i.s = icmp samesign ugt i64 %6, %i.r, !dbg !5460
  br i1 %i.s, label %bb.g, label %bb.h, !dbg !5460

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %i.r, !dbg !5460
  %i.u = load i8, ptr %i.t, align 1, !dbg !5460, !alias.scope !5440, !noalias !5442, !noundef !107
  %i.v = zext i8 %i.u to i64, !dbg !5461
  %i.w = shl nuw i64 %i.v, 56, !dbg !5461
  %i.x = or disjoint i64 %i.w, %i.q, !dbg !5462   ; 3 uses
  store i64 %i.x, ptr %1, align 8, !dbg !5462, !alias.scope !5439, !noalias !5441
  %i.y = add i32 %i.n, -8, !dbg !5463             ; 3 uses
  store i32 %i.y, ptr %i.h, align 8, !dbg !5463, !alias.scope !5439, !noalias !5441
  %i.z = add i32 %i.m, -1, !dbg !5464             ; 2 uses
  store i32 %i.z, ptr %i.j, align 8, !dbg !5464, !alias.scope !5439, !noalias !5441
  %i.aa = add i32 %i.l, 1, !dbg !5465             ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !dbg !5465, !alias.scope !5439, !noalias !5441
  %i.ab = sub i32 72, %i.n, !dbg !5455
  %.not19.i = icmp ult i32 %i.ab, %i.g, !dbg !5456
  br i1 %.not19.i, label %bb.e, label %._crit_edge.i, !dbg !5456

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !5460, !noalias !5443
  unreachable, !dbg !5460

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !dbg !5447
  unreachable, !dbg !5447

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !5466
  store i32 %4, ptr %i.ac, align 4, !dbg !5466
  br label %.sink.split, !dbg !5467

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.ad = phi i64 [ %.promoted14.i, %bb.d ], [ %i.x, %bb.g ], !dbg !5468
  %.lcssa7.i = phi i32 [ %.promoted.i, %bb.d ], [ %i.y, %bb.g ], !dbg !5469 ; 2 uses
  %i.ae = zext i8 %i.f to i64, !dbg !5470
  %i.af = and i32 %.lcssa7.i, 63, !dbg !5468
  %i.ag = zext nneg i32 %i.af to i64, !dbg !5468
  %i.ah = lshr i64 %i.ad, %i.ag, !dbg !5468
  %i.ai = trunc i64 %i.ah to i32, !dbg !5471
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.ae, !dbg !5472
  %i.ak = load i32, ptr %i.aj, align 4, !dbg !5472, !noalias !5443, !noundef !107
  %i.al = and i32 %i.ak, %i.ai, !dbg !5473
  %i.am = add i32 %.lcssa7.i, %i.g, !dbg !5474
  store i32 %i.am, ptr %i.h, align 8, !dbg !5474, !alias.scope !5439, !noalias !5441
  %i.an = load i16, ptr %i.d, align 2, !dbg !5475, !noundef !107
  %i.ao = zext i16 %i.an to i32, !dbg !5475
  %i.ap = add i32 %i.al, %i.ao, !dbg !5476
  store i32 %i.ap, ptr %2, align 4, !dbg !5476
  br label %.sink.split, !dbg !5449
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2600) %5, ptr noalias noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 !dbg !5477 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 2592 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1872
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1888 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 1880 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 2216 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 2176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1784
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1776
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 1884 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2288 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2180
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2188
  %.pre = load i8, ptr %i.b, align 8, !dbg !5538, !range !136
  br label %bb.b, !dbg !5539

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.n = phi i8 [ %storemerge, %.backedge ], [ %.pre, %bb.a ], !dbg !5538
  %i.o = trunc nuw i8 %i.n to i1, !dbg !5538
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !5540

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5541
  call fastcc void @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15WriteRingBufferNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef %1, i64 %2, ptr noalias noundef align 8 dereferenceable(8) %3, ptr noalias noundef align 8 dereferenceable(8) %4, i1 noundef zeroext false, ptr noalias noundef align 8 dereferenceable(2600) %5), !dbg !5541
  %i.p = load i32, ptr %i.a, align 8, !dbg !5542, !range !196, !noundef !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5543
  %i.q = icmp eq i32 %i.p, 1, !dbg !5544
  br i1 %i.q, label %bb.n, label %.loopexit, !dbg !5544

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 8, !dbg !5545, !noundef !107 ; 2 uses
  %i.s = load i32, ptr %i.e, align 8, !dbg !5546, !noundef !107 ; 6 uses
  %i.t = sub i32 64, %i.s, !dbg !5547
  %i.u = lshr i32 %i.t, 3, !dbg !5548
  %i.v = add i32 %i.u, %i.r, !dbg !5545
  %i.w = load i32, ptr %i.f, align 8, !dbg !5549, !noundef !107 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.w), !dbg !5550 ; 2 uses
  %i.x = load i32, ptr %i.g, align 8, !dbg !5551, !noundef !107 ; 5 uses
  %i.y = add i32 %spec.select, %i.x, !dbg !5551   ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !dbg !5552, !noundef !107 ; 3 uses
  %i.aa = icmp sgt i32 %i.y, %i.z, !dbg !5553
  %i.ab = sub i32 %i.z, %i.x, !dbg !5553
  %.sroa.02.1 = select i1 %i.aa, i32 %i.ab, i32 %spec.select, !dbg !5553 ; 7 uses
  %.val12 = load i64, ptr %i.i, align 8, !dbg !5554, !noundef !107 ; 4 uses
  %i.ac = sext i32 %i.x to i64, !dbg !5555        ; 4 uses
  %i.ad = icmp ult i64 %.val12, %i.ac, !dbg !5556
  br i1 %i.ad, label %bb.l, label %bb.e, !dbg !5556, !prof !132

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.j, align 8, !dbg !5554, !nonnull !107, !noundef !107
  %i.ae = sub nuw i64 %.val12, %i.ac, !dbg !5557  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac, !dbg !5558 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5521), !dbg !5559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522), !dbg !5559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5523), !dbg !5559
  %notsub24.i = add i32 %i.s, -65, !dbg !5560
  %i.ag = icmp ult i32 %notsub24.i, -8, !dbg !5560
  %i.ah = icmp ne i32 %.sroa.02.1, 0
  %or.cond25.i = and i1 %i.ah, %i.ag, !dbg !5560
  br i1 %or.cond25.i, label %.lr.ph.i, label %.preheader.i, !dbg !5560

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !alias.scope !5522, !noalias !5524 ; 2 uses
  %i.aj = sub i32 56, %i.s, !dbg !5560
  %i.ak = lshr i32 %i.aj, 3, !dbg !5560
  %i.al = zext nneg i32 %i.ak to i64, !dbg !5560
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.y), !dbg !5560
  %i.an = xor i32 %i.x, -1, !dbg !5560
  %i.ao = add i32 %i.am, %i.an, !dbg !5560
  %i.ap = zext i32 %i.ao to i64, !dbg !5560
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ae), !dbg !5560
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap), !dbg !5560 ; 2 uses
  %min.iters.check131 = icmp samesign ult i64 %i.ar, 4, !dbg !5560
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.ph132, !dbg !5560

vector.ph132:                                     ; preds = %.lr.ph.i
  %i.as = add nuw nsw i64 %i.ar, 1, !dbg !5560    ; 2 uses
  %i.at = and i64 %i.as, 3                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec133 = sub nsw i64 %i.as, %i.av            ; 3 uses
  %8 = trunc nsw i64 %n.vec133 to i32             ; 2 uses
  %9 = sub i32 %.sroa.02.1, %8
  %10 = shl i32 %8, 3
  %11 = add i32 %i.s, %10
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat135, <i32 0, i32 8, i32 16, i32 24>
  br label %vector.body136, !dbg !5560

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body136 ], !dbg !5561 ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 3 uses
  %i.aw = and <4 x i32> %vec.ind, splat (i32 63), !dbg !5562
  %i.ax = zext nneg <4 x i32> %i.aw to <4 x i64>, !dbg !5562
  %i.ay = lshr <4 x i64> %broadcast.splat, %i.ax, !dbg !5562
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %index137, !dbg !5563
  %i.ba = trunc <4 x i64> %i.ay to <4 x i8>, !dbg !5563
  store <4 x i8> %i.ba, ptr %i.az, align 1, !dbg !5563, !alias.scope !5521, !noalias !5525
  %index.next138 = add nuw i64 %index137, 4, !dbg !5561 ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 32)
  %i.bb = icmp eq i64 %index.next138, %n.vec133, !dbg !5560
  br i1 %i.bb, label %middle.block139, label %vector.body136, !dbg !5560, !llvm.loop !5496

middle.block139:                                  ; preds = %vector.body136
  %i.bc = extractelement <4 x i32> %vec.ind, i64 3
  %i.bd = add i32 %i.bc, 8
  store i32 %i.bd, ptr %i.e, align 8, !dbg !5564, !alias.scope !5522, !noalias !5524
  br label %scalar.ph130.preheader, !dbg !5560

scalar.ph130.preheader:                           ; preds = %.lr.ph.i, %middle.block139
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec133, %middle.block139 ]
  %.sroa.0.027.i.ph = phi i32 [ %.sroa.02.1, %.lr.ph.i ], [ %9, %middle.block139 ]
  %.ph = phi i32 [ %i.s, %.lr.ph.i ], [ %11, %middle.block139 ]
  br label %scalar.ph130, !dbg !5565

.preheader.i:                                     ; preds = %bb.j, %bb.e
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.j ], !dbg !5566 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.02.1, %bb.e ], [ %i.cc, %bb.j ] ; 4 uses
  %.not.i = icmp eq i32 %.sroa.0.0.lcssa.i, 0, !dbg !5567
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !alias.scope !5522, !noalias !5524 ; 2 uses
  br i1 %.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %.lr.ph30.i, !dbg !5568

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.be = zext i32 %.pre.i to i64                 ; 3 uses
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %7, i64 %i.be), !dbg !5568 ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %.sroa.06.0.lcssa.i), !dbg !5568 ; 2 uses
  %wide.trip.count.i = zext i32 %.sroa.0.0.lcssa.i to i64, !dbg !5567 ; 2 uses
  %i.bh = add nsw i64 %wide.trip.count.i, -1, !dbg !5568
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh), !dbg !5568
  %i.bj = freeze i64 %i.bi, !dbg !5568
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bf), !dbg !5568 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 16, !dbg !5568
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !5568

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph30.i
  %indvars.iv40.i.ph = phi i64 [ 0, %.lr.ph30.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !5569

vector.ph:                                        ; preds = %.lr.ph30.i
  %i.bl = add nuw i64 %i.bk, 1, !dbg !5568        ; 2 uses
  %i.bm = and i64 %i.bl, 15                       ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = select i1 %i.bn, i64 16, i64 %i.bm
  %n.vec = sub i64 %i.bl, %i.bo                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %6, i64 %i.be, !dbg !5568
  %invariant.gep199 = getelementptr i8, ptr %i.af, i64 %.sroa.06.0.lcssa.i, !dbg !5568
  br label %vector.body, !dbg !5568

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !5570 ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index, !dbg !5569
  %wide.load = load <16 x i8>, ptr %gep, align 1, !dbg !5569, !alias.scope !5523, !noalias !5536
  %gep200 = getelementptr i8, ptr %invariant.gep199, i64 %index, !dbg !5571
  store <16 x i8> %wide.load, ptr %gep200, align 1, !dbg !5571, !alias.scope !5521, !noalias !5525
  %index.next = add nuw i64 %index, 16, !dbg !5570 ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec, !dbg !5568
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.body, !dbg !5568, !llvm.loop !5512

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %indvars.iv.i.ph, %scalar.ph130.preheader ] ; 3 uses
  %.sroa.0.027.i = phi i32 [ %i.cc, %bb.j ], [ %.sroa.0.027.i.ph, %scalar.ph130.preheader ]
  %i.bq = phi i32 [ %i.cb, %bb.j ], [ %.ph, %scalar.ph130.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.ae, !dbg !5565
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !5565

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.h ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1, !dbg !5570 ; 2 uses
  %i.br = add nuw nsw i64 %indvars.iv40.i, %i.be, !dbg !5572 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv40.i, %i.bf, !dbg !5569
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !dbg !5569

bb.f:                                             ; preds = %scalar.ph
  %i.bs = add nuw nsw i64 %indvars.iv40.i, %.sroa.06.0.lcssa.i, !dbg !5573 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv40.i, %i.bg, !dbg !5574
  br i1 %exitcond44.not.i, label %bb.i, label %bb.h, !dbg !5574

bb.g:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #20, !dbg !5569, !noalias !5537
  unreachable, !dbg !5569

bb.h:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.br, !dbg !5569
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !5569, !alias.scope !5523, !noalias !5536, !noundef !107
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bs, !dbg !5571
  store i8 %i.bu, ptr %i.bv, align 1, !dbg !5571, !alias.scope !5521, !noalias !5525
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count.i, !dbg !5567
  br i1 %exitcond45.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %scalar.ph, !dbg !5568, !llvm.loop !5513

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #20, !dbg !5574, !noalias !5537
  unreachable, !dbg !5574

bb.j:                                             ; preds = %scalar.ph130
  %i.bw = and i32 %i.bq, 63, !dbg !5562
  %i.bx = zext nneg i32 %i.bw to i64, !dbg !5562
  %i.by = lshr i64 %i.ai, %i.bx, !dbg !5562
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i, !dbg !5563
  %i.ca = trunc i64 %i.by to i8, !dbg !5563
  store i8 %i.ca, ptr %i.bz, align 1, !dbg !5563, !alias.scope !5521, !noalias !5525
  %i.cb = add i32 %i.bq, 8, !dbg !5564            ; 2 uses
  store i32 %i.cb, ptr %i.e, align 8, !dbg !5564, !alias.scope !5522, !noalias !5524
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !5561 ; 2 uses
  %i.cc = add i32 %.sroa.0.027.i, -1, !dbg !5575  ; 3 uses
  %notsub.i = add i32 %i.bq, -57, !dbg !5560
  %i.cd = icmp ult i32 %notsub.i, -8, !dbg !5560
  %i.ce = icmp ne i32 %i.cc, 0
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false, !dbg !5560
  br i1 %or.cond.i, label %scalar.ph130, label %.preheader.i, !dbg !5560, !llvm.loop !5514

bb.k:                                             ; preds = %scalar.ph130
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #20, !dbg !5565, !noalias !5537
  unreachable, !dbg !5565

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit: ; preds = %bb.h, %.preheader.i
  %i.cf = sub i32 %i.r, %.sroa.0.0.lcssa.i, !dbg !5576
  store i32 %i.cf, ptr %i.d, align 8, !dbg !5576, !alias.scope !5522, !noalias !5524
  %i.cg = add i32 %.pre.i, %.sroa.0.0.lcssa.i, !dbg !5577
  store i32 %i.cg, ptr %.phi.trans.insert.i, align 4, !dbg !5577, !alias.scope !5522, !noalias !5524
  %i.ch = add i32 %.sroa.02.1, %i.x, !dbg !5578   ; 2 uses
  store i32 %i.ch, ptr %i.g, align 8, !dbg !5578
  %i.ci = sub i32 %i.w, %.sroa.02.1, !dbg !5579
  store i32 %i.ci, ptr %i.f, align 8, !dbg !5579
  %i.cj = load i32, ptr %i.k, align 8, !dbg !5580, !noundef !107
  %i.ck = and i32 %i.cj, 31, !dbg !5581
  %i.cl = shl nuw i32 1, %i.ck, !dbg !5581
  %i.cm = icmp slt i32 %i.ch, %i.cl, !dbg !5582
  br i1 %i.cm, label %bb.m, label %.backedge, !dbg !5582

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %.val12, i64 noundef %.val12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #20, !dbg !5583
  unreachable, !dbg !5583

.backedge:                                        ; preds = %bb.o, %bb.n, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %storemerge = phi i8 [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit ], [ 0, %bb.n ], [ 0, %bb.o ], !dbg !5584 ; 2 uses
  store i8 %storemerge, ptr %i.b, align 8, !dbg !5584
  br label %bb.b, !dbg !5538

bb.m:                                             ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %i.cn = icmp eq i32 %i.w, %.sroa.02.1, !dbg !5585
  %. = select i1 %i.cn, i32 1, i32 2, !dbg !5586
  br label %.loopexit, !dbg !5586

.loopexit:                                        ; preds = %bb.c, %bb.m
  %.sroa.0.0 = phi i32 [ %., %bb.m ], [ %i.p, %bb.c ], !dbg !5584
  ret i32 %.sroa.0.0, !dbg !5587

bb.n:                                             ; preds = %bb.c
  %i.co = load i32, ptr %i.h, align 8, !dbg !5588, !noundef !107
  %i.cp = load i32, ptr %i.k, align 8, !dbg !5589, !noundef !107
  %i.cq = and i32 %i.cp, 31, !dbg !5590
  %i.cr = shl nuw i32 1, %i.cq, !dbg !5590
  %i.cs = icmp eq i32 %i.co, %i.cr, !dbg !5588
  br i1 %i.cs, label %bb.o, label %.backedge, !dbg !5588

bb.o:                                             ; preds = %bb.n
  %i.ct = load i32, ptr %i.l, align 4, !dbg !5591, !noundef !107
  store i32 %i.ct, ptr %i.m, align 4, !dbg !5592
  br label %.backedge, !dbg !5593
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode32DecodeLiteralBlockSwitchInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1i_B1i_ECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 !dbg !5594 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2080, !dbg !5599
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1872, !dbg !5600
  %i.c = tail call fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5601 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h, !dbg !5601

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5598), !dbg !5602
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2116, !dbg !5603
  %i.e = load i32, ptr %i.d, align 4, !dbg !5603, !alias.scope !5598, !noundef !107 ; 4 uses
  %i.f = zext i32 %i.e to i64, !dbg !5604         ; 4 uses
  %i.g = shl i32 %i.e, 6, !dbg !5605
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1904, !dbg !5606
  %i.i = zext i32 %i.g to i64, !dbg !5606         ; 4 uses
  store i64 %i.i, ptr %i.h, align 8, !dbg !5606, !alias.scope !5598
  %i.j = lshr i64 %i.f, 5, !dbg !5607             ; 2 uses
  %i.k = icmp ult i32 %i.e, 256, !dbg !5608
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !5608

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1728, !dbg !5608
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j, !dbg !5608
  %i.n = load i32, ptr %i.m, align 4, !dbg !5608, !alias.scope !5598, !noundef !107
  %i.o = and i32 %i.e, 31, !dbg !5609
  %i.p = lshr i32 %i.n, %i.o, !dbg !5610
  %i.q = and i32 %i.p, 1, !dbg !5611
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2208, !dbg !5612
  store i32 %i.q, ptr %i.r, align 8, !dbg !5612, !alias.scope !5598
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1848, !dbg !5613
  %.val9.i = load i64, ptr %i.s, align 8, !dbg !5613, !alias.scope !5598, !noundef !107 ; 2 uses
  %i.t = icmp ugt i64 %.val9.i, %i.i, !dbg !5614
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !5614

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #20, !dbg !5608, !noalias !5598
  unreachable, !dbg !5608

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1840, !dbg !5615
  %.val8.i = load ptr, ptr %i.u, align 8, !dbg !5613, !alias.scope !5598, !nonnull !107, !noundef !107
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %i.i, !dbg !5614
end_hunk_1
