inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@a0ialloc:bb.a
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 3 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = sub nuw nsw i64 60, %i.m
  %i.p = ashr exact i64 -1152921504606846976, %i.m
  %i.q = add nsw i64 %0, -1
end_hunk_0
begin_hunk_1_@a0ialloc:bb.a
  %i.s = lshr i64 %i.r, %i.o
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  %6 = shl nuw nsw i32 %i.n, 2
  %reass.sub = sub nsw i32 %i.u, %6
  %7 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.i, %bb.b ], [ %7, %bb.d ], [ 235, %bb.c ]
  %i.v = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.f, !prof !11
end_hunk_1
begin_hunk_2_@je_bootstrap_malloc:bb.a
  %i.m = add i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.m, i1 true) ; 3 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = sub nuw nsw i64 60, %i.n
  %i.q = ashr exact i64 -1152921504606846976, %i.n
  %i.r = add nsw i64 %.0, -1
end_hunk_2
begin_hunk_3_@je_bootstrap_malloc:bb.a
  %i.t = lshr i64 %i.s, %i.p
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 3
  %1 = shl nuw nsw i32 %i.o, 2
  %reass.sub = sub nsw i32 %i.v, %1
  %2 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.j, %bb.d ], [ %2, %bb.f ], [ 235, %bb.e ]
  %i.w = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.h, !prof !11
end_hunk_3
begin_hunk_4_@je_bootstrap_calloc:bb.a
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.n, i1 true) ; 3 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = sub nuw nsw i64 60, %i.o
  %i.r = ashr exact i64 -1152921504606846976, %i.o
  %i.s = add nsw i64 %.0, -1
end_hunk_4
begin_hunk_5_@je_bootstrap_calloc:bb.a
  %i.u = lshr i64 %i.t, %i.q
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 3
  %2 = shl nuw nsw i32 %i.p, 2
  %reass.sub = sub nsw i32 %i.w, %2
  %3 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.k, %bb.d ], [ %3, %bb.f ], [ 235, %bb.e ]
  %i.x = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h, !prof !11
end_hunk_5
begin_hunk_6_@je_malloc_default:bb.a
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 3 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r
  %i.u = ashr exact i64 -1152921504606846976, %i.r
  %i.v = add nsw i64 %0, -1
end_hunk_6
begin_hunk_7_@je_malloc_default:bb.a
  %i.x = lshr i64 %i.w, %i.t
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  %4 = shl nuw nsw i32 %i.s, 2
  %reass.sub263 = sub nsw i32 %i.z, %4
  %5 = add nsw i32 %reass.sub263, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.d, %bb.b
  %.0.i50.i = phi i32 [ %i.n, %bb.b ], [ %5, %bb.d ] ; 7 uses
  %i.aa = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.aa, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i39, !prof !91

end_hunk_7
begin_hunk_8_@je_malloc_default:bb.a
  %i.di = add i64 %i.dh, -1
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.di, i1 true) ; 3 uses
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = sub nuw nsw i64 60, %i.dj
  %i.dm = ashr exact i64 -1152921504606846976, %i.dj
  %i.dn = add nsw i64 %0, -1
end_hunk_8
begin_hunk_9_@je_malloc_default:bb.a
  %i.dp = lshr i64 %i.do, %i.dl
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 3
  %6 = shl nuw nsw i32 %i.dk, 2
  %reass.sub = sub nsw i32 %i.dr, %6
  %7 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i20

sz_size2index.exit.i20:                           ; preds = %bb.aa, %bb.y
  %.0.i50.i21 = phi i32 [ %i.df, %bb.y ], [ %7, %bb.aa ] ; 7 uses
  %i.ds = icmp samesign ugt i32 %.0.i50.i21, 234
  br i1 %i.ds, label %aligned_usize_get.exit.i14.thread, label %bb.ab, !prof !117

end_hunk_9
begin_hunk_10_@je_calloc_internal:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %mul.val264, -1
end_hunk_10
begin_hunk_11_@je_calloc_internal:bb.a
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %5 = shl nuw nsw i32 %i.w, 2
  %reass.sub270 = sub nsw i32 %i.ad, %5
  %6 = add nsw i32 %reass.sub270, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %.thread
  %.0.i50.i = phi i32 [ %i.r, %.thread ], [ %6, %bb.f ] ; 7 uses
  %i.ae = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ae, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i41, !prof !91

end_hunk_11
begin_hunk_12_@je_calloc_internal:bb.a
  %i.dp = add i64 %i.do, -1
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dp, i1 true) ; 3 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = sub nuw nsw i64 60, %i.dq
  %i.dt = ashr exact i64 -1152921504606846976, %i.dq
  %i.du = add nsw i64 %mul.val, -1
end_hunk_12
begin_hunk_13_@je_calloc_internal:bb.a
  %i.dw = lshr i64 %i.dv, %i.ds
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 3
  %7 = shl nuw nsw i32 %i.dr, 2
  %reass.sub = sub nsw i32 %i.dy, %7
  %8 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i22

sz_size2index.exit.i22:                           ; preds = %bb.ae, %.thread224
  %.0.i50.i23 = phi i32 [ %i.dm, %.thread224 ], [ %8, %bb.ae ] ; 7 uses
  %i.dz = icmp samesign ugt i32 %.0.i50.i23, 234
  br i1 %i.dz, label %aligned_usize_get.exit.i16.thread, label %bb.af, !prof !117

end_hunk_13
begin_hunk_14_@je_mallocx:bb.a
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af
  %i.ai = ashr exact i64 -1152921504606846976, %i.af
  %i.aj = add nsw i64 %0, -1
end_hunk_14
begin_hunk_15_@je_mallocx:bb.a
  %i.al = lshr i64 %i.ak, %i.ah
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  %4 = shl nuw nsw i32 %i.ag, 2
  %reass.sub295 = sub nsw i32 %i.an, %4
  %5 = add nsw i32 %reass.sub295, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.ab, %bb.g ], [ %5, %bb.i ] ; 3 uses
  %i.ao = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ao, label %imalloc.exit, label %aligned_usize_get.exit.i.thread217, !prof !91

end_hunk_15
begin_hunk_16_@je_mallocx:bb.a
  %i.ge = add i64 %i.gd, -1
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ge, i1 true) ; 3 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = sub nuw nsw i64 60, %i.gf
  %i.gi = ashr exact i64 -1152921504606846976, %i.gf
  %i.gj = add nsw i64 %0, -1
end_hunk_16
begin_hunk_17_@je_mallocx:bb.a
  %i.gl = lshr i64 %i.gk, %i.gh
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 3
  %6 = shl nuw nsw i32 %i.gg, 2
  %reass.sub = sub nsw i32 %i.gn, %6
  %7 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.ba, %bb.ay
  %.0.i50.i29 = phi i32 [ %i.gb, %bb.ay ], [ %7, %bb.ba ] ; 3 uses
  %i.go = icmp samesign ugt i32 %.0.i50.i29, 234
  br i1 %i.go, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread249, !prof !91

end_hunk_17
begin_hunk_18_@do_rallocx:bb.a
  %i.ff = add i64 %i.fe, -1
  %i.fg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ff, i1 true) ; 3 uses
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = sub nuw nsw i64 60, %i.fg
  %i.fj = ashr exact i64 -1152921504606846976, %i.fg
  %i.fk = add nsw i64 %i.ao, -1
end_hunk_18
begin_hunk_19_@do_rallocx:bb.a
  %i.fm = lshr i64 %i.fl, %i.fi
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i32 %i.fn, 3
  %12 = shl nuw nsw i32 %i.fh, 2
  %reass.sub = sub nsw i32 %i.fo, %12
  %13 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
  %.0.i.i84 = phi i32 [ %i.fc, %bb.ab ], [ %13, %bb.ad ] ; 4 uses
  %i.fp = icmp samesign ult i32 %.0.i.i84, 39
  br i1 %i.fp, label %bb.ae, label %sz_size2index.exit.i.thread, !prof !150

end_hunk_19
begin_hunk_20_@do_rallocx:bb.a

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  %i.gp = zext nneg i32 %.0.i.i84114 to i64       ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gp ; 6 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !92 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
end_hunk_20
begin_hunk_21_@je_realloc_internal:bb.a
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i64 60, %i.x
  %i.aa = ashr exact i64 -1152921504606846976, %i.x
  %i.ab = add nsw i64 %1, -1
end_hunk_21
begin_hunk_22_@je_realloc_internal:bb.a
  %i.ad = lshr i64 %i.ac, %i.z
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 3
  %6 = shl nuw nsw i32 %i.y, 2
  %reass.sub287 = sub nsw i32 %i.af, %6
  %7 = add nsw i32 %reass.sub287, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.h, %bb.f
  %.0.i50.i = phi i32 [ %i.t, %bb.f ], [ %7, %bb.h ] ; 7 uses
  %i.ag = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ag, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i62, !prof !117

end_hunk_22
begin_hunk_23_@je_realloc_internal:bb.a
  %i.do = add i64 %i.dn, -1
  %i.dp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.do, i1 true) ; 3 uses
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = sub nuw nsw i64 60, %i.dp
  %i.ds = ashr exact i64 -1152921504606846976, %i.dp
  %i.dt = add nsw i64 %1, -1
end_hunk_23
begin_hunk_24_@je_realloc_internal:bb.a
  %i.dv = lshr i64 %i.du, %i.dr
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = and i32 %i.dw, 3
  %8 = shl nuw nsw i32 %i.dq, 2
  %reass.sub = sub nsw i32 %i.dx, %8
  %9 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i43

sz_size2index.exit.i43:                           ; preds = %bb.ae, %bb.ac
  %.0.i50.i44 = phi i32 [ %i.dl, %bb.ac ], [ %9, %bb.ae ] ; 7 uses
  %i.dy = icmp samesign ugt i32 %.0.i50.i44, 234
  br i1 %i.dy, label %aligned_usize_get.exit.i37.thread, label %bb.af, !prof !151

end_hunk_24
begin_hunk_25_@je_sdallocx_default:bb.a
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 3 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub nuw nsw i64 60, %i.cl
  %i.co = ashr exact i64 -1152921504606846976, %i.cl
  %i.cp = add nsw i64 %storemerge.i, -1
end_hunk_25
begin_hunk_26_@je_sdallocx_default:bb.a
  %i.cr = lshr i64 %i.cq, %i.cn
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 3
  %7 = shl nuw nsw i32 %i.cm, 2
  %reass.sub88 = sub nsw i32 %i.ct, %7
  %8 = add nsw i32 %reass.sub88, 232
  br label %sz_size2index.exit.i36

sz_size2index.exit.i36:                           ; preds = %bb.w, %.thread74
  %.0.i.i37 = phi i32 [ %i.ci, %.thread74 ], [ %8, %bb.w ] ; 4 uses
  %i.cu = icmp samesign ult i32 %.0.i.i37, 39
  br i1 %i.cu, label %bb.x, label %sz_size2index.exit.i36.thread, !prof !150

end_hunk_26
begin_hunk_27_@je_sdallocx_default:bb.a

bb.ab:                                            ; preds = %sz_size2index.exit.i36.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i90, i64 8
  %i.du = zext nneg i32 %.0.i.i3776 to i64        ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.du ; 6 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !92 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
end_hunk_27
begin_hunk_28_@je_sdallocx_default:bb.a
  %i.ft = add i64 %i.fs, -1
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ft, i1 true) ; 3 uses
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = sub nuw nsw i64 60, %i.fu
  %i.fx = ashr exact i64 -1152921504606846976, %i.fu
  %i.fy = add nsw i64 %storemerge.i, -1
end_hunk_28
begin_hunk_29_@je_sdallocx_default:bb.a
  %i.ga = lshr i64 %i.fz, %i.fw
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = and i32 %i.gb, 3
  %9 = shl nuw nsw i32 %i.fv, 2
  %reass.sub = sub nsw i32 %i.gc, %9
  %10 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.aj, %bb.ah
  %.0.i.i35 = phi i32 [ %i.fr, %bb.ah ], [ %10, %bb.aj ] ; 4 uses
  %i.gd = icmp samesign ult i32 %.0.i.i35, 39
  br i1 %i.gd, label %bb.ak, label %sz_size2index.exit.i.thread, !prof !150

end_hunk_29
begin_hunk_30_@je_sdallocx_default:bb.a

bb.ao:                                            ; preds = %sz_size2index.exit.i.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i87, i64 8
  %i.hd = zext nneg i32 %.0.i.i3580 to i64        ; 2 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hd ; 6 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !92 ; 2 uses
  %i.hg = ptrtoint ptr %i.hf to i64
end_hunk_30
begin_hunk_31_@je_batch_alloc:bb.a
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = ashr exact i64 -1152921504606846976, %i.bx
  %i.cb = add nsw i64 %storemerge.i, -1
end_hunk_31
begin_hunk_32_@je_batch_alloc:bb.a
  %i.cd = lshr i64 %i.cc, %i.bz
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %5 = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cf, %5
  %6 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i118 = phi i32 [ %i.bu, %bb.o ], [ %6, %sz_size2index_compute.exit ] ; 4 uses
  %i.cg = and i32 %3, 64
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.cj = trunc nuw i8 %i.ci to i1
  %.0.i116 = or i1 %i.ch, %i.cj                   ; 2 uses
  %i.ck = zext nneg i32 %.0.i118 to i64           ; 3 uses
  %i.cl = icmp samesign ugt i32 %.0.i118, 38      ; 2 uses
  br i1 %i.cl, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %sz_size2index.exit
end_hunk_32
begin_hunk_33_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
end_hunk_33
begin_hunk_34_@arena_sdalloc_no_tcache:bb.a
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %3 = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %3
  %4 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %4, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 39
  br i1 %i.s, label %bb.e, label %sz_size2index.exit.thread, !prof !150

end_hunk_34
