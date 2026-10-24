Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
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
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %.46782.i.prol, i64 4 ; 3 uses
  store i32 %i.eu, ptr %.46782.i.prol, align 4, !tbaa !31
  %i.gt = add i32 %.483.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !150

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph85.i
  %.lcssa89.unr = phi ptr [ poison, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %.483.i.unr = phi i32 [ %.3.i, %.lr.ph85.i ], [ %i.gt, %.prol.preheader ]
  %.46782.i.unr = phi ptr [ %.366.i, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %i.gu = icmp ult i32 %i.gp, 3
  br i1 %i.gu, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph85.i.new
  %.483.i = phi i32 [ %i.hi, %.lr.ph85.i.new ], [ %.483.i.unr, %.prol.loopexit ] ; 2 uses
  %.46782.i = phi ptr [ %i.hh, %.lr.ph85.i.new ], [ %.46782.i.unr, %.prol.loopexit ] ; 5 uses
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gm, align 4, !tbaa !31
  %i.gx = getelementptr inbounds nuw i8, ptr %.46782.i, i64 4
  store i32 %i.eu, ptr %.46782.i, align 4, !tbaa !31
  %i.gy = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gm, align 4, !tbaa !31
  %i.ha = getelementptr inbounds nuw i8, ptr %.46782.i, i64 8
  store i32 %i.eu, ptr %i.gx, align 4, !tbaa !31
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gm, align 4, !tbaa !31
  %i.hd = getelementptr inbounds nuw i8, ptr %.46782.i, i64 12
  store i32 %i.eu, ptr %i.ha, align 4, !tbaa !31
  %i.he = add i32 %.483.i, 3
  %i.hf = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gm, align 4, !tbaa !31
  %i.hh = getelementptr inbounds nuw i8, ptr %.46782.i, i64 16 ; 2 uses
  store i32 %i.eu, ptr %i.hd, align 4, !tbaa !31
  %i.hi = add i32 %.483.i, 4
  %.not72.i.3 = icmp eq i32 %i.he, %.0.lcssa.i
  br i1 %.not72.i.3, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new, !llvm.loop !151

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i.new, %.prol.loopexit
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.hh, %.lr.ph85.i.new ]
  %i.hj = add i32 %.0.lcssa.i, 1
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.loopexit.i, %.loopexit.thread.i
  %.467.lcssa.i = phi ptr [ %.366.i, %.loopexit.i ], [ %.lcssa89, %._crit_edge86.loopexit.i ], [ %i.fq, %.loopexit.thread.i ] ; 2 uses
  %.4.lcssa.i = phi i32 [ %.lcssa.i, %.loopexit.i ], [ %i.hj, %._crit_edge86.loopexit.i ], [ %.lcssa.i, %.loopexit.thread.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.4.lcssa.i, %i.ee
  br i1 %.not73.i, label %deflate_compute_precode_items.exit, label %bb.bn, !llvm.loop !152

deflate_compute_precode_items.exit:               ; preds = %._crit_edge86.i
  %i.hk = ptrtoint ptr %.467.lcssa.i to i64
  %i.hl = ptrtoint ptr %i.ef to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %i.ho, ptr %i.hp, align 8, !tbaa !30
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4684
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 19, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 6068
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4775
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !30
  %.not42 = icmp eq i8 %i.hu, 0
  br i1 %.not42, label %bb.bs, label %bb.cg

bb.bs:                                            ; preds = %deflate_compute_precode_items.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4761
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !30
  %.not42.1 = icmp eq i8 %i.hw, 0
  br i1 %.not42.1, label %bb.bt, label %bb.cg

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4774
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !30
  %.not42.2 = icmp eq i8 %i.hy, 0
  br i1 %.not42.2, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4762
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !30
  %.not42.3 = icmp eq i8 %i.ia, 0
  br i1 %.not42.3, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 4773
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !30
  %.not42.4 = icmp eq i8 %i.ic, 0
  br i1 %.not42.4, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4763
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !30
  %.not42.5 = icmp eq i8 %i.ie, 0
  br i1 %.not42.5, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4772
  %i.ig = load i8, ptr %i.if, align 4, !tbaa !30
  %.not42.6 = icmp eq i8 %i.ig, 0
  br i1 %.not42.6, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4764
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !30
  %.not42.7 = icmp eq i8 %i.ii, 0
  br i1 %.not42.7, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4771
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !30
  %.not42.8 = icmp eq i8 %i.ik, 0
  br i1 %.not42.8, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4765
  %i.im = load i8, ptr %i.il, align 1, !tbaa !30
  %.not42.9 = icmp eq i8 %i.im, 0
  br i1 %.not42.9, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4770
  %i.io = load i8, ptr %i.in, align 2, !tbaa !30
  %.not42.10 = icmp eq i8 %i.io, 0
  br i1 %.not42.10, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4766
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !30
  %.not42.11 = icmp eq i8 %i.iq, 0
  br i1 %.not42.11, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 4769
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !30
  %.not42.12 = icmp eq i8 %i.is, 0
  br i1 %.not42.12, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4767
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !30
  %.not42.13 = icmp eq i8 %i.iu, 0
  br i1 %.not42.13, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.iw = load i8, ptr %i.iv, align 16, !tbaa !30
  %.not42.14 = icmp eq i8 %i.iw, 0
  %spec.select70 = select i1 %.not42.14, i32 4, i32 5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %deflate_compute_precode_items.exit
  %storemerge41.lcssa = phi i32 [ 19, %deflate_compute_precode_items.exit ], [ 8, %bb.cc ], [ 12, %bb.by ], [ 18, %bb.bs ], [ %spec.select70, %bb.cf ], [ 17, %bb.bt ], [ 11, %bb.bz ], [ 16, %bb.bu ], [ 6, %bb.ce ], [ 15, %bb.bv ], [ 9, %bb.cb ], [ 14, %bb.bw ], [ 7, %bb.cd ], [ 13, %bb.bx ], [ 10, %bb.ca ]
  store i32 %storemerge41.lcssa, ptr %i.hs, align 4, !tbaa !30
  %i.ix = load i32, ptr %i.b, align 4, !tbaa !30  ; 2 uses
  %.not43 = icmp eq i32 %i.ix, 288
  br i1 %.not43, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.iy
  %i.ja = load i32, ptr %i.bn, align 16, !tbaa !30
  %i.jb = zext i32 %i.ja to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %i.bo, ptr nonnull align 1 %i.iz, i64 %i.jb, i1 false)
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 8 uses
  %.not = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !31    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.pre46 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load <4 x i32>, ptr %.phi.trans.insert.a, align 4, !tbaa !31
  %i.d = load <4 x i32>, ptr %.phi.trans.insert46, align 4, !tbaa !31
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load <4 x i32>, ptr %.phi.trans.insert60, align 4, !tbaa !31
  %i.f = load <4 x i32>, ptr %.phi.trans.insert62, align 4, !tbaa !31
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre80 = load i32, ptr %.phi.trans.insert79, align 4, !tbaa !31
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre82 = load i32, ptr %.phi.trans.insert81, align 4, !tbaa !31
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !50
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2 = load i32, ptr %i.g, align 4, !tbaa !50     ; 5 uses
  %i.h = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load <4 x i32>, ptr %i.i, align 4, !tbaa !31 ; 3 uses
  %i.l = load <4 x i32>, ptr %i.j, align 4, !tbaa !31 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load <4 x i32>, ptr %i.m, align 4, !tbaa !31 ; 3 uses
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !31 ; 3 uses
  %3 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %4 = insertelement <8 x i32> %3, i32 %.pre, i64 1
  %5 = shufflevector <4 x i32> %i.l, <4 x i32> %i.p, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison>
  %i.q = shufflevector <8 x i32> %4, <8 x i32> %5, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.r = insertelement <8 x i32> poison, i32 %2, i64 0
  %i.s = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> zeroinitializer
  %6 = shufflevector <4 x i32> %i.k, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <8 x i32> %6, i32 %i.h, i64 1
  %7 = shufflevector <4 x i32> %i.k, <4 x i32> %i.o, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x i32> %i.t, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %9 = mul <8 x i32> %i.s, %8
  %10 = shufflevector <4 x i32> %i.l, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %11 = insertelement <2 x i32> %10, i32 %i.b, i64 1
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %13 = mul <8 x i32> %i.q, %12
  %i.u = sub nsw <8 x i32> %13, %9
  %14 = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.u, i1 true)
  %i.v = extractelement <4 x i32> %i.o, i64 3
  %i.w = mul i32 %2, %i.v
  %i.x = extractelement <4 x i32> %i.p, i64 3
  %i.y = mul i32 %i.x, %i.b
  %i.z = sub nsw i32 %i.y, %i.w
  %15 = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %17 = load i32, ptr %16, align 4, !tbaa !31     ; 2 uses
  %i.aa = mul i32 %2, %17
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !31     ; 2 uses
  %20 = mul i32 %19, %i.b
  %i.ab = sub nsw i32 %20, %i.aa
  %21 = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %i.ac = add i32 %2, %i.b                        ; 3 uses
  %i.ad = mul i32 %2, 200
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
  %i.ar = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx = add i32 %i.ar, %15
  %op.rdx80 = add i32 %21, %i.aq
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.034
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.ac, %bb.c ]
  %22 = phi i32 [ %.pre82, %._crit_edge ], [ %17, %bb.c ]
  %23 = phi i32 [ %.pre80, %._crit_edge ], [ %19, %bb.c ]
  %24 = phi i32 [ %.pre46, %._crit_edge ], [ %i.h, %bb.c ]
  %i.as = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.k, %bb.c ]
  %i.at = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.l, %bb.c ]
  %i.au = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.o, %bb.c ]
  %i.av = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.p, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = add i32 %24, %.pre
  store i32 %25, ptr %i.aw, align 4, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ay = add <4 x i32> %i.as, %i.at
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.ay, ptr %i.ax, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bb = add <4 x i32> %i.au, %i.av
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !31
  store i32 0, ptr %i.bc, align 4, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %27 = add i32 %22, %23
  store i32 %27, ptr %26, align 4, !tbaa !31
  store i32 0, ptr %i.bd, align 4, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !55
  store i32 0, ptr %i.be, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((40, 1320)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !153

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
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !30
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !154

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store i32 1, ptr %i.al, align 8, !tbaa !31
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
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter482
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !155

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bb = icmp samesign ult i32 %i.az, 7
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !30
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !30
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !30
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !30
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !30
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !30
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !30
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.aw, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !156

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %deflate_choose_all_literals.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 9011696
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !30
  %.not84 = icmp ugt i32 %3, %i.bs
  br i1 %.not84, label %.thread, label %vector.memcheck

.thread:                                          ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

vector.memcheck:                                  ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8974608 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2188) %i.bt, ptr noundef nonnull align 4 dereferenceable(2188) %i.bu, i64 2188, i1 false), !tbaa.struct !216
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
  %wide.load = load <4 x i8>, ptr %i.by, align 1, !tbaa !30, !alias.scope !217 ; 2 uses
end_hunk_0
begin_hunk_1_@deflate_optimize_and_flush_block:bb.a
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !30
  %i.kr = zext i8 %i.kq to i32                    ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 257
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !222
  %i.ku = zext i8 %i.kt to i32                    ; 12 uses
  br i1 %5, label %vector.ph317, label %bb.k

vector.ph317:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.kr, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat319, ptr %i.kv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.kw, align 4, !tbaa !30
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat319, ptr %i.kx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ky, align 4, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat319, ptr %i.kz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.la, align 4, !tbaa !30
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat319, ptr %i.lb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lc, align 4, !tbaa !30
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat319, ptr %i.ld, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.le, align 4, !tbaa !30
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat319, ptr %i.lf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lg, align 4, !tbaa !30
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat319, ptr %i.lh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.li, align 4, !tbaa !30
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat319, ptr %i.lj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lk, align 4, !tbaa !30
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat319, ptr %i.ll, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lm, align 4, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat319, ptr %i.ln, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lo, align 4, !tbaa !30
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat319, ptr %i.lp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lq, align 4, !tbaa !30
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat319, ptr %i.lr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ls, align 4, !tbaa !30
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat319, ptr %i.lt, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lu, align 4, !tbaa !30
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat319, ptr %i.lv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.lw, align 4, !tbaa !30
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat319, ptr %i.lx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ly, align 4, !tbaa !30
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat319, ptr %i.lz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ma, align 4, !tbaa !30
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat319, ptr %i.mb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mc, align 4, !tbaa !30
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat319, ptr %i.md, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.me, align 4, !tbaa !30
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat319, ptr %i.mf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mg, align 4, !tbaa !30
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat319, ptr %i.mh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mi, align 4, !tbaa !30
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat319, ptr %i.mj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mk, align 4, !tbaa !30
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat319, ptr %i.ml, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mm, align 4, !tbaa !30
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat319, ptr %i.mn, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mo, align 4, !tbaa !30
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat319, ptr %i.mp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mq, align 4, !tbaa !30
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat319, ptr %i.mr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ms, align 4, !tbaa !30
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat319, ptr %i.mt, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mu, align 4, !tbaa !30
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat319, ptr %i.mv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.mw, align 4, !tbaa !30
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat319, ptr %i.mx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.my, align 4, !tbaa !30
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat319, ptr %i.mz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.na, align 4, !tbaa !30
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat319, ptr %i.nb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.nc, align 4, !tbaa !30
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat319, ptr %i.nd, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ne, align 4, !tbaa !30
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat319, ptr %i.nf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat319, ptr %i.ng, align 4, !tbaa !30
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph317
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph317 ], [ %indvars.iv.next22.i.i.1, %bb.j ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !30
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !30
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 4
  %i.np = add nuw nsw i32 %i.no, %i.ku
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv21.i.i
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !30
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !30
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !30
  %i.nw = zext i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  %i.ny = add nuw nsw i32 %i.nx, %i.ku
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.next22.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !30
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.j, !llvm.loop !172

deflate_set_default_costs.exit.i:                 ; preds = %bb.j
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.oa, align 16, !tbaa !30
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.ob, align 32, !tbaa !30
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.oc, align 16, !tbaa !30
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.od, align 32, !tbaa !30
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.oe, align 16, !tbaa !30
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.of, align 32, !tbaa !30
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.og, align 16, !tbaa !30
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.oh, align 32, !tbaa !30
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.oi, align 4, !tbaa !30
  br label %deflate_set_initial_costs.exit

bb.k:                                             ; preds = %deflate_choose_default_litlen_costs.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 9009568
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !56
  %i.om = zext i32 %i.ol to i64                   ; 11 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 9009608
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !30
  %i.oq = zext i32 %i.op to i64                   ; 11 uses
  %i.or = load i32, ptr %i.oj, align 32, !tbaa !30
  %i.os = zext i32 %i.or to i64
  %i.ot = mul nuw i64 %i.os, %i.om
  %i.ou = load i32, ptr %i.on, align 16, !tbaa !31
  %i.ov = zext i32 %i.ou to i64
  %i.ow = mul nuw i64 %i.ov, %i.oq
  %i.ox = sub nsw i64 %i.ot, %i.ow
  %9 = tail call i64 @llvm.abs.i64(i64 %i.ox, i1 true)
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 9009572
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !30
  %i.pa = zext i32 %i.oz to i64
  %i.pb = mul nuw i64 %i.pa, %i.om
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !31
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nuw i64 %i.pe, %i.oq
  %i.pg = sub nsw i64 %i.pb, %i.pf
  %10 = tail call i64 @llvm.abs.i64(i64 %i.pg, i1 true)
  %i.ph = add nuw i64 %10, %9
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 9009576
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !30
  %i.pk = zext i32 %i.pj to i64
  %i.pl = mul nuw i64 %i.pk, %i.om
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !31
  %i.po = zext i32 %i.pn to i64
  %i.pp = mul nuw i64 %i.po, %i.oq
  %i.pq = sub nsw i64 %i.pl, %i.pp
  %11 = tail call i64 @llvm.abs.i64(i64 %i.pq, i1 true)
  %i.pr = add i64 %i.ph, %11
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 9009580
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !30
  %i.pu = zext i32 %i.pt to i64
  %i.pv = mul nuw i64 %i.pu, %i.om
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !31
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw i64 %i.py, %i.oq
  %i.qa = sub nsw i64 %i.pv, %i.pz
  %12 = tail call i64 @llvm.abs.i64(i64 %i.qa, i1 true)
  %i.qb = add i64 %i.pr, %12
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 9009584
  %i.qd = load i32, ptr %i.qc, align 16, !tbaa !30
  %i.qe = zext i32 %i.qd to i64
  %i.qf = mul nuw i64 %i.qe, %i.om
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.qh = load i32, ptr %i.qg, align 32, !tbaa !31
  %i.qi = zext i32 %i.qh to i64
  %i.qj = mul nuw i64 %i.qi, %i.oq
  %i.qk = sub nsw i64 %i.qf, %i.qj
  %13 = tail call i64 @llvm.abs.i64(i64 %i.qk, i1 true)
  %i.ql = add i64 %i.qb, %13
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 9009588
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !30
  %i.qo = zext i32 %i.qn to i64
  %i.qp = mul nuw i64 %i.qo, %i.om
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !31
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw i64 %i.qs, %i.oq
  %i.qu = sub nsw i64 %i.qp, %i.qt
  %14 = tail call i64 @llvm.abs.i64(i64 %i.qu, i1 true)
  %i.qv = add i64 %i.ql, %14
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 9009592
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !30
  %i.qy = zext i32 %i.qx to i64
  %i.qz = mul nuw i64 %i.qy, %i.om
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !31
  %i.rc = zext i32 %i.rb to i64
  %i.rd = mul nuw i64 %i.rc, %i.oq
  %i.re = sub nsw i64 %i.qz, %i.rd
  %15 = tail call i64 @llvm.abs.i64(i64 %i.re, i1 true)
  %i.rf = add i64 %i.qv, %15
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 9009596
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !30
  %i.ri = zext i32 %i.rh to i64
  %i.rj = mul nuw i64 %i.ri, %i.om
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !31
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw i64 %i.rm, %i.oq
  %i.ro = sub nsw i64 %i.rj, %i.rn
  %16 = tail call i64 @llvm.abs.i64(i64 %i.ro, i1 true)
  %i.rp = add i64 %i.rf, %16
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 9009600
  %i.rr = load i32, ptr %i.rq, align 32, !tbaa !30
  %i.rs = zext i32 %i.rr to i64
  %i.rt = mul nuw i64 %i.rs, %i.om
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.rv = load i32, ptr %i.ru, align 16, !tbaa !31
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw i64 %i.rw, %i.oq
  %i.ry = sub nsw i64 %i.rt, %i.rx
  %17 = tail call i64 @llvm.abs.i64(i64 %i.ry, i1 true)
  %i.rz = add i64 %i.rp, %17
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 9009604
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !30
  %i.sc = zext i32 %i.sb to i64
  %i.sd = mul nuw i64 %i.sc, %i.om
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !31
  %i.sg = zext i32 %i.sf to i64
  %i.sh = mul nuw i64 %i.sg, %i.oq
  %i.si = sub nsw i64 %i.sd, %i.sh
  %18 = tail call i64 @llvm.abs.i64(i64 %i.si, i1 true)
  %i.sj = add i64 %i.rz, %18                      ; 3 uses
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
  store <4 x i32> %broadcast.splat311, ptr %i.sp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.sq, align 4, !tbaa !30
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat311, ptr %i.sr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ss, align 4, !tbaa !30
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat311, ptr %i.st, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.su, align 4, !tbaa !30
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat311, ptr %i.sv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.sw, align 4, !tbaa !30
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat311, ptr %i.sx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.sy, align 4, !tbaa !30
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat311, ptr %i.sz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ta, align 4, !tbaa !30
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat311, ptr %i.tb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tc, align 4, !tbaa !30
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat311, ptr %i.td, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.te, align 4, !tbaa !30
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat311, ptr %i.tf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tg, align 4, !tbaa !30
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat311, ptr %i.th, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ti, align 4, !tbaa !30
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat311, ptr %i.tj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tk, align 4, !tbaa !30
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat311, ptr %i.tl, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tm, align 4, !tbaa !30
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat311, ptr %i.tn, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.to, align 4, !tbaa !30
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat311, ptr %i.tp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tq, align 4, !tbaa !30
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat311, ptr %i.tr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ts, align 4, !tbaa !30
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat311, ptr %i.tt, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tu, align 4, !tbaa !30
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat311, ptr %i.tv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.tw, align 4, !tbaa !30
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat311, ptr %i.tx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ty, align 4, !tbaa !30
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat311, ptr %i.tz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ua, align 4, !tbaa !30
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat311, ptr %i.ub, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uc, align 4, !tbaa !30
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat311, ptr %i.ud, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ue, align 4, !tbaa !30
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat311, ptr %i.uf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ug, align 4, !tbaa !30
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat311, ptr %i.uh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.ui, align 4, !tbaa !30
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat311, ptr %i.uj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uk, align 4, !tbaa !30
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat311, ptr %i.ul, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.um, align 4, !tbaa !30
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat311, ptr %i.un, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uo, align 4, !tbaa !30
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat311, ptr %i.up, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uq, align 4, !tbaa !30
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat311, ptr %i.ur, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.us, align 4, !tbaa !30
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat311, ptr %i.ut, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uu, align 4, !tbaa !30
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat311, ptr %i.uv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uw, align 4, !tbaa !30
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat311, ptr %i.ux, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.uy, align 4, !tbaa !30
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat311, ptr %i.uz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat311, ptr %i.va, align 4, !tbaa !30
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %vector.ph309
  %indvars.iv21.i.i.i = phi i64 [ 3, %vector.ph309 ], [ %indvars.iv.next22.i.i.i.1, %bb.l ] ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i.i
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !30
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !30
  %i.vh = zext i8 %i.vg to i32
  %i.vi = shl nuw nsw i32 %i.vh, 4
  %i.vj = add nuw nsw i32 %i.vi, %i.ku
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv21.i.i.i
  store i32 %i.vj, ptr %i.vk, align 4, !tbaa !30
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i.i
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !30
  %i.vn = zext i8 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !30
  %i.vq = zext i8 %i.vp to i32
  %i.vr = shl nuw nsw i32 %i.vq, 4
  %i.vs = add nuw nsw i32 %i.vr, %i.ku
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.next22.i.i.i
  store i32 %i.vs, ptr %i.vt, align 4, !tbaa !30
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.i.1, 259
  br i1 %exitcond24.not.i.i.i.1, label %deflate_set_default_costs.exit.i.i, label %bb.l, !llvm.loop !172

deflate_set_default_costs.exit.i.i:               ; preds = %bb.l
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.vu, align 16, !tbaa !30
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.vv, align 32, !tbaa !30
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.vw, align 16, !tbaa !30
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.vx, align 32, !tbaa !30
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.vy, align 16, !tbaa !30
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.vz, align 32, !tbaa !30
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.wa, align 16, !tbaa !30
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.wb, align 32, !tbaa !30
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.wc, align 4, !tbaa !30
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
begin_hunk_2_@deflate_compute_true_cost:.preheader44
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
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
  store i32 0, ptr %.ptr65, align 4, !tbaa !244
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
  %i.g = load i16, ptr %.ptr60, align 2, !tbaa !53 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.050, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !54   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = zext i16 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = add i32 %i.f, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i32 %i.j, 9
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds i8, ptr %.049.ptr, i64 -4 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !62
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
  %i.u = load i16, ptr %i.t, align 2, !tbaa !54   ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = zext i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ac = load i16, ptr %.046.ptr, align 2, !tbaa !53
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.v, 9
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.148 = phi i32 [ %.047, %bb.d ], [ %.2, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.ao, %bb.g ]  ; 3 uses
  %i.af = zext i32 %.1 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = add i32 %i.ah, %i.ab
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !244
  %i.al = add i32 %i.ai, %i.ak                    ; 2 uses
  %i.am = icmp ult i32 %i.al, %.148
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = or i32 %.1, %i.ae
  store i32 %i.an, ptr %i.q, align 4, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %i.al, %bb.f ], [ %.148, %bb.e ] ; 3 uses
  %i.ao = add i32 %.1, 1                          ; 3 uses
  %.not58 = icmp ugt i32 %i.ao, %i.ad
  br i1 %.not58, label %bb.h, label %bb.e, !llvm.loop !240

bb.h:                                             ; preds = %bb.g
  %.046.add = add nsw i64 %.046.idx, 4            ; 2 uses
  %.not59 = icmp eq i64 %.046.add, -4
  br i1 %.not59, label %.loopexit.loopexit, label %bb.d, !llvm.loop !241

.loopexit.loopexit:                               ; preds = %bb.h
  %.ptr61 = getelementptr inbounds i8, ptr %.050, i64 %.add
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.151 = phi ptr [ %.ptr60, %bb.b ], [ %.ptr61, %.loopexit.loopexit ]
  %.3 = phi i32 [ %i.n, %bb.b ], [ %.2, %.loopexit.loopexit ] ; 2 uses
  store i32 %.3, ptr %.ptr, align 4, !tbaa !244
  %.not62 = icmp eq i64 %.049.add, 6532420
  br i1 %.not62, label %bb.i, label %bb.b, !llvm.loop !242

bb.i:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.ap, i8 0, i64 1280, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %i.br, %bb.m ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !62 ; 2 uses
  %i.av = and i32 %i.au, 511                      ; 2 uses
  %i.aw = lshr i32 %i.au, 9                       ; 2 uses
  %i.ax = icmp eq i32 %i.av, 1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !31
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1068 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !31
  %i.bk = zext nneg i32 %i.aw to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %i.bc, %bb.l ], [ 1, %bb.k ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.pre-phi.i ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.ar
  br i1 %.not.i, label %deflate_tally_item_list.exit, label %bb.j, !llvm.loop !243

deflate_tally_item_list.exit:                     ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !31
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2688
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2560
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #10

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
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{!4, !33}
!5 = distinct !{!5, !33}
!6 = distinct !{!6, !33}
!7 = distinct !{!7, !33}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!"deflate_freqs", !12, i64 0, !12, i64 1152}
!19 = !{!"block_split_stats", !12, i64 0, !12, i64 40, !13, i64 80, !13, i64 84}
!20 = !{!"deflate_codewords", !12, i64 0, !12, i64 1152}
!21 = !{!"deflate_lens", !12, i64 0, !12, i64 288}
!22 = !{!"deflate_codes", !20, i64 0, !21, i64 1280}
!23 = !{!"libdeflate_compressor", !17, i64 0, !17, i64 8, !13, i64 16, !16, i64 24, !13, i64 32, !13, i64 36, !18, i64 40, !19, i64 1320, !22, i64 1408, !22, i64 3008, !12, i64 4608, !12, i64 6080}
!24 = !{!23, !17, i64 8}
!25 = !{!23, !13, i64 16}
!26 = !{!23, !16, i64 24}
!27 = !{!23, !17, i64 0}
!28 = !{!23, !13, i64 36}
!29 = !{!23, !13, i64 32}
!30 = !{!12, !12, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"short", !12, i64 0}
!37 = !{!"deflate_sequence", !13, i64 0, !36, i64 4, !36, i64 6}
!38 = !{!37, !13, i64 0}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = !{!36, !36, i64 0}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!37, !36, i64 4}
!43 = !{!37, !36, i64 6}
!44 = !{!"p1 omnipotent char", !17, i64 0}
!45 = !{!"_Bool", !12, i64 0}
!46 = !{!"deflate_output_bitstream", !16, i64 0, !13, i64 8, !44, i64 16, !44, i64 24, !45, i64 32}
!47 = !{!46, !45, i64 32}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!19, !13, i64 80}
!51 = !{!45, !45, i64 0}
!52 = !{!"lz_match", !36, i64 0, !36, i64 2}
!53 = !{!52, !36, i64 0}
!54 = !{!52, !36, i64 2}
!55 = !{!19, !13, i64 84}
!56 = !{!23, !13, i64 1404}
!57 = !{!46, !16, i64 0}
!58 = !{!46, !13, i64 8}
!59 = !{!46, !44, i64 16}
!60 = !{!46, !44, i64 24}
!61 = !{!"deflate_optimum_node", !13, i64 0, !13, i64 4}
!62 = !{!61, !13, i64 4}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !33, !34, !35}
!65 = distinct !{!65, !33, !34, !35}
!66 = distinct !{!66, !33, !34}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !33, !34, !35}
!70 = distinct !{!70, !33, !34, !35}
!71 = distinct !{!71, !33, !34}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !33, !34, !35}
!74 = distinct !{!74, !33, !34, !35}
!75 = distinct !{!75, !33, !34}
!76 = !{!"libdeflate_options", !16, i64 0, !17, i64 8, !17, i64 16}
!77 = !{!76, !16, i64 0}
!78 = !{!76, !17, i64 8}
!79 = !{!76, !17, i64 16}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, i1 true, !"deflate_compress_lazy_generic"}
!88 = distinct !{!88, !87, !"deflate_compress_lazy_generic: argument 0"}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !33, !34, !35}
!91 = !{!88}
!92 = distinct !{!92, i1 true, !"deflate_compress_lazy_generic"}
!93 = distinct !{!93, !92, !"deflate_compress_lazy_generic: argument 0"}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !33, !34, !35}
!96 = !{!93}
!97 = distinct !{!97, !32}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33, !34, !35}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33, !34, !35}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33, !34, !35}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !130}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !32}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !32}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !32}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !32}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !32}
!129 = distinct !{!129, !33}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !32}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !32}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !32}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !32}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !32}
!155 = distinct !{!155, !32}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, i1 false, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !33, !34, !35}
!161 = distinct !{!161, !33, !34}
!162 = distinct !{!162, i1 false, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33, !34}
!167 = distinct !{!167, !32}
!168 = distinct !{!168, !33, !34, !35}
!169 = distinct !{!169, !33}
!170 = distinct !{!170, !33, !34, !35}
!171 = distinct !{!171, !33, !34}
end_hunk_2
