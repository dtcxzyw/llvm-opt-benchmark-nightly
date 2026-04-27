inline.NumInlined: 641
inline.NumDeleted: 71
begin_hunk_0_@a0ialloc:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %0, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = xor i32 %i.o, 252
  %i.q = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %6 = shl nsw i64 -1, %i.q
  %i.r = add nsw i64 %0, -1
  %i.s = and i64 %6, %i.r
  %i.t = lshr i64 %i.s, %i.q
end_hunk_0
begin_hunk_1_@duckdb_je_malloc_default:bb.a
bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = xor i32 %i.t, 252
  %i.v = sub nuw nsw i64 60, %i.r                 ; 2 uses
  %3 = shl nsw i64 -1, %i.v
  %i.w = add nsw i64 %0, -1
  %i.x = and i64 %3, %i.w
  %i.y = lshr i64 %i.x, %i.v
end_hunk_1
begin_hunk_2_@duckdb_je_malloc_default:bb.a
sz_s2u_compute.exit.i48:                          ; preds = %bb.r
  %i.cd = shl nuw i64 %0, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true)
  %4 = sub nuw nsw i64 60, %i.cf
  %notmask.i.i47 = shl nsw i64 -1, %4             ; 2 uses
  %5 = xor i64 %notmask.i.i47, -1
  %i.cg = add nuw nsw i64 %0, %5
  %i.ch = and i64 %i.cg, %notmask.i.i47
  br label %sz_s2u.exit.i50

end_hunk_2
begin_hunk_3_@duckdb_je_malloc_default:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.dp = shl nuw i64 %0, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 2
  %i.du = xor i32 %i.dt, 252
  %i.dv = sub nuw nsw i64 60, %i.dr               ; 2 uses
  %6 = shl nsw i64 -1, %i.dv
  %i.dw = add nsw i64 %0, -1
  %i.dx = and i64 %6, %i.dw
  %i.dy = lshr i64 %i.dx, %i.dv
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 3
end_hunk_3
begin_hunk_4_@duckdb_je_malloc_default:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.ax
  %i.gn = shl nuw i64 %0, 1
  %i.go = add i64 %i.gn, -1
  %i.gp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.go, i1 true)
  %7 = sub nuw nsw i64 60, %i.gp
  %notmask.i.i = shl nsw i64 -1, %7               ; 2 uses
  %8 = xor i64 %notmask.i.i, -1
  %i.gq = add nuw nsw i64 %0, %8
  %i.gr = and i64 %i.gq, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_4
begin_hunk_5_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit.i103:                         ; preds = %bb.e
  %i.y = shl nuw nsw i64 %i.p, 1
  %i.z = add nsw i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true)
  %5 = sub nuw nsw i64 60, %i.aa
  %notmask.i.i102 = shl nsw i64 -1, %5            ; 2 uses
  %6 = xor i64 %notmask.i.i102, -1
  %i.ab = add nuw nsw i64 %i.p, %6
  %i.ac = and i64 %i.ab, %notmask.i.i102
  br label %sz_s2u.exit25.i105

end_hunk_5
begin_hunk_6_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit29.i95:                        ; preds = %bb.i
  %i.ah = shl nuw i64 %.016.i.i, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true)
  %7 = sub nuw nsw i64 60, %i.aj
  %notmask.i27.i94 = shl nsw i64 -1, %7           ; 2 uses
  %8 = xor i64 %notmask.i27.i94, -1
  %i.ak = add nuw nsw i64 %.016.i.i, %8
  %i.al = and i64 %i.ak, %notmask.i27.i94         ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.016.i.i
  br i1 %i.am, label %imalloc.exit, label %.thread217
end_hunk_6
begin_hunk_7_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.ck = shl nuw nsw i64 %i.cb, 1
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cl, i1 true)
  %9 = sub nuw nsw i64 60, %i.cm
  %notmask.i.i90 = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i.i90, -1
  %i.cn = add nuw nsw i64 %i.cb, %10
  %i.co = and i64 %i.cn, %notmask.i.i90
  br label %sz_s2u.exit25.i

end_hunk_7
begin_hunk_8_@duckdb_je_posix_memalign:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.ct = shl nuw i64 %.016.i.i15, 1
  %i.cu = add i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cu, i1 true)
  %11 = sub nuw nsw i64 60, %i.cv
  %notmask.i27.i = shl nsw i64 -1, %11            ; 2 uses
  %12 = xor i64 %notmask.i27.i, -1
  %i.cw = add nuw nsw i64 %.016.i.i15, %12
  %i.cx = and i64 %i.cw, %notmask.i27.i           ; 2 uses
  %i.cy = icmp samesign ult i64 %i.cx, %.016.i.i15
  br i1 %i.cy, label %aligned_usize_get.exit.i17.thread, label %.thread224
end_hunk_8
begin_hunk_9_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit.i101:                         ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true)
  %4 = sub nuw nsw i64 60, %i.y
  %notmask.i.i100 = shl nsw i64 -1, %4            ; 2 uses
  %5 = xor i64 %notmask.i.i100, -1
  %i.z = add nuw nsw i64 %i.n, %5
  %i.aa = and i64 %i.z, %notmask.i.i100
  br label %sz_s2u.exit25.i103

end_hunk_9
begin_hunk_10_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i93:                        ; preds = %bb.i
  %i.af = shl nuw i64 %.016.i.i, 1
  %i.ag = add i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ag, i1 true)
  %6 = sub nuw nsw i64 60, %i.ah
  %notmask.i27.i92 = shl nsw i64 -1, %6           ; 2 uses
  %7 = xor i64 %notmask.i27.i92, -1
  %i.ai = add nuw nsw i64 %.016.i.i, %7
  %i.aj = and i64 %i.ai, %notmask.i27.i92         ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.016.i.i
  br i1 %i.ak, label %aligned_usize_get.exit.i.thread, label %.thread218
end_hunk_10
begin_hunk_11_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit.i89:                          ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.bz, 1
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cj, i1 true)
  %8 = sub nuw nsw i64 60, %i.ck
  %notmask.i.i88 = shl nsw i64 -1, %8             ; 2 uses
  %9 = xor i64 %notmask.i.i88, -1
  %i.cl = add nuw nsw i64 %i.bz, %9
  %i.cm = and i64 %i.cl, %notmask.i.i88
  br label %sz_s2u.exit25.i

end_hunk_11
begin_hunk_12_@duckdb_je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.w
  %i.cr = shl nuw i64 %.016.i.i13, 1
  %i.cs = add i64 %i.cr, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cs, i1 true)
  %10 = sub nuw nsw i64 60, %i.ct
  %notmask.i27.i = shl nsw i64 -1, %10            ; 2 uses
  %11 = xor i64 %notmask.i27.i, -1
  %i.cu = add nuw nsw i64 %.016.i.i13, %11
  %i.cv = and i64 %i.cu, %notmask.i27.i           ; 2 uses
  %i.cw = icmp samesign ult i64 %i.cv, %.016.i.i13
  br i1 %i.cw, label %aligned_usize_get.exit.i15.thread, label %.thread225
end_hunk_12
begin_hunk_13_@duckdb_je_calloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val274, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = xor i32 %i.x, 252
  %i.z = sub nuw nsw i64 60, %i.v                 ; 2 uses
  %4 = shl nsw i64 -1, %i.z
  %i.aa = add nsw i64 %mul.val274, -1
  %i.ab = and i64 %4, %i.aa
  %i.ac = lshr i64 %i.ab, %i.z
end_hunk_13
begin_hunk_14_@duckdb_je_calloc:bb.a
sz_s2u_compute.exit.i50:                          ; preds = %bb.t
  %i.cj = shl nuw i64 %mul.val274, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true)
  %5 = sub nuw nsw i64 60, %i.cl
  %notmask.i.i49 = shl nsw i64 -1, %5             ; 2 uses
  %6 = xor i64 %notmask.i.i49, -1
  %i.cm = add nuw nsw i64 %mul.val274, %6
  %i.cn = and i64 %i.cm, %notmask.i.i49
  br label %sz_s2u.exit.i52

end_hunk_14
begin_hunk_15_@duckdb_je_calloc:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.dx = shl nuw i64 %mul.val, 1
  %i.dy = add i64 %i.dx, -1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 2
  %i.ec = xor i32 %i.eb, 252
  %i.ed = sub nuw nsw i64 60, %i.dz               ; 2 uses
  %7 = shl nsw i64 -1, %i.ed
  %i.ee = add nsw i64 %mul.val, -1
  %i.ef = and i64 %7, %i.ee
  %i.eg = lshr i64 %i.ef, %i.ed
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 3
end_hunk_15
begin_hunk_16_@duckdb_je_calloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.az
  %i.gw = shl nuw i64 %mul.val, 1
  %i.gx = add i64 %i.gw, -1
  %i.gy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gx, i1 true)
  %8 = sub nuw nsw i64 60, %i.gy
  %notmask.i.i = shl nsw i64 -1, %8               ; 2 uses
  %9 = xor i64 %notmask.i.i, -1
  %i.gz = add nuw nsw i64 %mul.val, %9
  %i.ha = and i64 %i.gz, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_16
begin_hunk_17_@duckdb_je_valloc:bb.a
sz_s2u_compute.exit.i99:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true)
  %3 = sub nuw nsw i64 60, %i.s
  %notmask.i.i98 = shl nsw i64 -1, %3             ; 2 uses
  %4 = xor i64 %notmask.i.i98, -1
  %i.t = add nuw nsw i64 %i.i, %4
  %i.u = and i64 %i.t, %notmask.i.i98
  br label %sz_s2u.exit25.i101

end_hunk_17
begin_hunk_18_@duckdb_je_valloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %0, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true)
  %5 = sub nuw nsw i64 60, %i.aa
  %notmask.i27.i90 = shl nsw i64 -1, %5           ; 2 uses
  %6 = xor i64 %notmask.i27.i90, -1
  %i.ab = add nuw nsw i64 %0, %6
  %i.ac = and i64 %i.ab, %notmask.i27.i90
  br label %sz_s2u_compute.exit29.i91

end_hunk_18
begin_hunk_19_@duckdb_je_valloc:bb.a
sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.bh, 1
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bq, i1 true)
  %7 = sub nuw nsw i64 60, %i.br
  %notmask.i.i86 = shl nsw i64 -1, %7             ; 2 uses
  %8 = xor i64 %notmask.i.i86, -1
  %i.bs = add nuw nsw i64 %i.bh, %8
  %i.bt = and i64 %i.bs, %notmask.i.i86
  br label %sz_s2u.exit25.i

end_hunk_19
begin_hunk_20_@duckdb_je_valloc:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bx = shl nuw i64 %0, 1
  %i.by = add i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.by, i1 true)
  %9 = sub nuw nsw i64 60, %i.bz
  %notmask.i27.i = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i27.i, -1
  %i.ca = add nuw nsw i64 %0, %10
  %i.cb = and i64 %i.ca, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_20
begin_hunk_21_@duckdb_je_mallocx:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %0, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 2
  %i.ai = xor i32 %i.ah, 252
  %i.aj = sub nuw nsw i64 60, %i.af               ; 2 uses
  %4 = shl nsw i64 -1, %i.aj
  %i.ak = add nsw i64 %0, -1
  %i.al = and i64 %4, %i.ak
  %i.am = lshr i64 %i.al, %i.aj
end_hunk_21
begin_hunk_22_@duckdb_je_mallocx:bb.a
sz_s2u_compute.exit.i108:                         ; preds = %bb.k
  %i.bj = shl nuw nsw i64 %i.ba, 1
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bk, i1 true)
  %5 = sub nuw nsw i64 60, %i.bl
  %notmask.i.i107 = shl nsw i64 -1, %5            ; 2 uses
  %6 = xor i64 %notmask.i.i107, -1
  %i.bm = add nuw nsw i64 %i.ba, %6
  %i.bn = and i64 %i.bm, %notmask.i.i107
  br label %sz_s2u.exit25.i110

end_hunk_22
begin_hunk_23_@duckdb_je_mallocx:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bs = shl nuw i64 %0, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true)
  %7 = sub nuw nsw i64 60, %i.bu
  %notmask.i27.i99 = shl nsw i64 -1, %7           ; 2 uses
  %8 = xor i64 %notmask.i27.i99, -1
  %i.bv = add nuw nsw i64 %0, %8
  %i.bw = and i64 %i.bv, %notmask.i27.i99
  br label %sz_s2u_compute.exit29.i100

end_hunk_23
begin_hunk_24_@duckdb_je_mallocx:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.ew = shl nuw i64 %0, 1
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ex, i1 true)
  %9 = sub nuw nsw i64 60, %i.ey
  %notmask.i.i56 = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i.i56, -1
  %i.ez = add nuw nsw i64 %0, %10
  %i.fa = and i64 %i.ez, %notmask.i.i56
  br label %sz_s2u.exit.i59

end_hunk_24
begin_hunk_25_@duckdb_je_mallocx:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.gk = shl nuw i64 %0, 1
  %i.gl = add i64 %i.gk, -1
  %i.gm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gl, i1 true) ; 2 uses
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 2
  %i.gp = xor i32 %i.go, 252
  %i.gq = sub nuw nsw i64 60, %i.gm               ; 2 uses
  %11 = shl nsw i64 -1, %i.gq
  %i.gr = add nsw i64 %0, -1
  %i.gs = and i64 %11, %i.gr
  %i.gt = lshr i64 %i.gs, %i.gq
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 3
end_hunk_25
begin_hunk_26_@duckdb_je_mallocx:bb.a
sz_s2u_compute.exit.i96:                          ; preds = %bb.be
  %i.hq = shl nuw nsw i64 %i.hh, 1
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hr, i1 true)
  %12 = sub nuw nsw i64 60, %i.hs
  %notmask.i.i95 = shl nsw i64 -1, %12            ; 2 uses
  %13 = xor i64 %notmask.i.i95, -1
  %i.ht = add nuw nsw i64 %i.hh, %13
  %i.hu = and i64 %i.ht, %notmask.i.i95
  br label %sz_s2u.exit25.i

end_hunk_26
begin_hunk_27_@duckdb_je_mallocx:bb.a
bb.bj:                                            ; preds = %bb.bi
  %i.hz = shl nuw i64 %0, 1
  %i.ia = add i64 %i.hz, -1
  %i.ib = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ia, i1 true)
  %14 = sub nuw nsw i64 60, %i.ib
  %notmask.i27.i = shl nsw i64 -1, %14            ; 2 uses
  %15 = xor i64 %notmask.i27.i, -1
  %i.ic = add nuw nsw i64 %0, %15
  %i.id = and i64 %i.ic, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_27
begin_hunk_28_@duckdb_je_mallocx:bb.a
bb.ck:                                            ; preds = %bb.cj
  %i.li = shl nuw i64 %0, 1
  %i.lj = add i64 %i.li, -1
  %i.lk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.lj, i1 true)
  %16 = sub nuw nsw i64 60, %i.lk
  %notmask.i.i = shl nsw i64 -1, %16              ; 2 uses
  %17 = xor i64 %notmask.i.i, -1
  %i.ll = add nuw nsw i64 %0, %17
  %i.lm = and i64 %i.ll, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_28
begin_hunk_29_@do_rallocx:bb.a
bb.l:                                             ; preds = %bb.k
  %i.az = shl nuw i64 %1, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true)
  %10 = sub nuw nsw i64 60, %i.bb
  %notmask.i = shl nsw i64 -1, %10                ; 2 uses
  %11 = xor i64 %notmask.i, -1
  %i.bc = add nuw nsw i64 %1, %11
  %i.bd = and i64 %i.bc, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_29
begin_hunk_30_@do_rallocx:bb.a
sz_s2u_compute.exit.i70:                          ; preds = %bb.n
  %i.bs = shl nuw nsw i64 %i.bj, 1
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true)
  %12 = sub nuw nsw i64 60, %i.bu
  %notmask.i.i69 = shl nsw i64 -1, %12            ; 2 uses
  %13 = xor i64 %notmask.i.i69, -1
  %i.bv = add nuw nsw i64 %i.bj, %13
  %i.bw = and i64 %i.bv, %notmask.i.i69
  br label %sz_s2u.exit25.i72

end_hunk_30
begin_hunk_31_@do_rallocx:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cb = shl nuw i64 %1, 1
  %i.cc = add i64 %i.cb, -1
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cc, i1 true)
  %14 = sub nuw nsw i64 60, %i.cd
  %notmask.i27.i62 = shl nsw i64 -1, %14          ; 2 uses
  %15 = xor i64 %notmask.i27.i62, -1
  %i.ce = add nuw nsw i64 %1, %15
  %i.cf = and i64 %i.ce, %notmask.i27.i62
  br label %sz_s2u_compute.exit29.i63

end_hunk_31
begin_hunk_32_@do_rallocx:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.u
  %i.dl = shl nuw nsw i64 %i.dc, 1
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dm, i1 true)
  %16 = sub nuw nsw i64 60, %i.dn
  %notmask.i.i = shl nsw i64 -1, %16              ; 2 uses
  %17 = xor i64 %notmask.i.i, -1
  %i.do = add nuw nsw i64 %i.dc, %17
  %i.dp = and i64 %i.do, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_32
begin_hunk_33_@do_rallocx:bb.a
bb.y:                                             ; preds = %bb.x
  %i.dt = shl nuw i64 %1, 1
  %i.du = add i64 %i.dt, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.du, i1 true)
  %18 = sub nuw nsw i64 60, %i.dv
  %notmask.i27.i = shl nsw i64 -1, %18            ; 2 uses
  %19 = xor i64 %notmask.i27.i, -1
  %i.dw = add nuw nsw i64 %1, %19
  %i.dx = and i64 %i.dw, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_33
begin_hunk_34_@do_rallocx:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.fa = shl nuw i64 %i.ao, 1
  %i.fb = add i64 %i.fa, -1
  %i.fc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fb, i1 true) ; 2 uses
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = xor i32 %i.fe, 252
  %i.fg = sub nuw nsw i64 60, %i.fc               ; 2 uses
  %20 = shl nsw i64 -1, %i.fg
  %i.fh = add nsw i64 %i.ao, -1
  %i.fi = and i64 %20, %i.fh
  %i.fj = lshr i64 %i.fi, %i.fg
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 3
end_hunk_34
begin_hunk_35_@duckdb_je_realloc:bb.a
bb.h:                                             ; preds = %bb.g
  %i.v = shl nuw i64 %1, 1
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2
  %i.aa = xor i32 %i.z, 252
  %i.ab = sub nuw nsw i64 60, %i.x                ; 2 uses
  %4 = shl nsw i64 -1, %i.ab
  %i.ac = add nsw i64 %1, -1
  %i.ad = and i64 %4, %i.ac
  %i.ae = lshr i64 %i.ad, %i.ab
end_hunk_35
begin_hunk_36_@duckdb_je_realloc:bb.a
sz_s2u_compute.exit.i61:                          ; preds = %bb.v
  %i.cj = shl nuw i64 %1, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true)
  %5 = sub nuw nsw i64 60, %i.cl
  %notmask.i.i60 = shl nsw i64 -1, %5             ; 2 uses
  %6 = xor i64 %notmask.i.i60, -1
  %i.cm = add nuw nsw i64 %1, %6
  %i.cn = and i64 %i.cm, %notmask.i.i60
  br label %sz_s2u.exit.i63

end_hunk_36
begin_hunk_37_@duckdb_je_realloc:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.dv = shl nuw i64 %1, 1
  %i.dw = add i64 %i.dv, -1
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dw, i1 true) ; 2 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 2
  %i.ea = xor i32 %i.dz, 252
  %i.eb = sub nuw nsw i64 60, %i.dx               ; 2 uses
  %7 = shl nsw i64 -1, %i.eb
  %i.ec = add nsw i64 %1, -1
  %i.ed = and i64 %7, %i.ec
  %i.ee = lshr i64 %i.ed, %i.eb
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 3
end_hunk_37
begin_hunk_38_@duckdb_je_realloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.bb
  %i.gt = shl nuw i64 %1, 1
  %i.gu = add i64 %i.gt, -1
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gu, i1 true)
  %8 = sub nuw nsw i64 60, %i.gv
  %notmask.i.i = shl nsw i64 -1, %8               ; 2 uses
  %9 = xor i64 %notmask.i.i, -1
  %i.gw = add nuw nsw i64 %1, %9
  %i.gx = and i64 %i.gw, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_38
begin_hunk_39_@duckdb_je_sdallocx_default:bb.a
bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %1, 1
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.v, i1 true)
  %7 = sub nuw nsw i64 60, %i.w
  %notmask.i = shl nsw i64 -1, %7                 ; 2 uses
  %8 = xor i64 %notmask.i, -1
  %i.x = add nuw nsw i64 %1, %8
  %i.y = and i64 %i.x, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_39
begin_hunk_40_@duckdb_je_sdallocx_default:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.an = shl nuw nsw i64 %i.ae, 1
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ao, i1 true)
  %9 = sub nuw nsw i64 60, %i.ap
  %notmask.i.i = shl nsw i64 -1, %9               ; 2 uses
  %10 = xor i64 %notmask.i.i, -1
  %i.aq = add nuw nsw i64 %i.ae, %10
  %i.ar = and i64 %i.aq, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_40
begin_hunk_41_@duckdb_je_sdallocx_default:bb.a
bb.m:                                             ; preds = %bb.l
  %i.aw = shl nuw i64 %1, 1
  %i.ax = add i64 %i.aw, -1
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ax, i1 true)
  %11 = sub nuw nsw i64 60, %i.ay
  %notmask.i27.i = shl nsw i64 -1, %11            ; 2 uses
  %12 = xor i64 %notmask.i27.i, -1
  %i.az = add nuw nsw i64 %1, %12
  %i.ba = and i64 %i.az, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_41
begin_hunk_42_@duckdb_je_sdallocx_default:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cg = shl nuw i64 %storemerge.i, 1
  %i.ch = add i64 %i.cg, -1
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ch, i1 true) ; 2 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 2
  %i.cl = xor i32 %i.ck, 252
  %i.cm = sub nuw nsw i64 60, %i.ci               ; 2 uses
  %13 = shl nsw i64 -1, %i.cm
  %i.cn = add nsw i64 %storemerge.i, -1
  %i.co = and i64 %13, %i.cn
  %i.cp = lshr i64 %i.co, %i.cm
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
end_hunk_42
begin_hunk_43_@duckdb_je_sdallocx_default:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.fq = shl nuw i64 %storemerge.i, 1
  %i.fr = add i64 %i.fq, -1
  %i.fs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fr, i1 true) ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 2
  %i.fv = xor i32 %i.fu, 252
  %i.fw = sub nuw nsw i64 60, %i.fs               ; 2 uses
  %14 = shl nsw i64 -1, %i.fw
  %i.fx = add nsw i64 %storemerge.i, -1
  %i.fy = and i64 %14, %i.fx
  %i.fz = lshr i64 %i.fy, %i.fw
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 3
end_hunk_43
begin_hunk_44_@duckdb_je_nallocx:bb.a
bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %0, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true)
  %2 = sub nuw nsw i64 60, %i.z
  %notmask.i = shl nsw i64 -1, %2                 ; 2 uses
  %3 = xor i64 %notmask.i, -1
  %i.aa = add nuw nsw i64 %0, %3
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_44
begin_hunk_45_@duckdb_je_nallocx:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true)
  %4 = sub nuw nsw i64 60, %i.as
  %notmask.i.i = shl nsw i64 -1, %4               ; 2 uses
  %5 = xor i64 %notmask.i.i, -1
  %i.at = add nuw nsw i64 %i.ah, %5
  %i.au = and i64 %i.at, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_45
begin_hunk_46_@duckdb_je_nallocx:bb.a
bb.o:                                             ; preds = %bb.n
  %i.az = shl nuw i64 %0, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true)
  %6 = sub nuw nsw i64 60, %i.bb
  %notmask.i27.i = shl nsw i64 -1, %6             ; 2 uses
  %7 = xor i64 %notmask.i27.i, -1
  %i.bc = add nuw nsw i64 %0, %7
  %i.bd = and i64 %i.bc, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_46
begin_hunk_47_@duckdb_je_batch_alloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true)
  %5 = sub nuw nsw i64 60, %i.y
  %notmask.i = shl nsw i64 -1, %5                 ; 2 uses
  %6 = xor i64 %notmask.i, -1
  %i.z = add nuw nsw i64 %2, %6
  %i.aa = and i64 %i.z, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_47
begin_hunk_48_@duckdb_je_batch_alloc:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.ap = shl nuw nsw i64 %i.ag, 1
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aq, i1 true)
  %7 = sub nuw nsw i64 60, %i.ar
  %notmask.i.i = shl nsw i64 -1, %7               ; 2 uses
  %8 = xor i64 %notmask.i.i, -1
  %i.as = add nuw nsw i64 %i.ag, %8
  %i.at = and i64 %i.as, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_48
begin_hunk_49_@duckdb_je_batch_alloc:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw i64 %2, 1
  %i.az = add i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.az, i1 true)
  %9 = sub nuw nsw i64 60, %i.ba
  %notmask.i27.i = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i27.i, -1
  %i.bb = add nuw nsw i64 %2, %10
  %i.bc = and i64 %i.bb, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_49
begin_hunk_50_@duckdb_je_batch_alloc:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bs = shl nuw i64 %storemerge.i, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true) ; 2 uses
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 2
  %i.bx = xor i32 %i.bw, 252
  %i.by = sub nuw nsw i64 60, %i.bu               ; 2 uses
  %11 = shl nsw i64 -1, %i.by
  %i.bz = add nsw i64 %storemerge.i, -1
  %i.ca = and i64 %11, %i.bz
  %i.cb = lshr i64 %i.ca, %i.by
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3
end_hunk_50
begin_hunk_51_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = xor i32 %i.l, 252
  %i.n = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.n
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %3, %i.o
  %i.q = lshr i64 %i.p, %i.n
end_hunk_51
