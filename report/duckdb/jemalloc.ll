inline.NumInlined: 641
inline.NumDeleted: 71
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
  %i.v = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@duckdb_je_malloc_default:bb.a
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r                 ; 2 uses
  %i.u = shl nsw i64 -1, %i.t
  %i.v = add nsw i64 %0, -1
end_hunk_2
begin_hunk_3_@duckdb_je_malloc_default:bb.a
  %i.x = lshr i64 %i.w, %i.t
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  %3 = shl nuw nsw i32 %i.s, 2
  %reass.sub272 = sub nsw i32 %i.z, %3
  %i.aa = add nsw i32 %reass.sub272, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.d, %bb.b
end_hunk_3
begin_hunk_4_@duckdb_je_malloc_default:bb.a
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = sub nuw nsw i64 60, %i.dr               ; 2 uses
  %i.du = shl nsw i64 -1, %i.dt
  %i.dv = add nsw i64 %0, -1
end_hunk_4
begin_hunk_5_@duckdb_je_malloc_default:bb.a
  %i.dx = lshr i64 %i.dw, %i.dt
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3
  %4 = shl nuw nsw i32 %i.ds, 2
  %reass.sub = sub nsw i32 %i.dz, %4
  %i.ea = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i19

sz_size2index.exit.i19:                           ; preds = %bb.ac, %bb.aa
end_hunk_5
begin_hunk_6_@duckdb_je_calloc:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v                 ; 2 uses
  %i.y = shl nsw i64 -1, %i.x
  %i.z = add nsw i64 %mul.val274, -1
end_hunk_6
begin_hunk_7_@duckdb_je_calloc:bb.a
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %4 = shl nuw nsw i32 %i.w, 2
  %reass.sub281 = sub nsw i32 %i.ad, %4
  %i.ae = add nsw i32 %reass.sub281, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %.thread
end_hunk_7
begin_hunk_8_@duckdb_je_calloc:bb.a
  %i.dy = add i64 %i.dx, -1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = sub nuw nsw i64 60, %i.dz               ; 2 uses
  %i.ec = shl nsw i64 -1, %i.eb
  %i.ed = add nsw i64 %mul.val, -1
end_hunk_8
begin_hunk_9_@duckdb_je_calloc:bb.a
  %i.ef = lshr i64 %i.ee, %i.eb
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 3
  %5 = shl nuw nsw i32 %i.ea, 2
  %reass.sub = sub nsw i32 %i.eh, %5
  %i.ei = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i21

sz_size2index.exit.i21:                           ; preds = %bb.ag, %.thread236
end_hunk_9
begin_hunk_10_@duckdb_je_mallocx:bb.a
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af               ; 2 uses
  %i.ai = shl nsw i64 -1, %i.ah
  %i.aj = add nsw i64 %0, -1
end_hunk_10
begin_hunk_11_@duckdb_je_mallocx:bb.a
  %i.al = lshr i64 %i.ak, %i.ah
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  %4 = shl nuw nsw i32 %i.ag, 2
  %reass.sub310 = sub nsw i32 %i.an, %4
  %i.ao = add nsw i32 %reass.sub310, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
end_hunk_11
begin_hunk_12_@duckdb_je_mallocx:bb.a
  %i.gp = add i64 %i.go, -1
  %i.gq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gp, i1 true) ; 2 uses
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = sub nuw nsw i64 60, %i.gq               ; 2 uses
  %i.gt = shl nsw i64 -1, %i.gs
  %i.gu = add nsw i64 %0, -1
end_hunk_12
begin_hunk_13_@duckdb_je_mallocx:bb.a
  %i.gw = lshr i64 %i.gv, %i.gs
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = and i32 %i.gx, 3
  %5 = shl nuw nsw i32 %i.gr, 2
  %reass.sub = sub nsw i32 %i.gy, %5
  %i.gz = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.bc, %bb.ba
end_hunk_13
begin_hunk_14_@do_rallocx:bb.a
  %i.fl = add i64 %i.fk, -1
  %i.fm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fl, i1 true) ; 2 uses
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = sub nuw nsw i64 60, %i.fm               ; 2 uses
  %i.fp = shl nsw i64 -1, %i.fo
  %i.fq = add nsw i64 %i.ao, -1
end_hunk_14
begin_hunk_15_@do_rallocx:bb.a
  %i.fs = lshr i64 %i.fr, %i.fo
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 3
  %10 = shl nuw nsw i32 %i.fn, 2
  %reass.sub = sub nsw i32 %i.fu, %10
  %i.fv = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
end_hunk_15
begin_hunk_16_@do_rallocx:bb.a

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i105, i64 8
  %i.gw = zext nneg i32 %.0.i.i77113 to i64
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.gw ; 7 uses
  %.val83 = load ptr, ptr %i.gx, align 8, !tbaa !86 ; 3 uses
  %i.gy = icmp eq ptr %.val83, @duckdb_je_disabled_bin
end_hunk_16
begin_hunk_17_@duckdb_je_realloc:bb.a
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i64 60, %i.x                 ; 2 uses
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = add nsw i64 %1, -1
end_hunk_17
begin_hunk_18_@duckdb_je_realloc:bb.a
  %i.ad = lshr i64 %i.ac, %i.z
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 3
  %4 = shl nuw nsw i32 %i.y, 2
  %reass.sub286 = sub nsw i32 %i.af, %4
  %i.ag = add nsw i32 %reass.sub286, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.h, %bb.f
end_hunk_18
begin_hunk_19_@duckdb_je_realloc:bb.a
  %i.dw = add i64 %i.dv, -1
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dw, i1 true) ; 2 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = sub nuw nsw i64 60, %i.dx               ; 2 uses
  %i.ea = shl nsw i64 -1, %i.dz
  %i.eb = add nsw i64 %1, -1
end_hunk_19
begin_hunk_20_@duckdb_je_realloc:bb.a
  %i.ed = lshr i64 %i.ec, %i.dz
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 3
  %5 = shl nuw nsw i32 %i.dy, 2
  %reass.sub = sub nsw i32 %i.ef, %5
  %i.eg = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i32

sz_size2index.exit.i32:                           ; preds = %bb.ag, %bb.ae
end_hunk_20
begin_hunk_21_@duckdb_je_sdallocx_default:bb.a
  %i.cn = add i64 %i.cm, -1
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cn, i1 true) ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = sub nuw nsw i64 60, %i.co               ; 2 uses
  %i.cr = shl nsw i64 -1, %i.cq
  %i.cs = add nsw i64 %storemerge.i, -1
end_hunk_21
begin_hunk_22_@duckdb_je_sdallocx_default:bb.a
  %i.cu = lshr i64 %i.ct, %i.cq
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 3
  %7 = shl nuw nsw i32 %i.cp, 2
  %reass.sub100 = sub nsw i32 %i.cw, %7
  %i.cx = add nsw i32 %reass.sub100, 229
  br label %sz_size2index.exit.i36

sz_size2index.exit.i36:                           ; preds = %bb.w, %.thread86
end_hunk_22
begin_hunk_23_@duckdb_je_sdallocx_default:bb.a

bb.ab:                                            ; preds = %sz_size2index.exit.i36.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i102, i64 8
  %i.dy = zext nneg i32 %.0.i.i3788 to i64
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dy ; 7 uses
  %.val54 = load ptr, ptr %i.dz, align 8, !tbaa !86 ; 3 uses
  %i.ea = icmp eq ptr %.val54, @duckdb_je_disabled_bin
end_hunk_23
begin_hunk_24_@duckdb_je_sdallocx_default:bb.a
  %i.fv = add i64 %i.fu, -1
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fv, i1 true) ; 2 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = sub nuw nsw i64 60, %i.fw               ; 2 uses
  %i.fz = shl nsw i64 -1, %i.fy
  %i.ga = add nsw i64 %storemerge.i, -1
end_hunk_24
begin_hunk_25_@duckdb_je_sdallocx_default:bb.a
  %i.gc = lshr i64 %i.gb, %i.fy
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 3
  %8 = shl nuw nsw i32 %i.fx, 2
  %reass.sub = sub nsw i32 %i.ge, %8
  %i.gf = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ak, %bb.ai
end_hunk_25
begin_hunk_26_@duckdb_je_sdallocx_default:bb.a

bb.ap:                                            ; preds = %sz_size2index.exit.i.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i99, i64 8
  %i.hg = zext nneg i32 %.0.i.i3592 to i64
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  %.val56 = load ptr, ptr %i.hh, align 8, !tbaa !86 ; 3 uses
  %i.hi = icmp eq ptr %.val56, @duckdb_je_disabled_bin
end_hunk_26
begin_hunk_27_@duckdb_je_batch_alloc:bb.a
  %i.bz = add i64 %i.by, -1
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bz, i1 true) ; 2 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = sub nuw nsw i64 60, %i.ca               ; 2 uses
  %i.cd = shl nsw i64 -1, %i.cc
  %i.ce = add nsw i64 %storemerge.i, -1
end_hunk_27
begin_hunk_28_@duckdb_je_batch_alloc:bb.a
  %i.cg = lshr i64 %i.cf, %i.cc
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 3
  %5 = shl nuw nsw i32 %i.cb, 2
  %reass.sub = sub nsw i32 %i.ci, %5
  %i.cj = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
end_hunk_28
begin_hunk_29_@duckdb_je_batch_alloc:bb.a
  %i.cn = trunc nuw i8 %i.cm to i1
  %.0.i124 = or i1 %i.cl, %i.cn                   ; 2 uses
  %i.co = zext nneg i32 %.0.i126 to i64           ; 2 uses
  %i.cp = icmp samesign ugt i32 %.0.i126, 35      ; 2 uses
  br i1 %i.cp, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %sz_size2index.exit
end_hunk_29
begin_hunk_30_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %i.m = shl nsw i64 -1, %i.l
  %i.n = add nsw i64 %2, -1
end_hunk_30
begin_hunk_31_@arena_sdalloc_no_tcache:bb.a
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %3 = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %3
  %i.s = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
end_hunk_31
