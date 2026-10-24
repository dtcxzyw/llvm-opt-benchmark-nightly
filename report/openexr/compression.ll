Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
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
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %.46782.i.prol, i64 4 ; 3 uses
  store i32 %i.eu, ptr %.46782.i.prol, align 4, !tbaa !16
  %i.gt = add i32 %.483.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !218

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph85.i
  %.lcssa89.unr = phi ptr [ poison, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %.483.i.unr = phi i32 [ %.3.i, %.lr.ph85.i ], [ %i.gt, %.prol.preheader ]
  %.46782.i.unr = phi ptr [ %.366.i, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %i.gu = icmp ult i32 %i.gp, 3
  br i1 %i.gu, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph85.i.new
  %.483.i = phi i32 [ %i.hi, %.lr.ph85.i.new ], [ %.483.i.unr, %.prol.loopexit ] ; 2 uses
  %.46782.i = phi ptr [ %i.hh, %.lr.ph85.i.new ], [ %.46782.i.unr, %.prol.loopexit ] ; 5 uses
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gm, align 4, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %.46782.i, i64 4
  store i32 %i.eu, ptr %.46782.i, align 4, !tbaa !16
  %i.gy = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gm, align 4, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %.46782.i, i64 8
  store i32 %i.eu, ptr %i.gx, align 4, !tbaa !16
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gm, align 4, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %.46782.i, i64 12
  store i32 %i.eu, ptr %i.ha, align 4, !tbaa !16
  %i.he = add i32 %.483.i, 3
  %i.hf = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gm, align 4, !tbaa !16
  %i.hh = getelementptr inbounds nuw i8, ptr %.46782.i, i64 16 ; 2 uses
  store i32 %i.eu, ptr %i.hd, align 4, !tbaa !16
  %i.hi = add i32 %.483.i, 4
  %.not72.i.3 = icmp eq i32 %i.he, %.0.lcssa.i
  br i1 %.not72.i.3, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new, !llvm.loop !219

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i.new, %.prol.loopexit
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.hh, %.lr.ph85.i.new ]
  %i.hj = add i32 %.0.lcssa.i, 1
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.loopexit.i, %.loopexit.thread.i
  %.467.lcssa.i = phi ptr [ %.366.i, %.loopexit.i ], [ %.lcssa89, %._crit_edge86.loopexit.i ], [ %i.fq, %.loopexit.thread.i ] ; 2 uses
  %.4.lcssa.i = phi i32 [ %.lcssa.i, %.loopexit.i ], [ %i.hj, %._crit_edge86.loopexit.i ], [ %.lcssa.i, %.loopexit.thread.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.4.lcssa.i, %i.ee
  br i1 %.not73.i, label %deflate_compute_precode_items.exit, label %bb.bn, !llvm.loop !220

deflate_compute_precode_items.exit:               ; preds = %._crit_edge86.i
  %i.hk = ptrtoint ptr %.467.lcssa.i to i64
  %i.hl = ptrtoint ptr %i.ef to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %i.ho, ptr %i.hp, align 8, !tbaa !36
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4684
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 19, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 6068
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4775
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !36
  %.not42 = icmp eq i8 %i.hu, 0
  br i1 %.not42, label %bb.bs, label %bb.cg

bb.bs:                                            ; preds = %deflate_compute_precode_items.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4761
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !36
  %.not42.1 = icmp eq i8 %i.hw, 0
  br i1 %.not42.1, label %bb.bt, label %bb.cg

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4774
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !36
  %.not42.2 = icmp eq i8 %i.hy, 0
  br i1 %.not42.2, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4762
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !36
  %.not42.3 = icmp eq i8 %i.ia, 0
  br i1 %.not42.3, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 4773
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !36
  %.not42.4 = icmp eq i8 %i.ic, 0
  br i1 %.not42.4, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4763
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !36
  %.not42.5 = icmp eq i8 %i.ie, 0
  br i1 %.not42.5, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4772
  %i.ig = load i8, ptr %i.if, align 4, !tbaa !36
  %.not42.6 = icmp eq i8 %i.ig, 0
  br i1 %.not42.6, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4764
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !36
  %.not42.7 = icmp eq i8 %i.ii, 0
  br i1 %.not42.7, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4771
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !36
  %.not42.8 = icmp eq i8 %i.ik, 0
  br i1 %.not42.8, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4765
  %i.im = load i8, ptr %i.il, align 1, !tbaa !36
  %.not42.9 = icmp eq i8 %i.im, 0
  br i1 %.not42.9, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4770
  %i.io = load i8, ptr %i.in, align 2, !tbaa !36
  %.not42.10 = icmp eq i8 %i.io, 0
  br i1 %.not42.10, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4766
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !36
  %.not42.11 = icmp eq i8 %i.iq, 0
  br i1 %.not42.11, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 4769
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !36
  %.not42.12 = icmp eq i8 %i.is, 0
  br i1 %.not42.12, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4767
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !36
  %.not42.13 = icmp eq i8 %i.iu, 0
  br i1 %.not42.13, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.iw = load i8, ptr %i.iv, align 16, !tbaa !36
  %.not42.14 = icmp eq i8 %i.iw, 0
  %spec.select70 = select i1 %.not42.14, i32 4, i32 5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %deflate_compute_precode_items.exit
  %storemerge41.lcssa = phi i32 [ 19, %deflate_compute_precode_items.exit ], [ 8, %bb.cc ], [ 12, %bb.by ], [ 18, %bb.bs ], [ %spec.select70, %bb.cf ], [ 17, %bb.bt ], [ 11, %bb.bz ], [ 16, %bb.bu ], [ 6, %bb.ce ], [ 15, %bb.bv ], [ 9, %bb.cb ], [ 14, %bb.bw ], [ 7, %bb.cd ], [ 13, %bb.bx ], [ 10, %bb.ca ]
  store i32 %storemerge41.lcssa, ptr %i.hs, align 4, !tbaa !36
  %i.ix = load i32, ptr %i.b, align 4, !tbaa !36  ; 2 uses
  %.not43 = icmp eq i32 %i.ix, 288
  br i1 %.not43, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.iy
  %i.ja = load i32, ptr %i.bn, align 16, !tbaa !36
  %i.jb = zext i32 %i.ja to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %i.bo, ptr nonnull align 1 %i.iz, i64 %i.jb, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @do_end_block_check(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60   ; 7 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <4 x i32>, ptr %.phi.trans.insert.a, align 4, !tbaa !16
  %i.d = load <4 x i32>, ptr %.phi.trans.insert46, align 4, !tbaa !16
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load <4 x i32>, ptr %.phi.trans.insert60, align 4, !tbaa !16
  %i.f = load <4 x i32>, ptr %.phi.trans.insert62, align 4, !tbaa !16
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !55
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !55     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load <4 x i32>, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.l = load <4 x i32>, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load <4 x i32>, ptr %i.m, align 4, !tbaa !16 ; 4 uses
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !16 ; 4 uses
  %3 = load <2 x i32>, ptr %i.g, align 4, !tbaa !16
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <4 x i32> %i.k, <4 x i32> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %6 = shufflevector <8 x i32> %4, <8 x i32> %5, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %7 = load <2 x i32>, ptr %0, align 4, !tbaa !16
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
  %28 = load i32, ptr %2, align 4, !tbaa !55      ; 2 uses
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
  %29 = load <2 x i32>, ptr %0, align 4, !tbaa !16
  %30 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !16
  %31 = add <2 x i32> %30, %29
  store <2 x i32> %31, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = add <4 x i32> %i.as, %i.at
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.ay, ptr %i.ax, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = add <4 x i32> %i.au, %i.av
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bc, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !16
  store i32 0, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !60
  store i32 0, ptr %i.be, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((40, 1320)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #14 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !36
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !16
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !221

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod481 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod481)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !16
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !222

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store i32 1, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0) ; 2 uses
  %i.as = add i32 %3, 257                         ; 2 uses
  %i.at = icmp ult i32 %i.as, 305000
  %narrow = select i1 %i.at, i32 %i.as, i32 304999 ; 4 uses
  %.not182 = icmp ugt i32 %3, %narrow
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.av = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aw = add nuw nsw i32 %narrow, 1
  %i.ax = add nuw nsw i32 %narrow, 1
  %i.ay = sub nuw i32 %i.ax, %3
  %i.az = sub nuw i32 %narrow, %3
  %xtraiter482 = and i32 %i.ay, 7                 ; 2 uses
  %lcmp.mod483.not = icmp eq i32 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter482
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !223

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bb = icmp samesign ult i32 %i.az, 7
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !36
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !36
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !36
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !36
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.aw, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !224

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %deflate_choose_all_literals.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 9011696
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !36
  %.not84 = icmp ugt i32 %3, %i.bs
  br i1 %.not84, label %.thread, label %vector.memcheck

.thread:                                          ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

vector.memcheck:                                  ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8974608 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2188) %i.bt, ptr noundef nonnull align 4 dereferenceable(2188) %i.bu, i64 2188, i1 false), !tbaa.struct !284
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4288 ; 6 uses
  %i.bw = getelementptr i8, ptr %0, i64 8973444
  %i.bx = getelementptr i8, ptr %0, i64 4544
  %bound0 = icmp ult ptr %i.bu, %i.bx
  %bound1 = icmp ult ptr %i.bv, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load = load <4 x i8>, ptr %i.by, align 1, !tbaa !36, !alias.scope !285 ; 2 uses
end_hunk_0
begin_hunk_1_@deflate_optimize_and_flush_block:bb.a
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !36
  %i.kr = zext i8 %i.kq to i32                    ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 257
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !290
  %i.ku = zext i8 %i.kt to i32                    ; 12 uses
  br i1 %5, label %vector.ph317, label %bb.k

vector.ph317:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.kr, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat319, ptr %i.kv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.kw, align 4, !tbaa !36
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat319, ptr %i.kx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ky, align 4, !tbaa !36
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat319, ptr %i.kz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.la, align 4, !tbaa !36
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat319, ptr %i.lb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lc, align 4, !tbaa !36
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat319, ptr %i.ld, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.le, align 4, !tbaa !36
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat319, ptr %i.lf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lg, align 4, !tbaa !36
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat319, ptr %i.lh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.li, align 4, !tbaa !36
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat319, ptr %i.lj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lk, align 4, !tbaa !36
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat319, ptr %i.ll, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lm, align 4, !tbaa !36
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat319, ptr %i.ln, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lo, align 4, !tbaa !36
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat319, ptr %i.lp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lq, align 4, !tbaa !36
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat319, ptr %i.lr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ls, align 4, !tbaa !36
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat319, ptr %i.lt, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lu, align 4, !tbaa !36
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat319, ptr %i.lv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.lw, align 4, !tbaa !36
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat319, ptr %i.lx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ly, align 4, !tbaa !36
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat319, ptr %i.lz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ma, align 4, !tbaa !36
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat319, ptr %i.mb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mc, align 4, !tbaa !36
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat319, ptr %i.md, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.me, align 4, !tbaa !36
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat319, ptr %i.mf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mg, align 4, !tbaa !36
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat319, ptr %i.mh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mi, align 4, !tbaa !36
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat319, ptr %i.mj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mk, align 4, !tbaa !36
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat319, ptr %i.ml, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mm, align 4, !tbaa !36
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat319, ptr %i.mn, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mo, align 4, !tbaa !36
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat319, ptr %i.mp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mq, align 4, !tbaa !36
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat319, ptr %i.mr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ms, align 4, !tbaa !36
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat319, ptr %i.mt, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mu, align 4, !tbaa !36
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat319, ptr %i.mv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.mw, align 4, !tbaa !36
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat319, ptr %i.mx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.my, align 4, !tbaa !36
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat319, ptr %i.mz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.na, align 4, !tbaa !36
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat319, ptr %i.nb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.nc, align 4, !tbaa !36
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat319, ptr %i.nd, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ne, align 4, !tbaa !36
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat319, ptr %i.nf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat319, ptr %i.ng, align 4, !tbaa !36
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph317
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph317 ], [ %indvars.iv.next22.i.i.1, %bb.j ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !36
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !36
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 4
  %i.np = add nuw nsw i32 %i.no, %i.ku
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv21.i.i
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !36
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !36
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !36
  %i.nw = zext i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  %i.ny = add nuw nsw i32 %i.nx, %i.ku
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.next22.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !36
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.j, !llvm.loop !240

deflate_set_default_costs.exit.i:                 ; preds = %bb.j
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.oa, align 16, !tbaa !36
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.ob, align 32, !tbaa !36
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.oc, align 16, !tbaa !36
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.od, align 32, !tbaa !36
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.oe, align 16, !tbaa !36
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.of, align 32, !tbaa !36
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.og, align 16, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.oh, align 32, !tbaa !36
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.oi, align 4, !tbaa !36
  br label %deflate_set_initial_costs.exit

bb.k:                                             ; preds = %deflate_choose_default_litlen_costs.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 9009568
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !61
  %i.om = zext i32 %i.ol to i64                   ; 11 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 9009608
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !36
  %i.oq = zext i32 %i.op to i64                   ; 11 uses
  %i.or = load i32, ptr %i.oj, align 32, !tbaa !36
  %i.os = zext i32 %i.or to i64
  %i.ot = mul nuw i64 %i.os, %i.om                ; 3 uses
  %i.ou = load i32, ptr %i.on, align 16, !tbaa !16
  %i.ov = zext i32 %i.ou to i64
  %i.ow = mul nuw i64 %i.ov, %i.oq                ; 3 uses
  %9 = icmp ugt i64 %i.ot, %i.ow
  %10 = sub nuw i64 %i.ot, %i.ow
  %i.ox = sub nuw i64 %i.ow, %i.ot
  %11 = select i1 %9, i64 %10, i64 %i.ox
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 9009572
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !36
  %i.pa = zext i32 %i.oz to i64
  %i.pb = mul nuw i64 %i.pa, %i.om                ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !16
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nuw i64 %i.pe, %i.oq                ; 3 uses
  %12 = icmp ugt i64 %i.pb, %i.pf
  %13 = sub nuw i64 %i.pb, %i.pf
  %i.pg = sub nuw i64 %i.pf, %i.pb
  %14 = select i1 %12, i64 %13, i64 %i.pg
  %i.ph = add i64 %14, %11
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 9009576
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !36
  %i.pk = zext i32 %i.pj to i64
  %i.pl = mul nuw i64 %i.pk, %i.om                ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !16
  %i.po = zext i32 %i.pn to i64
  %i.pp = mul nuw i64 %i.po, %i.oq                ; 3 uses
  %15 = icmp ugt i64 %i.pl, %i.pp
  %16 = sub nuw i64 %i.pl, %i.pp
  %i.pq = sub nuw i64 %i.pp, %i.pl
  %17 = select i1 %15, i64 %16, i64 %i.pq
  %i.pr = add i64 %i.ph, %17
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 9009580
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !36
  %i.pu = zext i32 %i.pt to i64
  %i.pv = mul nuw i64 %i.pu, %i.om                ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !16
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw i64 %i.py, %i.oq                ; 3 uses
  %18 = icmp ugt i64 %i.pv, %i.pz
  %19 = sub nuw i64 %i.pv, %i.pz
  %i.qa = sub nuw i64 %i.pz, %i.pv
  %20 = select i1 %18, i64 %19, i64 %i.qa
  %i.qb = add i64 %i.pr, %20
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 9009584
  %i.qd = load i32, ptr %i.qc, align 16, !tbaa !36
  %i.qe = zext i32 %i.qd to i64
  %i.qf = mul nuw i64 %i.qe, %i.om                ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.qh = load i32, ptr %i.qg, align 32, !tbaa !16
  %i.qi = zext i32 %i.qh to i64
  %i.qj = mul nuw i64 %i.qi, %i.oq                ; 3 uses
  %21 = icmp ugt i64 %i.qf, %i.qj
  %22 = sub nuw i64 %i.qf, %i.qj
  %i.qk = sub nuw i64 %i.qj, %i.qf
  %23 = select i1 %21, i64 %22, i64 %i.qk
  %i.ql = add i64 %i.qb, %23
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 9009588
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !36
  %i.qo = zext i32 %i.qn to i64
  %i.qp = mul nuw i64 %i.qo, %i.om                ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !16
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw i64 %i.qs, %i.oq                ; 3 uses
  %24 = icmp ugt i64 %i.qp, %i.qt
  %25 = sub nuw i64 %i.qp, %i.qt
  %i.qu = sub nuw i64 %i.qt, %i.qp
  %26 = select i1 %24, i64 %25, i64 %i.qu
  %i.qv = add i64 %i.ql, %26
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 9009592
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !36
  %i.qy = zext i32 %i.qx to i64
  %i.qz = mul nuw i64 %i.qy, %i.om                ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !16
  %i.rc = zext i32 %i.rb to i64
  %i.rd = mul nuw i64 %i.rc, %i.oq                ; 3 uses
  %27 = icmp ugt i64 %i.qz, %i.rd
  %28 = sub nuw i64 %i.qz, %i.rd
  %i.re = sub nuw i64 %i.rd, %i.qz
  %29 = select i1 %27, i64 %28, i64 %i.re
  %i.rf = add i64 %i.qv, %29
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 9009596
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !36
  %i.ri = zext i32 %i.rh to i64
  %i.rj = mul nuw i64 %i.ri, %i.om                ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !16
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw i64 %i.rm, %i.oq                ; 3 uses
  %30 = icmp ugt i64 %i.rj, %i.rn
  %31 = sub nuw i64 %i.rj, %i.rn
  %i.ro = sub nuw i64 %i.rn, %i.rj
  %32 = select i1 %30, i64 %31, i64 %i.ro
  %i.rp = add i64 %i.rf, %32
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 9009600
  %i.rr = load i32, ptr %i.rq, align 32, !tbaa !36
  %i.rs = zext i32 %i.rr to i64
  %i.rt = mul nuw i64 %i.rs, %i.om                ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.rv = load i32, ptr %i.ru, align 16, !tbaa !16
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw i64 %i.rw, %i.oq                ; 3 uses
  %33 = icmp ugt i64 %i.rt, %i.rx
  %34 = sub nuw i64 %i.rt, %i.rx
  %i.ry = sub nuw i64 %i.rx, %i.rt
  %35 = select i1 %33, i64 %34, i64 %i.ry
  %i.rz = add i64 %i.rp, %35
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 9009604
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !36
  %i.sc = zext i32 %i.sb to i64
  %i.sd = mul nuw i64 %i.sc, %i.om                ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !16
  %i.sg = zext i32 %i.sf to i64
  %i.sh = mul nuw i64 %i.sg, %i.oq                ; 3 uses
  %36 = icmp ugt i64 %i.sd, %i.sh
  %37 = sub nuw i64 %i.sd, %i.sh
  %i.si = sub nuw i64 %i.sh, %i.sd
  %38 = select i1 %36, i64 %37, i64 %i.si
  %i.sj = add i64 %i.rz, %38                      ; 3 uses
  %i.sk = mul nuw nsw i64 %i.om, 200
  %i.sl = mul i64 %i.sk, %i.oq
  %i.sm = lshr i64 %i.sl, 9                       ; 3 uses
  %i.sn = mul nuw nsw i64 %i.sm, 3                ; 2 uses
  %i.so = icmp ugt i64 %i.sj, %i.sn
  br i1 %i.so, label %vector.ph309, label %bb.m

vector.ph309:                                     ; preds = %bb.k
  %broadcast.splatinsert310 = insertelement <4 x i32> poison, i32 %i.kr, i64 0
  %broadcast.splat311 = shufflevector <4 x i32> %broadcast.splatinsert310, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat311, ptr %i.sp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.sq, align 4, !tbaa !36
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat311, ptr %i.sr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ss, align 4, !tbaa !36
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat311, ptr %i.st, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.su, align 4, !tbaa !36
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat311, ptr %i.sv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.sw, align 4, !tbaa !36
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat311, ptr %i.sx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.sy, align 4, !tbaa !36
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat311, ptr %i.sz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ta, align 4, !tbaa !36
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat311, ptr %i.tb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tc, align 4, !tbaa !36
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat311, ptr %i.td, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.te, align 4, !tbaa !36
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat311, ptr %i.tf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tg, align 4, !tbaa !36
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat311, ptr %i.th, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ti, align 4, !tbaa !36
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat311, ptr %i.tj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tk, align 4, !tbaa !36
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat311, ptr %i.tl, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tm, align 4, !tbaa !36
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat311, ptr %i.tn, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.to, align 4, !tbaa !36
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat311, ptr %i.tp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tq, align 4, !tbaa !36
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat311, ptr %i.tr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ts, align 4, !tbaa !36
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat311, ptr %i.tt, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tu, align 4, !tbaa !36
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat311, ptr %i.tv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.tw, align 4, !tbaa !36
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat311, ptr %i.tx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ty, align 4, !tbaa !36
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat311, ptr %i.tz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ua, align 4, !tbaa !36
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat311, ptr %i.ub, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uc, align 4, !tbaa !36
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat311, ptr %i.ud, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ue, align 4, !tbaa !36
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat311, ptr %i.uf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ug, align 4, !tbaa !36
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat311, ptr %i.uh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.ui, align 4, !tbaa !36
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat311, ptr %i.uj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uk, align 4, !tbaa !36
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat311, ptr %i.ul, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.um, align 4, !tbaa !36
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat311, ptr %i.un, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uo, align 4, !tbaa !36
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat311, ptr %i.up, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uq, align 4, !tbaa !36
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat311, ptr %i.ur, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.us, align 4, !tbaa !36
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat311, ptr %i.ut, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uu, align 4, !tbaa !36
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat311, ptr %i.uv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uw, align 4, !tbaa !36
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat311, ptr %i.ux, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.uy, align 4, !tbaa !36
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat311, ptr %i.uz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat311, ptr %i.va, align 4, !tbaa !36
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %vector.ph309
  %indvars.iv21.i.i.i = phi i64 [ 3, %vector.ph309 ], [ %indvars.iv.next22.i.i.i.1, %bb.l ] ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i.i
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !36
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !36
  %i.vh = zext i8 %i.vg to i32
  %i.vi = shl nuw nsw i32 %i.vh, 4
  %i.vj = add nuw nsw i32 %i.vi, %i.ku
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv21.i.i.i
  store i32 %i.vj, ptr %i.vk, align 4, !tbaa !36
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i.i
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !36
  %i.vn = zext i8 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !36
  %i.vq = zext i8 %i.vp to i32
  %i.vr = shl nuw nsw i32 %i.vq, 4
  %i.vs = add nuw nsw i32 %i.vr, %i.ku
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.next22.i.i.i
  store i32 %i.vs, ptr %i.vt, align 4, !tbaa !36
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.i.1, 259
  br i1 %exitcond24.not.i.i.i.1, label %deflate_set_default_costs.exit.i.i, label %bb.l, !llvm.loop !240

deflate_set_default_costs.exit.i.i:               ; preds = %bb.l
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.vu, align 16, !tbaa !36
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.vv, align 32, !tbaa !36
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.vw, align 16, !tbaa !36
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.vx, align 32, !tbaa !36
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.vy, align 16, !tbaa !36
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.vz, align 32, !tbaa !36
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.wa, align 16, !tbaa !36
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.wb, align 32, !tbaa !36
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.wc, align 4, !tbaa !36
  br label %deflate_set_initial_costs.exit

bb.m:                                             ; preds = %bb.k
  %i.wd = shl nuw nsw i64 %i.sj, 2
  %i.we = mul nuw nsw i64 %i.sm, 9
  %i.wf = icmp samesign ugt i64 %i.wd, %i.we
  br i1 %i.wf, label %.preheader58.i.i, label %bb.o

.preheader58.i.i:                                 ; preds = %bb.m
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 2 uses
  %i.wh = mul nuw nsw i32 %i.kr, 3
  %broadcast.splatinsert300 = insertelement <4 x i32> poison, i32 %i.wh, i64 0
  %broadcast.splat301 = shufflevector <4 x i32> %broadcast.splatinsert300, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
end_hunk_1
begin_hunk_2_@adler32_x86_sse2:bb.a
  %.3124 = phi i32 [ %i.br, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ax, %bb.d ], [ %i.r, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.aw, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bs = icmp samesign ugt i64 %.195, 3
  br i1 %i.bs, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ci, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.co, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cn, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bt, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cj, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.ck, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %i.bt = add i32 %.083, %.4131                   ; 2 uses
  %i.bu = load i8, ptr %.5, align 1, !tbaa !36
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add i32 %.4131, %i.bv
  %i.cg = add i32 %i.cf, %i.by
  %i.ch = add i32 %i.cg, %i.cb
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  %i.cj = add i32 %.082, %i.bv                    ; 2 uses
  %i.ck = add i32 %.081, %i.by                    ; 2 uses
  %i.cl = add i32 %.080, %i.cb                    ; 2 uses
  %i.cm = add i32 %.0, %i.ce                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.co = add i64 %.296, -4                       ; 3 uses
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %.preheader, label %bb.f, !llvm.loop !369

bb.f:                                             ; preds = %.preheader
  %i.cq = add i32 %i.cj, %i.bt
  %i.cr = shl i32 %i.cq, 2
  %i.cs = mul i32 %i.ck, 3
  %i.ct = shl i32 %i.cl, 1
  %i.cu = add i32 %i.cs, %.3124
  %i.cv = add i32 %i.cu, %i.cr
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = add i32 %i.cw, %i.cm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ci, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cx, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.co, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.cn, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %i.dd, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %i.dc, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.db, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.da, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.cy = load i8, ptr %.7158.prol, align 1, !tbaa !36
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %.6133155.prol, %i.cz           ; 4 uses
  %i.db = add i32 %i.da, %.5126156.prol           ; 3 uses
  %i.dc = add nsw i64 %.498157.prol, -1           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !370

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %i.de = icmp ult i64 %.397, 4
  br i1 %i.de, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %i.dz, %.lr.ph ], [ %i.dd, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %i.dy, %.lr.ph ], [ %i.dc, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.dx, %.lr.ph ], [ %i.db, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.dw, %.lr.ph ], [ %i.da, %.lr.ph.prol.loopexit ]
  %i.df = load i8, ptr %.7158, align 1, !tbaa !36
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %.6133155, %i.dg                ; 2 uses
  %i.di = add i32 %i.dh, %.5126156
  %i.dj = getelementptr inbounds nuw i8, ptr %.7158, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add i32 %i.dh, %i.dl                    ; 2 uses
  %i.dn = add i32 %i.dm, %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %.7158, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !36
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add i32 %i.dm, %i.dq                    ; 2 uses
  %i.ds = add i32 %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %.7158, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !36
  %i.dv = zext i8 %i.du to i32
  %i.dw = add i32 %i.dr, %i.dv                    ; 3 uses
  %i.dx = add i32 %i.dw, %i.ds                    ; 2 uses
  %i.dy = add nsw i64 %.498157, -4                ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.7158, i64 4
  %.not105.3 = icmp eq i64 %i.dy, 0
  br i1 %.not105.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !371

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa262 = phi i32 [ %i.da, %.lr.ph.prol.loopexit ], [ %i.dw, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.db, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.ea = urem i32 %.6133.lcssa, 65521            ; 2 uses
  %i.eb = urem i32 %.5126.lcssa, 65521            ; 2 uses
  %.not104 = icmp eq i64 %i.s, 0
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !372

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.ea, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.eb, %._crit_edge ]
  %i.ec = shl nuw i32 %.2123.lcssa, 16
  %i.ed = or i32 %i.ec, %.2129.lcssa
  ret i32 %i.ed
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <64 x i8> @llvm.masked.load.v64i8.p0(ptr captures(none), <64 x i1>, <64 x i8>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

declare i32 @internal_exr_undo_rle(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_zip(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_piz(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_pxr24(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44a(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwaa(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwab(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_ht(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi2,+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !12, i64 0}
!20 = !{!"libdeflate_options", !19, i64 0, !17, i64 8, !17, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!20, !17, i64 16}
!24 = !{!"deflate_freqs", !12, i64 0, !12, i64 1152}
!25 = !{!"block_split_stats", !12, i64 0, !12, i64 40, !13, i64 80, !13, i64 84}
!26 = !{!"deflate_codewords", !12, i64 0, !12, i64 1152}
!27 = !{!"deflate_lens", !12, i64 0, !12, i64 288}
!28 = !{!"deflate_codes", !26, i64 0, !27, i64 1280}
!29 = !{!"libdeflate_compressor", !17, i64 0, !17, i64 8, !13, i64 16, !19, i64 24, !13, i64 32, !13, i64 36, !24, i64 40, !25, i64 1320, !28, i64 1408, !28, i64 3008, !12, i64 4608, !12, i64 6080}
!30 = !{!29, !17, i64 8}
!31 = !{!29, !13, i64 16}
!32 = !{!29, !19, i64 24}
!33 = !{!29, !17, i64 0}
!34 = !{!29, !13, i64 36}
!35 = !{!29, !13, i64 32}
!36 = !{!12, !12, i64 0}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"short", !12, i64 0}
!42 = !{!"deflate_sequence", !13, i64 0, !41, i64 4, !41, i64 6}
!43 = !{!42, !13, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!41, !41, i64 0}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!42, !41, i64 4}
!48 = !{!42, !41, i64 6}
!49 = !{!"p1 omnipotent char", !17, i64 0}
!50 = !{!"_Bool", !12, i64 0}
!51 = !{!"deflate_output_bitstream", !19, i64 0, !13, i64 8, !49, i64 16, !49, i64 24, !50, i64 32}
!52 = !{!51, !50, i64 32}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!25, !13, i64 80}
!56 = !{!50, !50, i64 0}
!57 = !{!"lz_match", !41, i64 0, !41, i64 2}
!58 = !{!57, !41, i64 0}
!59 = !{!57, !41, i64 2}
!60 = !{!25, !13, i64 84}
!61 = !{!29, !13, i64 1404}
!62 = !{!51, !19, i64 0}
!63 = !{!51, !13, i64 8}
!64 = !{!51, !49, i64 16}
!65 = !{!51, !49, i64 24}
!66 = !{ptr @libdeflate_deflate_decompress_ex}
!67 = !{!"libdeflate_decompressor", !12, i64 0, !12, i64 9368, !12, i64 10976, !50, i64 11552, !13, i64 11556, !17, i64 11560}
!68 = !{!67, !17, i64 11560}
!69 = !{ptr @libdeflate_alloc_decompressor_ex}
!70 = !{ptr @libdeflate_adler32}
!71 = !{!19, !19, i64 0}
!72 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_deflate_decompress_ex}
!73 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_adler32}
!74 = !{!"", !13, i64 0, !13, i64 4, !49, i64 8}
!75 = !{!"float", !12, i64 0}
!76 = !{!"any p2 pointer", !17, i64 0}
!77 = !{!"exr_attribute_list", !13, i64 0, !13, i64 4, !76, i64 8, !76, i64 16}
!78 = !{!"", !13, i64 0, !13, i64 4}
!79 = !{!"", !78, i64 0, !78, i64 8}
!80 = !{!"p1 int", !17, i64 0}
!81 = !{!"_priv_exr_part_t", !13, i64 0, !13, i64 4, !77, i64 8, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !79, i64 144, !79, i64 160, !13, i64 176, !13, i64 180, !13, i64 184, !75, i64 188, !13, i64 192, !13, i64 196, !80, i64 200, !80, i64 208, !80, i64 216, !80, i64 224, !19, i64 232, !41, i64 240, !41, i64 242, !13, i64 244, !19, i64 248, !12, i64 256}
!82 = !{!"p1 _ZTS16_priv_exr_part_t", !17, i64 0}
!83 = !{!"p2 _ZTS16_priv_exr_part_t", !76, i64 0}
!84 = !{!"_priv_exr_context_t", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !12, i64 4, !12, i64 5, !12, i64 6, !12, i64 7, !74, i64 8, !74, i64 24, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !75, i64 124, !17, i64 128, !17, i64 136, !17, i64 144, !19, i64 152, !17, i64 160, !17, i64 168, !19, i64 176, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !81, i64 200, !82, i64 464, !83, i64 472, !77, i64 480, !12, i64 504, !12, i64 544, !12, i64 545, !12, i64 546, !13, i64 548}
!85 = !{!84, !17, i64 88}
!86 = !{!84, !17, i64 96}
!87 = !{!"p1 _ZTS19_priv_exr_context_t", !17, i64 0}
!88 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56}
!89 = !{!84, !13, i64 196}
!90 = !{!84, !17, i64 72}
!91 = !{!84, !83, i64 472}
!92 = !{!82, !82, i64 0}
!93 = !{!81, !13, i64 176}
!94 = !{!84, !17, i64 64}
!95 = !{!"deflate_optimum_node", !13, i64 0, !13, i64 4}
!96 = !{!95, !13, i64 4}
!97 = !{!"branch_weights", i32 0, i32 2001, i32 2001, i32 2000, i32 1}
!98 = !{!67, !50, i64 11552}
!99 = !{!67, !13, i64 11556}
!100 = !{!"branch_weights", i32 8, i32 24}
!101 = !{i64 5315263}
!102 = !{i64 5315772}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !38, !39}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !38, !39, !40}
!110 = distinct !{!110, !38, !39, !40}
!111 = distinct !{!111, !38, !39}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !38, !39, !40}
!114 = distinct !{!114, !38, !39, !40}
!115 = distinct !{!115, !38, !39}
!116 = !{ptr @libdeflate_aligned_malloc}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !37}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, i1 true, !"deflate_compress_lazy_generic"}
!125 = distinct !{!125, !124, !"deflate_compress_lazy_generic: argument 0"}
!126 = distinct !{!126, !37}
!127 = distinct !{!127, !38, !39, !40}
!128 = !{!125}
!129 = distinct !{!129, i1 true, !"deflate_compress_lazy_generic"}
!130 = distinct !{!130, !129, !"deflate_compress_lazy_generic: argument 0"}
!131 = distinct !{!131, !37}
!132 = distinct !{!132, !38, !39, !40}
!133 = !{!130}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38, !39, !40}
!137 = distinct !{!137, !37}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38, !39, !40}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = !{ptr @libdeflate_aligned_free}
!143 = !{ptr @libdeflate_deflate_compress}
!144 = !{ptr @libdeflate_free_compressor, ptr @libdeflate_aligned_free}
!145 = !{ptr @libdeflate_free_decompressor}
!146 = !{!"_exr_encode_pipeline", !19, i64 0, !17, i64 8, !41, i64 16, !41, i64 18, !13, i64 20, !87, i64 24, !88, i64 32, !17, i64 96, !17, i64 104, !19, i64 112, !19, i64 120, !80, i64 128, !19, i64 136, !17, i64 144, !19, i64 152, !19, i64 160, !17, i64 168, !19, i64 176, !19, i64 184, !17, i64 192, !19, i64 200, !17, i64 208, !19, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !12, i64 272}
!147 = !{!146, !87, i64 24}
!148 = !{!146, !13, i64 20}
!149 = !{!146, !19, i64 72}
!150 = !{!146, !19, i64 112}
!151 = !{!146, !80, i64 128}
!152 = !{!146, !13, i64 48}
!153 = !{!146, !13, i64 44}
!154 = !{!146, !17, i64 144}
!155 = !{!146, !19, i64 160}
!156 = !{!146, !19, i64 152}
!157 = !{!146, !17, i64 104}
!158 = !{!146, !19, i64 120}
!159 = !{!"_exr_decode_pipeline", !19, i64 0, !17, i64 8, !41, i64 16, !41, i64 18, !13, i64 20, !87, i64 24, !88, i64 32, !13, i64 96, !13, i64 100, !19, i64 104, !17, i64 112, !17, i64 120, !19, i64 128, !17, i64 136, !19, i64 144, !17, i64 152, !19, i64 160, !80, i64 168, !19, i64 176, !17, i64 184, !19, i64 192, !17, i64 200, !19, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !12, i64 264}
!160 = !{!159, !19, i64 104}
end_hunk_2
