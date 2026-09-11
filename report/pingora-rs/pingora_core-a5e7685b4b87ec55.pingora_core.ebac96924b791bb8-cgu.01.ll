Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.01?download=true
inline.NumInlined: 835
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode14WrapRingBufferNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB10_B10_ECskeugdADtBsi_12pingora_core:bb.a
  br i1 %.not.i2, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6, !prof !13

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @122, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !281
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  %i.m = sub nuw nsw i64 %.val1, %i.h
  %.not.i7 = icmp ult i64 %i.m, %i.l
  br i1 %.not.i7, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit, !prof !13

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @122, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26, !noalias !282
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit6
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %.val, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  store i8 0, ptr %i.a, align 1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECskeugdADtBsi_12pingora_core(i32 noundef %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(2592) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i32 %0, 2047
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2324 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2248 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2196 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 36 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1888 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1884 ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 2298 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 2244 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 2232 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2228 ; 5 uses
  %i.q = add nsw i32 %i.a, -1
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r                 ; 7 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @26, i64 %i.t
  %.pre = load i8, ptr %i.b, align 4, !range !347
  switch i8 %.pre, label %default.unreachable438 [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %thread-pre-split
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.aq
  ]

bb.b:                                             ; preds = %.preheader99.15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ph
  store i16 -1, ptr %i.v, align 2
  store i32 0, ptr %i.n, align 4
  store i32 8, ptr %i.o, align 8
  store i32 0, ptr %i.c, align 8
  store i32 0, ptr %i.p, align 4
  store i32 32768, ptr %i.d, align 4
  store i8 5, ptr %i.b, align 4
  br label %bb.aq

_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECskeugdADtBsi_12pingora_core.exit.loopexit: ; preds = %._crit_edge48.i, %._crit_edge43.i
  store i8 3, ptr %i.b, align 4
  br label %bb.ag

bb.c:                                             ; preds = %.loopexit97.loopexit, %..loopexit97_crit_edge
  %i.w = phi i64 [ %.pre344, %..loopexit97_crit_edge ], [ %i.az, %.loopexit97.loopexit ]
  %.lcssa7.i38 = phi i32 [ %.promoted.i35, %..loopexit97_crit_edge ], [ %i.ba, %.loopexit97.loopexit ] ; 2 uses
  %i.x = and i32 %.lcssa7.i38, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3                        ; 2 uses
  store i32 %i.ab, ptr %i.n, align 4, !alias.scope !348, !noalias !349
  %i.ac = add i32 %.lcssa7.i38, 2
  store i32 %i.ac, ptr %i.g, align 8, !alias.scope !350, !noalias !351
  store i32 0, ptr %i.e, align 4
  store i8 2, ptr %i.b, align 4
  br label %bb.l

bb.d:                                             ; preds = %.loopexit96
  store i32 32, ptr %i.d, align 4
  store i32 0, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  store i8 4, ptr %i.b, align 4
  br label %bb.ah

bb.e:                                             ; preds = %.loopexit96
  store i8 1, ptr %i.b, align 4
  br label %bb.i

default.unreachable438:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %.promoted.i = load i32, ptr %i.g, align 8, !alias.scope !352, !noalias !355 ; 3 uses
  %i.ad = add i32 %.promoted.i, -63
  %.not.i = icmp ult i32 %i.ad, 2
  br i1 %.not.i, label %.lr.ph.i, label %..loopexit96_crit_edge

..loopexit96_crit_edge:                           ; preds = %bb.f
  %.pre345 = load i64, ptr %i.f, align 8, !alias.scope !352, !noalias !355
  br label %.loopexit96

.lr.ph.i:                                         ; preds = %bb.f
  %.promoted17.i = load i32, ptr %i.h, align 8, !alias.scope !352, !noalias !355 ; 2 uses
  %.promoted18.i = load i32, ptr %i.i, align 4, !alias.scope !352, !noalias !355 ; 2 uses
  %i.ae = icmp eq i32 %.promoted17.i, 0
  br i1 %i.ae, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.f, align 8, !alias.scope !352, !noalias !355
  %i.af = lshr i64 %.promoted14.i, 8              ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !352, !noalias !355
  %i.ag = zext i32 %.promoted18.i to i64          ; 3 uses
  %i.ah = icmp samesign ugt i64 %8, %i.ag
  br i1 %i.ah, label %.loopexit96.loopexit, label %bb.h

.loopexit96.loopexit:                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !354, !noalias !356, !noundef !7
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 56
  %i.am = or disjoint i64 %i.al, %i.af            ; 2 uses
  store i64 %i.am, ptr %i.f, align 8, !alias.scope !352, !noalias !355
  %i.an = add nsw i32 %.promoted.i, -8
  %i.ao = add i32 %.promoted17.i, -1
  store i32 %i.ao, ptr %i.h, align 8, !alias.scope !352, !noalias !355
  %i.ap = add i32 %.promoted18.i, 1
  store i32 %i.ap, ptr %i.i, align 4, !alias.scope !352, !noalias !355
  br label %.loopexit96

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !357
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %.promoted.i35 = load i32, ptr %i.g, align 8, !alias.scope !350, !noalias !351 ; 3 uses
  %i.aq = add i32 %.promoted.i35, -63
  %.not.i36 = icmp ult i32 %i.aq, 2
  br i1 %.not.i36, label %.lr.ph.i39, label %..loopexit97_crit_edge

..loopexit97_crit_edge:                           ; preds = %bb.i
  %.pre344 = load i64, ptr %i.f, align 8, !alias.scope !350, !noalias !351
  br label %bb.c

.lr.ph.i39:                                       ; preds = %bb.i
  %.promoted17.i41 = load i32, ptr %i.h, align 8, !alias.scope !350, !noalias !351 ; 2 uses
  %.promoted18.i42 = load i32, ptr %i.i, align 4, !alias.scope !350, !noalias !351 ; 2 uses
  %i.ar = icmp eq i32 %.promoted17.i41, 0
  br i1 %i.ar, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i39
  %.promoted14.i40 = load i64, ptr %i.f, align 8, !alias.scope !350, !noalias !351
  %i.as = lshr i64 %.promoted14.i40, 8            ; 2 uses
  store i64 %i.as, ptr %i.f, align 8, !alias.scope !350, !noalias !351
  %i.at = zext i32 %.promoted18.i42 to i64        ; 3 uses
  %i.au = icmp samesign ugt i64 %8, %i.at
  br i1 %i.au, label %.loopexit97.loopexit, label %bb.k

.loopexit97.loopexit:                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !358, !noalias !359, !noundef !7
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw i64 %i.ax, 56
  %i.az = or disjoint i64 %i.ay, %i.as            ; 2 uses
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !350, !noalias !351
  %i.ba = add nsw i32 %.promoted.i35, -8
  %i.bb = add i32 %.promoted17.i41, -1
  store i32 %i.bb, ptr %i.h, align 8, !alias.scope !350, !noalias !351
  %i.bc = add i32 %.promoted18.i42, 1
  store i32 %i.bc, ptr %i.i, align 4, !alias.scope !350, !noalias !351
  br label %bb.c

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !360
  unreachable

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i32, ptr %i.n, align 4, !alias.scope !361, !noalias !362
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.c
  %i.bd = phi i32 [ %.pr, %thread-pre-split ], [ %i.ab, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.be = load i32, ptr %i.e, align 4, !alias.scope !361, !noalias !362, !noundef !7 ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 4 uses
  %i.bg = zext i32 %i.bd to i64                   ; 3 uses
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 6 uses
  %i.bi = icmp samesign uge i64 %i.bh, %i.bf
  %i.bj = icmp ult i32 %i.bd, 720
  %or.cond.i = and i1 %i.bj, %i.bi
  br i1 %or.cond.i, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %i.bh, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26, !noalias !363
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bh
  %i.bl = icmp samesign eq i64 %i.bh, %i.bf
  br i1 %i.bl, label %._crit_edge43.i, label %.lr.ph42.split.us.preheader.i

.lr.ph42.split.us.preheader.i:                    ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bf
  br label %.lr.ph42.split.us.i

.lr.ph42.split.us.i:                              ; preds = %bb.ac, %.lr.ph42.split.us.preheader.i
  %.sroa.05.040.us.i = phi i32 [ %i.ek, %bb.ac ], [ %i.be, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %.sroa.09.039.us.i = phi ptr [ %i.bn, %bb.ac ], [ %i.bm, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.039.us.i, i64 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %.promoted.i.us.i = load i32, ptr %i.g, align 8, !alias.scope !366, !noalias !367 ; 11 uses
  %i.bo = sub i32 64, %.promoted.i.us.i
  %.not.i.us.i = icmp ult i32 %i.bo, %i.s
  %.promoted14.i.us.i = load i64, ptr %i.f, align 8, !alias.scope !366, !noalias !367 ; 2 uses
  br i1 %.not.i.us.i, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph42.split.us.i
  %.promoted17.i.us.i = load i32, ptr %i.h, align 8, !alias.scope !366, !noalias !367 ; 6 uses
  %.promoted18.i.us.i = load i32, ptr %i.i, align 4, !alias.scope !366, !noalias !367 ; 6 uses
  %i.bp = icmp eq i32 %.promoted17.i.us.i, 0
  br i1 %i.bp, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.o, !prof !15

bb.o:                                             ; preds = %.lr.ph.i.us.i
  %i.bq = lshr i64 %.promoted14.i.us.i, 8         ; 2 uses
  store i64 %i.bq, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.br = zext i32 %.promoted18.i.us.i to i64     ; 3 uses
  %i.bs = icmp samesign ugt i64 %8, %i.br
  br i1 %i.bs, label %bb.p, label %.split.us.i

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !368, !noalias !369, !noundef !7
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw i64 %i.bv, 56
  %i.bx = or disjoint i64 %i.bw, %i.bq            ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.by = add i32 %.promoted.i.us.i, -8           ; 2 uses
  store i32 %i.by, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %i.bz = add i32 %.promoted17.i.us.i, -1         ; 2 uses
  store i32 %i.bz, ptr %i.h, align 8, !alias.scope !366, !noalias !367
  %i.ca = add i32 %.promoted18.i.us.i, 1          ; 2 uses
  store i32 %i.ca, ptr %i.i, align 4, !alias.scope !366, !noalias !367
  %i.cb = sub i32 72, %.promoted.i.us.i
  %.not19.i.us.i = icmp ult i32 %i.cb, %i.s
  br i1 %.not19.i.us.i, label %bb.q, label %._crit_edge.i.us.i

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.r, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.cd = lshr i64 %i.bx, 8                       ; 2 uses
  store i64 %i.cd, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.ce = zext i32 %i.ca to i64                   ; 3 uses
  %i.cf = icmp samesign ugt i64 %8, %i.ce
  br i1 %i.cf, label %bb.s, label %.split.us.i

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !368, !noalias !369, !noundef !7
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw i64 %i.ci, 56
  %i.ck = or disjoint i64 %i.cj, %i.cd            ; 3 uses
  store i64 %i.ck, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.cl = add i32 %.promoted.i.us.i, -16          ; 2 uses
  store i32 %i.cl, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %i.cm = add i32 %.promoted17.i.us.i, -2         ; 2 uses
  store i32 %i.cm, ptr %i.h, align 8, !alias.scope !366, !noalias !367
  %i.cn = add i32 %.promoted18.i.us.i, 2          ; 2 uses
  store i32 %i.cn, ptr %i.i, align 4, !alias.scope !366, !noalias !367
  %i.co = sub i32 80, %.promoted.i.us.i
  %.not19.i.us.i.1 = icmp ult i32 %i.co, %i.s
  br i1 %.not19.i.us.i.1, label %bb.t, label %._crit_edge.i.us.i

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp eq i32 %i.cm, 0
  br i1 %i.cp, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.u, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.cq = lshr i64 %i.ck, 8                       ; 2 uses
  store i64 %i.cq, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.cr = zext i32 %i.cn to i64                   ; 3 uses
  %i.cs = icmp samesign ugt i64 %8, %i.cr
  br i1 %i.cs, label %bb.v, label %.split.us.i

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !368, !noalias !369, !noundef !7
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw i64 %i.cv, 56
  %i.cx = or disjoint i64 %i.cw, %i.cq            ; 3 uses
  store i64 %i.cx, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.cy = add i32 %.promoted.i.us.i, -24          ; 2 uses
  store i32 %i.cy, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %i.cz = add i32 %.promoted17.i.us.i, -3         ; 2 uses
  store i32 %i.cz, ptr %i.h, align 8, !alias.scope !366, !noalias !367
  %i.da = add i32 %.promoted18.i.us.i, 3          ; 2 uses
  store i32 %i.da, ptr %i.i, align 4, !alias.scope !366, !noalias !367
  %i.db = sub i32 88, %.promoted.i.us.i
  %.not19.i.us.i.2 = icmp ult i32 %i.db, %i.s
  br i1 %.not19.i.us.i.2, label %bb.w, label %._crit_edge.i.us.i

bb.w:                                             ; preds = %bb.v
  %i.dc = icmp eq i32 %i.cz, 0
  br i1 %i.dc, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.x, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.dd = lshr i64 %i.cx, 8                       ; 2 uses
  store i64 %i.dd, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.de = zext i32 %i.da to i64                   ; 3 uses
  %i.df = icmp samesign ugt i64 %8, %i.de
  br i1 %i.df, label %bb.y, label %.split.us.i

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !368, !noalias !369, !noundef !7
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, 56
  %i.dk = or disjoint i64 %i.dj, %i.dd            ; 3 uses
  store i64 %i.dk, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.dl = add i32 %.promoted.i.us.i, -32          ; 2 uses
  store i32 %i.dl, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %i.dm = add i32 %.promoted17.i.us.i, -4         ; 2 uses
  store i32 %i.dm, ptr %i.h, align 8, !alias.scope !366, !noalias !367
  %i.dn = add i32 %.promoted18.i.us.i, 4          ; 2 uses
  store i32 %i.dn, ptr %i.i, align 4, !alias.scope !366, !noalias !367
  %i.do = sub i32 96, %.promoted.i.us.i
  %.not19.i.us.i.3 = icmp ult i32 %i.do, %i.s
  br i1 %.not19.i.us.i.3, label %bb.z, label %._crit_edge.i.us.i

bb.z:                                             ; preds = %bb.y
  %i.dp = icmp eq i32 %i.dm, 0
  br i1 %i.dp, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.aa, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.dq = lshr i64 %i.dk, 8                       ; 2 uses
  store i64 %i.dq, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.dr = zext i32 %i.dn to i64                   ; 3 uses
  %i.ds = icmp samesign ugt i64 %8, %i.dr
  br i1 %i.ds, label %bb.ab, label %.split.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 %i.dr
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !368, !noalias !369, !noundef !7
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw i64 %i.dv, 56
  %i.dx = or disjoint i64 %i.dw, %i.dq            ; 2 uses
  store i64 %i.dx, ptr %i.f, align 8, !alias.scope !366, !noalias !367
  %i.dy = add i32 %.promoted.i.us.i, -40          ; 2 uses
  store i32 %i.dy, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %i.dz = add i32 %.promoted17.i.us.i, -5
  store i32 %i.dz, ptr %i.h, align 8, !alias.scope !366, !noalias !367
  %i.ea = add i32 %.promoted18.i.us.i, 5
  store i32 %i.ea, ptr %i.i, align 4, !alias.scope !366, !noalias !367
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.p, %bb.s, %bb.v, %bb.y, %bb.ab, %.lr.ph42.split.us.i
  %i.eb = phi i64 [ %.promoted14.i.us.i, %.lr.ph42.split.us.i ], [ %i.bx, %bb.p ], [ %i.ck, %bb.s ], [ %i.cx, %bb.v ], [ %i.dk, %bb.y ], [ %i.dx, %bb.ab ]
  %.lcssa7.i.us.i = phi i32 [ %.promoted.i.us.i, %.lr.ph42.split.us.i ], [ %i.by, %bb.p ], [ %i.cl, %bb.s ], [ %i.cy, %bb.v ], [ %i.dl, %bb.y ], [ %i.dy, %bb.ab ] ; 2 uses
  %i.ec = and i32 %.lcssa7.i.us.i, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %i.eb, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.u, align 4, !noalias !370, !noundef !7
  %i.eh = and i32 %i.eg, %i.ef                    ; 2 uses
  %i.ei = add i32 %.lcssa7.i.us.i, %i.s
  store i32 %i.ei, ptr %i.g, align 8, !alias.scope !366, !noalias !367
  %.not.us.i = icmp ult i32 %i.eh, %1
  br i1 %.not.us.i, label %bb.ac, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.ac:                                            ; preds = %._crit_edge.i.us.i
  %i.ej = trunc i32 %i.eh to i16
  store i16 %i.ej, ptr %.sroa.09.039.us.i, align 2, !alias.scope !361, !noalias !362
  %i.ek = add i32 %.sroa.05.040.us.i, 1
  %i.el = icmp eq ptr %i.bn, %i.bk
  br i1 %i.el, label %._crit_edge43.i, label %.lr.ph42.split.us.i

.split.us.i:                                      ; preds = %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o
  %.lcssa = phi i64 [ %i.br, %bb.o ], [ %i.ce, %bb.r ], [ %i.cr, %bb.u ], [ %i.de, %bb.x ], [ %i.dr, %bb.aa ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !370
  unreachable

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %.lr.ph.i.us.i
  store i32 %.sroa.05.040.us.i, ptr %i.e, align 4, !alias.scope !361, !noalias !362
  store i8 2, ptr %i.b, align 4, !alias.scope !361, !noalias !362
  br label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

._crit_edge43.i:                                  ; preds = %bb.ac, %bb.n
  %.idx.i = shl nuw nsw i64 %i.bg, 1              ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.en = icmp eq i32 %i.bd, 0
  br i1 %i.en, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECskeugdADtBsi_12pingora_core.exit.loopexit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %._crit_edge43.i
  %i.eo = getelementptr i8, ptr %6, i64 %.idx.i
  %scevgep.i = getelementptr i8, ptr %i.eo, i64 258
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge48.i, %.lr.ph52.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %i.eq, %._crit_edge48.i ] ; 2 uses
  %.sroa.011.049.i = phi ptr [ %i.m, %.lr.ph52.preheader.i ], [ %i.ep, %._crit_edge48.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.011.049.i, i64 2 ; 2 uses
  %i.eq = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.i, %i.bh
  br i1 %exitcond.i, label %bb.ad, label %.lr.ph47.i, !prof !13

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.eq
  %i.es = load i16, ptr %.sroa.011.049.i, align 2, !alias.scope !361, !noalias !362, !noundef !7
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph52.i
  %i.et = add nuw nsw i64 %i.bg, 2
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.et, i64 noundef %i.bh, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #26, !noalias !363
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.014.045.i, i64 2 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %scevgep.i
  br i1 %i.ev, label %._crit_edge48.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph47.i
  %.sroa.014.045.i = phi ptr [ %i.er, %.lr.ph47.i ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.ew = load i16, ptr %.sroa.014.045.i, align 2, !alias.scope !361, !noalias !362, !noundef !7
  %i.ex = icmp eq i16 %i.es, %i.ew
  br i1 %i.ex, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.ae

._crit_edge48.i:                                  ; preds = %bb.ae
  %i.ey = icmp eq ptr %i.ep, %i.em
  br i1 %i.ey, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECskeugdADtBsi_12pingora_core.exit.loopexit, label %.lr.ph52.i

bb.ag:                                            ; preds = %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECskeugdADtBsi_12pingora_core.exit.loopexit, %bb.a
  %i.ez = load i32, ptr %i.n, align 4, !noundef !7 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 3
  br i1 %i.fa, label %bb.bp, label %bb.bt

bb.ah:                                            ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.fb = load i32, ptr %i.e, align 4, !alias.scope !371, !noalias !372, !noundef !7 ; 3 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ugt i32 %i.fb, 18
  br i1 %i.fd, label %bb.aj, label %bb.ai, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.fe = load i32, ptr %i.d, align 4, !alias.scope !371, !noalias !372, !noundef !7 ; 2 uses
  %i.ff = load i32, ptr %i.c, align 8, !alias.scope !371, !noalias !372, !noundef !7 ; 2 uses
  %i.fg = icmp eq i32 %i.fb, 18
  br i1 %i.fg, label %._crit_edge.i49, label %.lr.ph.i46

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fc, i64 noundef 18, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #26, !noalias !373
  unreachable

.lr.ph.i46:                                       ; preds = %bb.ai, %bb.ao
  %.sroa.02.042.i = phi i32 [ %.sroa.02.1.i, %bb.ao ], [ %i.ff, %bb.ai ] ; 3 uses
  %.sroa.05.040.i = phi i32 [ %.sroa.05.1.i, %bb.ao ], [ %i.fe, %bb.ai ] ; 3 uses
  %.sroa.011.0.idx37.i = phi i64 [ %.sroa.011.0.add.i, %bb.ao ], [ %i.fc, %bb.ai ] ; 3 uses
  %.sroa.011.0.ptr.i = getelementptr inbounds nuw i8, ptr @79, i64 %.sroa.011.0.idx37.i
  %.sroa.011.0.add.i = add nuw nsw i64 %.sroa.011.0.idx37.i, 1 ; 2 uses
  %i.fh = load i8, ptr %.sroa.011.0.ptr.i, align 1, !noalias !373, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %.promoted.i.i = load i32, ptr %i.g, align 8, !alias.scope !376, !noalias !377 ; 7 uses
  %i.fi = add i32 %.promoted.i.i, -61
  %.not.i.i = icmp ult i32 %i.fi, 4
  %.promoted11.i.i = load i64, ptr %i.f, align 8, !alias.scope !376, !noalias !377 ; 3 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i46
  %.promoted13.i.i = load i32, ptr %i.h, align 8, !alias.scope !376, !noalias !377 ; 2 uses
  %.promoted14.i.i = load i32, ptr %i.i, align 4, !alias.scope !376, !noalias !377 ; 2 uses
  %i.fj = icmp eq i32 %.promoted13.i.i, 0
  br i1 %i.fj, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, label %bb.ak

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i: ; preds = %.lr.ph.i46, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i
  %i.fk = phi i64 [ %i.fv, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted11.i.i, %.lr.ph.i46 ]
  %.lcssa7.i.i = phi i32 [ %i.fw, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted.i.i, %.lr.ph.i46 ] ; 2 uses
  %i.fl = and i32 %.lcssa7.i.i, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = lshr i64 %i.fk, %i.fm
  %.pre.i47 = and i64 %i.fn, 15                   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @80, i64 %.pre.i47
  %.pre58.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !373
  %.pre59.i = zext i8 %.pre58.i to i32
  br label %bb.an

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.fo = lshr i64 %.promoted11.i.i, 8            ; 2 uses
  store i64 %i.fo, ptr %i.f, align 8, !alias.scope !376, !noalias !377
  %i.fp = zext i32 %.promoted14.i.i to i64        ; 3 uses
  %i.fq = icmp samesign ugt i64 %8, %i.fp
  br i1 %i.fq, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i, label %bb.al

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i: ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !378, !noalias !379, !noundef !7
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw i64 %i.ft, 56
  %i.fv = or disjoint i64 %i.fu, %i.fo            ; 2 uses
  store i64 %i.fv, ptr %i.f, align 8, !alias.scope !376, !noalias !377
  %i.fw = add nsw i32 %.promoted.i.i, -8
  %i.fx = add i32 %.promoted13.i.i, -1
  store i32 %i.fx, ptr %i.h, align 8, !alias.scope !376, !noalias !377
  %i.fy = add i32 %.promoted14.i.i, 1
  store i32 %i.fy, ptr %i.i, align 4, !alias.scope !376, !noalias !377
  br label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !380
  unreachable

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i: ; preds = %.lr.ph.i.i
  %i.fz = sub nuw nsw i32 64, %.promoted.i.i
  %i.ga = icmp eq i32 %.promoted.i.i, 64
  %i.gb = and i32 %.promoted.i.i, 63
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = lshr i64 %.promoted11.i.i, %i.gc
  %i.ge = and i64 %i.gd, 15
  %storemerge.i = select i1 %i.ga, i64 0, i64 %i.ge ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr @80, i64 %storemerge.i
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !373, !noundef !7
  %i.gh = zext i8 %i.gg to i32                    ; 2 uses
  %i.gi = icmp samesign ult i32 %i.fz, %i.gh
  br i1 %i.gi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i
  %indvars57.le.i = trunc i64 %.sroa.011.0.idx37.i to i32
  store i32 %indvars57.le.i, ptr %i.e, align 4, !alias.scope !371, !noalias !372
  store i32 %.sroa.02.042.i, ptr %i.c, align 8, !alias.scope !371, !noalias !372
  store i32 %.sroa.05.040.i, ptr %i.d, align 4, !alias.scope !371, !noalias !372
  store i8 4, ptr %i.b, align 4, !alias.scope !371, !noalias !372
  br label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.an:                                            ; preds = %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i
  %.pre-phi60.i = phi i32 [ %.pre59.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %i.gh, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ]
  %i.gj = phi i32 [ %.lcssa7.i.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %.promoted.i.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre.i47, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %storemerge.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr @81, i64 %.pre-phi.i
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !373, !noundef !7 ; 3 uses
  %i.gm = add i32 %i.gj, %.pre-phi60.i
  store i32 %i.gm, ptr %i.g, align 8, !alias.scope !371, !noalias !372
  %i.gn = zext i8 %i.fh to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gn
  store i8 %i.gl, ptr %i.go, align 1, !alias.scope !371, !noalias !372
  %i.gp = shl nuw nsw i64 1, %.pre-phi.i
  %i.gq = and i64 %i.gp, 4369
  %.not.i48 = icmp eq i64 %i.gq, 0
  br i1 %.not.i48, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %.sroa.05.1.i = phi i32 [ %.sroa.05.040.i, %bb.an ], [ %i.gv, %bb.ap ] ; 2 uses
  %.sroa.02.1.i = phi i32 [ %.sroa.02.042.i, %bb.an ], [ %i.gw, %bb.ap ] ; 2 uses
  %i.gr = icmp eq i64 %.sroa.011.0.add.i, 18
  br i1 %i.gr, label %._crit_edge.i49, label %.lr.ph.i46

bb.ap:                                            ; preds = %bb.an
  %i.gs = and i8 %i.gl, 31
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = lshr i32 32, %i.gt
  %i.gv = sub i32 %.sroa.05.040.i, %i.gu          ; 3 uses
  %i.gw = add i32 %.sroa.02.042.i, 1              ; 2 uses
  %i.gx = zext i8 %i.gl to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.gx ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !alias.scope !371, !noalias !372, !noundef !7
  %i.ha = add i16 %i.gz, 1
  store i16 %i.ha, ptr %i.gy, align 2, !alias.scope !371, !noalias !372
  %i.hb = add i32 %i.gv, -33
  %i.hc = icmp ult i32 %i.hb, -32
  br i1 %i.hc, label %._crit_edge.i49, label %bb.ao

._crit_edge.i49:                                  ; preds = %bb.ap, %bb.ao, %bb.ai
  %.sroa.05.2.i = phi i32 [ %i.fe, %bb.ai ], [ %.sroa.05.1.i, %bb.ao ], [ %i.gv, %bb.ap ]
  %.sroa.02.2.i = phi i32 [ %i.ff, %bb.ai ], [ %.sroa.02.1.i, %bb.ao ], [ %i.gw, %bb.ap ]
  %i.hd = icmp eq i32 %.sroa.02.2.i, 1
  %i.he = icmp eq i32 %.sroa.05.2.i, 0
  %or.cond.i50 = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond.i50, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECskeugdADtBsi_12pingora_core.exit, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.aq:                                            ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.hf = load i32, ptr %i.n, align 4, !alias.scope !381, !noalias !382, !noundef !7 ; 3 uses
  %i.hg = load i32, ptr %i.c, align 8, !alias.scope !381, !noalias !382, !noundef !7
  %i.hh = load i32, ptr %i.d, align 4, !alias.scope !381, !noalias !382, !noundef !7 ; 4 uses
  %i.hi = load i32, ptr %i.o, align 8, !alias.scope !381, !noalias !382, !noundef !7
  %i.hj = load i32, ptr %i.p, align 4, !alias.scope !381, !noalias !382, !noundef !7
  %i.hk = load i32, ptr %i.g, align 8, !alias.scope !381, !noalias !382, !noundef !7
  %i.hl = icmp eq i32 %i.hk, 64
  br i1 %i.hl, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.hm = load i32, ptr %i.h, align 8, !alias.scope !381, !noalias !382, !noundef !7 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ho = load i64, ptr %i.f, align 8, !alias.scope !381, !noalias !382, !noundef !7
  %i.hp = lshr i64 %i.ho, 8                       ; 2 uses
  store i64 %i.hp, ptr %i.f, align 8, !alias.scope !381, !noalias !382
  %i.hq = load i32, ptr %i.i, align 4, !alias.scope !381, !noalias !382, !noundef !7 ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 3 uses
  %i.hs = icmp samesign ugt i64 %8, %i.hr
  br i1 %i.hs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 %i.hr
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !382, !noalias !381, !noundef !7
  %i.hv = zext i8 %i.hu to i64
  %i.hw = shl nuw i64 %i.hv, 56
  %i.hx = or disjoint i64 %i.hw, %i.hp
  store i64 %i.hx, ptr %i.f, align 8, !alias.scope !381, !noalias !382
  store i32 56, ptr %i.g, align 8, !alias.scope !381, !noalias !382
  %i.hy = add i32 %i.hm, -1
  store i32 %i.hy, ptr %i.h, align 8, !alias.scope !381, !noalias !382
  %i.hz = add i32 %i.hq, 1
  store i32 %i.hz, ptr %i.i, align 4, !alias.scope !381, !noalias !382
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !383
  unreachable

bb.av:                                            ; preds = %bb.at, %bb.aq
  %i.ia = icmp ult i32 %i.hf, %1
  %i.ib = icmp ne i32 %i.hh, 0
  %or.cond58.i = and i1 %i.ia, %i.ib
  br i1 %or.cond58.i, label %.lr.ph.i51, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit.thread81
end_hunk_0
