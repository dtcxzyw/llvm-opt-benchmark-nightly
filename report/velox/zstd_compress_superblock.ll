inline.NumInlined: 41
inline.NumDeleted: 22
begin_hunk_0_@ZSTD_compressSuperBlock:bb.a
  %i.go = icmp eq i32 %i.fn, %i.gn
  br i1 %i.go, label %bb.ac, label %ZSTD_getSequenceLength.exit.i.i.1

bb.ac:                                            ; preds = %ZSTD_getSequenceLength.exit.i.i
  %i.gp = load i32, ptr %i.ea, align 8, !tbaa !65
  %i.gq = icmp eq i32 %i.gp, 1
  %i.gr = or disjoint i32 %i.gj, 65536
  %spec.select.i.i.i.1 = select i1 %i.gq, i32 %i.gr, i32 %i.gj
  br label %ZSTD_getSequenceLength.exit.i.i.1

ZSTD_getSequenceLength.exit.i.i.1:                ; preds = %bb.ac, %ZSTD_getSequenceLength.exit.i.i
  %.sroa.0.1.i.i.i.1 = phi i32 [ %i.gj, %ZSTD_getSequenceLength.exit.i.i ], [ %spec.select.i.i.i.1, %bb.ac ]
  %.sroa.0.0.insert.ext.i.i.i.1 = zext nneg i32 %.sroa.0.1.i.i.i.1 to i64
  %i.gs = add i64 %i.ge, %.sroa.0.0.insert.ext.i.i.i.1 ; 3 uses
  %i.gt = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i323.i.preheader.unr-lcssa, label %bb.aa, !llvm.loop !66

.lr.ph.i323.i.preheader.unr-lcssa:                ; preds = %ZSTD_getSequenceLength.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i323.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i323.i.preheader.unr-lcssa, %.lr.ph.i320.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i320.i ], [ %i.gt, %.lr.ph.i323.i.preheader.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ 0, %.lr.ph.i320.i ], [ %i.gs, %.lr.ph.i323.i.preheader.unr-lcssa ]
  %lcmp.mod187 = trunc i64 %.0.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0200433.i, i64 %.09.i.i.epil.init ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !59
  %i.gx = zext i16 %i.gw to i32                   ; 3 uses
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gy, %i.fp
  %i.ha = lshr exact i64 %i.gz, 3
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = icmp eq i32 %i.fn, %i.hb
  br i1 %i.hc, label %bb.ad, label %ZSTD_getSequenceLength.exit.i.i.epil

bb.ad:                                            ; preds = %.epil.preheader
  %i.hd = load i32, ptr %i.ea, align 8, !tbaa !65
  %i.he = icmp eq i32 %i.hd, 1
  %i.hf = or disjoint i32 %i.gx, 65536
  %spec.select.i.i.i.epil = select i1 %i.he, i32 %i.hf, i32 %i.gx
  br label %ZSTD_getSequenceLength.exit.i.i.epil

ZSTD_getSequenceLength.exit.i.i.epil:             ; preds = %bb.ad, %.epil.preheader
  %.sroa.0.1.i.i.i.epil = phi i32 [ %i.gx, %.epil.preheader ], [ %spec.select.i.i.i.epil, %bb.ad ]
  %.sroa.0.0.insert.ext.i.i.i.epil = zext nneg i32 %.sroa.0.1.i.i.i.epil to i64
  %i.hg = add i64 %.078.i.i.epil.init, %.sroa.0.0.insert.ext.i.i.i.epil
  br label %.lr.ph.i323.i.preheader

.lr.ph.i323.i.preheader:                          ; preds = %.lr.ph.i323.i.preheader.unr-lcssa, %ZSTD_getSequenceLength.exit.i.i.epil
  %.lcssa158 = phi i64 [ %i.gs, %.lr.ph.i323.i.preheader.unr-lcssa ], [ %i.hg, %ZSTD_getSequenceLength.exit.i.i.epil ] ; 3 uses
  %xtraiter188 = and i64 %.0.i.i, 1
  %i.hh = icmp eq i64 %i.fq, 0
  br i1 %i.hh, label %.lr.ph.i323.i.epil.preheader, label %.lr.ph.i323.i.preheader.new

.lr.ph.i323.i.preheader.new:                      ; preds = %.lr.ph.i323.i.preheader
  %unroll_iter192 = and i64 %.0.i.i, -2
  br label %.lr.ph.i323.i

.lr.ph.i323.i:                                    ; preds = %ZSTD_getSequenceLength.exit.i324.i.1, %.lr.ph.i323.i.preheader.new
  %.012.i.i = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %i.ik, %ZSTD_getSequenceLength.exit.i324.i.1 ]
  %.01011.i.i = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %i.il, %ZSTD_getSequenceLength.exit.i324.i.1 ] ; 3 uses
  %niter193 = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %niter193.next.1, %ZSTD_getSequenceLength.exit.i324.i.1 ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0200433.i, i64 %.01011.i.i ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 6
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !62
  %i.hl = zext i16 %i.hk to i32                   ; 2 uses
  %i.hm = add nuw nsw i32 %i.hl, 3                ; 2 uses
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = sub i64 %i.hn, %i.fp
  %i.hp = lshr exact i64 %i.ho, 3
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = icmp eq i32 %i.fn, %i.hq
  br i1 %i.hr, label %bb.ae, label %ZSTD_getSequenceLength.exit.i324.i

bb.ae:                                            ; preds = %.lr.ph.i323.i
  %i.hs = load i32, ptr %i.ea, align 8, !tbaa !65
  %i.ht = icmp eq i32 %i.hs, 2
  %i.hu = add nuw nsw i32 %i.hl, 65539
  %spec.select8.i.i.i = select i1 %i.ht, i32 %i.hu, i32 %i.hm
  br label %ZSTD_getSequenceLength.exit.i324.i

ZSTD_getSequenceLength.exit.i324.i:               ; preds = %bb.ae, %.lr.ph.i323.i
  %.sroa.4.0.i.i.i = phi i32 [ %i.hm, %.lr.ph.i323.i ], [ %spec.select8.i.i.i, %bb.ae ]
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i32 %.sroa.4.0.i.i.i to i64
  %i.hv = add i64 %.012.i.i, %.sroa.4.0.insert.ext.i.i.i
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.0200433.i, i64 %.01011.i.i ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 14
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !62
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %i.ib = add nuw nsw i32 %i.ia, 3                ; 2 uses
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = sub i64 %i.ic, %i.fp
  %i.ie = lshr exact i64 %i.id, 3
  %i.if = trunc i64 %i.ie to i32
  %i.ig = icmp eq i32 %i.fn, %i.if
  br i1 %i.ig, label %bb.af, label %ZSTD_getSequenceLength.exit.i324.i.1

bb.af:                                            ; preds = %ZSTD_getSequenceLength.exit.i324.i
  %i.ih = load i32, ptr %i.ea, align 8, !tbaa !65
  %i.ii = icmp eq i32 %i.ih, 2
  %i.ij = add nuw nsw i32 %i.ia, 65539
  %spec.select8.i.i.i.1 = select i1 %i.ii, i32 %i.ij, i32 %i.ib
  br label %ZSTD_getSequenceLength.exit.i324.i.1

ZSTD_getSequenceLength.exit.i324.i.1:             ; preds = %bb.af, %ZSTD_getSequenceLength.exit.i324.i
  %.sroa.4.0.i.i.i.1 = phi i32 [ %i.ib, %ZSTD_getSequenceLength.exit.i324.i ], [ %spec.select8.i.i.i.1, %bb.af ]
  %.sroa.4.0.insert.ext.i.i.i.1 = zext nneg i32 %.sroa.4.0.i.i.i.1 to i64
  %i.ik = add i64 %i.hv, %.sroa.4.0.insert.ext.i.i.i.1 ; 3 uses
  %i.il = add nuw i64 %.01011.i.i, 2              ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, label %.lr.ph.i323.i, !llvm.loop !67

ZSTD_seqDecompressedSize.exit.i.unr-lcssa:        ; preds = %ZSTD_getSequenceLength.exit.i324.i.1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %ZSTD_seqDecompressedSize.exit.i, label %.lr.ph.i323.i.epil.preheader

.lr.ph.i323.i.epil.preheader:                     ; preds = %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, %.lr.ph.i323.i.preheader
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i323.i.preheader ], [ %i.ik, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ]
  %.01011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i323.i.preheader ], [ %i.il, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %.0.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.0200433.i, i64 %.01011.i.i.epil.init ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  %i.io = load i16, ptr %i.in, align 2, !tbaa !62
  %i.ip = zext i16 %i.io to i32                   ; 2 uses
  %i.iq = add nuw nsw i32 %i.ip, 3                ; 2 uses
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = sub i64 %i.ir, %i.fp
  %i.it = lshr exact i64 %i.is, 3
  %i.iu = trunc i64 %i.it to i32
  %i.iv = icmp eq i32 %i.fn, %i.iu
  br i1 %i.iv, label %bb.ag, label %ZSTD_getSequenceLength.exit.i324.i.epil

bb.ag:                                            ; preds = %.lr.ph.i323.i.epil.preheader
  %i.iw = load i32, ptr %i.ea, align 8, !tbaa !65
  %i.ix = icmp eq i32 %i.iw, 2
  %i.iy = add nuw nsw i32 %i.ip, 65539
  %spec.select8.i.i.i.epil = select i1 %i.ix, i32 %i.iy, i32 %i.iq
  br label %ZSTD_getSequenceLength.exit.i324.i.epil

ZSTD_getSequenceLength.exit.i324.i.epil:          ; preds = %bb.ag, %.lr.ph.i323.i.epil.preheader
  %.sroa.4.0.i.i.i.epil = phi i32 [ %i.iq, %.lr.ph.i323.i.epil.preheader ], [ %spec.select8.i.i.i.epil, %bb.ag ]
  %.sroa.4.0.insert.ext.i.i.i.epil = zext nneg i32 %.sroa.4.0.i.i.i.epil to i64
  %i.iz = add i64 %.012.i.i.epil.init, %.sroa.4.0.insert.ext.i.i.i.epil
  br label %ZSTD_seqDecompressedSize.exit.i

ZSTD_seqDecompressedSize.exit.i:                  ; preds = %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, %ZSTD_getSequenceLength.exit.i324.i.epil
  %.lcssa159 = phi i64 [ %i.ik, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ], [ %i.iz, %ZSTD_getSequenceLength.exit.i324.i.epil ]
  %i.ja = add i64 %.lcssa159, %.lcssa158          ; 2 uses
  %i.jb = ptrtoint ptr %.0226430.i to i64
  %i.jc = sub i64 %i.eb, %i.jb
  %i.jd = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %i.t, ptr noundef nonnull readonly %7, ptr noundef nonnull %.0200433.i, i64 noundef %.0.i.i, ptr noundef %.0210432.i, i64 noundef %.lcssa158, ptr noundef %.0235429.i, ptr noundef %.0242428.i, ptr noundef %.0249427.i, ptr noundef nonnull readonly %i.n, ptr noundef %.0226430.i, i64 noundef %i.jc, i32 noundef %i.v, i32 noundef %.0256426.i, i32 noundef %.0267425.i, ptr noundef %i.e, ptr noundef %i.f, i32 noundef 0) ; 5 uses
  %i.je = icmp ult i64 %i.jd, -119
  br i1 %i.je, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %ZSTD_seqDecompressedSize.exit.i
  %.not303.i = icmp ne i64 %i.jd, 0
  %i.jf = icmp ult i64 %i.jd, %i.ja
  %or.cond.i = select i1 %.not303.i, i1 %i.jf, i1 false
  br i1 %or.cond.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.jg = getelementptr inbounds nuw i8, ptr %.0217431.i, i64 %i.ja
  %i.jh = getelementptr inbounds nuw i8, ptr %.0210432.i, i64 %.lcssa158
  %i.ji = getelementptr inbounds nuw i8, ptr %.0226430.i, i64 %i.jd
  %i.jj = getelementptr inbounds nuw i8, ptr %.0235429.i, i64 %.0.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.0242428.i, i64 %.0.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.0249427.i, i64 %.0.i.i
  %i.jm = load i32, ptr %i.e, align 4, !tbaa !3
  %.not304.i = icmp eq i32 %i.jm, 0
  %spec.select315.i = select i1 %.not304.i, i32 %.0256426.i, i32 0
  %i.jn = load i32, ptr %i.f, align 4, !tbaa !3
  %.not305.i = icmp eq i32 %i.jn, 0
  %.1268.i = select i1 %.not305.i, i32 %.0267425.i, i32 0
  br label %bb.ak

bb.aj:                                            ; preds = %ZSTD_seqDecompressedSize.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %ZSTD_compressSubBlock_multi.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %.3270.ph.i = phi i32 [ %.0267425.i, %bb.ah ], [ %.1268.i, %bb.ai ] ; 2 uses
  %.3259.ph.i = phi i32 [ %.0256426.i, %bb.ah ], [ %spec.select315.i, %bb.ai ] ; 2 uses
  %.2251.ph.i = phi ptr [ %.0249427.i, %bb.ah ], [ %i.jl, %bb.ai ] ; 2 uses
  %.2244.ph.i = phi ptr [ %.0242428.i, %bb.ah ], [ %i.jk, %bb.ai ] ; 2 uses
  %.2237.ph.i = phi ptr [ %.0235429.i, %bb.ah ], [ %i.jj, %bb.ai ] ; 2 uses
  %.2228.ph.i = phi ptr [ %.0226430.i, %bb.ah ], [ %i.ji, %bb.ai ] ; 2 uses
  %.2219.ph.i = phi ptr [ %.0217431.i, %bb.ah ], [ %i.jg, %bb.ai ] ; 2 uses
  %.2212.ph.i = phi ptr [ %.0210432.i, %bb.ah ], [ %i.jh, %bb.ai ] ; 2 uses
  %.2202.ph.i = phi ptr [ %.0200433.i, %bb.ah ], [ %i.fl, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  %i.jo = add nuw nsw i64 %.0278424.i, 1          ; 2 uses
  %8 = icmp samesign ult i64 %i.jo, %i.dy
  br i1 %8, label %bb.y, label %..thread382.loopexit_crit_edge.i, !llvm.loop !68

..thread382.loopexit_crit_edge.i:                 ; preds = %bb.ak
  %.pre473.i = ptrtoint ptr %.2202.ph.i to i64
  %.pre474.i = sub i64 %i.aa, %.pre473.i          ; 2 uses
  %.pre475.i = ashr exact i64 %.pre474.i, 3
  br label %.thread382.loopexit.i, !llvm.loop !68

.thread382.loopexit.i:                            ; preds = %sizeBlockSequences.exit.i, %..thread382.loopexit_crit_edge.i
  %.pre471.pre-phi.i = phi i64 [ %.pre475.i, %..thread382.loopexit_crit_edge.i ], [ %i.ee, %sizeBlockSequences.exit.i ]
  %.pre469.pre-phi.i = phi i64 [ %.pre474.i, %..thread382.loopexit_crit_edge.i ], [ %i.ed, %sizeBlockSequences.exit.i ]
  %.7274.ph.i = phi i32 [ %.3270.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0267425.i, %sizeBlockSequences.exit.i ]
  %.7263.ph.i = phi i32 [ %.3259.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0256426.i, %sizeBlockSequences.exit.i ]
  %.6255.ph.i = phi ptr [ %.2251.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0249427.i, %sizeBlockSequences.exit.i ]
  %.6248.ph.i = phi ptr [ %.2244.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0242428.i, %sizeBlockSequences.exit.i ]
  %.6241.ph.i = phi ptr [ %.2237.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0235429.i, %sizeBlockSequences.exit.i ]
  %.6232.ph.i = phi ptr [ %.2228.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0226430.i, %sizeBlockSequences.exit.i ]
  %.6223.ph.i = phi ptr [ %.2219.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0217431.i, %sizeBlockSequences.exit.i ]
  %.6216.ph.i = phi ptr [ %.2212.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0210432.i, %sizeBlockSequences.exit.i ] ; 2 uses
  %.6206.ph.i = phi ptr [ %.2202.ph.i, %..thread382.loopexit_crit_edge.i ], [ %.0200433.i, %sizeBlockSequences.exit.i ]
  %.pre.i = ptrtoint ptr %.6216.ph.i to i64
  %.pre465.i = sub i64 %i.ai, %.pre.i
  br label %.thread382.i

.thread382.i:                                     ; preds = %.thread382.loopexit.i, %.preheader.i, %bb.b
  %.pre-phi472.i = phi i64 [ %.pre471.pre-phi.i, %.thread382.loopexit.i ], [ %i.ad, %.preheader.i ], [ 0, %bb.b ] ; 5 uses
  %.pre-phi470.i = phi i64 [ %.pre469.pre-phi.i, %.thread382.loopexit.i ], [ %i.ac, %.preheader.i ], [ 0, %bb.b ]
  %.pre-phi466.i = phi i64 [ %.pre465.i, %.thread382.loopexit.i ], [ %i.ak, %.preheader.i ], [ %i.ak, %bb.b ] ; 2 uses
  %.7274.i = phi i32 [ %.7274.ph.i, %.thread382.loopexit.i ], [ 1, %.preheader.i ], [ 1, %bb.b ] ; 3 uses
  %.7263.i = phi i32 [ %.7263.ph.i, %.thread382.loopexit.i ], [ %i.ax, %.preheader.i ], [ %i.ax, %bb.b ] ; 2 uses
  %.6255.i = phi ptr [ %.6255.ph.i, %.thread382.loopexit.i ], [ %i.as, %.preheader.i ], [ %i.as, %bb.b ]
  %.6248.i = phi ptr [ %.6248.ph.i, %.thread382.loopexit.i ], [ %i.aq, %.preheader.i ], [ %i.aq, %bb.b ]
  %.6241.i = phi ptr [ %.6241.ph.i, %.thread382.loopexit.i ], [ %i.ao, %.preheader.i ], [ %i.ao, %bb.b ]
  %.6232.i = phi ptr [ %.6232.ph.i, %.thread382.loopexit.i ], [ %1, %.preheader.i ], [ %1, %bb.b ] ; 4 uses
  %.6223.i = phi ptr [ %.6223.ph.i, %.thread382.loopexit.i ], [ %3, %.preheader.i ], [ %3, %bb.b ] ; 2 uses
  %.6216.i = phi ptr [ %.6216.ph.i, %.thread382.loopexit.i ], [ %i.af, %.preheader.i ], [ %i.af, %bb.b ]
  %.6206.i = phi ptr [ %.6206.ph.i, %.thread382.loopexit.i ], [ %i.x, %.preheader.i ], [ %i.x, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %.not.i326.i = icmp eq ptr %i.z, %.6206.i
  br i1 %.not.i326.i, label %ZSTD_seqDecompressedSize.exit336.i, label %.lr.ph.i327.i

.lr.ph.i327.i:                                    ; preds = %.thread382.i
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !64 ; 3 uses
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.js = ptrtoint ptr %i.jr to i64               ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %xtraiter195 = and i64 %.pre-phi472.i, 1
  %i.ju = icmp eq i64 %.pre-phi472.i, 1
  br i1 %i.ju, label %.epil.preheader194, label %.lr.ph.i327.i.new

.lr.ph.i327.i.new:                                ; preds = %.lr.ph.i327.i
  %unroll_iter199 = and i64 %.pre-phi472.i, -2
  br label %bb.al

bb.al:                                            ; preds = %ZSTD_getSequenceLength.exit.i330.i.1, %.lr.ph.i327.i.new
  %.012.i328.i = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %i.kx, %ZSTD_getSequenceLength.exit.i330.i.1 ]
  %.01011.i329.i = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %i.ky, %ZSTD_getSequenceLength.exit.i330.i.1 ] ; 3 uses
  %niter200 = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %niter200.next.1, %ZSTD_getSequenceLength.exit.i330.i.1 ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.6206.i, i64 %.01011.i329.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 6
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !62
  %i.jy = zext i16 %i.jx to i32                   ; 2 uses
  %i.jz = add nuw nsw i32 %i.jy, 3                ; 2 uses
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.ka, %i.js
  %i.kc = lshr exact i64 %i.kb, 3
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = icmp eq i32 %i.jq, %i.kd
  br i1 %i.ke, label %bb.am, label %ZSTD_getSequenceLength.exit.i330.i

bb.am:                                            ; preds = %bb.al
  %i.kf = load i32, ptr %i.jt, align 8, !tbaa !65
  %i.kg = icmp eq i32 %i.kf, 2
  %i.kh = add nuw nsw i32 %i.jy, 65539
  %spec.select8.i.i335.i = select i1 %i.kg, i32 %i.kh, i32 %i.jz
  br label %ZSTD_getSequenceLength.exit.i330.i

ZSTD_getSequenceLength.exit.i330.i:               ; preds = %bb.am, %bb.al
  %.sroa.4.0.i.i331.i = phi i32 [ %i.jz, %bb.al ], [ %spec.select8.i.i335.i, %bb.am ]
  %.sroa.4.0.insert.ext.i.i332.i = zext nneg i32 %.sroa.4.0.i.i331.i to i64
  %i.ki = add i64 %.012.i328.i, %.sroa.4.0.insert.ext.i.i332.i
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.6206.i, i64 %.01011.i329.i ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 14
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !62
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %i.ko = add nuw nsw i32 %i.kn, 3                ; 2 uses
  %i.kp = ptrtoint ptr %i.kk to i64
  %i.kq = sub i64 %i.kp, %i.js
  %i.kr = lshr exact i64 %i.kq, 3
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = icmp eq i32 %i.jq, %i.ks
  br i1 %i.kt, label %bb.an, label %ZSTD_getSequenceLength.exit.i330.i.1

bb.an:                                            ; preds = %ZSTD_getSequenceLength.exit.i330.i
  %i.ku = load i32, ptr %i.jt, align 8, !tbaa !65
  %i.kv = icmp eq i32 %i.ku, 2
  %i.kw = add nuw nsw i32 %i.kn, 65539
  %spec.select8.i.i335.i.1 = select i1 %i.kv, i32 %i.kw, i32 %i.ko
  br label %ZSTD_getSequenceLength.exit.i330.i.1

ZSTD_getSequenceLength.exit.i330.i.1:             ; preds = %bb.an, %ZSTD_getSequenceLength.exit.i330.i
  %.sroa.4.0.i.i331.i.1 = phi i32 [ %i.ko, %ZSTD_getSequenceLength.exit.i330.i ], [ %spec.select8.i.i335.i.1, %bb.an ]
  %.sroa.4.0.insert.ext.i.i332.i.1 = zext nneg i32 %.sroa.4.0.i.i331.i.1 to i64
  %i.kx = add i64 %i.ki, %.sroa.4.0.insert.ext.i.i332.i.1 ; 3 uses
  %i.ky = add nuw i64 %.01011.i329.i, 2           ; 2 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, label %bb.al, !llvm.loop !67

ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa: ; preds = %ZSTD_getSequenceLength.exit.i330.i.1
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %ZSTD_seqDecompressedSize.exit336.i, label %.epil.preheader194

.epil.preheader194:                               ; preds = %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, %.lr.ph.i327.i
  %.012.i328.i.epil.init = phi i64 [ 0, %.lr.ph.i327.i ], [ %i.kx, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ]
  %.01011.i329.i.epil.init = phi i64 [ 0, %.lr.ph.i327.i ], [ %i.ky, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %.pre-phi472.i to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.6206.i, i64 %.01011.i329.i.epil.init ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 6
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !62
  %i.lc = zext i16 %i.lb to i32                   ; 2 uses
  %i.ld = add nuw nsw i32 %i.lc, 3                ; 2 uses
  %i.le = ptrtoint ptr %i.kz to i64
  %i.lf = sub i64 %i.le, %i.js
  %i.lg = lshr exact i64 %i.lf, 3
  %i.lh = trunc i64 %i.lg to i32
  %i.li = icmp eq i32 %i.jq, %i.lh
  br i1 %i.li, label %bb.ao, label %ZSTD_getSequenceLength.exit.i330.i.epil

bb.ao:                                            ; preds = %.epil.preheader194
  %i.lj = load i32, ptr %i.jt, align 8, !tbaa !65
  %i.lk = icmp eq i32 %i.lj, 2
  %i.ll = add nuw nsw i32 %i.lc, 65539
  %spec.select8.i.i335.i.epil = select i1 %i.lk, i32 %i.ll, i32 %i.ld
  br label %ZSTD_getSequenceLength.exit.i330.i.epil

ZSTD_getSequenceLength.exit.i330.i.epil:          ; preds = %bb.ao, %.epil.preheader194
  %.sroa.4.0.i.i331.i.epil = phi i32 [ %i.ld, %.epil.preheader194 ], [ %spec.select8.i.i335.i.epil, %bb.ao ]
  %.sroa.4.0.insert.ext.i.i332.i.epil = zext nneg i32 %.sroa.4.0.i.i331.i.epil to i64
  %i.lm = add i64 %.012.i328.i.epil.init, %.sroa.4.0.insert.ext.i.i332.i.epil
  br label %ZSTD_seqDecompressedSize.exit336.i

ZSTD_seqDecompressedSize.exit336.i:               ; preds = %ZSTD_getSequenceLength.exit.i330.i.epil, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, %.thread382.i
  %.0.lcssa.i334.i = phi i64 [ 0, %.thread382.i ], [ %i.kx, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ], [ %i.lm, %ZSTD_getSequenceLength.exit.i330.i.epil ]
  %i.ln = add i64 %.0.lcssa.i334.i, %.pre-phi466.i ; 2 uses
  %i.lo = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.lp = ptrtoint ptr %.6232.i to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %i.t, ptr noundef nonnull readonly %7, ptr noundef %.6206.i, i64 noundef %.pre-phi472.i, ptr noundef %.6216.i, i64 noundef %.pre-phi466.i, ptr noundef %.6241.i, ptr noundef %.6248.i, ptr noundef %.6255.i, ptr noundef nonnull readonly %i.n, ptr noundef %.6232.i, i64 noundef %i.lq, i32 noundef %i.v, i32 noundef %.7263.i, i32 noundef %.7274.i, ptr noundef %i.g, ptr noundef %i.h, i32 noundef %5) ; 5 uses
  %i.ls = icmp ult i64 %i.lr, -119
  br i1 %i.ls, label %bb.ap, label %.critedge.i

bb.ap:                                            ; preds = %ZSTD_seqDecompressedSize.exit336.i
  %.not307.i = icmp ne i64 %i.lr, 0
  %i.lt = icmp ult i64 %i.lr, %i.ln
  %or.cond316.i = select i1 %.not307.i, i1 %i.lt, i1 false
  br i1 %or.cond316.i, label %bb.aq, label %select.unfold.i

bb.aq:                                            ; preds = %bb.ap
  %i.lu = getelementptr inbounds nuw i8, ptr %.6223.i, i64 %i.ln ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.6232.i, i64 %i.lr ; 2 uses
  %i.lw = load i32, ptr %i.g, align 4, !tbaa !3
  %.not308.i = icmp eq i32 %i.lw, 0
  %i.lx = load i32, ptr %i.h, align 4, !tbaa !3
  %.not309.i = icmp eq i32 %i.lx, 0
  %.8275.i = select i1 %.not309.i, i32 %.7274.i, i32 0 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.6206.i, i64 %.pre-phi470.i ; 2 uses
  br i1 %.not308.i, label %select.unfold.i, label %.thread395.i

.thread395.i:                                     ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.as

select.unfold.i:                                  ; preds = %bb.aq, %bb.ap
  %.10277.i = phi i32 [ %.7274.i, %bb.ap ], [ %.8275.i, %bb.aq ] ; 2 uses
  %.8234.i = phi ptr [ %.6232.i, %bb.ap ], [ %i.lv, %bb.aq ] ; 2 uses
  %.8225.i = phi ptr [ %.6223.i, %bb.ap ], [ %i.lu, %bb.aq ] ; 2 uses
  %.8208.i = phi ptr [ %.6206.i, %bb.ap ], [ %i.ly, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %.not310.i = icmp eq i32 %.7263.i, 0
  br i1 %.not310.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(2064) %i.s, i64 2064, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %select.unfold.i, %.thread395.i
  %.8208405.i = phi ptr [ %i.ly, %.thread395.i ], [ %.8208.i, %bb.ar ], [ %.8208.i, %select.unfold.i ] ; 3 uses
  %.8225404.i = phi ptr [ %i.lu, %.thread395.i ], [ %.8225.i, %bb.ar ], [ %.8225.i, %select.unfold.i ] ; 3 uses
  %.8234403.i = phi ptr [ %i.lv, %.thread395.i ], [ %.8234.i, %bb.ar ], [ %.8234.i, %select.unfold.i ] ; 6 uses
  %.10277402.i = phi i32 [ %.8275.i, %.thread395.i ], [ %.10277.i, %bb.ar ], [ %.10277.i, %select.unfold.i ]
  %.not311.i = icmp eq i32 %.10277402.i, 0
  br i1 %.not311.i, label %bb.av, label %bb.at

end_hunk_0
