inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@a0ialloc:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %0, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = xor i32 %i.o, 252
  %i.q = add nsw i32 %i.p, -20
  %i.r = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %6 = shl nsw i64 -1, %i.r
  %i.s = add nsw i64 %0, -1
  %i.t = and i64 %6, %i.s
  %i.u = lshr i64 %i.t, %i.r
end_hunk_0
begin_hunk_1_@je_bootstrap_malloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw i64 %.0, 1
  %i.m = add i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.m, i1 true) ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = xor i32 %i.p, 252
  %i.r = add nsw i32 %i.q, -20
  %i.s = sub nuw nsw i64 60, %i.n                 ; 2 uses
  %1 = shl nsw i64 -1, %i.s
  %i.t = add nsw i64 %.0, -1
  %i.u = and i64 %1, %i.t
  %i.v = lshr i64 %i.u, %i.s
end_hunk_1
begin_hunk_2_@je_bootstrap_calloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw i64 %.0, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 2
  %i.r = xor i32 %i.q, 252
  %i.s = add nsw i32 %i.r, -20
  %i.t = sub nuw nsw i64 60, %i.o                 ; 2 uses
  %2 = shl nsw i64 -1, %i.t
  %i.u = add nsw i64 %.0, -1
  %i.v = and i64 %2, %i.u
  %i.w = lshr i64 %i.v, %i.t
end_hunk_2
begin_hunk_3_@je_malloc_default:bb.a
bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = xor i32 %i.t, 252
  %i.v = add nsw i32 %i.u, -20
  %i.w = sub nuw nsw i64 60, %i.r                 ; 2 uses
  %4 = shl nsw i64 -1, %i.w
  %i.x = add nsw i64 %0, -1
  %i.y = and i64 %4, %i.x
  %i.z = lshr i64 %i.y, %i.w
end_hunk_3
begin_hunk_4_@je_malloc_default:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77272, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bj, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  %i.bx = shl nuw i64 %0, 1
  %i.by = add i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.by, i1 true)
  %5 = sub nuw nsw i64 60, %i.bz
  %notmask.i.i45 = shl nsw i64 -1, %5             ; 2 uses
  %6 = xor i64 %notmask.i.i45, -1
  %i.ca = add nuw nsw i64 %0, %6
  %i.cb = and i64 %i.ca, %notmask.i.i45
  %i.cc = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i77272, ptr noundef nonnull %i.bv, i64 noundef %i.cb, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit70
end_hunk_4
begin_hunk_5_@je_malloc_default:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.dj = shl nuw i64 %0, 1
  %i.dk = add i64 %i.dj, -1
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dk, i1 true) ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 2
  %i.do = xor i32 %i.dn, 252
  %i.dp = add nsw i32 %i.do, -20
  %i.dq = sub nuw nsw i64 60, %i.dl               ; 2 uses
  %7 = shl nsw i64 -1, %i.dq
  %i.dr = add nsw i64 %0, -1
  %i.ds = and i64 %7, %i.dr
  %i.dt = lshr i64 %i.ds, %i.dq
  %i.du = trunc i64 %i.dt to i32
  %i.dv = and i32 %i.du, 3
end_hunk_5
begin_hunk_6_@je_malloc_default:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.fo, i32 noundef %.0.i50.i21, i1 noundef zeroext false) #21
  %i.gc = shl nuw i64 %0, 1
  %i.gd = add i64 %i.gc, -1
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gd, i1 true)
  %8 = sub nuw nsw i64 60, %i.ge
  %notmask.i.i = shl nsw i64 -1, %8               ; 2 uses
  %9 = xor i64 %notmask.i.i, -1
  %i.gf = add nuw nsw i64 %0, %9
  %i.gg = and i64 %i.gf, %notmask.i.i
  %i.gh = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ga, i64 noundef %i.gg, i1 noundef zeroext %i.db) #21
  br label %imalloc_no_sample.exit
end_hunk_6
begin_hunk_7_@je_posix_memalign:bb.a
sz_s2u_compute.exit.i102:                         ; preds = %bb.e
  %i.y = shl nuw nsw i64 %i.p, 1
  %i.z = add nsw i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true)
  %5 = sub nuw nsw i64 60, %i.aa
  %notmask.i.i101 = shl nsw i64 -1, %5            ; 2 uses
  %6 = xor i64 %notmask.i.i101, -1
  %i.ab = add nuw nsw i64 %i.p, %6
  %i.ac = and i64 %i.ab, %notmask.i.i101
  br label %sz_s2u.exit25.i104

end_hunk_7
begin_hunk_8_@je_posix_memalign:bb.a
sz_s2u_compute.exit29.i94:                        ; preds = %bb.i
  %i.ah = shl nuw i64 %.016.i.i, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true)
  %7 = sub nuw nsw i64 60, %i.aj
  %notmask.i27.i93 = shl nsw i64 -1, %7           ; 2 uses
  %8 = xor i64 %notmask.i27.i93, -1
  %i.ak = add nuw nsw i64 %.016.i.i, %8
  %i.al = and i64 %i.ak, %notmask.i27.i93         ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.016.i.i
  br i1 %i.am, label %imalloc.exit, label %.thread204
end_hunk_8
begin_hunk_9_@je_posix_memalign:bb.a
sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.cj = shl nuw nsw i64 %i.ca, 1
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true)
  %9 = sub nuw nsw i64 60, %i.cl
  %notmask.i.i90 = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i.i90, -1
  %i.cm = add nuw nsw i64 %i.ca, %10
  %i.cn = and i64 %i.cm, %notmask.i.i90
  br label %sz_s2u.exit25.i

end_hunk_9
begin_hunk_10_@je_posix_memalign:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.cs = shl nuw i64 %.016.i.i15, 1
  %i.ct = add i64 %i.cs, -1
  %i.cu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ct, i1 true)
  %11 = sub nuw nsw i64 60, %i.cu
  %notmask.i27.i = shl nsw i64 -1, %11            ; 2 uses
  %12 = xor i64 %notmask.i27.i, -1
  %i.cv = add nuw nsw i64 %.016.i.i15, %12
  %i.cw = and i64 %i.cv, %notmask.i27.i           ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cw, %.016.i.i15
  br i1 %i.cx, label %aligned_usize_get.exit.i17.thread, label %.thread211
end_hunk_10
begin_hunk_11_@je_aligned_alloc:bb.a
sz_s2u_compute.exit.i100:                         ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true)
  %4 = sub nuw nsw i64 60, %i.y
  %notmask.i.i99 = shl nsw i64 -1, %4             ; 2 uses
  %5 = xor i64 %notmask.i.i99, -1
  %i.z = add nuw nsw i64 %i.n, %5
  %i.aa = and i64 %i.z, %notmask.i.i99
  br label %sz_s2u.exit25.i102

end_hunk_11
begin_hunk_12_@je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i92:                        ; preds = %bb.i
  %i.af = shl nuw i64 %.016.i.i, 1
  %i.ag = add i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ag, i1 true)
  %6 = sub nuw nsw i64 60, %i.ah
  %notmask.i27.i91 = shl nsw i64 -1, %6           ; 2 uses
  %7 = xor i64 %notmask.i27.i91, -1
  %i.ai = add nuw nsw i64 %.016.i.i, %7
  %i.aj = and i64 %i.ai, %notmask.i27.i91         ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.016.i.i
  br i1 %i.ak, label %aligned_usize_get.exit.i.thread, label %.thread205
end_hunk_12
begin_hunk_13_@je_aligned_alloc:bb.a
sz_s2u_compute.exit.i89:                          ; preds = %bb.s
  %i.ch = shl nuw nsw i64 %i.by, 1
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ci, i1 true)
  %8 = sub nuw nsw i64 60, %i.cj
  %notmask.i.i88 = shl nsw i64 -1, %8             ; 2 uses
  %9 = xor i64 %notmask.i.i88, -1
  %i.ck = add nuw nsw i64 %i.by, %9
  %i.cl = and i64 %i.ck, %notmask.i.i88
  br label %sz_s2u.exit25.i

end_hunk_13
begin_hunk_14_@je_aligned_alloc:bb.a
sz_s2u_compute.exit29.i:                          ; preds = %bb.w
  %i.cq = shl nuw i64 %.016.i.i13, 1
  %i.cr = add i64 %i.cq, -1
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cr, i1 true)
  %10 = sub nuw nsw i64 60, %i.cs
  %notmask.i27.i = shl nsw i64 -1, %10            ; 2 uses
  %11 = xor i64 %notmask.i27.i, -1
  %i.ct = add nuw nsw i64 %.016.i.i13, %11
  %i.cu = and i64 %i.ct, %notmask.i27.i           ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %.016.i.i13
  br i1 %i.cv, label %aligned_usize_get.exit.i15.thread, label %.thread212
end_hunk_14
begin_hunk_15_@je_calloc_internal:bb.a
bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val264, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = xor i32 %i.x, 252
  %i.z = add nsw i32 %i.y, -20
  %i.aa = sub nuw nsw i64 60, %i.v                ; 2 uses
  %5 = shl nsw i64 -1, %i.aa
  %i.ab = add nsw i64 %mul.val264, -1
  %i.ac = and i64 %5, %i.ab
  %i.ad = lshr i64 %i.ac, %i.aa
end_hunk_15
begin_hunk_16_@je_calloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79279, ptr noundef nonnull %i.al, ptr noundef nonnull %i.bo, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  %i.cc = shl nuw i64 %mul.val264, 1
  %i.cd = add i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cd, i1 true)
  %6 = sub nuw nsw i64 60, %i.ce
  %notmask.i.i47 = shl nsw i64 -1, %6             ; 2 uses
  %7 = xor i64 %notmask.i.i47, -1
  %i.cf = add nuw nsw i64 %mul.val264, %7
  %i.cg = and i64 %i.cf, %notmask.i.i47
  %i.ch = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i79279, ptr noundef nonnull %i.ca, i64 noundef %i.cg, i1 noundef zeroext true) #21
  br label %imalloc_no_sample.exit72
end_hunk_16
begin_hunk_17_@je_calloc_internal:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.dq = shl nuw i64 %mul.val, 1
  %i.dr = add i64 %i.dq, -1
  %i.ds = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dr, i1 true) ; 2 uses
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 2
  %i.dv = xor i32 %i.du, 252
  %i.dw = add nsw i32 %i.dv, -20
  %i.dx = sub nuw nsw i64 60, %i.ds               ; 2 uses
  %8 = shl nsw i64 -1, %i.dx
  %i.dy = add nsw i64 %mul.val, -1
  %i.dz = and i64 %8, %i.dy
  %i.ea = lshr i64 %i.dz, %i.dx
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 3
end_hunk_17
begin_hunk_18_@je_calloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.en, ptr noundef nonnull %i.fv, i32 noundef %.0.i50.i23, i1 noundef zeroext false) #21
  %i.gj = shl nuw i64 %mul.val, 1
  %i.gk = add i64 %i.gj, -1
  %i.gl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gk, i1 true)
  %9 = sub nuw nsw i64 60, %i.gl
  %notmask.i.i = shl nsw i64 -1, %9               ; 2 uses
  %10 = xor i64 %notmask.i.i, -1
  %i.gm = add nuw nsw i64 %mul.val, %10
  %i.gn = and i64 %i.gm, %notmask.i.i
  %i.go = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gh, i64 noundef %i.gn, i1 noundef zeroext true) #21
  br label %imalloc_no_sample.exit
end_hunk_18
begin_hunk_19_@je_memalign:bb.a
sz_s2u_compute.exit.i100:                         ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.m, 1
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true)
  %4 = sub nuw nsw i64 60, %i.x
  %notmask.i.i99 = shl nsw i64 -1, %4             ; 2 uses
  %5 = xor i64 %notmask.i.i99, -1
  %i.y = add nuw nsw i64 %i.m, %5
  %i.z = and i64 %i.y, %notmask.i.i99
  br label %sz_s2u.exit25.i102

end_hunk_19
begin_hunk_20_@je_memalign:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ae = shl nuw i64 %1, 1
  %i.af = add i64 %i.ae, -1
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.af, i1 true)
  %6 = sub nuw nsw i64 60, %i.ag
  %notmask.i27.i91 = shl nsw i64 -1, %6           ; 2 uses
  %7 = xor i64 %notmask.i27.i91, -1
  %i.ah = add nuw nsw i64 %1, %7
  %i.ai = and i64 %i.ah, %notmask.i27.i91
  br label %sz_s2u_compute.exit29.i92

end_hunk_20
begin_hunk_21_@je_memalign:bb.a
sz_s2u_compute.exit.i89:                          ; preds = %bb.o
  %i.cd = shl nuw nsw i64 %i.bu, 1
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true)
  %8 = sub nuw nsw i64 60, %i.cf
  %notmask.i.i88 = shl nsw i64 -1, %8             ; 2 uses
  %9 = xor i64 %notmask.i.i88, -1
  %i.cg = add nuw nsw i64 %i.bu, %9
  %i.ch = and i64 %i.cg, %notmask.i.i88
  br label %sz_s2u.exit25.i

end_hunk_21
begin_hunk_22_@je_memalign:bb.a
bb.t:                                             ; preds = %bb.s
  %i.cm = shl nuw i64 %1, 1
  %i.cn = add i64 %i.cm, -1
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cn, i1 true)
  %10 = sub nuw nsw i64 60, %i.co
  %notmask.i27.i = shl nsw i64 -1, %10            ; 2 uses
  %11 = xor i64 %notmask.i27.i, -1
  %i.cp = add nuw nsw i64 %1, %11
  %i.cq = and i64 %i.cp, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_22
begin_hunk_23_@je_valloc:bb.a
sz_s2u_compute.exit.i98:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true)
  %3 = sub nuw nsw i64 60, %i.s
  %notmask.i.i97 = shl nsw i64 -1, %3             ; 2 uses
  %4 = xor i64 %notmask.i.i97, -1
  %i.t = add nuw nsw i64 %i.i, %4
  %i.u = and i64 %i.t, %notmask.i.i97
  br label %sz_s2u.exit25.i100

end_hunk_23
begin_hunk_24_@je_valloc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %0, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true)
  %5 = sub nuw nsw i64 60, %i.aa
  %notmask.i27.i89 = shl nsw i64 -1, %5           ; 2 uses
  %6 = xor i64 %notmask.i27.i89, -1
  %i.ab = add nuw nsw i64 %0, %6
  %i.ac = and i64 %i.ab, %notmask.i27.i89
  br label %sz_s2u_compute.exit29.i90

end_hunk_24
begin_hunk_25_@je_valloc:bb.a
sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.bo = shl nuw nsw i64 %i.bg, 1
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bp, i1 true)
  %7 = sub nuw nsw i64 60, %i.bq
  %notmask.i.i86 = shl nsw i64 -1, %7             ; 2 uses
  %8 = xor i64 %notmask.i.i86, -1
  %i.br = add nuw nsw i64 %i.bg, %8
  %i.bs = and i64 %i.br, %notmask.i.i86
  br label %sz_s2u.exit25.i

end_hunk_25
begin_hunk_26_@je_valloc:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bw = shl nuw i64 %0, 1
  %i.bx = add i64 %i.bw, -1
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bx, i1 true)
  %9 = sub nuw nsw i64 60, %i.by
  %notmask.i27.i = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i27.i, -1
  %i.bz = add nuw nsw i64 %0, %10
  %i.ca = and i64 %i.bz, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_26
begin_hunk_27_@je_mallocx:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %0, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 2
  %i.ai = xor i32 %i.ah, 252
  %i.aj = add nsw i32 %i.ai, -20
  %i.ak = sub nuw nsw i64 60, %i.af               ; 2 uses
  %4 = shl nsw i64 -1, %i.ak
  %i.al = add nsw i64 %0, -1
  %i.am = and i64 %4, %i.al
  %i.an = lshr i64 %i.am, %i.ak
end_hunk_27
begin_hunk_28_@je_mallocx:bb.a
sz_s2u_compute.exit.i107:                         ; preds = %bb.k
  %i.bj = shl nuw nsw i64 %i.ba, 1
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bk, i1 true)
  %5 = sub nuw nsw i64 60, %i.bl
  %notmask.i.i106 = shl nsw i64 -1, %5            ; 2 uses
  %6 = xor i64 %notmask.i.i106, -1
  %i.bm = add nuw nsw i64 %i.ba, %6
  %i.bn = and i64 %i.bm, %notmask.i.i106
  br label %sz_s2u.exit25.i109

end_hunk_28
begin_hunk_29_@je_mallocx:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bs = shl nuw i64 %0, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true)
  %7 = sub nuw nsw i64 60, %i.bu
  %notmask.i27.i98 = shl nsw i64 -1, %7           ; 2 uses
  %8 = xor i64 %notmask.i27.i98, -1
  %i.bv = add nuw nsw i64 %0, %8
  %i.bw = and i64 %i.bv, %notmask.i27.i98
  br label %sz_s2u_compute.exit29.i99

end_hunk_29
begin_hunk_30_@je_mallocx:bb.a
bb.an:                                            ; preds = %bb.am
  %i.ep = shl nuw i64 %0, 1
  %i.eq = add i64 %i.ep, -1
  %i.er = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.eq, i1 true)
  %9 = sub nuw nsw i64 60, %i.er
  %notmask.i.i53 = shl nsw i64 -1, %9             ; 2 uses
  %10 = xor i64 %notmask.i.i53, -1
  %i.es = add nuw nsw i64 %0, %10
  %i.et = and i64 %i.es, %notmask.i.i53
  br label %sz_s2u.exit.i56

end_hunk_30
begin_hunk_31_@je_mallocx:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.gd = shl nuw i64 %0, 1
  %i.ge = add i64 %i.gd, -1
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ge, i1 true) ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 2
  %i.gi = xor i32 %i.gh, 252
  %i.gj = add nsw i32 %i.gi, -20
  %i.gk = sub nuw nsw i64 60, %i.gf               ; 2 uses
  %11 = shl nsw i64 -1, %i.gk
  %i.gl = add nsw i64 %0, -1
  %i.gm = and i64 %11, %i.gl
  %i.gn = lshr i64 %i.gm, %i.gk
  %i.go = trunc i64 %i.gn to i32
  %i.gp = and i32 %i.go, 3
end_hunk_31
begin_hunk_32_@je_mallocx:bb.a
sz_s2u_compute.exit.i96:                          ; preds = %bb.bc
  %i.hj = shl nuw nsw i64 %i.ha, 1
  %i.hk = add nsw i64 %i.hj, -1
  %i.hl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hk, i1 true)
  %12 = sub nuw nsw i64 60, %i.hl
  %notmask.i.i95 = shl nsw i64 -1, %12            ; 2 uses
  %13 = xor i64 %notmask.i.i95, -1
  %i.hm = add nuw nsw i64 %i.ha, %13
  %i.hn = and i64 %i.hm, %notmask.i.i95
  br label %sz_s2u.exit25.i

end_hunk_32
begin_hunk_33_@je_mallocx:bb.a
bb.bh:                                            ; preds = %bb.bg
  %i.hs = shl nuw i64 %0, 1
  %i.ht = add i64 %i.hs, -1
  %i.hu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ht, i1 true)
  %14 = sub nuw nsw i64 60, %i.hu
  %notmask.i27.i = shl nsw i64 -1, %14            ; 2 uses
  %15 = xor i64 %notmask.i27.i, -1
  %i.hv = add nuw nsw i64 %0, %15
  %i.hw = and i64 %i.hv, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_33
begin_hunk_34_@je_mallocx:bb.a
bb.cf:                                            ; preds = %bb.ce
  %i.ku = shl nuw i64 %0, 1
  %i.kv = add i64 %i.ku, -1
  %i.kw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.kv, i1 true)
  %16 = sub nuw nsw i64 60, %i.kw
  %notmask.i.i = shl nsw i64 -1, %16              ; 2 uses
  %17 = xor i64 %notmask.i.i, -1
  %i.kx = add nuw nsw i64 %0, %17
  %i.ky = and i64 %i.kx, %notmask.i.i
  br label %sz_s2u.exit.i

end_hunk_34
begin_hunk_35_@do_rallocx:bb.a
bb.l:                                             ; preds = %bb.k
  %i.az = shl nuw i64 %1, 1
  %i.ba = add i64 %i.az, -1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ba, i1 true)
  %12 = sub nuw nsw i64 60, %i.bb
  %notmask.i = shl nsw i64 -1, %12                ; 2 uses
  %13 = xor i64 %notmask.i, -1
  %i.bc = add nuw nsw i64 %1, %13
  %i.bd = and i64 %i.bc, %notmask.i
  br label %aligned_usize_get.exit

end_hunk_35
begin_hunk_36_@do_rallocx:bb.a
sz_s2u_compute.exit.i77:                          ; preds = %bb.n
  %i.bs = shl nuw nsw i64 %i.bj, 1
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true)
  %14 = sub nuw nsw i64 60, %i.bu
  %notmask.i.i76 = shl nsw i64 -1, %14            ; 2 uses
  %15 = xor i64 %notmask.i.i76, -1
  %i.bv = add nuw nsw i64 %i.bj, %15
  %i.bw = and i64 %i.bv, %notmask.i.i76
  br label %sz_s2u.exit25.i79

end_hunk_36
begin_hunk_37_@do_rallocx:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cb = shl nuw i64 %1, 1
  %i.cc = add i64 %i.cb, -1
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cc, i1 true)
  %16 = sub nuw nsw i64 60, %i.cd
  %notmask.i27.i69 = shl nsw i64 -1, %16          ; 2 uses
  %17 = xor i64 %notmask.i27.i69, -1
  %i.ce = add nuw nsw i64 %1, %17
  %i.cf = and i64 %i.ce, %notmask.i27.i69
  br label %sz_s2u_compute.exit29.i70

end_hunk_37
begin_hunk_38_@do_rallocx:bb.a
sz_s2u_compute.exit.i:                            ; preds = %bb.u
  %i.dk = shl nuw nsw i64 %i.db, 1
  %i.dl = add nsw i64 %i.dk, -1
  %i.dm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dl, i1 true)
  %18 = sub nuw nsw i64 60, %i.dm
  %notmask.i.i = shl nsw i64 -1, %18              ; 2 uses
  %19 = xor i64 %notmask.i.i, -1
  %i.dn = add nuw nsw i64 %i.db, %19
  %i.do = and i64 %i.dn, %notmask.i.i
  br label %sz_s2u.exit25.i

end_hunk_38
begin_hunk_39_@do_rallocx:bb.a
bb.y:                                             ; preds = %bb.x
  %i.ds = shl nuw i64 %1, 1
  %i.dt = add i64 %i.ds, -1
  %i.du = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dt, i1 true)
  %20 = sub nuw nsw i64 60, %i.du
  %notmask.i27.i = shl nsw i64 -1, %20            ; 2 uses
  %21 = xor i64 %notmask.i27.i, -1
  %i.dv = add nuw nsw i64 %1, %21
  %i.dw = and i64 %i.dv, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

end_hunk_39
begin_hunk_40_@do_rallocx:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.ez = shl nuw i64 %i.ao, 1
  %i.fa = add i64 %i.ez, -1
  %i.fb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fa, i1 true) ; 2 uses
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 2
  %i.fe = xor i32 %i.fd, 252
  %i.ff = add nsw i32 %i.fe, -20
  %i.fg = sub nuw nsw i64 60, %i.fb               ; 2 uses
  %22 = shl nsw i64 -1, %i.fg
  %i.fh = add nsw i64 %i.ao, -1
  %i.fi = and i64 %22, %i.fh
  %i.fj = lshr i64 %i.fi, %i.fg
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 3
end_hunk_40
begin_hunk_41_@je_realloc_internal:bb.a
bb.h:                                             ; preds = %bb.g
  %i.v = shl nuw i64 %1, 1
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2
  %i.aa = xor i32 %i.z, 252
  %i.ab = add nsw i32 %i.aa, -20
  %i.ac = sub nuw nsw i64 60, %i.x                ; 2 uses
  %6 = shl nsw i64 -1, %i.ac
  %i.ad = add nsw i64 %1, -1
  %i.ae = and i64 %6, %i.ad
  %i.af = lshr i64 %i.ae, %i.ac
end_hunk_41
begin_hunk_42_@je_realloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100300, ptr noundef nonnull %i.an, ptr noundef nonnull %i.bp, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  %i.cd = shl nuw i64 %1, 1
  %i.ce = add i64 %i.cd, -1
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ce, i1 true)
  %7 = sub nuw nsw i64 60, %i.cf
  %notmask.i.i68 = shl nsw i64 -1, %7             ; 2 uses
  %8 = xor i64 %notmask.i.i68, -1
  %i.cg = add nuw nsw i64 %1, %8
  %i.ch = and i64 %i.cg, %notmask.i.i68
  %i.ci = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i100300, ptr noundef nonnull %i.cb, i64 noundef %i.ch, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit93
end_hunk_42
begin_hunk_43_@je_realloc_internal:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.dp = shl nuw i64 %1, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 2
  %i.du = xor i32 %i.dt, 252
  %i.dv = add nsw i32 %i.du, -20
  %i.dw = sub nuw nsw i64 60, %i.dr               ; 2 uses
  %9 = shl nsw i64 -1, %i.dw
  %i.dx = add nsw i64 %1, -1
  %i.dy = and i64 %9, %i.dx
  %i.dz = lshr i64 %i.dy, %i.dw
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = and i32 %i.ea, 3
end_hunk_43
begin_hunk_44_@je_realloc_internal:bb.a
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.em, ptr noundef nonnull %i.fu, i32 noundef %.0.i50.i44, i1 noundef zeroext false) #21
  %i.gi = shl nuw i64 %1, 1
  %i.gj = add i64 %i.gi, -1
  %i.gk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gj, i1 true)
  %10 = sub nuw nsw i64 60, %i.gk
  %notmask.i.i = shl nsw i64 -1, %10              ; 2 uses
  %11 = xor i64 %notmask.i.i, -1
  %i.gl = add nuw nsw i64 %1, %11
  %i.gm = and i64 %i.gl, %notmask.i.i
  %i.gn = tail call ptr @je_large_malloc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.gg, i64 noundef %i.gm, i1 noundef zeroext %i.dh) #21
  br label %imalloc_no_sample.exit
end_hunk_44
begin_hunk_45_@je_sdallocx_default:bb.a
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

end_hunk_45
begin_hunk_46_@je_sdallocx_default:bb.a
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

end_hunk_46
begin_hunk_47_@je_sdallocx_default:bb.a
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

end_hunk_47
begin_hunk_48_@je_sdallocx_default:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cg = shl nuw i64 %storemerge.i, 1
  %i.ch = add i64 %i.cg, -1
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ch, i1 true) ; 2 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 2
  %i.cl = xor i32 %i.ck, 252
  %i.cm = add nsw i32 %i.cl, -20
  %i.cn = sub nuw nsw i64 60, %i.ci               ; 2 uses
  %13 = shl nsw i64 -1, %i.cn
  %i.co = add nsw i64 %storemerge.i, -1
  %i.cp = and i64 %13, %i.co
  %i.cq = lshr i64 %i.cp, %i.cn
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 3
end_hunk_48
begin_hunk_49_@je_sdallocx_default:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.fs = shl nuw i64 %storemerge.i, 1
  %i.ft = add i64 %i.fs, -1
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ft, i1 true) ; 2 uses
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 2
  %i.fx = xor i32 %i.fw, 252
  %i.fy = add nsw i32 %i.fx, -20
  %i.fz = sub nuw nsw i64 60, %i.fu               ; 2 uses
  %14 = shl nsw i64 -1, %i.fz
  %i.ga = add nsw i64 %storemerge.i, -1
  %i.gb = and i64 %14, %i.ga
  %i.gc = lshr i64 %i.gb, %i.fz
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 3
end_hunk_49
begin_hunk_50_@je_nallocx:bb.a
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

end_hunk_50
begin_hunk_51_@je_nallocx:bb.a
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

end_hunk_51
begin_hunk_52_@je_nallocx:bb.a
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

end_hunk_52
begin_hunk_53_@je_batch_alloc:bb.a
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

end_hunk_53
begin_hunk_54_@je_batch_alloc:bb.a
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

end_hunk_54
begin_hunk_55_@je_batch_alloc:bb.a
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

end_hunk_55
begin_hunk_56_@je_batch_alloc:bb.a
sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bs = shl nuw i64 %storemerge.i, 1
  %i.bt = add i64 %i.bs, -1
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bt, i1 true) ; 2 uses
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 2
  %i.bx = xor i32 %i.bw, 252
  %i.by = add nsw i32 %i.bx, -20
  %i.bz = sub nuw nsw i64 60, %i.bu               ; 2 uses
  %11 = shl nsw i64 -1, %i.bz
  %i.ca = add nsw i64 %storemerge.i, -1
  %i.cb = and i64 %11, %i.ca
  %i.cc = lshr i64 %i.cb, %i.bz
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 3
end_hunk_56
begin_hunk_57_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = xor i32 %i.l, 252
  %i.n = add nsw i32 %i.m, -20
  %i.o = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.o
  %i.p = add nsw i64 %2, -1
  %i.q = and i64 %3, %i.p
  %i.r = lshr i64 %i.q, %i.o
end_hunk_57
