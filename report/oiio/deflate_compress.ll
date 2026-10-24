Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/deflate_compress?download=true
inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate_precompute_huffman_header:bb.a
  br i1 %.not7281.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.loopexit.i
  %i.gl = zext i8 %i.em to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gl ; 10 uses
  %i.gn = add i32 %.0.lcssa.i, 1
  %i.go = sub i32 %i.gn, %.3.i
  %i.gp = sub i32 %.0.lcssa.i, %.3.i
  %xtraiter = and i32 %i.go, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph85.i, %.prol.preheader
  %.483.i.prol = phi i32 [ %i.gt, %.prol.preheader ], [ %.3.i, %.lr.ph85.i ]
  %.46782.i.prol = phi ptr [ %i.gs, %.prol.preheader ], [ %.366.i, %.lr.ph85.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph85.i ]
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !14
  %i.gs = getelementptr inbounds nuw i8, ptr %.46782.i.prol, i64 4 ; 3 uses
  store i32 %i.eu, ptr %.46782.i.prol, align 4, !tbaa !14
  %i.gt = add i32 %.483.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !127

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph85.i
  %.lcssa89.unr = phi ptr [ poison, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %.483.i.unr = phi i32 [ %.3.i, %.lr.ph85.i ], [ %i.gt, %.prol.preheader ]
  %.46782.i.unr = phi ptr [ %.366.i, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %i.gu = icmp ult i32 %i.gp, 3
  br i1 %i.gu, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph85.i.new
  %.483.i = phi i32 [ %i.hi, %.lr.ph85.i.new ], [ %.483.i.unr, %.prol.loopexit ] ; 2 uses
  %.46782.i = phi ptr [ %i.hh, %.lr.ph85.i.new ], [ %.46782.i.unr, %.prol.loopexit ] ; 5 uses
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gm, align 4, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %.46782.i, i64 4
  store i32 %i.eu, ptr %.46782.i, align 4, !tbaa !14
  %i.gy = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gm, align 4, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %.46782.i, i64 8
  store i32 %i.eu, ptr %i.gx, align 4, !tbaa !14
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gm, align 4, !tbaa !14
  %i.hd = getelementptr inbounds nuw i8, ptr %.46782.i, i64 12
  store i32 %i.eu, ptr %i.ha, align 4, !tbaa !14
  %i.he = add i32 %.483.i, 3
  %i.hf = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gm, align 4, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %.46782.i, i64 16 ; 2 uses
  store i32 %i.eu, ptr %i.hd, align 4, !tbaa !14
  %i.hi = add i32 %.483.i, 4
  %.not72.i.3 = icmp eq i32 %i.he, %.0.lcssa.i
  br i1 %.not72.i.3, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new, !llvm.loop !128

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i.new, %.prol.loopexit
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.hh, %.lr.ph85.i.new ]
  %i.hj = add i32 %.0.lcssa.i, 1
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.loopexit.i, %.loopexit.thread.i
  %.467.lcssa.i = phi ptr [ %.366.i, %.loopexit.i ], [ %.lcssa89, %._crit_edge86.loopexit.i ], [ %i.fq, %.loopexit.thread.i ] ; 2 uses
  %.4.lcssa.i = phi i32 [ %.lcssa.i, %.loopexit.i ], [ %i.hj, %._crit_edge86.loopexit.i ], [ %.lcssa.i, %.loopexit.thread.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.4.lcssa.i, %i.ee
  br i1 %.not73.i, label %deflate_compute_precode_items.exit, label %bb.bn, !llvm.loop !129

deflate_compute_precode_items.exit:               ; preds = %._crit_edge86.i
  %i.hk = ptrtoint ptr %.467.lcssa.i to i64
  %i.hl = ptrtoint ptr %i.ef to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %i.ho, ptr %i.hp, align 8, !tbaa !28
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4676
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 19, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 6060
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4767
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !28
  %.not42 = icmp eq i8 %i.hu, 0
  br i1 %.not42, label %bb.bs, label %bb.cg

bb.bs:                                            ; preds = %deflate_compute_precode_items.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4753
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !28
  %.not42.1 = icmp eq i8 %i.hw, 0
  br i1 %.not42.1, label %bb.bt, label %bb.cg

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4766
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !28
  %.not42.2 = icmp eq i8 %i.hy, 0
  br i1 %.not42.2, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4754
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !28
  %.not42.3 = icmp eq i8 %i.ia, 0
  br i1 %.not42.3, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 4765
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !28
  %.not42.4 = icmp eq i8 %i.ic, 0
  br i1 %.not42.4, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4755
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !28
  %.not42.5 = icmp eq i8 %i.ie, 0
  br i1 %.not42.5, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4764
  %i.ig = load i8, ptr %i.if, align 4, !tbaa !28
  %.not42.6 = icmp eq i8 %i.ig, 0
  br i1 %.not42.6, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !28
  %.not42.7 = icmp eq i8 %i.ii, 0
  br i1 %.not42.7, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4763
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !28
  %.not42.8 = icmp eq i8 %i.ik, 0
  br i1 %.not42.8, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4757
  %i.im = load i8, ptr %i.il, align 1, !tbaa !28
  %.not42.9 = icmp eq i8 %i.im, 0
  br i1 %.not42.9, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4762
  %i.io = load i8, ptr %i.in, align 2, !tbaa !28
  %.not42.10 = icmp eq i8 %i.io, 0
  br i1 %.not42.10, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4758
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !28
  %.not42.11 = icmp eq i8 %i.iq, 0
  br i1 %.not42.11, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 4761
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !28
  %.not42.12 = icmp eq i8 %i.is, 0
  br i1 %.not42.12, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4759
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !28
  %.not42.13 = icmp eq i8 %i.iu, 0
  br i1 %.not42.13, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !28
  %.not42.14 = icmp eq i8 %i.iw, 0
  %spec.select70 = select i1 %.not42.14, i32 4, i32 5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %deflate_compute_precode_items.exit
  %storemerge41.lcssa = phi i32 [ 19, %deflate_compute_precode_items.exit ], [ 8, %bb.cc ], [ 12, %bb.by ], [ 18, %bb.bs ], [ %spec.select70, %bb.cf ], [ 17, %bb.bt ], [ 11, %bb.bz ], [ 16, %bb.bu ], [ 6, %bb.ce ], [ 15, %bb.bv ], [ 9, %bb.cb ], [ 14, %bb.bw ], [ 7, %bb.cd ], [ 13, %bb.bx ], [ 10, %bb.ca ]
  store i32 %storemerge41.lcssa, ptr %i.hs, align 4, !tbaa !28
  %i.ix = load i32, ptr %i.b, align 4, !tbaa !28  ; 2 uses
  %.not43 = icmp eq i32 %i.ix, 288
  br i1 %.not43, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.iy
  %i.ja = load i32, ptr %i.bn, align 8, !tbaa !28
  %i.jb = zext i32 %i.ja to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 1 %i.iz, i64 %i.jb, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @do_end_block_check(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 7 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <4 x i32>, ptr %.phi.trans.insert.a, align 4, !tbaa !14
  %i.d = load <4 x i32>, ptr %.phi.trans.insert46, align 4, !tbaa !14
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load <4 x i32>, ptr %.phi.trans.insert60, align 4, !tbaa !14
  %i.f = load <4 x i32>, ptr %.phi.trans.insert62, align 4, !tbaa !14
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !41
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !41     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load <4 x i32>, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.l = load <4 x i32>, ptr %i.j, align 4, !tbaa !14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load <4 x i32>, ptr %i.m, align 4, !tbaa !14 ; 4 uses
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !14 ; 4 uses
  %3 = load <2 x i32>, ptr %i.g, align 4, !tbaa !14
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <4 x i32> %i.k, <4 x i32> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %6 = shufflevector <8 x i32> %4, <8 x i32> %5, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %7 = load <2 x i32>, ptr %0, align 4, !tbaa !14
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <4 x i32> %i.l, <4 x i32> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <8 x i32> %8, <8 x i32> %9, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.r = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %i.s = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> zeroinitializer
  %10 = mul <8 x i32> %i.s, %6                    ; 2 uses
  %i.t = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %11 = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
  %12 = mul <8 x i32> %i.q, %11                   ; 2 uses
  %13 = icmp ugt <8 x i32> %12, %10
  %14 = shufflevector <8 x i1> %13, <8 x i1> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <8 x i32> %12, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %16 = shufflevector <8 x i32> %10, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %17 = sub nuw <8 x i32> %15, %16
  %i.u = sub nuw <8 x i32> %16, %15
  %18 = select <8 x i1> %14, <8 x i32> %17, <8 x i32> %i.u
  %i.v = extractelement <4 x i32> %i.o, i64 2
  %i.w = mul i32 %i.h, %i.v                       ; 3 uses
  %i.x = extractelement <4 x i32> %i.p, i64 2
  %i.y = mul i32 %i.x, %i.b                       ; 3 uses
  %19 = icmp ugt i32 %i.y, %i.w
  %i.z = sub nuw i32 %i.y, %i.w
  %20 = sub nuw i32 %i.w, %i.y
  %21 = select i1 %19, i32 %i.z, i32 %20
  %22 = extractelement <4 x i32> %i.o, i64 3
  %i.aa = mul i32 %i.h, %22                       ; 3 uses
  %23 = extractelement <4 x i32> %i.p, i64 3
  %24 = mul i32 %23, %i.b                         ; 3 uses
  %25 = icmp ugt i32 %24, %i.aa
  %26 = sub nuw i32 %24, %i.aa
  %i.ab = sub nuw i32 %i.aa, %24
  %27 = select i1 %25, i32 %26, i32 %i.ab
  %28 = load i32, ptr %2, align 4, !tbaa !41      ; 2 uses
  %i.ac = add i32 %28, %i.b                       ; 3 uses
  %i.ad = mul i32 %28, 200
  %i.ae = lshr i32 %i.ad, 9
  %i.af = mul i32 %i.ae, %i.b                     ; 3 uses
  %i.ag = icmp ult i32 %1, 10000
  %i.ah = icmp ult i32 %i.ac, 8192
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.ai = zext i32 %i.af to i64
  %i.aj = sub nuw nsw i32 8192, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ai, %i.ak
  %i.am = lshr i64 %i.al, 13
  %i.an = trunc nuw i64 %i.am to i32
  %i.ao = add i32 %i.af, %i.an
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.034 = phi i32 [ %i.ao, %bb.b ], [ %i.af, %.preheader ]
  %i.ap = lshr i32 %1, 12
  %i.aq = mul i32 %i.b, %i.ap
  %i.ar = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %18)
  %op.rdx = add i32 %i.ar, %21
  %op.rdx80 = add i32 %27, %i.aq
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.034
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.ac, %bb.c ]
  %i.as = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.k, %bb.c ]
  %i.at = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.l, %bb.c ]
  %i.au = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.o, %bb.c ]
  %i.av = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.p, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %29 = load <2 x i32>, ptr %0, align 4, !tbaa !14
  %30 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !14
  %31 = add <2 x i32> %30, %29
  store <2 x i32> %31, ptr %i.aw, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = add <4 x i32> %i.as, %i.at
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.ay, ptr %i.ax, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = add <4 x i32> %i.au, %i.av
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !14
  store i32 0, ptr %i.bd, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !47
  store i32 0, ptr %i.be, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((32, 1312)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %.not.i = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not.i, label %deflate_choose_all_literals.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !130

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !14
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !131

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store i32 1, ptr %i.al, align 32, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0)
  %i.as = add i32 %3, 257                         ; 2 uses
  %i.at = icmp ult i32 %i.as, 305000
  %narrow = select i1 %i.at, i32 %i.as, i32 304999 ; 4 uses
  %.not114 = icmp ugt i32 %3, %narrow
  br i1 %.not114, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %deflate_choose_all_literals.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.av = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aw = add nuw nsw i32 %narrow, 1
  %i.ax = add nuw nsw i32 %narrow, 1
  %i.ay = sub nuw i32 %i.ax, %3
  %i.az = sub nuw i32 %narrow, %3
  %xtraiter373 = and i32 %i.ay, 7                 ; 2 uses
  %lcmp.mod374.not = icmp eq i32 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter373
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !132

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bb = icmp samesign ult i32 %i.az, 7
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !28
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !28
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !28
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !28
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !28
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.aw, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br i1 %.not.i, label %vector.ph, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.br = lshr i32 %3, 11                         ; 2 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 2 uses
  %xtraiter375 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.bs = add i32 %3, -1
  %i.bt = icmp ult i32 %i.bs, 3
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter379 = and i64 %wide.trip.count.i.i, 4294967292
  br label %.lr.ph.i.i

vector.ph.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod377.not, label %vector.ph, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %vector.ph.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %vector.ph.loopexit.unr-lcssa ]
  %lcmp.mod378 = icmp ne i64 %xtraiter375, 0
end_hunk_0
begin_hunk_1_@deflate_optimize_and_flush_block:bb.a
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 257
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !187
  %i.ge = zext i8 %i.gd to i32                    ; 12 uses
  br i1 %5, label %vector.ph229, label %bb.i

vector.ph229:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat231, ptr %i.gf, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gg, align 4, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat231, ptr %i.gh, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gi, align 4, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat231, ptr %i.gj, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gk, align 4, !tbaa !28
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat231, ptr %i.gl, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gm, align 4, !tbaa !28
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat231, ptr %i.gn, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.go, align 4, !tbaa !28
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat231, ptr %i.gp, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gq, align 4, !tbaa !28
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat231, ptr %i.gr, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gs, align 4, !tbaa !28
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat231, ptr %i.gt, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gu, align 4, !tbaa !28
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat231, ptr %i.gv, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gw, align 4, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat231, ptr %i.gx, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.gy, align 4, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat231, ptr %i.gz, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ha, align 4, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat231, ptr %i.hb, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hc, align 4, !tbaa !28
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat231, ptr %i.hd, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.he, align 4, !tbaa !28
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat231, ptr %i.hf, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hg, align 4, !tbaa !28
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat231, ptr %i.hh, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hi, align 4, !tbaa !28
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat231, ptr %i.hj, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hk, align 4, !tbaa !28
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat231, ptr %i.hl, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hm, align 4, !tbaa !28
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat231, ptr %i.hn, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ho, align 4, !tbaa !28
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat231, ptr %i.hp, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hq, align 4, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat231, ptr %i.hr, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hs, align 4, !tbaa !28
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat231, ptr %i.ht, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hu, align 4, !tbaa !28
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat231, ptr %i.hv, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hw, align 4, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat231, ptr %i.hx, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.hy, align 4, !tbaa !28
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat231, ptr %i.hz, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ia, align 4, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat231, ptr %i.ib, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ic, align 4, !tbaa !28
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat231, ptr %i.id, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ie, align 4, !tbaa !28
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat231, ptr %i.if, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ig, align 4, !tbaa !28
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat231, ptr %i.ih, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ii, align 4, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat231, ptr %i.ij, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.ik, align 4, !tbaa !28
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat231, ptr %i.il, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.im, align 4, !tbaa !28
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat231, ptr %i.in, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.io, align 4, !tbaa !28
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat231, ptr %i.ip, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat231, ptr %i.iq, align 4, !tbaa !28
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %vector.ph229
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph229 ], [ %indvars.iv.next22.i.i.1, %bb.h ] ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.it = load i8, ptr %i.is, align 1, !tbaa !28
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !28
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 4
  %i.iz = add nuw nsw i32 %i.iy, %i.ge
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv21.i.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !28
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !28
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !28
  %i.jg = zext i8 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 4
  %i.ji = add nuw nsw i32 %i.jh, %i.ge
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next22.i.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !28
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.h, !llvm.loop !139

deflate_set_default_costs.exit.i:                 ; preds = %bb.h
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.jk, align 16, !tbaa !28
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.jl, align 32, !tbaa !28
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.jm, align 16, !tbaa !28
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.jn, align 32, !tbaa !28
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.jo, align 16, !tbaa !28
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.jp, align 32, !tbaa !28
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.jq, align 16, !tbaa !28
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.jr, align 32, !tbaa !28
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.js, align 4, !tbaa !28
  br label %deflate_set_initial_costs.exit

bb.i:                                             ; preds = %deflate_choose_default_litlen_costs.exit.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 9009568
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !48
  %i.jw = zext i32 %i.jv to i64                   ; 11 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 9009608
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !28
  %i.ka = zext i32 %i.jz to i64                   ; 11 uses
  %i.kb = load i32, ptr %i.jt, align 32, !tbaa !28
  %i.kc = zext i32 %i.kb to i64
  %i.kd = mul nuw i64 %i.kc, %i.jw                ; 3 uses
  %i.ke = load i32, ptr %i.jx, align 8, !tbaa !14
  %i.kf = zext i32 %i.ke to i64
  %i.kg = mul nuw i64 %i.kf, %i.ka                ; 3 uses
  %9 = icmp ugt i64 %i.kd, %i.kg
  %10 = sub nuw i64 %i.kd, %i.kg
  %i.kh = sub nuw i64 %i.kg, %i.kd
  %11 = select i1 %9, i64 %10, i64 %i.kh
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 9009572
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !28
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul nuw i64 %i.kk, %i.jw                ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !14
  %i.ko = zext i32 %i.kn to i64
  %i.kp = mul nuw i64 %i.ko, %i.ka                ; 3 uses
  %12 = icmp ugt i64 %i.kl, %i.kp
  %13 = sub nuw i64 %i.kl, %i.kp
  %i.kq = sub nuw i64 %i.kp, %i.kl
  %14 = select i1 %12, i64 %13, i64 %i.kq
  %i.kr = add i64 %14, %11
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 9009576
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !28
  %i.ku = zext i32 %i.kt to i64
  %i.kv = mul nuw i64 %i.ku, %i.jw                ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.kx = load i32, ptr %i.kw, align 16, !tbaa !14
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw i64 %i.ky, %i.ka                ; 3 uses
  %15 = icmp ugt i64 %i.kv, %i.kz
  %16 = sub nuw i64 %i.kv, %i.kz
  %i.la = sub nuw i64 %i.kz, %i.kv
  %17 = select i1 %15, i64 %16, i64 %i.la
  %i.lb = add i64 %i.kr, %17
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 9009580
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !28
  %i.le = zext i32 %i.ld to i64
  %i.lf = mul nuw i64 %i.le, %i.jw                ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !14
  %i.li = zext i32 %i.lh to i64
  %i.lj = mul nuw i64 %i.li, %i.ka                ; 3 uses
  %18 = icmp ugt i64 %i.lf, %i.lj
  %19 = sub nuw i64 %i.lf, %i.lj
  %i.lk = sub nuw i64 %i.lj, %i.lf
  %20 = select i1 %18, i64 %19, i64 %i.lk
  %i.ll = add i64 %i.lb, %20
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 9009584
  %i.ln = load i32, ptr %i.lm, align 16, !tbaa !28
  %i.lo = zext i32 %i.ln to i64
  %i.lp = mul nuw i64 %i.lo, %i.jw                ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !14
  %i.ls = zext i32 %i.lr to i64
  %i.lt = mul nuw i64 %i.ls, %i.ka                ; 3 uses
  %21 = icmp ugt i64 %i.lp, %i.lt
  %22 = sub nuw i64 %i.lp, %i.lt
  %i.lu = sub nuw i64 %i.lt, %i.lp
  %23 = select i1 %21, i64 %22, i64 %i.lu
  %i.lv = add i64 %i.ll, %23
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 9009588
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !28
  %i.ly = zext i32 %i.lx to i64
  %i.lz = mul nuw i64 %i.ly, %i.jw                ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !14
  %i.mc = zext i32 %i.mb to i64
  %i.md = mul nuw i64 %i.mc, %i.ka                ; 3 uses
  %24 = icmp ugt i64 %i.lz, %i.md
  %25 = sub nuw i64 %i.lz, %i.md
  %i.me = sub nuw i64 %i.md, %i.lz
  %26 = select i1 %24, i64 %25, i64 %i.me
  %i.mf = add i64 %i.lv, %26
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 9009592
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !28
  %i.mi = zext i32 %i.mh to i64
  %i.mj = mul nuw i64 %i.mi, %i.jw                ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ml = load i32, ptr %i.mk, align 32, !tbaa !14
  %i.mm = zext i32 %i.ml to i64
  %i.mn = mul nuw i64 %i.mm, %i.ka                ; 3 uses
  %27 = icmp ugt i64 %i.mj, %i.mn
  %28 = sub nuw i64 %i.mj, %i.mn
  %i.mo = sub nuw i64 %i.mn, %i.mj
  %29 = select i1 %27, i64 %28, i64 %i.mo
  %i.mp = add i64 %i.mf, %29
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 9009596
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !28
  %i.ms = zext i32 %i.mr to i64
  %i.mt = mul nuw i64 %i.ms, %i.jw                ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !14
  %i.mw = zext i32 %i.mv to i64
  %i.mx = mul nuw i64 %i.mw, %i.ka                ; 3 uses
  %30 = icmp ugt i64 %i.mt, %i.mx
  %31 = sub nuw i64 %i.mt, %i.mx
  %i.my = sub nuw i64 %i.mx, %i.mt
  %32 = select i1 %30, i64 %31, i64 %i.my
  %i.mz = add i64 %i.mp, %32
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 9009600
  %i.nb = load i32, ptr %i.na, align 32, !tbaa !28
  %i.nc = zext i32 %i.nb to i64
  %i.nd = mul nuw i64 %i.nc, %i.jw                ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !14
  %i.ng = zext i32 %i.nf to i64
  %i.nh = mul nuw i64 %i.ng, %i.ka                ; 3 uses
  %33 = icmp ugt i64 %i.nd, %i.nh
  %34 = sub nuw i64 %i.nd, %i.nh
  %i.ni = sub nuw i64 %i.nh, %i.nd
  %35 = select i1 %33, i64 %34, i64 %i.ni
  %i.nj = add i64 %i.mz, %35
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 9009604
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !28
  %i.nm = zext i32 %i.nl to i64
  %i.nn = mul nuw i64 %i.nm, %i.jw                ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.np = load i32, ptr %i.no, align 4, !tbaa !14
  %i.nq = zext i32 %i.np to i64
  %i.nr = mul nuw i64 %i.nq, %i.ka                ; 3 uses
  %36 = icmp ugt i64 %i.nn, %i.nr
  %37 = sub nuw i64 %i.nn, %i.nr
  %i.ns = sub nuw i64 %i.nr, %i.nn
  %38 = select i1 %36, i64 %37, i64 %i.ns
  %i.nt = add i64 %i.nj, %38                      ; 3 uses
  %i.nu = mul nuw nsw i64 %i.jw, 200
  %i.nv = mul i64 %i.nu, %i.ka
  %i.nw = lshr i64 %i.nv, 9                       ; 3 uses
  %i.nx = mul nuw nsw i64 %i.nw, 3                ; 2 uses
  %i.ny = icmp ugt i64 %i.nt, %i.nx
  br i1 %i.ny, label %vector.ph221, label %bb.k

vector.ph221:                                     ; preds = %bb.i
  %broadcast.splatinsert222 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat223 = shufflevector <4 x i32> %broadcast.splatinsert222, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat223, ptr %i.nz, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oa, align 4, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat223, ptr %i.ob, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oc, align 4, !tbaa !28
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat223, ptr %i.od, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oe, align 4, !tbaa !28
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat223, ptr %i.of, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.og, align 4, !tbaa !28
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat223, ptr %i.oh, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oi, align 4, !tbaa !28
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat223, ptr %i.oj, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.ok, align 4, !tbaa !28
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat223, ptr %i.ol, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.om, align 4, !tbaa !28
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat223, ptr %i.on, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oo, align 4, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat223, ptr %i.op, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oq, align 4, !tbaa !28
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat223, ptr %i.or, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.os, align 4, !tbaa !28
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat223, ptr %i.ot, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.ou, align 4, !tbaa !28
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat223, ptr %i.ov, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.ow, align 4, !tbaa !28
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat223, ptr %i.ox, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.oy, align 4, !tbaa !28
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat223, ptr %i.oz, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pa, align 4, !tbaa !28
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat223, ptr %i.pb, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pc, align 4, !tbaa !28
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat223, ptr %i.pd, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pe, align 4, !tbaa !28
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat223, ptr %i.pf, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pg, align 4, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat223, ptr %i.ph, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pi, align 4, !tbaa !28
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat223, ptr %i.pj, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pk, align 4, !tbaa !28
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat223, ptr %i.pl, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pm, align 4, !tbaa !28
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat223, ptr %i.pn, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.po, align 4, !tbaa !28
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat223, ptr %i.pp, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pq, align 4, !tbaa !28
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat223, ptr %i.pr, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.ps, align 4, !tbaa !28
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat223, ptr %i.pt, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pu, align 4, !tbaa !28
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat223, ptr %i.pv, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.pw, align 4, !tbaa !28
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat223, ptr %i.px, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.py, align 4, !tbaa !28
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat223, ptr %i.pz, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qa, align 4, !tbaa !28
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat223, ptr %i.qb, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qc, align 4, !tbaa !28
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat223, ptr %i.qd, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qe, align 4, !tbaa !28
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat223, ptr %i.qf, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qg, align 4, !tbaa !28
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat223, ptr %i.qh, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qi, align 4, !tbaa !28
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat223, ptr %i.qj, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat223, ptr %i.qk, align 4, !tbaa !28
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph221
  %indvars.iv21.i.i.i = phi i64 [ 3, %vector.ph221 ], [ %indvars.iv.next22.i.i.i.1, %bb.j ] ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i.i
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !28
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !28
  %i.qr = zext i8 %i.qq to i32
  %i.qs = shl nuw nsw i32 %i.qr, 4
  %i.qt = add nuw nsw i32 %i.qs, %i.ge
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv21.i.i.i
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !28
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i.i
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !28
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !28
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 4
  %i.rc = add nuw nsw i32 %i.rb, %i.ge
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv.next22.i.i.i
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !28
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.i.1, 259
  br i1 %exitcond24.not.i.i.i.1, label %deflate_set_default_costs.exit.i.i, label %bb.j, !llvm.loop !139

deflate_set_default_costs.exit.i.i:               ; preds = %bb.j
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.re, align 16, !tbaa !28
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.rf, align 32, !tbaa !28
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.rg, align 16, !tbaa !28
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.rh, align 32, !tbaa !28
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.ri, align 16, !tbaa !28
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.rj, align 32, !tbaa !28
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.rk, align 16, !tbaa !28
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.rl, align 32, !tbaa !28
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.rm, align 4, !tbaa !28
  br label %deflate_set_initial_costs.exit

bb.k:                                             ; preds = %bb.i
  %i.rn = shl nuw nsw i64 %i.nt, 2
  %i.ro = mul nuw nsw i64 %i.nw, 9
  %i.rp = icmp samesign ugt i64 %i.rn, %i.ro
  br i1 %i.rp, label %.preheader58.i.i, label %bb.m

.preheader58.i.i:                                 ; preds = %bb.k
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 2 uses
  %i.rr = mul nuw nsw i32 %i.gb, 3
  %broadcast.splatinsert212 = insertelement <4 x i32> poison, i32 %i.rr, i64 0
  %broadcast.splat213 = shufflevector <4 x i32> %broadcast.splatinsert212, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
end_hunk_1
begin_hunk_2_@deflate_compute_true_cost:.preheader44
  %i.db = load i8, ptr %i.da, align 1, !tbaa !28
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, 13
  %i.de = mul i32 %i.dd, %i.cz
  %i.df = shufflevector <24 x i32> %i.cq, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = add <32 x i32> %i.cj, %i.df
  %i.dh = shufflevector <32 x i32> %i.dg, <32 x i32> %i.cj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.di = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.dh)
  %op.rdx = add i32 %i.di, %i.bq
  %op.rdx71 = add i32 %i.cx, %i.de
  %op.rdx72 = add i32 %op.rdx, %op.rdx71
  %op.rdx73 = add i32 %op.rdx72, %i.bg
  ret i32 %op.rdx73
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_find_min_cost_path(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %.idx = shl nuw nsw i64 %i.a, 3
  %.add63 = add nuw nsw i64 %.idx, 6532420        ; 2 uses
  %.ptr65 = getelementptr inbounds nuw i8, ptr %0, i64 %.add63
  store i32 0, ptr %.ptr65, align 4, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8976796 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8973444
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.f = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit ]
  %.050 = phi ptr [ %2, %bb.a ], [ %.151, %.loopexit ] ; 4 uses
  %.049.idx = phi i64 [ %.add63, %bb.a ], [ %.049.add, %.loopexit ] ; 2 uses
  %.049.ptr = getelementptr inbounds i8, ptr %0, i64 %.049.idx
  %.049.add = add nsw i64 %.049.idx, -8           ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.049.add ; 2 uses
  %.ptr60 = getelementptr inbounds i8, ptr %.050, i64 -4 ; 2 uses
  %i.g = load i16, ptr %.ptr60, align 2, !tbaa !45 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.050, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !46   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = zext i16 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = add i32 %i.f, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i32 %i.j, 9
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds i8, ptr %.049.ptr, i64 -4 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !56
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.g to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %.add = sub nuw nsw i64 -4, %i.s                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.047 = phi i32 [ %i.n, %bb.c ], [ %.2, %bb.h ]
  %.046.idx = phi i64 [ %.add, %bb.c ], [ %.046.add, %bb.h ] ; 2 uses
  %.0 = phi i32 [ 3, %bb.c ], [ %i.ao, %bb.h ]
  %.046.ptr = getelementptr inbounds i8, ptr %.050, i64 %.046.idx ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.046.ptr, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !46   ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = zext i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = load i16, ptr %.046.ptr, align 2, !tbaa !45
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.v, 9
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.148 = phi i32 [ %.047, %bb.d ], [ %.2, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.ao, %bb.g ]  ; 3 uses
  %i.af = zext i32 %.1 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = add i32 %i.ah, %i.ab
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !213
  %i.al = add i32 %i.ai, %i.ak                    ; 2 uses
  %i.am = icmp ult i32 %i.al, %.148
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = or i32 %.1, %i.ae
  store i32 %i.an, ptr %i.q, align 4, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %i.al, %bb.f ], [ %.148, %bb.e ] ; 3 uses
  %i.ao = add i32 %.1, 1                          ; 3 uses
  %.not58 = icmp ugt i32 %i.ao, %i.ad
  br i1 %.not58, label %bb.h, label %bb.e, !llvm.loop !209

bb.h:                                             ; preds = %bb.g
  %.046.add = add nsw i64 %.046.idx, 4            ; 2 uses
  %.not59 = icmp eq i64 %.046.add, -4
  br i1 %.not59, label %.loopexit.loopexit, label %bb.d, !llvm.loop !210

.loopexit.loopexit:                               ; preds = %bb.h
  %.ptr61 = getelementptr inbounds i8, ptr %.050, i64 %.add
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.151 = phi ptr [ %.ptr60, %bb.b ], [ %.ptr61, %.loopexit.loopexit ]
  %.3 = phi i32 [ %i.n, %bb.b ], [ %.2, %.loopexit.loopexit ] ; 2 uses
  store i32 %.3, ptr %.ptr, align 4, !tbaa !213
  %.not62 = icmp eq i64 %.049.add, 6532420
  br i1 %.not62, label %bb.i, label %bb.b, !llvm.loop !211

bb.i:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.ap, i8 0, i64 1280, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %i.br, %bb.m ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.av = and i32 %i.au, 511                      ; 2 uses
  %i.aw = lshr i32 %i.au, 9                       ; 2 uses
  %i.ax = icmp eq i32 %i.av, 1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !14
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !14
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1060 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !14
  %i.bk = zext nneg i32 %i.aw to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %i.bc, %bb.l ], [ 1, %bb.k ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.pre-phi.i ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.ar
  br i1 %.not.i, label %deflate_tally_item_list.exit, label %bb.j, !llvm.loop !212

deflate_tally_item_list.exit:                     ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 32, !tbaa !14
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 32, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2680
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2552
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.as, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = distinct !{!5, !30}
!6 = distinct !{!6, !30}
!7 = distinct !{!7, !30}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!"deflate_freqs", !12, i64 0, !12, i64 1152}
!18 = !{!"block_split_stats", !12, i64 0, !12, i64 40, !13, i64 80, !13, i64 84}
!19 = !{!"deflate_codewords", !12, i64 0, !12, i64 1152}
!20 = !{!"deflate_lens", !12, i64 0, !12, i64 288}
!21 = !{!"deflate_codes", !19, i64 0, !20, i64 1280}
!22 = !{!"libdeflate_compressor", !15, i64 0, !13, i64 8, !16, i64 16, !13, i64 24, !13, i64 28, !17, i64 32, !18, i64 1312, !21, i64 1400, !21, i64 3000, !12, i64 4600, !12, i64 6080}
!23 = !{!22, !13, i64 8}
!24 = !{!22, !16, i64 16}
!25 = !{!22, !15, i64 0}
!26 = !{!22, !13, i64 28}
!27 = !{!22, !13, i64 24}
!28 = !{!12, !12, i64 0}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"short", !12, i64 0}
!34 = !{!"deflate_sequence", !13, i64 0, !33, i64 4, !33, i64 6}
!35 = !{!34, !13, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!33, !33, i64 0}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!34, !33, i64 4}
!40 = !{!34, !33, i64 6}
!41 = !{!18, !13, i64 80}
!42 = !{!"_Bool", !12, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"lz_match", !33, i64 0, !33, i64 2}
!45 = !{!44, !33, i64 0}
!46 = !{!44, !33, i64 2}
!47 = !{!18, !13, i64 84}
!48 = !{!22, !13, i64 1396}
!49 = !{!"p1 omnipotent char", !15, i64 0}
!50 = !{!"deflate_output_bitstream", !16, i64 0, !13, i64 8, !49, i64 16, !49, i64 24}
!51 = !{!50, !16, i64 0}
!52 = !{!50, !13, i64 8}
!53 = !{!50, !49, i64 16}
!54 = !{!50, !49, i64 24}
!55 = !{!"deflate_optimum_node", !13, i64 0, !13, i64 4}
!56 = !{!55, !13, i64 4}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !30, !31, !32}
!59 = distinct !{!59, !30, !31, !32}
!60 = distinct !{!60, !30, !31}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !30, !31, !32}
!64 = distinct !{!64, !30, !31, !32}
!65 = distinct !{!65, !30, !31}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !30, !31, !32}
!68 = distinct !{!68, !30, !31, !32}
!69 = distinct !{!69, !30, !31}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, i1 true, !"deflate_compress_lazy_generic"}
!78 = distinct !{!78, !77, !"deflate_compress_lazy_generic: argument 0"}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !30, !31, !32}
!81 = !{!78}
!82 = distinct !{!82, i1 true, !"deflate_compress_lazy_generic"}
!83 = distinct !{!83, !82, !"deflate_compress_lazy_generic: argument 0"}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !30, !31, !32}
!86 = !{!83}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30, !31, !32}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !30, !31, !32}
!93 = distinct !{!93, !30}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30, !31, !32}
!98 = distinct !{!98, !30, !31, !32}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30, !106}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = !{!"llvm.loop.peeled.count", i32 1}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !30}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !30}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30}
!113 = distinct !{!113, !30}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !29}
!122 = distinct !{!122, !30}
!123 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!124 = distinct !{!124, !30}
!125 = distinct !{!125, !30}
!126 = distinct !{!126, !30}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !30}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !30, !31, !32}
!136 = distinct !{!136, !30}
!137 = distinct !{!137, !30, !31, !32}
!138 = distinct !{!138, !30, !31}
!139 = distinct !{!139, !30}
!140 = distinct !{!140, !30, !31, !32}
!141 = distinct !{!141, !30}
!142 = distinct !{!142, !30, !31, !32}
!143 = distinct !{!143, i1 false, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !30, !31}
!147 = distinct !{!147, !30, !31, !32}
!148 = distinct !{!148, !30, !31, !32}
!149 = distinct !{!149, i1 false, !"LVerDomain"}
!150 = distinct !{!150, !149}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !30, !31}
!153 = distinct !{!153, i1 false, !"LVerDomain"}
!154 = distinct !{!154, !153}
!155 = distinct !{!155, !153}
!156 = distinct !{!156, !30, !31, !32}
!157 = distinct !{!157, !30, !31}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, i1 false, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !159}
!163 = distinct !{!163, !30, !31}
!164 = distinct !{!164, !30}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, i1 false, !"LVerDomain"}
!167 = distinct !{!167, !166}
!168 = distinct !{!168, !166}
!169 = distinct !{!169, !30, !31, !32}
!170 = distinct !{!170, !30, !31}
!171 = distinct !{!171, i1 false, !"LVerDomain"}
end_hunk_2
