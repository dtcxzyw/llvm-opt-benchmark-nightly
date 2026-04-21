inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_extent_alloc_large:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.k, i1 true) ; 2 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l                 ; 2 uses
  %5 = shl nsw i64 -1, %i.n
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %5, %i.o
  %i.q = lshr i64 %i.p, %i.n
end_hunk_0
begin_hunk_1_@arena_large_malloc_stats_update:bb.a
sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.m
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %3, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_1
begin_hunk_2_@arena_large_dalloc_stats_update:bb.a
sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.m
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %3, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_2
begin_hunk_3_@duckdb_je_arena_palloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 2 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k                 ; 2 uses
  %7 = shl nsw i64 -1, %i.m
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %7, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_3
begin_hunk_4_@duckdb_je_arena_ralloc_no_move:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.d
  %i.n = shl nuw i64 %3, 1
  %i.o = add i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.o, i1 true)
  %9 = sub nuw nsw i64 60, %i.p
  %notmask.i = shl nsw i64 -1, %9                 ; 2 uses
  %10 = xor i64 %notmask.i, -1
  %i.q = add nuw nsw i64 %3, %10
  %i.r = and i64 %i.q, %notmask.i
  br label %sz_s2u.exit36

end_hunk_4
begin_hunk_5_@duckdb_je_arena_ralloc_no_move:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw i64 %i.s, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ad, i1 true)
  %11 = sub nuw nsw i64 60, %i.ae
  %notmask.i39 = shl nsw i64 -1, %11              ; 2 uses
  %12 = xor i64 %notmask.i39, -1
  %i.af = add nuw nsw i64 %i.s, %12
  %i.ag = and i64 %i.af, %notmask.i39
  br label %sz_s2u.exit

end_hunk_5
begin_hunk_6_@duckdb_je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.j
  %i.au = shl nuw nsw i64 %.0.i34, 1
  %i.av = add nsw i64 %i.au, -1
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.av, i1 true) ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = sub nuw nsw i64 60, %i.aw               ; 2 uses
  %13 = shl nsw i64 -1, %i.ay
  %i.az = add nsw i64 %.0.i34, -1
  %i.ba = and i64 %13, %i.az
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3
end_hunk_6
begin_hunk_7_@duckdb_je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit45:                     ; preds = %sz_size2index.exit33
  %i.bm = shl nuw nsw i64 %2, 1
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bn, i1 true) ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = sub nuw nsw i64 60, %i.bo               ; 2 uses
  %14 = shl nsw i64 -1, %i.bq
  %i.br = add nsw i64 %2, -1
  %i.bs = and i64 %14, %i.br
  %i.bt = lshr i64 %i.bs, %i.bq
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
end_hunk_7
begin_hunk_8_@duckdb_je_arena_ralloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %4, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.n, i1 true)
  %12 = sub nuw nsw i64 60, %i.o
  %notmask.i66 = shl nsw i64 -1, %12              ; 2 uses
  %13 = xor i64 %notmask.i66, -1
  %i.p = add nuw nsw i64 %4, %13
  %i.q = and i64 %i.p, %notmask.i66
  br label %sz_s2u.exit

end_hunk_8
begin_hunk_9_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.af = shl nuw nsw i64 %i.w, 1
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ag, i1 true)
  %14 = sub nuw nsw i64 60, %i.ah
  %notmask.i = shl nsw i64 -1, %14                ; 2 uses
  %15 = xor i64 %notmask.i, -1
  %i.ai = add nuw nsw i64 %i.w, %15
  %i.aj = and i64 %i.ai, %notmask.i
  br label %sz_s2u.exit25.i

end_hunk_9
begin_hunk_10_@duckdb_je_arena_ralloc:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ao = shl nuw i64 %4, 1
  %i.ap = add i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ap, i1 true)
  %16 = sub nuw nsw i64 60, %i.aq
  %notmask.i63 = shl nsw i64 -1, %16              ; 2 uses
  %17 = xor i64 %notmask.i63, -1
  %i.ar = add nuw nsw i64 %4, %17
  %i.as = and i64 %i.ar, %notmask.i63
  br label %sz_s2u_compute.exit65

end_hunk_10
begin_hunk_11_@duckdb_je_arena_ralloc:bb.a
bb.v:                                             ; preds = %bb.u
  %i.bu = shl nuw i64 %i.bb, 1
  %i.bv = add i64 %i.bu, -1
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bv, i1 true) ; 2 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = sub nuw nsw i64 60, %i.bw               ; 2 uses
  %18 = shl nsw i64 -1, %i.by
  %i.bz = add nsw i64 %i.bb, -1
  %i.ca = and i64 %18, %i.bz
  %i.cb = lshr i64 %i.ca, %i.by
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3
end_hunk_11
begin_hunk_12_@duckdb_je_arena_ralloc:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.ef = shl nuw i64 %i.bb, 1
  %i.eg = add i64 %i.ef, -1
  %i.eh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.eg, i1 true)
  %19 = sub nuw nsw i64 60, %i.eh
  %notmask.i.i = shl nsw i64 -1, %19              ; 2 uses
  %20 = xor i64 %notmask.i.i, -1
  %i.ei = add nuw nsw i64 %i.bb, %20
  %i.ej = and i64 %i.ei, %notmask.i.i
  br label %sz_s2u.exit.i.i

end_hunk_12
begin_hunk_13_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit34.i:                          ; preds = %bb.au
  %i.ff = shl nuw nsw i64 %i.ew, 1
  %i.fg = add nsw i64 %i.ff, -1
  %i.fh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fg, i1 true)
  %21 = sub nuw nsw i64 60, %i.fh
  %notmask.i32.i = shl nsw i64 -1, %21            ; 2 uses
  %22 = xor i64 %notmask.i32.i, -1
  %i.fi = add nuw nsw i64 %i.ew, %22
  %i.fj = and i64 %i.fi, %notmask.i32.i
  br label %sz_s2u.exit25.i.i

end_hunk_13
begin_hunk_14_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit37.i:                          ; preds = %bb.ax
  %i.fn = shl nuw i64 %i.bb, 1
  %i.fo = add i64 %i.fn, -1
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fo, i1 true)
  %23 = sub nuw nsw i64 60, %i.fp
  %notmask.i35.i = shl nsw i64 -1, %23            ; 2 uses
  %24 = xor i64 %notmask.i35.i, -1
  %i.fq = add nuw nsw i64 %i.bb, %24
  %i.fr = and i64 %i.fq, %notmask.i35.i           ; 2 uses
  %i.fs = icmp samesign ult i64 %i.fr, %i.bb
  br i1 %i.fs, label %arena_sdalloc.exit, label %.thread58.i
end_hunk_14
begin_hunk_15_@duckdb_je_arena_ralloc:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.gw = shl nuw i64 %3, 1
  %i.gx = add i64 %i.gw, -1
  %i.gy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.gx, i1 true) ; 2 uses
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = sub nuw nsw i64 60, %i.gy               ; 2 uses
  %25 = shl nsw i64 -1, %i.ha
  %i.hb = add nsw i64 %3, -1
  %i.hc = and i64 %25, %i.hb
  %i.hd = lshr i64 %i.hc, %i.ha
  %i.he = trunc i64 %i.hd to i32
  %i.hf = and i32 %i.he, 3
end_hunk_15
begin_hunk_16_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.l
  %i.m = add nsw i64 %2, -1
  %i.n = and i64 %3, %i.m
  %i.o = lshr i64 %i.n, %i.l
end_hunk_16
