inline.NumInlined: 316
inline.NumDeleted: 120
begin_hunk_0_@je_arena_extent_alloc_large:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %5 = ashr exact i64 -1152921504606846976, %i.l
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %5, %i.o
  %i.q = lshr i64 %i.p, %i.n
end_hunk_0
begin_hunk_1_@je_arena_extent_alloc_large:bb.a
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %2, i64 16384) ; 2 uses
  %i.as = shl nuw i64 %spec.store.select.i, 1
  %i.at = add i64 %i.as, -1
  %i.au = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.at, i1 true) ; 3 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = sub nuw nsw i64 60, %i.au
  %6 = ashr exact i64 -1152921504606846976, %i.au
  %i.ax = add nsw i64 %spec.store.select.i, -1
  %i.ay = and i64 %6, %i.ax
  %i.az = lshr i64 %i.ay, %i.aw
end_hunk_1
begin_hunk_2_@je_arena_extent_dalloc_large_prep:bb.a
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %3 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i, -1
  %i.l = and i64 %3, %i.k
  %i.m = lshr i64 %i.l, %i.j
end_hunk_2
begin_hunk_3_@je_arena_extent_ralloc_large_shrink:bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %4 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i.i, -1
  %i.l = and i64 %4, %i.k
  %i.m = lshr i64 %i.l, %i.j
end_hunk_3
begin_hunk_4_@je_arena_extent_ralloc_large_shrink:bb.a
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.x = shl nuw i64 %spec.store.select.i5.i, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.y, i1 true) ; 3 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nuw nsw i64 60, %i.z
  %5 = ashr exact i64 -1152921504606846976, %i.z
  %i.ac = add nsw i64 %spec.store.select.i5.i, -1
  %i.ad = and i64 %5, %i.ac
  %i.ae = lshr i64 %i.ad, %i.ab
end_hunk_4
begin_hunk_5_@je_arena_extent_ralloc_large_expand:bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %4 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i.i, -1
  %i.l = and i64 %4, %i.k
  %i.m = lshr i64 %i.l, %i.j
end_hunk_5
begin_hunk_6_@je_arena_extent_ralloc_large_expand:bb.a
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.x = shl nuw i64 %spec.store.select.i5.i, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.y, i1 true) ; 3 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nuw nsw i64 60, %i.z
  %5 = ashr exact i64 -1152921504606846976, %i.z
  %i.ac = add nsw i64 %spec.store.select.i5.i, -1
  %i.ad = and i64 %5, %i.ac
  %i.ae = lshr i64 %i.ad, %i.ab
end_hunk_6
begin_hunk_7_@je_arena_palloc:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.b
  %i.i = shl nuw nsw i64 %2, 1
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %6 = ashr exact i64 -1152921504606846976, %i.k
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %6, %i.n
  %i.p = lshr i64 %i.o, %i.m
end_hunk_7
begin_hunk_8_@je_arena_ralloc_no_move:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.d
  %i.n = shl nuw i64 %3, 1
  %i.o = add i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.o, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.p
  %9 = lshr i64 1152921504606846975, %i.p
  %i.q = add nuw nsw i64 %3, %9
  %i.r = and i64 %i.q, %notmask.i
  br label %sz_s2u.exit36

end_hunk_8
begin_hunk_9_@je_arena_ralloc_no_move:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw i64 %i.s, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ad, i1 true) ; 2 uses
  %notmask.i39 = ashr exact i64 -1152921504606846976, %i.ae
  %10 = lshr i64 1152921504606846975, %i.ae
  %i.af = add nuw nsw i64 %i.s, %10
  %i.ag = and i64 %i.af, %notmask.i39
  br label %sz_s2u.exit

end_hunk_9
begin_hunk_10_@je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.j
  %i.au = shl nuw nsw i64 %.0.i34, 1
  %i.av = add nsw i64 %i.au, -1
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.av, i1 true) ; 3 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = sub nuw nsw i64 60, %i.aw
  %11 = ashr exact i64 -1152921504606846976, %i.aw
  %i.az = add nsw i64 %.0.i34, -1
  %i.ba = and i64 %11, %i.az
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3
end_hunk_10
begin_hunk_11_@je_arena_ralloc_no_move:bb.a
sz_size2index_compute.exit45:                     ; preds = %sz_size2index.exit33
  %i.bm = shl nuw nsw i64 %2, 1
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bn, i1 true) ; 3 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = sub nuw nsw i64 60, %i.bo
  %12 = ashr exact i64 -1152921504606846976, %i.bo
  %i.br = add nsw i64 %2, -1
  %i.bs = and i64 %12, %i.br
  %i.bt = lshr i64 %i.bs, %i.bq
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
end_hunk_11
begin_hunk_12_@je_arena_ralloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %4, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %notmask.i65 = ashr exact i64 -1152921504606846976, %i.o
  %11 = lshr i64 1152921504606846975, %i.o
  %i.p = add nuw nsw i64 %4, %11
  %i.q = and i64 %i.p, %notmask.i65
  br label %sz_s2u.exit

end_hunk_12
begin_hunk_13_@je_arena_ralloc:bb.a
sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.af = shl nuw nsw i64 %i.w, 1
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ag, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ah
  %12 = lshr i64 1152921504606846975, %i.ah
  %i.ai = add nuw nsw i64 %i.w, %12
  %i.aj = and i64 %i.ai, %notmask.i
  br label %sz_s2u.exit25.i

end_hunk_13
begin_hunk_14_@je_arena_ralloc:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ao = shl nuw i64 %4, 1
  %i.ap = add i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ap, i1 true) ; 2 uses
  %notmask.i62 = ashr exact i64 -1152921504606846976, %i.aq
  %13 = lshr i64 1152921504606846975, %i.aq
  %i.ar = add nuw nsw i64 %4, %13
  %i.as = and i64 %i.ar, %notmask.i62
  br label %sz_s2u_compute.exit64

end_hunk_14
begin_hunk_15_@je_arena_ralloc:bb.a
bb.v:                                             ; preds = %bb.u
  %i.bv = shl nuw i64 %i.bb, 1
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %14 = ashr exact i64 -1152921504606846976, %i.bx
  %i.ca = add nsw i64 %i.bb, -1
  %i.cb = and i64 %14, %i.ca
  %i.cc = lshr i64 %i.cb, %i.bz
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 3
end_hunk_15
begin_hunk_16_@je_arena_ralloc:bb.a
bb.am:                                            ; preds = %bb.al
  %i.ea = shl nuw i64 %i.bb, 1
  %i.eb = add i64 %i.ea, -1
  %i.ec = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.eb, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ec
  %15 = lshr i64 1152921504606846975, %i.ec
  %i.ed = add nuw nsw i64 %15, %i.bb
  %i.ee = and i64 %i.ed, %notmask.i.i
  br label %sz_s2u_compute.exit.i

end_hunk_16
begin_hunk_17_@je_arena_ralloc:bb.a
sz_s2u_compute.exit32.i:                          ; preds = %bb.as
  %i.ez = shl nuw nsw i64 %i.eq, 1
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.fa, i1 true) ; 2 uses
  %notmask.i30.i = ashr exact i64 -1152921504606846976, %i.fb
  %16 = lshr i64 1152921504606846975, %i.fb
  %i.fc = add nuw nsw i64 %16, %i.eq
  %i.fd = and i64 %i.fc, %notmask.i30.i
  br label %sz_s2u.exit25.i.i

end_hunk_17
begin_hunk_18_@je_arena_ralloc:bb.a
sz_s2u_compute.exit35.i:                          ; preds = %bb.av
  %i.fh = shl nuw i64 %i.bb, 1
  %i.fi = add i64 %i.fh, -1
  %i.fj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.fi, i1 true) ; 2 uses
  %notmask.i33.i = ashr exact i64 -1152921504606846976, %i.fj
  %17 = lshr i64 1152921504606846975, %i.fj
  %i.fk = add nuw nsw i64 %17, %i.bb
  %i.fl = and i64 %i.fk, %notmask.i33.i           ; 2 uses
  %i.fm = icmp samesign ult i64 %i.fl, %i.bb
  br i1 %i.fm, label %arena_sdalloc.exit, label %.thread49.i
end_hunk_18
begin_hunk_19_@je_arena_ralloc:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.gq = shl nuw i64 %3, 1
  %i.gr = add i64 %i.gq, -1
  %i.gs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.gr, i1 true) ; 3 uses
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  %i.gu = sub nuw nsw i64 60, %i.gs
  %18 = ashr exact i64 -1152921504606846976, %i.gs
  %i.gv = add nsw i64 %3, -1
  %i.gw = and i64 %18, %i.gv
  %i.gx = lshr i64 %i.gw, %i.gu
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gy, 3
end_hunk_19
begin_hunk_20_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.m = add nsw i64 %2, -1
  %i.n = and i64 %3, %i.m
  %i.o = lshr i64 %i.n, %i.l
end_hunk_20
