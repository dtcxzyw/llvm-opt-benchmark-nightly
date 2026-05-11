inline.NumInlined: 641
inline.NumDeleted: 71
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
  %i.v = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@duckdb_je_malloc_default:bb.a
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 3 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r
  %i.u = ashr exact i64 -1152921504606846976, %i.r
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
  %i.dp = add i64 %i.do, -1
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dp, i1 true) ; 3 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = sub nuw nsw i64 60, %i.dq
  %i.dt = ashr exact i64 -1152921504606846976, %i.dq
  %i.du = add nsw i64 %0, -1
end_hunk_4
begin_hunk_5_@duckdb_je_malloc_default:bb.a
  %i.dw = lshr i64 %i.dv, %i.ds
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 3
  %4 = shl nuw nsw i32 %i.dr, 2
  %reass.sub = sub nsw i32 %i.dy, %4
  %i.dz = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i19

sz_size2index.exit.i19:                           ; preds = %bb.ac, %bb.aa
end_hunk_5
begin_hunk_6_@duckdb_je_calloc:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
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
  %i.dx = add i64 %i.dw, -1
  %i.dy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dx, i1 true) ; 3 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = sub nuw nsw i64 60, %i.dy
  %i.eb = ashr exact i64 -1152921504606846976, %i.dy
  %i.ec = add nsw i64 %mul.val, -1
end_hunk_8
begin_hunk_9_@duckdb_je_calloc:bb.a
  %i.ee = lshr i64 %i.ed, %i.ea
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 3
  %5 = shl nuw nsw i32 %i.dz, 2
  %reass.sub = sub nsw i32 %i.eg, %5
  %i.eh = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i21

sz_size2index.exit.i21:                           ; preds = %bb.ag, %.thread236
end_hunk_9
begin_hunk_10_@duckdb_je_mallocx:bb.a
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af
  %i.ai = ashr exact i64 -1152921504606846976, %i.af
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
  %i.gm = add i64 %i.gl, -1
  %i.gn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gm, i1 true) ; 3 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = sub nuw nsw i64 60, %i.gn
  %i.gq = ashr exact i64 -1152921504606846976, %i.gn
  %i.gr = add nsw i64 %0, -1
end_hunk_12
begin_hunk_13_@duckdb_je_mallocx:bb.a
  %i.gt = lshr i64 %i.gs, %i.gp
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 3
  %5 = shl nuw nsw i32 %i.go, 2
  %reass.sub = sub nsw i32 %i.gv, %5
  %i.gw = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.bc, %bb.ba
end_hunk_13
begin_hunk_14_@do_rallocx:bb.a
  %i.fg = add i64 %i.ff, -1
  %i.fh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fg, i1 true) ; 3 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = sub nuw nsw i64 60, %i.fh
  %i.fk = ashr exact i64 -1152921504606846976, %i.fh
  %i.fl = add nsw i64 %i.ao, -1
end_hunk_14
begin_hunk_15_@do_rallocx:bb.a
  %i.fn = lshr i64 %i.fm, %i.fj
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, 3
  %10 = shl nuw nsw i32 %i.fi, 2
  %reass.sub = sub nsw i32 %i.fp, %10
  %i.fq = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ad, %bb.ab
end_hunk_15
begin_hunk_16_@do_rallocx:bb.a

bb.ai:                                            ; preds = %sz_size2index.exit.i.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i105, i64 8
  %i.gr = zext nneg i32 %.0.i.i77113 to i64
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gr ; 7 uses
  %.val83 = load ptr, ptr %i.gs, align 8, !tbaa !86 ; 3 uses
  %i.gt = icmp eq ptr %.val83, @duckdb_je_disabled_bin
end_hunk_16
begin_hunk_17_@duckdb_je_realloc:bb.a
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i64 60, %i.x
  %i.aa = ashr exact i64 -1152921504606846976, %i.x
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
  %i.dv = add i64 %i.du, -1
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dv, i1 true) ; 3 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = sub nuw nsw i64 60, %i.dw
  %i.dz = ashr exact i64 -1152921504606846976, %i.dw
  %i.ea = add nsw i64 %1, -1
end_hunk_19
begin_hunk_20_@duckdb_je_realloc:bb.a
  %i.ec = lshr i64 %i.eb, %i.dy
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 3
  %5 = shl nuw nsw i32 %i.dx, 2
  %reass.sub = sub nsw i32 %i.ee, %5
  %i.ef = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i32

sz_size2index.exit.i32:                           ; preds = %bb.ag, %bb.ae
end_hunk_20
begin_hunk_21_@duckdb_je_sdallocx_default:bb.a
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 3 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub nuw nsw i64 60, %i.cl
  %i.co = ashr exact i64 -1152921504606846976, %i.cl
  %i.cp = add nsw i64 %storemerge.i, -1
end_hunk_21
begin_hunk_22_@duckdb_je_sdallocx_default:bb.a
  %i.cr = lshr i64 %i.cq, %i.cn
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 3
  %7 = shl nuw nsw i32 %i.cm, 2
  %reass.sub100 = sub nsw i32 %i.ct, %7
  %i.cu = add nsw i32 %reass.sub100, 229
  br label %sz_size2index.exit.i36

sz_size2index.exit.i36:                           ; preds = %bb.w, %.thread86
end_hunk_22
begin_hunk_23_@duckdb_je_sdallocx_default:bb.a

bb.ab:                                            ; preds = %sz_size2index.exit.i36.thread
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i102, i64 8
  %i.dv = zext nneg i32 %.0.i.i3788 to i64
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dv ; 7 uses
  %.val54 = load ptr, ptr %i.dw, align 8, !tbaa !86 ; 3 uses
  %i.dx = icmp eq ptr %.val54, @duckdb_je_disabled_bin
end_hunk_23
begin_hunk_24_@duckdb_je_sdallocx_default:bb.a
  %i.fs = add i64 %i.fr, -1
  %i.ft = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.fs, i1 true) ; 3 uses
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = sub nuw nsw i64 60, %i.ft
  %i.fw = ashr exact i64 -1152921504606846976, %i.ft
  %i.fx = add nsw i64 %storemerge.i, -1
end_hunk_24
begin_hunk_25_@duckdb_je_sdallocx_default:bb.a
  %i.fz = lshr i64 %i.fy, %i.fv
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 3
  %8 = shl nuw nsw i32 %i.fu, 2
  %reass.sub = sub nsw i32 %i.gb, %8
  %i.gc = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ak, %bb.ai
end_hunk_25
begin_hunk_26_@duckdb_je_sdallocx_default:bb.a

bb.ap:                                            ; preds = %sz_size2index.exit.i.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i99, i64 8
  %i.hd = zext nneg i32 %.0.i.i3592 to i64
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hd ; 7 uses
  %.val56 = load ptr, ptr %i.he, align 8, !tbaa !86 ; 3 uses
  %i.hf = icmp eq ptr %.val56, @duckdb_je_disabled_bin
end_hunk_26
begin_hunk_27_@duckdb_je_batch_alloc:bb.a
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = ashr exact i64 -1152921504606846976, %i.bx
  %i.cb = add nsw i64 %storemerge.i, -1
end_hunk_27
begin_hunk_28_@duckdb_je_batch_alloc:bb.a
  %i.cd = lshr i64 %i.cc, %i.bz
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %5 = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cf, %5
  %i.cg = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
end_hunk_28
begin_hunk_29_@duckdb_je_batch_alloc:bb.a
  %i.ck = trunc nuw i8 %i.cj to i1
  %.0.i124 = or i1 %i.ci, %i.ck                   ; 2 uses
  %i.cl = zext nneg i32 %.0.i126 to i64           ; 2 uses
  %i.cm = icmp samesign ugt i32 %.0.i126, 35      ; 2 uses
  br i1 %i.cm, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %sz_size2index.exit
end_hunk_29
begin_hunk_30_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = ashr exact i64 -1152921504606846976, %i.j
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
