inline.NumInlined: 641
inline.NumDeleted: 71
begin_hunk_0_@a0ialloc:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %0, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 3 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = xor i32 %i.o, 252
  %i.q = sub nuw nsw i64 60, %i.m
  %6 = ashr exact i64 -1152921504606846976, %i.m
  %i.r = add nsw i64 %0, -1
  %i.s = and i64 %6, %i.r
  %i.t = lshr i64 %i.s, %i.q
end_hunk_0
begin_hunk_1_@duckdb_je_malloc_default:bb.a
bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 3 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = xor i32 %i.t, 252
  %i.v = sub nuw nsw i64 60, %i.r
  %3 = ashr exact i64 -1152921504606846976, %i.r
  %i.w = add nsw i64 %0, -1
  %i.x = and i64 %3, %i.w
  %i.y = lshr i64 %i.x, %i.v
end_hunk_1
begin_hunk_2_@duckdb_je_malloc_default:bb.a
sz_s2u_compute.exit.i48:                          ; preds = %bb.r
  %i.cd = shl nuw i64 %0, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true) ; 2 uses
  %notmask.i.i47 = ashr exact i64 -1152921504606846976, %i.cf
  %4 = lshr i64 1152921504606846975, %i.cf
  %i.cg = add nuw nsw i64 %0, %4
  %i.ch = and i64 %i.cg, %notmask.i.i47
  br label %sz_s2u.exit.i50

end_hunk_2
begin_hunk_3_@duckdb_je_malloc_default:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.dp = shl nuw i64 %0, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 3 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 2
  %i.du = xor i32 %i.dt, 252
  %i.dv = sub nuw nsw i64 60, %i.dr
  %5 = ashr exact i64 -1152921504606846976, %i.dr
  %i.dw = add nsw i64 %0, -1
  %i.dx = and i64 %5, %i.dw
  %i.dy = lshr i64 %i.dx, %i.dv
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 3
end_hunk_3
begin_hunk_4_@duckdb_je_malloc_default:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.ax
  %i.gn = shl nuw i64 %0, 1
  %i.go = add i64 %i.gn, -1
  %i.gp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.go, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gp
  %6 = lshr i64 1152921504606846975, %i.gp
  %i.gq = add nuw nsw i64 %0, %6
  %i.gr = and i64 %i.gq, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_4
begin_hunk_5_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit.i103:                         ; preds = %bb.e
  %i.y = shl nuw nsw i64 %i.p, 1
  %i.z = add nsw i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true) ; 2 uses
  %notmask.i.i102 = ashr exact i64 -1152921504606846976, %i.aa
  %5 = lshr i64 1152921504606846975, %i.aa
  %i.ab = add nuw nsw i64 %i.p, %5
  %i.ac = and i64 %i.ab, %notmask.i.i102
  br label %sz_s2u.exit25.i105

end_hunk_5
begin_hunk_6_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit29.i95:                        ; preds = %bb.i
  %i.ah = shl nuw i64 %.016.i.i, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 2 uses
  %notmask.i27.i94 = ashr exact i64 -1152921504606846976, %i.aj
  %6 = lshr i64 1152921504606846975, %i.aj
  %i.ak = add nuw nsw i64 %.016.i.i, %6
  %i.al = and i64 %i.ak, %notmask.i27.i94         ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.016.i.i
  br i1 %i.am, label %imalloc.exit, label %.thread217
end_hunk_6
begin_hunk_7_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.ck = shl nuw nsw i64 %i.cb, 1
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cl, i1 true) ; 2 uses
  %notmask.i.i90 = ashr exact i64 -1152921504606846976, %i.cm
  %7 = lshr i64 1152921504606846975, %i.cm
  %i.cn = add nuw nsw i64 %i.cb, %7
  %i.co = and i64 %i.cn, %notmask.i.i90
  br label %sz_s2u.exit25.i

end_hunk_7
begin_hunk_8_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.ct = shl nuw i64 %.016.i.i15, 1
  %i.cu = add i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cu, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cv
  %8 = lshr i64 1152921504606846975, %i.cv
  %i.cw = add nuw nsw i64 %.016.i.i15, %8
  %i.cx = and i64 %i.cw, %notmask.i27.i           ; 2 uses
  %i.cy = icmp samesign ult i64 %i.cx, %.016.i.i15
  br i1 %i.cy, label %aligned_usize_get.exit.i17.thread, label %.thread224
end_hunk_8
begin_hunk_9_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit.i101:                         ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i.i100 = ashr exact i64 -1152921504606846976, %i.y
  %4 = lshr i64 1152921504606846975, %i.y
  %i.z = add nuw nsw i64 %i.n, %4
  %i.aa = and i64 %i.z, %notmask.i.i100
  br label %sz_s2u.exit25.i103

end_hunk_9
begin_hunk_10_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i93:                        ; preds = %bb.i
  %i.af = shl nuw i64 %.016.i.i, 1
  %i.ag = add i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ag, i1 true) ; 2 uses
  %notmask.i27.i92 = ashr exact i64 -1152921504606846976, %i.ah
  %5 = lshr i64 1152921504606846975, %i.ah
  %i.ai = add nuw nsw i64 %.016.i.i, %5
  %i.aj = and i64 %i.ai, %notmask.i27.i92         ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.016.i.i
  br i1 %i.ak, label %aligned_usize_get.exit.i.thread, label %.thread218
end_hunk_10
begin_hunk_11_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit.i89:                          ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.bz, 1
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cj, i1 true) ; 2 uses
  %notmask.i.i88 = ashr exact i64 -1152921504606846976, %i.ck
  %6 = lshr i64 1152921504606846975, %i.ck
  %i.cl = add nuw nsw i64 %i.bz, %6
  %i.cm = and i64 %i.cl, %notmask.i.i88
  br label %sz_s2u.exit25.i

end_hunk_11
begin_hunk_12_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.w
  %i.cr = shl nuw i64 %.016.i.i13, 1
  %i.cs = add i64 %i.cr, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cs, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.ct
  %7 = lshr i64 1152921504606846975, %i.ct
  %i.cu = add nuw nsw i64 %.016.i.i13, %7
  %i.cv = and i64 %i.cu, %notmask.i27.i           ; 2 uses
  %i.cw = icmp samesign ult i64 %i.cv, %.016.i.i13
  br i1 %i.cw, label %aligned_usize_get.exit.i15.thread, label %.thread225
end_hunk_12
begin_hunk_13_@duckdb_je_calloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val274, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = xor i32 %i.x, 252
  %i.z = sub nuw nsw i64 60, %i.v
  %4 = ashr exact i64 -1152921504606846976, %i.v
  %i.aa = add nsw i64 %mul.val274, -1
  %i.ab = and i64 %4, %i.aa
  %i.ac = lshr i64 %i.ab, %i.z
end_hunk_13
begin_hunk_14_@duckdb_je_calloc:bb.a
sz_s2u_compute.exit.i50:                          ; preds = %bb.t
  %i.cj = shl nuw i64 %mul.val274, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 2 uses
  %notmask.i.i49 = ashr exact i64 -1152921504606846976, %i.cl
  %5 = lshr i64 1152921504606846975, %i.cl
  %i.cm = add nuw nsw i64 %mul.val274, %5
  %i.cn = and i64 %i.cm, %notmask.i.i49
  br label %sz_s2u.exit.i52

end_hunk_14
begin_hunk_15_@duckdb_je_calloc:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.dx = shl nuw i64 %mul.val, 1
  %i.dy = add i64 %i.dx, -1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 3 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 2
  %i.ec = xor i32 %i.eb, 252
  %i.ed = sub nuw nsw i64 60, %i.dz
  %6 = ashr exact i64 -1152921504606846976, %i.dz
  %i.ee = add nsw i64 %mul.val, -1
  %i.ef = and i64 %6, %i.ee
  %i.eg = lshr i64 %i.ef, %i.ed
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 3
end_hunk_15
begin_hunk_16_@duckdb_je_calloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.az
  %i.gw = shl nuw i64 %mul.val, 1
  %i.gx = add i64 %i.gw, -1
  %i.gy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gx, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gy
  %7 = lshr i64 1152921504606846975, %i.gy
  %i.gz = add nuw nsw i64 %mul.val, %7
  %i.ha = and i64 %i.gz, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_16
begin_hunk_17_@duckdb_je_valloc:bb.a
sz_s2u_compute.exit.i99:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true) ; 2 uses
  %notmask.i.i98 = ashr exact i64 -1152921504606846976, %i.s
  %3 = lshr i64 1152921504606846975, %i.s
  %i.t = add nuw nsw i64 %i.i, %3
  %i.u = and i64 %i.t, %notmask.i.i98
  br label %sz_s2u.exit25.i101

end_hunk_17
begin_hunk_18_@duckdb_je_valloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %0, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true) ; 2 uses
  %notmask.i27.i90 = ashr exact i64 -1152921504606846976, %i.aa
  %4 = lshr i64 1152921504606846975, %i.aa
  %i.ab = add nuw nsw i64 %0, %4
  %i.ac = and i64 %i.ab, %notmask.i27.i90
  br label %sz_s2u_compute.exit29.i91

end_hunk_18
begin_hunk_19_@duckdb_je_valloc:bb.a
sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.bh, 1
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bq, i1 true) ; 2 uses
  %notmask.i.i86 = ashr exact i64 -1152921504606846976, %i.br
  %5 = lshr i64 1152921504606846975, %i.br
  %i.bs = add nuw nsw i64 %i.bh, %5
  %i.bt = and i64 %i.bs, %notmask.i.i86
  br label %sz_s2u.exit25.i

end_hunk_19
begin_hunk_20_@duckdb_je_valloc:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bx = shl nuw i64 %0, 1
  %i.by = add i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.by, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bz
  %6 = lshr i64 1152921504606846975, %i.bz
  %i.ca = add nuw nsw i64 %0, %6
  %i.cb = and i64 %i.ca, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_20
begin_hunk_21_@duckdb_je_mallocx:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %0, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 2
  %i.ai = xor i32 %i.ah, 252
  %i.aj = sub nuw nsw i64 60, %i.af
  %4 = ashr exact i64 -1152921504606846976, %i.af
  %i.ak = add nsw i64 %0, -1
  %i.al = and i64 %4, %i.ak
  %i.am = lshr i64 %i.al, %i.aj
end_hunk_21
begin_hunk_22_@duckdb_je_mallocx:bb.a
sz_s2u_compute.exit.i108:                         ; preds = %bb.k
  %i.bj = shl nuw nsw i64 %i.ba, 1
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bk, i1 true) ; 2 uses
  %notmask.i.i107 = ashr exact i64 -1152921504606846976, %i.bl
  %5 = lshr i64 1152921504606846975, %i.bl
  %i.bm = add nuw nsw i64 %i.ba, %5
  %i.bn = and i64 %i.bm, %notmask.i.i107
  br label %sz_s2u.exit25.i110

end_hunk_22
begin_hunk_23_@duckdb_je_mallocx:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bs = shl nuw i64 %0, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true) ; 2 uses
  %notmask.i27.i99 = ashr exact i64 -1152921504606846976, %i.bu
  %6 = lshr i64 1152921504606846975, %i.bu
  %i.bv = add nuw nsw i64 %0, %6
  %i.bw = and i64 %i.bv, %notmask.i27.i99
  br label %sz_s2u_compute.exit29.i100

end_hunk_23
begin_hunk_24_@duckdb_je_mallocx:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.ew = shl nuw i64 %0, 1
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ex, i1 true) ; 2 uses
  %notmask.i.i56 = ashr exact i64 -1152921504606846976, %i.ey
  %7 = lshr i64 1152921504606846975, %i.ey
  %i.ez = add nuw nsw i64 %0, %7
  %i.fa = and i64 %i.ez, %notmask.i.i56
  br label %sz_s2u.exit.i59

end_hunk_24
begin_hunk_25_@duckdb_je_mallocx:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.gk = shl nuw i64 %0, 1
  %i.gl = add i64 %i.gk, -1
  %i.gm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gl, i1 true) ; 3 uses
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 2
  %i.gp = xor i32 %i.go, 252
  %i.gq = sub nuw nsw i64 60, %i.gm
  %8 = ashr exact i64 -1152921504606846976, %i.gm
  %i.gr = add nsw i64 %0, -1
  %i.gs = and i64 %8, %i.gr
  %i.gt = lshr i64 %i.gs, %i.gq
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 3
end_hunk_25
begin_hunk_26_@duckdb_je_mallocx:bb.a
sz_s2u_compute.exit.i96:                          ; preds = %bb.be
  %i.hq = shl nuw nsw i64 %i.hh, 1
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hr, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.hs
  %9 = lshr i64 1152921504606846975, %i.hs
  %i.ht = add nuw nsw i64 %i.hh, %9
  %i.hu = and i64 %i.ht, %notmask.i.i95
  br label %sz_s2u.exit25.i

end_hunk_26
begin_hunk_27_@duckdb_je_mallocx:bb.a
bb.bj:                                            ; preds = %bb.bi
  %i.hz = shl nuw i64 %0, 1
  %i.ia = add i64 %i.hz, -1
  %i.ib = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ia, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.ib
  %10 = lshr i64 1152921504606846975, %i.ib
  %i.ic = add nuw nsw i64 %0, %10
  %i.id = and i64 %i.ic, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_27
begin_hunk_28_@duckdb_je_mallocx:bb.a
bb.ck:                                            ; preds = %bb.cj
  %i.li = shl nuw i64 %0, 1
  %i.lj = add i64 %i.li, -1
  %i.lk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.lj, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.lk
  %11 = lshr i64 1152921504606846975, %i.lk
  %i.ll = add nuw nsw i64 %0, %11
  %i.lm = and i64 %i.ll, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_28
begin_hunk_29_@do_rallocx:bb.a
bb.l:                                             ; preds = %bb.k
  %i.az = shl nuw i64 %1, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.bb
  %10 = lshr i64 1152921504606846975, %i.bb
  %i.bc = add nuw nsw i64 %1, %10
  %i.bd = and i64 %i.bc, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_29
begin_hunk_30_@do_rallocx:bb.a
sz_s2u_compute.exit.i70:                          ; preds = %bb.n
  %i.bs = shl nuw nsw i64 %i.bj, 1
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true) ; 2 uses
  %notmask.i.i69 = ashr exact i64 -1152921504606846976, %i.bu
  %11 = lshr i64 1152921504606846975, %i.bu
  %i.bv = add nuw nsw i64 %i.bj, %11
  %i.bw = and i64 %i.bv, %notmask.i.i69
  br label %sz_s2u.exit25.i72

end_hunk_30
begin_hunk_31_@do_rallocx:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cb = shl nuw i64 %1, 1
  %i.cc = add i64 %i.cb, -1
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cc, i1 true) ; 2 uses
  %notmask.i27.i62 = ashr exact i64 -1152921504606846976, %i.cd
  %12 = lshr i64 1152921504606846975, %i.cd
  %i.ce = add nuw nsw i64 %1, %12
  %i.cf = and i64 %i.ce, %notmask.i27.i62
  br label %sz_s2u_compute.exit29.i63

end_hunk_31
begin_hunk_32_@do_rallocx:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.u
  %i.dl = shl nuw nsw i64 %i.dc, 1
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dm, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.dn
  %13 = lshr i64 1152921504606846975, %i.dn
  %i.do = add nuw nsw i64 %i.dc, %13
  %i.dp = and i64 %i.do, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_32
begin_hunk_33_@do_rallocx:bb.a
bb.y:                                             ; preds = %bb.x
  %i.dt = shl nuw i64 %1, 1
  %i.du = add i64 %i.dt, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.du, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.dv
  %14 = lshr i64 1152921504606846975, %i.dv
  %i.dw = add nuw nsw i64 %1, %14
  %i.dx = and i64 %i.dw, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_33
begin_hunk_34_@do_rallocx:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.fa = shl nuw i64 %i.ao, 1
  %i.fb = add i64 %i.fa, -1
  %i.fc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fb, i1 true) ; 3 uses
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = xor i32 %i.fe, 252
  %i.fg = sub nuw nsw i64 60, %i.fc
  %15 = ashr exact i64 -1152921504606846976, %i.fc
  %i.fh = add nsw i64 %i.ao, -1
  %i.fi = and i64 %15, %i.fh
  %i.fj = lshr i64 %i.fi, %i.fg
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 3
end_hunk_34
begin_hunk_35_@duckdb_je_realloc:bb.a
bb.h:                                             ; preds = %bb.g
  %i.v = shl nuw i64 %1, 1
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2
  %i.aa = xor i32 %i.z, 252
  %i.ab = sub nuw nsw i64 60, %i.x
  %4 = ashr exact i64 -1152921504606846976, %i.x
  %i.ac = add nsw i64 %1, -1
  %i.ad = and i64 %4, %i.ac
  %i.ae = lshr i64 %i.ad, %i.ab
end_hunk_35
begin_hunk_36_@duckdb_je_realloc:bb.a
sz_s2u_compute.exit.i61:                          ; preds = %bb.v
  %i.cj = shl nuw i64 %1, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 2 uses
  %notmask.i.i60 = ashr exact i64 -1152921504606846976, %i.cl
  %5 = lshr i64 1152921504606846975, %i.cl
  %i.cm = add nuw nsw i64 %1, %5
  %i.cn = and i64 %i.cm, %notmask.i.i60
  br label %sz_s2u.exit.i63

end_hunk_36
begin_hunk_37_@duckdb_je_realloc:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.dv = shl nuw i64 %1, 1
  %i.dw = add i64 %i.dv, -1
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dw, i1 true) ; 3 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 2
  %i.ea = xor i32 %i.dz, 252
  %i.eb = sub nuw nsw i64 60, %i.dx
  %6 = ashr exact i64 -1152921504606846976, %i.dx
  %i.ec = add nsw i64 %1, -1
  %i.ed = and i64 %6, %i.ec
  %i.ee = lshr i64 %i.ed, %i.eb
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 3
end_hunk_37
begin_hunk_38_@duckdb_je_realloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.bb
  %i.gt = shl nuw i64 %1, 1
  %i.gu = add i64 %i.gt, -1
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gu, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gv
  %7 = lshr i64 1152921504606846975, %i.gv
  %i.gw = add nuw nsw i64 %1, %7
  %i.gx = and i64 %i.gw, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_38
begin_hunk_39_@duckdb_je_sdallocx_default:bb.a
bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %1, 1
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.v, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.w
  %7 = lshr i64 1152921504606846975, %i.w
  %i.x = add nuw nsw i64 %1, %7
  %i.y = and i64 %i.x, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_39
begin_hunk_40_@duckdb_je_sdallocx_default:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.an = shl nuw nsw i64 %i.ae, 1
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ao, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ap
  %8 = lshr i64 1152921504606846975, %i.ap
  %i.aq = add nuw nsw i64 %i.ae, %8
  %i.ar = and i64 %i.aq, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_40
begin_hunk_41_@duckdb_je_sdallocx_default:bb.a
bb.m:                                             ; preds = %bb.l
  %i.aw = shl nuw i64 %1, 1
  %i.ax = add i64 %i.aw, -1
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ax, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.ay
  %9 = lshr i64 1152921504606846975, %i.ay
  %i.az = add nuw nsw i64 %1, %9
  %i.ba = and i64 %i.az, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_41
begin_hunk_42_@duckdb_je_sdallocx_default:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cg = shl nuw i64 %storemerge.i, 1
  %i.ch = add i64 %i.cg, -1
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ch, i1 true) ; 3 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 2
  %i.cl = xor i32 %i.ck, 252
  %i.cm = sub nuw nsw i64 60, %i.ci
  %10 = ashr exact i64 -1152921504606846976, %i.ci
  %i.cn = add nsw i64 %storemerge.i, -1
  %i.co = and i64 %10, %i.cn
  %i.cp = lshr i64 %i.co, %i.cm
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
end_hunk_42
begin_hunk_43_@duckdb_je_sdallocx_default:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.fq = shl nuw i64 %storemerge.i, 1
  %i.fr = add i64 %i.fq, -1
  %i.fs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fr, i1 true) ; 3 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 2
  %i.fv = xor i32 %i.fu, 252
  %i.fw = sub nuw nsw i64 60, %i.fs
  %11 = ashr exact i64 -1152921504606846976, %i.fs
  %i.fx = add nsw i64 %storemerge.i, -1
  %i.fy = and i64 %11, %i.fx
  %i.fz = lshr i64 %i.fy, %i.fw
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 3
end_hunk_43
begin_hunk_44_@duckdb_je_nallocx:bb.a
bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %0, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.z
  %2 = lshr i64 1152921504606846975, %i.z
  %i.aa = add nuw nsw i64 %0, %2
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_44
begin_hunk_45_@duckdb_je_nallocx:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.as
  %3 = lshr i64 1152921504606846975, %i.as
  %i.at = add nuw nsw i64 %i.ah, %3
  %i.au = and i64 %i.at, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_45
begin_hunk_46_@duckdb_je_nallocx:bb.a
bb.o:                                             ; preds = %bb.n
  %i.az = shl nuw i64 %0, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bb
  %4 = lshr i64 1152921504606846975, %i.bb
  %i.bc = add nuw nsw i64 %0, %4
  %i.bd = and i64 %i.bc, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_46
begin_hunk_47_@duckdb_je_batch_alloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.y
  %5 = lshr i64 1152921504606846975, %i.y
  %i.z = add nuw nsw i64 %2, %5
  %i.aa = and i64 %i.z, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_47
begin_hunk_48_@duckdb_je_batch_alloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.ap = shl nuw nsw i64 %i.ag, 1
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aq, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ar
  %6 = lshr i64 1152921504606846975, %i.ar
  %i.as = add nuw nsw i64 %i.ag, %6
  %i.at = and i64 %i.as, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_48
begin_hunk_49_@duckdb_je_batch_alloc:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw i64 %2, 1
  %i.az = add i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.az, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.ba
  %7 = lshr i64 1152921504606846975, %i.ba
  %i.bb = add nuw nsw i64 %2, %7
  %i.bc = and i64 %i.bb, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_49
begin_hunk_50_@duckdb_je_batch_alloc:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bs = shl nuw i64 %storemerge.i, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true) ; 3 uses
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 2
  %i.bx = xor i32 %i.bw, 252
  %i.by = sub nuw nsw i64 60, %i.bu
  %8 = ashr exact i64 -1152921504606846976, %i.bu
  %i.bz = add nsw i64 %storemerge.i, -1
  %i.ca = and i64 %8, %i.bz
  %i.cb = lshr i64 %i.ca, %i.by
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3
end_hunk_50
begin_hunk_51_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = xor i32 %i.l, 252
  %i.n = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %3, %i.o
  %i.q = lshr i64 %i.p, %i.n
end_hunk_51
