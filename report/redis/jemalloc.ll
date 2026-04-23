inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@a0ialloc:bb.a
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %i.p = shl nsw i64 -1, %i.o
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
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.m, i1 true) ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = sub nuw nsw i64 60, %i.n                 ; 2 uses
  %i.q = shl nsw i64 -1, %i.p
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
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = sub nuw nsw i64 60, %i.o                 ; 2 uses
  %i.r = shl nsw i64 -1, %i.q
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
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r                 ; 2 uses
  %i.u = shl nsw i64 -1, %i.t
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
  %i.dj = add i64 %i.di, -1
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dj, i1 true) ; 2 uses
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = sub nuw nsw i64 60, %i.dk               ; 2 uses
  %i.dn = shl nsw i64 -1, %i.dm
  %i.do = add nsw i64 %0, -1
end_hunk_8
begin_hunk_9_@je_malloc_default:bb.a
  %i.dq = lshr i64 %i.dp, %i.dm
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 3
  %6 = shl nuw nsw i32 %i.dl, 2
  %reass.sub = sub nsw i32 %i.ds, %6
  %7 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i20

sz_size2index.exit.i20:                           ; preds = %bb.aa, %bb.y
  %.0.i50.i21 = phi i32 [ %i.dg, %bb.y ], [ %7, %bb.aa ] ; 7 uses
  %i.dt = icmp samesign ugt i32 %.0.i50.i21, 234
  br i1 %i.dt, label %aligned_usize_get.exit.i14.thread, label %bb.ab, !prof !117

end_hunk_9
begin_hunk_10_@je_calloc_internal:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v                 ; 2 uses
  %i.y = shl nsw i64 -1, %i.x
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
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = sub nuw nsw i64 60, %i.dr               ; 2 uses
  %i.du = shl nsw i64 -1, %i.dt
  %i.dv = add nsw i64 %mul.val, -1
end_hunk_12
begin_hunk_13_@je_calloc_internal:bb.a
  %i.dx = lshr i64 %i.dw, %i.dt
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3
  %7 = shl nuw nsw i32 %i.ds, 2
  %reass.sub = sub nsw i32 %i.dz, %7
  %8 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i22

sz_size2index.exit.i22:                           ; preds = %bb.ae, %.thread224
  %.0.i50.i23 = phi i32 [ %i.dn, %.thread224 ], [ %8, %bb.ae ] ; 7 uses
  %i.ea = icmp samesign ugt i32 %.0.i50.i23, 234
  br i1 %i.ea, label %aligned_usize_get.exit.i16.thread, label %bb.af, !prof !117

end_hunk_13
begin_hunk_14_@je_mallocx:bb.a
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af               ; 2 uses
  %i.ai = shl nsw i64 -1, %i.ah
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
  %i.gh = add i64 %i.gg, -1
  %i.gi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gh, i1 true) ; 2 uses
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = sub nuw nsw i64 60, %i.gi               ; 2 uses
  %i.gl = shl nsw i64 -1, %i.gk
  %i.gm = add nsw i64 %0, -1
end_hunk_16
begin_hunk_17_@je_mallocx:bb.a
  %i.go = lshr i64 %i.gn, %i.gk
  %i.gp = trunc i64 %i.go to i32
  %i.gq = and i32 %i.gp, 3
  %6 = shl nuw nsw i32 %i.gj, 2
  %reass.sub = sub nsw i32 %i.gq, %6
  %7 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.ba, %bb.ay
  %.0.i50.i29 = phi i32 [ %i.ge, %bb.ay ], [ %7, %bb.ba ] ; 3 uses
  %i.gr = icmp samesign ugt i32 %.0.i50.i29, 234
  br i1 %i.gr, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread249, !prof !91

end_hunk_17
begin_hunk_18_@do_rallocx:bb.a
  %i.fk = add i64 %i.fj, -1
  %i.fl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fk, i1 true) ; 2 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = sub nuw nsw i64 60, %i.fl               ; 2 uses
  %i.fo = shl nsw i64 -1, %i.fn
  %i.fp = add nsw i64 %i.ao, -1
end_hunk_18
begin_hunk_19_@do_rallocx:bb.a
  %i.fr = lshr i64 %i.fq, %i.fn
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = and i32 %i.fs, 3
  %12 = shl nuw nsw i32 %i.fm, 2
  %reass.sub = sub nsw i32 %i.ft, %12
  %13 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
  %.0.i.i84 = phi i32 [ %i.fh, %bb.ab ], [ %13, %bb.ad ] ; 4 uses
  %i.fu = icmp samesign ult i32 %.0.i.i84, 39
  br i1 %i.fu, label %bb.ae, label %sz_size2index.exit.i.thread, !prof !150

end_hunk_19
begin_hunk_20_@do_rallocx:bb.a

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  %i.gu = zext nneg i32 %.0.i.i84114 to i64       ; 2 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gu ; 6 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !92 ; 2 uses
  %i.gx = ptrtoint ptr %i.gw to i64
end_hunk_20
begin_hunk_21_@je_realloc_internal:bb.a
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i64 60, %i.x                 ; 2 uses
  %i.aa = shl nsw i64 -1, %i.z
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
  %i.dp = add i64 %i.do, -1
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dp, i1 true) ; 2 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = sub nuw nsw i64 60, %i.dq               ; 2 uses
  %i.dt = shl nsw i64 -1, %i.ds
  %i.du = add nsw i64 %1, -1
end_hunk_23
begin_hunk_24_@je_realloc_internal:bb.a
  %i.dw = lshr i64 %i.dv, %i.ds
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 3
  %8 = shl nuw nsw i32 %i.dr, 2
  %reass.sub = sub nsw i32 %i.dy, %8
  %9 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i43

sz_size2index.exit.i43:                           ; preds = %bb.ae, %bb.ac
  %.0.i50.i44 = phi i32 [ %i.dm, %bb.ac ], [ %9, %bb.ae ] ; 7 uses
  %i.dz = icmp samesign ugt i32 %.0.i50.i44, 234
  br i1 %i.dz, label %aligned_usize_get.exit.i37.thread, label %bb.af, !prof !151

end_hunk_24
begin_hunk_25_@je_sdallocx_default:bb.a
  %i.cn = add i64 %i.cm, -1
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cn, i1 true) ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = sub nuw nsw i64 60, %i.co               ; 2 uses
  %i.cr = shl nsw i64 -1, %i.cq
  %i.cs = add nsw i64 %storemerge.i, -1
end_hunk_25
begin_hunk_26_@je_sdallocx_default:bb.a
  %i.cu = lshr i64 %i.ct, %i.cq
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 3
  %7 = shl nuw nsw i32 %i.cp, 2
  %reass.sub88 = sub nsw i32 %i.cw, %7
  %8 = add nsw i32 %reass.sub88, 232
  br label %sz_size2index.exit.i36

sz_size2index.exit.i36:                           ; preds = %bb.w, %.thread74
  %.0.i.i37 = phi i32 [ %i.cl, %.thread74 ], [ %8, %bb.w ] ; 4 uses
  %i.cx = icmp samesign ult i32 %.0.i.i37, 39
  br i1 %i.cx, label %bb.x, label %sz_size2index.exit.i36.thread, !prof !150

end_hunk_26
begin_hunk_27_@je_sdallocx_default:bb.a

bb.ab:                                            ; preds = %sz_size2index.exit.i36.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i90, i64 8
  %i.dx = zext nneg i32 %.0.i.i3776 to i64        ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx ; 6 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !92 ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
end_hunk_27
begin_hunk_28_@je_sdallocx_default:bb.a
  %i.fw = add i64 %i.fv, -1
  %i.fx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fw, i1 true) ; 2 uses
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = sub nuw nsw i64 60, %i.fx               ; 2 uses
  %i.ga = shl nsw i64 -1, %i.fz
  %i.gb = add nsw i64 %storemerge.i, -1
end_hunk_28
begin_hunk_29_@je_sdallocx_default:bb.a
  %i.gd = lshr i64 %i.gc, %i.fz
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = and i32 %i.ge, 3
  %9 = shl nuw nsw i32 %i.fy, 2
  %reass.sub = sub nsw i32 %i.gf, %9
  %10 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.aj, %bb.ah
  %.0.i.i35 = phi i32 [ %i.fu, %bb.ah ], [ %10, %bb.aj ] ; 4 uses
  %i.gg = icmp samesign ult i32 %.0.i.i35, 39
  br i1 %i.gg, label %bb.ak, label %sz_size2index.exit.i.thread, !prof !150

end_hunk_29
begin_hunk_30_@je_sdallocx_default:bb.a

bb.ao:                                            ; preds = %sz_size2index.exit.i.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i87, i64 8
  %i.hg = zext nneg i32 %.0.i.i3580 to i64        ; 2 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.hg ; 6 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !92 ; 2 uses
  %i.hj = ptrtoint ptr %i.hi to i64
end_hunk_30
begin_hunk_31_@je_batch_alloc:bb.a
  %i.bz = add i64 %i.by, -1
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bz, i1 true) ; 2 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = sub nuw nsw i64 60, %i.ca               ; 2 uses
  %i.cd = shl nsw i64 -1, %i.cc
  %i.ce = add nsw i64 %storemerge.i, -1
end_hunk_31
begin_hunk_32_@je_batch_alloc:bb.a
  %i.cg = lshr i64 %i.cf, %i.cc
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 3
  %5 = shl nuw nsw i32 %i.cb, 2
  %reass.sub = sub nsw i32 %i.ci, %5
  %6 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i118 = phi i32 [ %i.bx, %bb.o ], [ %6, %sz_size2index_compute.exit ] ; 4 uses
  %i.cj = and i32 %3, 64
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.cm = trunc nuw i8 %i.cl to i1
  %.0.i116 = or i1 %i.ck, %i.cm                   ; 2 uses
  %i.cn = zext nneg i32 %.0.i118 to i64           ; 3 uses
  %i.co = icmp samesign ugt i32 %.0.i118, 38      ; 2 uses
  br i1 %i.co, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %sz_size2index.exit
end_hunk_32
begin_hunk_33_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %i.m = shl nsw i64 -1, %i.l
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
