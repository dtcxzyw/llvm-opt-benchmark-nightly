Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH3_64bits_update:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !21 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !21
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !21 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !21
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !21
  %i.fx = add nuw i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !21 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !21
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 64, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 17 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !41 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg = add i64 %i.gy, 1
  %xtraiter113 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg
  br i1 %i.he, label %.epil.preheader112, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter119 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph33.new ], [ %niter120.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !21 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !21
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !21
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !21 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !21
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !21
  %i.ij = add nuw nsw i64 %.0.i432, 2             ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod116.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod116.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader112

.epil.preheader112:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init115 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !21 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !21
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init115, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader112, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader112 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !36
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !21
  store i64 0, ptr %i.gx, align 8, !tbaa !41
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter122 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1                    ; 0 uses
  %unroll_iter128 = and i64 %i.gm, -2
  %lcmp.mod125.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod127 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  switch i64 %i.gm, label %.lr.ph36 [
    i64 0, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
    i64 1, label %.epil.preheader121
  ]

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter131 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader130, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter136 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36.new, %.lr.ph36
  %i.jt = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %.lr.ph36.new ]
  %.0.i235 = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %.lr.ph36.new ] ; 4 uses
  %niter129 = phi i64 [ 0, %.lr.ph36 ], [ %niter129.next.1, %.lr.ph36.new ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
  %i.jx = shl i64 %.0.i235, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jx
  %i.jz = load <8 x i64>, ptr %i.jv, align 1, !tbaa !21 ; 2 uses
  %i.ka = load <8 x i64>, ptr %i.jy, align 1, !tbaa !21
  %i.kb = xor <8 x i64> %i.ka, %i.jz              ; 2 uses
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !21
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !21 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !21
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !21
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod125.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader121

.epil.preheader121:                               ; preds = %.preheader17, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa
  %.epil.init124 = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.preheader17 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !21 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !21
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init124, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader121, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader121 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !6

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph43.new ], [ %niter137.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !21 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !21
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !21
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !21 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !21
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !21
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter137.next.1 = add nuw i64 %niter137, 2     ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod134.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod134.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader130

.epil.preheader130:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init133 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !21 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !21
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init133, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader130, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !36
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 5 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.ul, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 19 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 8 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84

.preheader84:                                     ; preds = %bb.n
  %i.on = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.on, i32 0, i32 3, i32 1)
  %i.oo = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.op = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.oq = xor <8 x i64> %i.op, %i.oo              ; 2 uses
  %i.or = lshr <8 x i64> %i.oq, splat (i64 32)
  %i.os = and <8 x i64> %i.oq, splat (i64 4294967295)
  %i.ot = mul nuw <8 x i64> %i.os, %i.or
  %i.ou = shufflevector <8 x i64> %i.oo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ov = add <8 x i64> %.promoted28, %i.ou
  %i.ow = add <8 x i64> %i.ov, %i.ot              ; 3 uses
  store <8 x i64> %i.ow, ptr %0, align 64, !tbaa !21
  %exitcond53.not = icmp eq i64 %i.ok, 1
  br i1 %exitcond53.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.1

.preheader84.1:                                   ; preds = %.preheader84
  %i.ox = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.oy, i32 0, i32 3, i32 1)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.pa = load <8 x i64>, ptr %i.ox, align 1, !tbaa !21 ; 2 uses
  %i.pb = load <8 x i64>, ptr %i.oz, align 1, !tbaa !21
  %i.pc = xor <8 x i64> %i.pb, %i.pa              ; 2 uses
  %i.pd = lshr <8 x i64> %i.pc, splat (i64 32)
  %i.pe = and <8 x i64> %i.pc, splat (i64 4294967295)
  %i.pf = mul nuw <8 x i64> %i.pe, %i.pd
  %i.pg = shufflevector <8 x i64> %i.pa, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ph = add <8 x i64> %i.ow, %i.pg
  %i.pi = add <8 x i64> %i.ph, %i.pf              ; 3 uses
  store <8 x i64> %i.pi, ptr %0, align 64, !tbaa !21
  %exitcond53.not.1 = icmp eq i64 %i.ok, 2
  br i1 %exitcond53.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.2

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pm = load <8 x i64>, ptr %i.pj, align 1, !tbaa !21 ; 2 uses
  %i.pn = load <8 x i64>, ptr %i.pl, align 1, !tbaa !21
  %i.po = xor <8 x i64> %i.pn, %i.pm              ; 2 uses
  %i.pp = lshr <8 x i64> %i.po, splat (i64 32)
  %i.pq = and <8 x i64> %i.po, splat (i64 4294967295)
  %i.pr = mul nuw <8 x i64> %i.pq, %i.pp
  %i.ps = shufflevector <8 x i64> %i.pm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pt = add <8 x i64> %i.pi, %i.ps
  %i.pu = add <8 x i64> %i.pt, %i.pr              ; 3 uses
  store <8 x i64> %i.pu, ptr %0, align 64, !tbaa !21
end_hunk_0
begin_hunk_1_@ROCKSDB_XXH3_128bits_update:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fc = load <8 x i64>, ptr %i.ez, align 64, !tbaa !21 ; 2 uses
  %i.fd = load <8 x i64>, ptr %i.fb, align 1, !tbaa !21
  %i.fe = xor <8 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = lshr <8 x i64> %i.fe, splat (i64 32)
  %i.fg = and <8 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = mul nuw <8 x i64> %i.fg, %i.ff
  %i.fi = shufflevector <8 x i64> %i.fc, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fj = add <8 x i64> %i.ey, %i.fi
  %i.fk = add <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %0, align 64, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fo = load <8 x i64>, ptr %i.fl, align 64, !tbaa !21 ; 2 uses
  %i.fp = load <8 x i64>, ptr %i.fn, align 1, !tbaa !21
  %i.fq = xor <8 x i64> %i.fp, %i.fo              ; 2 uses
  %i.fr = lshr <8 x i64> %i.fq, splat (i64 32)
  %i.fs = and <8 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = mul nuw <8 x i64> %i.fs, %i.fr
  %i.fu = shufflevector <8 x i64> %i.fo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.fv = add <8 x i64> %i.fk, %i.fu
  %i.fw = add <8 x i64> %i.fv, %i.ft
  store <8 x i64> %i.fw, ptr %0, align 64, !tbaa !21
  %i.fx = add nuw i64 %i.ah, 4
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi <8 x i64> [ %i.ct, %.lr.ph ], [ %i.eb, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ]
  %.0.i37.i1119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.fy = shl nuw nsw i64 %.0.i37.i1119.epil.init, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ga, i32 0, i32 3, i32 1)
  %i.gb = shl nuw nsw i64 %.0.i37.i1119.epil.init, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load <8 x i64>, ptr %i.fz, align 64, !tbaa !21 ; 2 uses
  %i.ge = load <8 x i64>, ptr %i.gc, align 1, !tbaa !21
  %i.gf = xor <8 x i64> %i.ge, %i.gd              ; 2 uses
  %i.gg = lshr <8 x i64> %i.gf, splat (i64 32)
  %i.gh = and <8 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = mul nuw <8 x i64> %i.gh, %i.gg
  %i.gj = shufflevector <8 x i64> %i.gd, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.gk = add <8 x i64> %.epil.init, %i.gj
  %i.gl = add <8 x i64> %i.gk, %i.gi
  store <8 x i64> %i.gl, ptr %0, align 64, !tbaa !21
  br label %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16

_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16: ; preds = %.epil.preheader, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15
  %storemerge.i13 = phi i64 [ %i.fx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i15 ], [ 0, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i10 ], [ %i.cg, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  store i64 %storemerge.i13, ptr %i.ab, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 64, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16
  %i.gm = phi i64 [ %i.ad, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %.pre, %._crit_edge ] ; 17 uses
  %.0125.i = phi ptr [ %i.aa, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit16 ], [ %1, %._crit_edge ] ; 8 uses
  %i.gn = icmp ult ptr %.0125.i, %i.c
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.gp = ptrtoint ptr %.0125.i to i64            ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = shl i64 %i.gm, 6                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gt = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gp
  %i.gw = lshr i64 %i.gv, 6                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !41 ; 5 uses
  %i.gz = icmp uge i64 %i.gm, %i.gy
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = sub nuw i64 %i.gm, %i.gy                ; 6 uses
  %i.hb = icmp ule i64 %i.ha, %i.gw
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = shl i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc ; 3 uses
  %.not46 = icmp eq i64 %i.gm, %i.gy
  %.pre60 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 3 uses
  br i1 %.not46, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %.neg = add i64 %i.gy, 1
  %xtraiter113 = and i64 %i.ha, 1
  %i.he = icmp eq i64 %i.gm, %.neg
  br i1 %i.he, label %.epil.preheader112, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter119 = and i64 %i.ha, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph33.new
  %i.hf = phi <8 x i64> [ %.pre60, %.lr.ph33.new ], [ %i.ii, %bb.j ]
  %.0.i432 = phi i64 [ 0, %.lr.ph33.new ], [ %i.ij, %bb.j ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph33.new ], [ %niter120.next.1, %bb.j ]
  %i.hg = shl i64 %.0.i432, 6
  %i.hh = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hi, i32 0, i32 3, i32 1)
  %i.hj = shl i64 %.0.i432, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = load <8 x i64>, ptr %i.hh, align 1, !tbaa !21 ; 2 uses
  %i.hm = load <8 x i64>, ptr %i.hk, align 1, !tbaa !21
  %i.hn = xor <8 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = lshr <8 x i64> %i.hn, splat (i64 32)
  %i.hp = and <8 x i64> %i.hn, splat (i64 4294967295)
  %i.hq = mul nuw <8 x i64> %i.hp, %i.ho
  %i.hr = shufflevector <8 x i64> %i.hl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hs = add <8 x i64> %i.hf, %i.hr
  %i.ht = add <8 x i64> %i.hs, %i.hq              ; 2 uses
  store <8 x i64> %i.ht, ptr %0, align 64, !tbaa !21
  %i.hu = or disjoint i64 %.0.i432, 1             ; 2 uses
  %i.hv = shl i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hx, i32 0, i32 3, i32 1)
  %i.hy = shl i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hy
  %i.ia = load <8 x i64>, ptr %i.hw, align 1, !tbaa !21 ; 2 uses
  %i.ib = load <8 x i64>, ptr %i.hz, align 1, !tbaa !21
  %i.ic = xor <8 x i64> %i.ib, %i.ia              ; 2 uses
  %i.id = lshr <8 x i64> %i.ic, splat (i64 32)
  %i.ie = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = shufflevector <8 x i64> %i.ia, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ih = add <8 x i64> %i.ht, %i.ig
  %i.ii = add <8 x i64> %i.ih, %i.if              ; 4 uses
  store <8 x i64> %i.ii, ptr %0, align 64, !tbaa !21
  %i.ij = add nuw nsw i64 %.0.i432, 2             ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, label %bb.j, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod116.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod116.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5, label %.epil.preheader112

.epil.preheader112:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %.lr.ph33
  %.epil.init115 = phi <8 x i64> [ %.pre60, %.lr.ph33 ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ]
  %.0.i432.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.ij, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ik = shl i64 %.0.i432.epil.init, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1)
  %i.in = shl i64 %.0.i432.epil.init, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  %i.ip = load <8 x i64>, ptr %i.il, align 1, !tbaa !21 ; 2 uses
  %i.iq = load <8 x i64>, ptr %i.io, align 1, !tbaa !21
  %i.ir = xor <8 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = lshr <8 x i64> %i.ir, splat (i64 32)
  %i.it = and <8 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = mul nuw <8 x i64> %i.it, %i.is
  %i.iv = shufflevector <8 x i64> %i.ip, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.iw = add <8 x i64> %.epil.init115, %i.iv
  %i.ix = add <8 x i64> %i.iw, %i.iu              ; 2 uses
  store <8 x i64> %i.ix, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5:       ; preds = %.epil.preheader112, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa, %bb.i
  %i.iy = phi <8 x i64> [ %.pre60, %bb.i ], [ %i.ii, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5.loopexit.unr-lcssa ], [ %i.ix, %.epil.preheader112 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ja = load i64, ptr %i.iz, align 32, !tbaa !36
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %i.jc = lshr <8 x i64> %i.iy, splat (i64 47)
  %i.jd = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.je = bitcast <8 x i64> %i.iy to <16 x i32>
  %i.jf = bitcast <8 x i64> %i.jc to <16 x i32>
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.jd, <16 x i32> %i.je, <16 x i32> %i.jf, i32 150) ; 2 uses
  %i.jh = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.ji = lshr <8 x i64> %i.jh, splat (i64 32)
  %i.jj = bitcast <16 x i32> %i.jg to <8 x i64>
  %i.jk = and <8 x i64> %i.jj, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, splat (i64 2654435761)
  %i.jm = mul <8 x i64> %i.ji, splat (i64 -7046029290881679360)
  %i.jn = add <8 x i64> %i.jl, %i.jm              ; 3 uses
  store <8 x i64> %i.jn, ptr %0, align 64, !tbaa !21
  store i64 0, ptr %i.gx, align 8, !tbaa !41
  %i.jo = shl nuw i64 %i.ha, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %i.jo ; 2 uses
  %i.jq = sub nuw nsw i64 %i.gw, %i.ha            ; 3 uses
  %.not133.i38 = icmp ult i64 %i.jq, %i.gm
  br i1 %.not133.i38, label %.preheader, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter122 = and i64 %i.gm, 1
  %i.jr = icmp eq i64 %i.gm, 1                    ; 0 uses
  %unroll_iter128 = and i64 %i.gm, -2
  %lcmp.mod125.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod127 = trunc i64 %i.gm to i1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
  %.promoted37 = phi <8 x i64> [ %i.jn, %.preheader17.lr.ph ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 3 uses
  %.0124.i40 = phi i64 [ %i.jq, %.preheader17.lr.ph ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ]
  %.1126.i39 = phi ptr [ %i.jp, %.preheader17.lr.ph ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  switch i64 %i.gm, label %.lr.ph36 [
    i64 0, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3
    i64 1, label %.epil.preheader121
  ]

.lr.ph36:                                         ; preds = %.preheader17
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %.lr.ph36.new

.preheader:                                       ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5
  %.promoted44 = phi <8 x i64> [ %i.jn, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ly, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 2 uses
  %.1126.i.lcssa = phi ptr [ %i.jp, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.lz, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 4 uses
  %.0124.i.lcssa = phi i64 [ %i.jq, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit5 ], [ %i.ma, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3 ] ; 7 uses
  %.not48 = icmp eq i64 %.0124.i.lcssa, 0
  br i1 %.not48, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  %xtraiter131 = and i64 %.0124.i.lcssa, 1
  %i.js = icmp eq i64 %.0124.i.lcssa, 1
  br i1 %i.js, label %.epil.preheader130, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter136 = and i64 %.0124.i.lcssa, -2
  br label %bb.k

.lr.ph36.new:                                     ; preds = %.lr.ph36.new, %.lr.ph36
  %i.jt = phi <8 x i64> [ %.promoted37, %.lr.ph36 ], [ %i.kw, %.lr.ph36.new ]
  %.0.i235 = phi i64 [ 0, %.lr.ph36 ], [ %i.kx, %.lr.ph36.new ] ; 4 uses
  %niter129 = phi i64 [ 0, %.lr.ph36 ], [ %niter129.next.1, %.lr.ph36.new ]
  %i.ju = shl i64 %.0.i235, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.jw, i32 0, i32 3, i32 1)
  %i.jx = shl i64 %.0.i235, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jx
  %i.jz = load <8 x i64>, ptr %i.jv, align 1, !tbaa !21 ; 2 uses
  %i.ka = load <8 x i64>, ptr %i.jy, align 1, !tbaa !21
  %i.kb = xor <8 x i64> %i.ka, %i.jz              ; 2 uses
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 32)
  %i.kd = and <8 x i64> %i.kb, splat (i64 4294967295)
  %i.ke = mul nuw <8 x i64> %i.kd, %i.kc
  %i.kf = shufflevector <8 x i64> %i.jz, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kg = add <8 x i64> %i.jt, %i.kf
  %i.kh = add <8 x i64> %i.kg, %i.ke              ; 2 uses
  store <8 x i64> %i.kh, ptr %0, align 64, !tbaa !21
  %i.ki = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.kj = shl i64 %i.ki, 6
  %i.kk = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kl, i32 0, i32 3, i32 1)
  %i.km = shl i64 %i.ki, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.km
  %i.ko = load <8 x i64>, ptr %i.kk, align 1, !tbaa !21 ; 2 uses
  %i.kp = load <8 x i64>, ptr %i.kn, align 1, !tbaa !21
  %i.kq = xor <8 x i64> %i.kp, %i.ko              ; 2 uses
  %i.kr = lshr <8 x i64> %i.kq, splat (i64 32)
  %i.ks = and <8 x i64> %i.kq, splat (i64 4294967295)
  %i.kt = mul nuw <8 x i64> %i.ks, %i.kr
  %i.ku = shufflevector <8 x i64> %i.ko, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.kv = add <8 x i64> %i.kh, %i.ku
  %i.kw = add <8 x i64> %i.kv, %i.kt              ; 4 uses
  store <8 x i64> %i.kw, ptr %0, align 64, !tbaa !21
  %i.kx = add nuw i64 %.0.i235, 2                 ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, label %.lr.ph36.new, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa: ; preds = %.lr.ph36.new
  br i1 %lcmp.mod125.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3, label %.epil.preheader121

.epil.preheader121:                               ; preds = %.preheader17, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa
  %.epil.init124 = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ]
  %.0.i235.epil.init = phi i64 [ 0, %.preheader17 ], [ %i.kx, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ky = shl i64 %.0.i235.epil.init, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = shl i64 %.0.i235.epil.init, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lb
  %i.ld = load <8 x i64>, ptr %i.kz, align 1, !tbaa !21 ; 2 uses
  %i.le = load <8 x i64>, ptr %i.lc, align 1, !tbaa !21
  %i.lf = xor <8 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 32)
  %i.lh = and <8 x i64> %i.lf, splat (i64 4294967295)
  %i.li = mul nuw <8 x i64> %i.lh, %i.lg
  %i.lj = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.lk = add <8 x i64> %.epil.init124, %i.lj
  %i.ll = add <8 x i64> %i.lk, %i.li              ; 2 uses
  store <8 x i64> %i.ll, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3:       ; preds = %.epil.preheader121, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa, %.preheader17
  %i.lm = phi <8 x i64> [ %.promoted37, %.preheader17 ], [ %i.kw, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit3.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader121 ] ; 2 uses
  %i.ln = lshr <8 x i64> %i.lm, splat (i64 47)
  %i.lo = load <16 x i32>, ptr %i.jb, align 1, !tbaa !21
  %i.lp = bitcast <8 x i64> %i.lm to <16 x i32>
  %i.lq = bitcast <8 x i64> %i.ln to <16 x i32>
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.lo, <16 x i32> %i.lp, <16 x i32> %i.lq, i32 150) ; 2 uses
  %i.ls = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lt = lshr <8 x i64> %i.ls, splat (i64 32)
  %i.lu = bitcast <16 x i32> %i.lr to <8 x i64>
  %i.lv = and <8 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <8 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <8 x i64> %i.lt, splat (i64 -7046029290881679360)
  %i.ly = add <8 x i64> %i.lw, %i.lx              ; 3 uses
  store <8 x i64> %i.ly, ptr %0, align 64, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.1126.i39, i64 %i.gr ; 2 uses
  %i.ma = sub nuw nsw i64 %.0124.i40, %i.gm       ; 3 uses
  %.not133.i = icmp ult i64 %i.ma, %i.gm
  br i1 %.not133.i, label %.preheader, label %.preheader17, !llvm.loop !6

bb.k:                                             ; preds = %bb.k, %.lr.ph43.new
  %i.mb = phi <8 x i64> [ %.promoted44, %.lr.ph43.new ], [ %i.ne, %bb.k ]
  %.0.i42 = phi i64 [ 0, %.lr.ph43.new ], [ %i.nf, %bb.k ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph43.new ], [ %niter137.next.1, %bb.k ]
  %i.mc = shl i64 %.0.i42, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 0, i32 3, i32 1)
  %i.mf = shl i64 %.0.i42, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mf
  %i.mh = load <8 x i64>, ptr %i.md, align 1, !tbaa !21 ; 2 uses
  %i.mi = load <8 x i64>, ptr %i.mg, align 1, !tbaa !21
  %i.mj = xor <8 x i64> %i.mi, %i.mh              ; 2 uses
  %i.mk = lshr <8 x i64> %i.mj, splat (i64 32)
  %i.ml = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mm = mul nuw <8 x i64> %i.ml, %i.mk
  %i.mn = shufflevector <8 x i64> %i.mh, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.mo = add <8 x i64> %i.mb, %i.mn
  %i.mp = add <8 x i64> %i.mo, %i.mm              ; 2 uses
  store <8 x i64> %i.mp, ptr %0, align 64, !tbaa !21
  %i.mq = or disjoint i64 %.0.i42, 1              ; 2 uses
  %i.mr = shl i64 %i.mq, 6
  %i.ms = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mt, i32 0, i32 3, i32 1)
  %i.mu = shl i64 %i.mq, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mu
  %i.mw = load <8 x i64>, ptr %i.ms, align 1, !tbaa !21 ; 2 uses
  %i.mx = load <8 x i64>, ptr %i.mv, align 1, !tbaa !21
  %i.my = xor <8 x i64> %i.mx, %i.mw              ; 2 uses
  %i.mz = lshr <8 x i64> %i.my, splat (i64 32)
  %i.na = and <8 x i64> %i.my, splat (i64 4294967295)
  %i.nb = mul nuw <8 x i64> %i.na, %i.mz
  %i.nc = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.nd = add <8 x i64> %i.mp, %i.nc
  %i.ne = add <8 x i64> %i.nd, %i.nb              ; 3 uses
  store <8 x i64> %i.ne, ptr %0, align 64, !tbaa !21
  %i.nf = add nuw i64 %.0.i42, 2                  ; 2 uses
  %niter137.next.1 = add nuw i64 %niter137, 2     ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !5

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod134.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod134.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit, label %.epil.preheader130

.epil.preheader130:                               ; preds = %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.lr.ph43
  %.epil.init133 = phi <8 x i64> [ %.promoted44, %.lr.ph43 ], [ %i.ne, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ]
  %.0.i42.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.nf, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i64 %.0124.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.ng = shl i64 %.0.i42.epil.init, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ni, i32 0, i32 3, i32 1)
  %i.nj = shl i64 %.0.i42.epil.init, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nj
  %i.nl = load <8 x i64>, ptr %i.nh, align 1, !tbaa !21 ; 2 uses
  %i.nm = load <8 x i64>, ptr %i.nk, align 1, !tbaa !21
  %i.nn = xor <8 x i64> %i.nm, %i.nl              ; 2 uses
  %i.no = lshr <8 x i64> %i.nn, splat (i64 32)
  %i.np = and <8 x i64> %i.nn, splat (i64 4294967295)
  %i.nq = mul nuw <8 x i64> %i.np, %i.no
  %i.nr = shufflevector <8 x i64> %i.nl, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ns = add <8 x i64> %.epil.init133, %i.nr
  %i.nt = add <8 x i64> %i.ns, %i.nq
  store <8 x i64> %i.nt, ptr %0, align 64, !tbaa !21
  br label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit

_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit:        ; preds = %.epil.preheader130, %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.loopexit.unr-lcssa, %.preheader
  %i.nu = shl nuw i64 %.0124.i.lcssa, 6
  %i.nv = getelementptr inbounds nuw i8, ptr %.1126.i.lcssa, i64 %i.nu ; 4 uses
  %i.nw = icmp ult ptr %i.nv, %i.c
  tail call void @llvm.assume(i1 %i.nw)
  store i64 %.0124.i.lcssa, ptr %i.gx, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.nx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ny, i64 64, i1 false)
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.go, %i.nz                    ; 2 uses
  %i.ob = icmp slt i64 %i.oa, 65
  tail call void @llvm.assume(i1 %i.ob)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.oc = icmp sgt i64 %i.gq, 256
  br i1 %i.oc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.od = getelementptr inbounds i8, ptr %i.c, i64 -256
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.og = load i64, ptr %i.of, align 32, !tbaa !36
  %i.oh = icmp ugt i64 %i.gm, 3
  tail call void @llvm.assume(i1 %i.oh)
  %.promoted30 = load i64, ptr %i.oe, align 8, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit, %bb.m
  %storemerge.i731 = phi i64 [ %.promoted30, %bb.m ], [ %storemerge.i7, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 5 uses
  %.2.i = phi ptr [ %.0125.i, %bb.m ], [ %i.ul, %_ZL19XXH3_consumeStripesPmS_mPKhmS1_mPFvS_S1_S1_mEPFvPvPKvE.exit ] ; 19 uses
  %i.oj = icmp ult i64 %storemerge.i731, %i.gm
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw i64 %i.gm, %storemerge.i731     ; 7 uses
  %.not.i6 = icmp ugt i64 %i.ok, 4
  %i.ol = shl i64 %storemerge.i731, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol ; 8 uses
  %.promoted28 = load <8 x i64>, ptr %0, align 64, !tbaa !21 ; 2 uses
  br i1 %.not.i6, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit.i, label %.preheader84

.preheader84:                                     ; preds = %bb.n
  %i.on = getelementptr inbounds nuw i8, ptr %.2.i, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.on, i32 0, i32 3, i32 1)
  %i.oo = load <8 x i64>, ptr %.2.i, align 1, !tbaa !21 ; 2 uses
  %i.op = load <8 x i64>, ptr %i.om, align 1, !tbaa !21
  %i.oq = xor <8 x i64> %i.op, %i.oo              ; 2 uses
  %i.or = lshr <8 x i64> %i.oq, splat (i64 32)
  %i.os = and <8 x i64> %i.oq, splat (i64 4294967295)
  %i.ot = mul nuw <8 x i64> %i.os, %i.or
  %i.ou = shufflevector <8 x i64> %i.oo, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ov = add <8 x i64> %.promoted28, %i.ou
  %i.ow = add <8 x i64> %i.ov, %i.ot              ; 3 uses
  store <8 x i64> %i.ow, ptr %0, align 64, !tbaa !21
  %exitcond53.not = icmp eq i64 %i.ok, 1
  br i1 %exitcond53.not, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.1

.preheader84.1:                                   ; preds = %.preheader84
  %i.ox = getelementptr inbounds nuw i8, ptr %.2.i, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %.2.i, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.oy, i32 0, i32 3, i32 1)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.pa = load <8 x i64>, ptr %i.ox, align 1, !tbaa !21 ; 2 uses
  %i.pb = load <8 x i64>, ptr %i.oz, align 1, !tbaa !21
  %i.pc = xor <8 x i64> %i.pb, %i.pa              ; 2 uses
  %i.pd = lshr <8 x i64> %i.pc, splat (i64 32)
  %i.pe = and <8 x i64> %i.pc, splat (i64 4294967295)
  %i.pf = mul nuw <8 x i64> %i.pe, %i.pd
  %i.pg = shufflevector <8 x i64> %i.pa, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ph = add <8 x i64> %i.ow, %i.pg
  %i.pi = add <8 x i64> %i.ph, %i.pf              ; 3 uses
  store <8 x i64> %i.pi, ptr %0, align 64, !tbaa !21
  %exitcond53.not.1 = icmp eq i64 %i.ok, 2
  br i1 %exitcond53.not.1, label %_ZL22XXH3_accumulate_avx512PmPKhS1_m.exit40.i, label %.preheader84.2

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2.i, i64 128
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.i, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pk, i32 0, i32 3, i32 1)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pm = load <8 x i64>, ptr %i.pj, align 1, !tbaa !21 ; 2 uses
  %i.pn = load <8 x i64>, ptr %i.pl, align 1, !tbaa !21
  %i.po = xor <8 x i64> %i.pn, %i.pm              ; 2 uses
  %i.pp = lshr <8 x i64> %i.po, splat (i64 32)
  %i.pq = and <8 x i64> %i.po, splat (i64 4294967295)
  %i.pr = mul nuw <8 x i64> %i.pq, %i.pp
  %i.ps = shufflevector <8 x i64> %i.pm, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.pt = add <8 x i64> %i.pi, %i.ps
  %i.pu = add <8 x i64> %i.pt, %i.pr              ; 3 uses
  store <8 x i64> %i.pu, ptr %0, align 64, !tbaa !21
end_hunk_1
