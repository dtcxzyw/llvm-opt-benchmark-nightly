inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_extent_alloc_large:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %5 = ashr exact i64 -1152921504606846976, %i.l
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %5, %i.o
  %i.q = lshr i64 %i.p, %i.n
end_hunk_0
begin_hunk_1_@arena_large_malloc_stats_update:bb.a
sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %3, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_1
begin_hunk_2_@arena_large_dalloc_stats_update:bb.a
sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %3, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_2
begin_hunk_3_@duckdb_je_arena_palloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %7 = ashr exact i64 -1152921504606846976, %i.k
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %7, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_3
begin_hunk_4_@duckdb_je_arena_ralloc_no_move:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.d
  %i.n = shl nuw i64 %3, 1
  %i.o = add i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.o, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.p
  %9 = lshr i64 1152921504606846975, %i.p
  %i.q = add nuw nsw i64 %3, %9
  %i.r = and i64 %i.q, %notmask.i
  br label %sz_s2u.exit36

end_hunk_4
begin_hunk_5_@duckdb_je_arena_ralloc_no_move:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw i64 %i.s, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ad, i1 true) ; 2 uses
  %notmask.i39 = ashr exact i64 -1152921504606846976, %i.ae
  %10 = lshr i64 1152921504606846975, %i.ae
  %i.af = add nuw nsw i64 %i.s, %10
  %i.ag = and i64 %i.af, %notmask.i39
  br label %sz_s2u.exit

end_hunk_5
begin_hunk_6_@duckdb_je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.j
  %i.au = shl nuw nsw i64 %.0.i34, 1
  %i.av = add nsw i64 %i.au, -1
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.av, i1 true) ; 3 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = sub nuw nsw i64 60, %i.aw
  %11 = ashr exact i64 -1152921504606846976, %i.aw
  %i.az = add nsw i64 %.0.i34, -1
  %i.ba = and i64 %11, %i.az
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3
end_hunk_6
begin_hunk_7_@duckdb_je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit45:                     ; preds = %sz_size2index.exit33
  %i.bm = shl nuw nsw i64 %2, 1
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bn, i1 true) ; 3 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = sub nuw nsw i64 60, %i.bo
  %12 = ashr exact i64 -1152921504606846976, %i.bo
  %i.br = add nsw i64 %2, -1
  %i.bs = and i64 %12, %i.br
  %i.bt = lshr i64 %i.bs, %i.bq
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
end_hunk_7
begin_hunk_8_@duckdb_je_arena_ralloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %4, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %notmask.i66 = ashr exact i64 -1152921504606846976, %i.o
  %12 = lshr i64 1152921504606846975, %i.o
  %i.p = add nuw nsw i64 %4, %12
  %i.q = and i64 %i.p, %notmask.i66
  br label %sz_s2u.exit

end_hunk_8
begin_hunk_9_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.af = shl nuw nsw i64 %i.w, 1
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ag, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ah
  %13 = lshr i64 1152921504606846975, %i.ah
  %i.ai = add nuw nsw i64 %i.w, %13
  %i.aj = and i64 %i.ai, %notmask.i
  br label %sz_s2u.exit25.i

end_hunk_9
begin_hunk_10_@duckdb_je_arena_ralloc:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ao = shl nuw i64 %4, 1
  %i.ap = add i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ap, i1 true) ; 2 uses
  %notmask.i63 = ashr exact i64 -1152921504606846976, %i.aq
  %14 = lshr i64 1152921504606846975, %i.aq
  %i.ar = add nuw nsw i64 %4, %14
  %i.as = and i64 %i.ar, %notmask.i63
  br label %sz_s2u_compute.exit65

end_hunk_10
begin_hunk_11_@duckdb_je_arena_ralloc:bb.a
bb.v:                                             ; preds = %bb.u
  %i.bu = shl nuw i64 %i.bb, 1
  %i.bv = add i64 %i.bu, -1
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bv, i1 true) ; 3 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = sub nuw nsw i64 60, %i.bw
  %15 = ashr exact i64 -1152921504606846976, %i.bw
  %i.bz = add nsw i64 %i.bb, -1
  %i.ca = and i64 %15, %i.bz
  %i.cb = lshr i64 %i.ca, %i.by
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3
end_hunk_11
begin_hunk_12_@duckdb_je_arena_ralloc:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.ef = shl nuw i64 %i.bb, 1
  %i.eg = add i64 %i.ef, -1
  %i.eh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.eg, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.eh
  %16 = lshr i64 1152921504606846975, %i.eh
  %i.ei = add nuw nsw i64 %16, %i.bb
  %i.ej = and i64 %i.ei, %notmask.i.i
  br label %sz_s2u.exit.i.i

end_hunk_12
begin_hunk_13_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit34.i:                          ; preds = %bb.au
  %i.ff = shl nuw nsw i64 %i.ew, 1
  %i.fg = add nsw i64 %i.ff, -1
  %i.fh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fg, i1 true) ; 2 uses
  %notmask.i32.i = ashr exact i64 -1152921504606846976, %i.fh
  %17 = lshr i64 1152921504606846975, %i.fh
  %i.fi = add nuw nsw i64 %17, %i.ew
  %i.fj = and i64 %i.fi, %notmask.i32.i
  br label %sz_s2u.exit25.i.i

end_hunk_13
begin_hunk_14_@duckdb_je_arena_ralloc:bb.a
sz_s2u_compute.exit37.i:                          ; preds = %bb.ax
  %i.fn = shl nuw i64 %i.bb, 1
  %i.fo = add i64 %i.fn, -1
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fo, i1 true) ; 2 uses
  %notmask.i35.i = ashr exact i64 -1152921504606846976, %i.fp
  %18 = lshr i64 1152921504606846975, %i.fp
  %i.fq = add nuw nsw i64 %18, %i.bb
  %i.fr = and i64 %i.fq, %notmask.i35.i           ; 2 uses
  %i.fs = icmp samesign ult i64 %i.fr, %i.bb
  br i1 %i.fs, label %arena_sdalloc.exit, label %.thread58.i
end_hunk_14
begin_hunk_15_@duckdb_je_arena_ralloc:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.gw = shl nuw i64 %3, 1
  %i.gx = add i64 %i.gw, -1
  %i.gy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.gx, i1 true) ; 3 uses
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = sub nuw nsw i64 60, %i.gy
  %19 = ashr exact i64 -1152921504606846976, %i.gy
  %i.hb = add nsw i64 %3, -1
  %i.hc = and i64 %19, %i.hb
  %i.hd = lshr i64 %i.hc, %i.ha
  %i.he = trunc i64 %i.hd to i32
  %i.hf = and i32 %i.he, 3
end_hunk_15
begin_hunk_16_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.m = add nsw i64 %2, -1
  %i.n = and i64 %3, %i.m
  %i.o = lshr i64 %i.n, %i.l
end_hunk_16
