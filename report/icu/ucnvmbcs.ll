Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ucnv_MBCSToUnicodeWithOffsets_78:bb.a
  store i16 %i.dq, ptr %i.dk, align 2, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i16 %i.dx, ptr %i.dr, align 2, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !26 ; 2 uses
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  store i16 %i.ee, ptr %i.dy, align 2, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !26 ; 2 uses
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 %i.el, ptr %i.ef, align 2, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !27
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26 ; 2 uses
  %i.es = trunc i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 %i.es, ptr %i.em, align 2, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !27
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26 ; 2 uses
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i16 %i.ez, ptr %i.et, align 2, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !26 ; 2 uses
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 30
  store i16 %i.fg, ptr %i.fa, align 2, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !49
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !26 ; 2 uses
  %i.fn = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %i.fo = insertelement <16 x i32> %i.fn, i32 %i.bl, i64 1
  %i.fp = insertelement <16 x i32> %i.fo, i32 %i.bz, i64 2
  %i.fq = insertelement <16 x i32> %i.fp, i32 %i.cg, i64 3
  %i.fr = insertelement <16 x i32> %i.fq, i32 %i.cn, i64 4
  %i.fs = insertelement <16 x i32> %i.fr, i32 %i.cu, i64 5
  %i.ft = insertelement <16 x i32> %i.fs, i32 %i.db, i64 6
  %i.fu = insertelement <16 x i32> %i.ft, i32 %i.di, i64 7
  %i.fv = insertelement <16 x i32> %i.fu, i32 %i.dp, i64 8
  %i.fw = insertelement <16 x i32> %i.fv, i32 %i.dw, i64 9
  %i.fx = insertelement <16 x i32> %i.fw, i32 %i.ed, i64 10
  %i.fy = insertelement <16 x i32> %i.fx, i32 %i.ek, i64 11
  %i.fz = insertelement <16 x i32> %i.fy, i32 %i.er, i64 12
  %i.ga = insertelement <16 x i32> %i.fz, i32 %i.ey, i64 13
  %i.gb = insertelement <16 x i32> %i.ga, i32 %i.ff, i64 14
  %i.gc = insertelement <16 x i32> %i.gb, i32 %i.fm, i64 15
  %i.gd = call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.gc)
  %i.ge = trunc i32 %i.fm to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store ptr %i.gf, ptr %i.e, align 8, !tbaa !46
  store i16 %i.ge, ptr %i.fh, align 2, !tbaa !50
  %i.gg = icmp slt i32 %i.gd, -2146435072
  br i1 %i.gg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !49
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !46
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.gh = add nsw i32 %.0134.i, -1
  %i.gi = icmp sgt i32 %.0134.i, 1
  br i1 %i.gi, label %bb.i, label %.loopexit174.i, !llvm.loop !111

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %.promoted202.i459563 = phi ptr [ %i.bg, %bb.j ], [ %i.fi, %bb.k ] ; 2 uses
  %i.gj = phi ptr [ %i.bf, %bb.j ], [ %i.gf, %bb.k ] ; 3 uses
  %.1.i = phi i32 [ %.0134.i, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.gk = sub i32 %i.be, %.1.i                    ; 5 uses
  %i.gl = shl nsw i32 %i.gk, 4                    ; 2 uses
  %i.gm = sub nsw i32 %.1140.i, %i.gl             ; 3 uses
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !47  ; 7 uses
  %.not160.i = icmp eq ptr %i.gn, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds i8, ptr %.0144.i, i64 %i.go ; 2 uses
  %i.gq = icmp sgt i32 %i.gk, 0
  br i1 %i.gq, label %.lr.ph.i.preheader, label %.loopexit173.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %.neg = add i32 %.1.i, 1
  %xtraiter = and i32 %i.gk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gr = insertelement <4 x i32> poison, i32 %.0135.i, i64 0
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gt = add nsw <4 x i32> %i.gs, <i32 4, i32 5, i32 6, i32 7>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gv = add nsw <4 x i32> %i.gs, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gv, ptr %i.gn, align 4, !tbaa !26
  %i.gw = add nsw <4 x i32> %i.gs, <i32 8, i32 9, i32 10, i32 11>
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <4 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !26
  %i.gy = add nsw <4 x i32> %i.gs, <i32 12, i32 13, i32 14, i32 15>
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <4 x i32> %i.gw, ptr %i.gx, align 4, !tbaa !26
  %i.ha = add nsw i32 %.0135.i, 16                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 64 ; 2 uses
  store <4 x i32> %i.gy, ptr %i.gz, align 4, !tbaa !26
  %i.hc = add nsw i32 %i.gk, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.gn, %.lr.ph.i.preheader ], [ %i.hb, %.lr.ph.i.prol ]
  %.2197.i.unr = phi i32 [ %i.gk, %.lr.ph.i.preheader ], [ %i.hc, %.lr.ph.i.prol ]
  %.1136196.i.unr = phi i32 [ %.0135.i, %.lr.ph.i.preheader ], [ %i.ha, %.lr.ph.i.prol ]
  %.lcssa934.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ha, %.lr.ph.i.prol ]
  %.lcssa933.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.hb, %.lr.ph.i.prol ]
  %i.hd = icmp eq i32 %i.be, %.neg
  br i1 %i.hd, label %..loopexit173_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.he = phi ptr [ %i.ia, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.2197.i = phi i32 [ %i.ib, %.lr.ph.i ], [ %.2197.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1136196.i = phi i32 [ %i.hz, %.lr.ph.i ], [ %.1136196.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.hf = insertelement <4 x i32> poison, i32 %.1136196.i, i64 0
  %i.hg = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hh = add nsw <4 x i32> %i.hg, <i32 4, i32 5, i32 6, i32 7>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hj = add nsw <4 x i32> %i.hg, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hj, ptr %i.he, align 4, !tbaa !26
  %i.hk = add nsw <4 x i32> %i.hg, <i32 8, i32 9, i32 10, i32 11>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store <4 x i32> %i.hh, ptr %i.hi, align 4, !tbaa !26
  %i.hm = add nsw <4 x i32> %i.hg, <i32 12, i32 13, i32 14, i32 15>
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  store <4 x i32> %i.hk, ptr %i.hl, align 4, !tbaa !26
  %i.ho = add nsw i32 %.1136196.i, 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  store <4 x i32> %i.hm, ptr %i.hn, align 4, !tbaa !26
  %i.hq = insertelement <4 x i32> poison, i32 %i.ho, i64 0
  %i.hr = shufflevector <4 x i32> %i.hq, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hs = add nsw <4 x i32> %i.hr, <i32 4, i32 5, i32 6, i32 7>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hu = add nsw <4 x i32> %i.hr, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hu, ptr %i.hp, align 4, !tbaa !26
  %i.hv = add nsw <4 x i32> %i.hr, <i32 8, i32 9, i32 10, i32 11>
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store <4 x i32> %i.hs, ptr %i.ht, align 4, !tbaa !26
  %i.hx = add nsw <4 x i32> %i.hr, <i32 12, i32 13, i32 14, i32 15>
  %i.hy = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  store <4 x i32> %i.hv, ptr %i.hw, align 4, !tbaa !26
  %i.hz = add nsw i32 %.1136196.i, 32             ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 128 ; 2 uses
  store <4 x i32> %i.hx, ptr %i.hy, align 4, !tbaa !26
  %i.ib = add nsw i32 %.2197.i, -2
  %i.ic = icmp sgt i32 %.2197.i, 2
  br i1 %i.ic, label %.lr.ph.i, label %..loopexit173_crit_edge.i, !llvm.loop !112

..loopexit173_crit_edge.i:                        ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa934 = phi i32 [ %.lcssa934.unr, %.lr.ph.i.prol.loopexit ], [ %i.hz, %.lr.ph.i ]
  %.lcssa933 = phi ptr [ %.lcssa933.unr, %.lr.ph.i.prol.loopexit ], [ %i.ia, %.lr.ph.i ]
  store ptr %.lcssa933, ptr %i.f, align 8, !tbaa !47
  %.promoted202.i459.pre = load ptr, ptr %i.d, align 8
  br label %.loopexit173.i

.loopexit173.i:                                   ; preds = %..loopexit173_crit_edge.i, %bb.l, %.loopexit174.i, %bb.g
  %.promoted202.i459 = phi ptr [ %.promoted.i, %bb.g ], [ %.promoted202.i459563, %.loopexit174.i ], [ %.promoted202.i459.pre, %..loopexit173_crit_edge.i ], [ %.promoted202.i459563, %bb.l ] ; 2 uses
  %i.id = phi ptr [ %.promoted195.i, %bb.g ], [ %i.gj, %.loopexit174.i ], [ %i.gj, %..loopexit173_crit_edge.i ], [ %i.gj, %bb.l ]
  %.2146.i = phi ptr [ %.0144.i, %bb.g ], [ %.0144.i, %.loopexit174.i ], [ %i.gp, %..loopexit173_crit_edge.i ], [ %i.gp, %bb.l ] ; 6 uses
  %.2141.i = phi i32 [ %.1140.i, %bb.g ], [ %i.gm, %.loopexit174.i ], [ %i.gm, %..loopexit173_crit_edge.i ], [ %i.gm, %bb.l ]
  %.3.i = phi i32 [ %.0135.i, %bb.g ], [ %.0135.i, %.loopexit174.i ], [ %.lcssa934, %..loopexit173_crit_edge.i ], [ %.0135.i, %bb.l ] ; 8 uses
  %.2141.fr.i = freeze i32 %.2141.i               ; 2 uses
  %i.ie = icmp sgt i32 %.2141.fr.i, 0
  br i1 %i.ie, label %.outer.split.i.preheader, label %.loopexit171.split.i

.outer.split.i.preheader:                         ; preds = %.loopexit173.i, %.outer.backedge.i
  %.promoted202.i461 = phi ptr [ %.promoted202.i, %.outer.backedge.i ], [ %.promoted202.i459, %.loopexit173.i ] ; 3 uses
  %.3142.ph.i460 = phi i32 [ %.3142.ph.be.i, %.outer.backedge.i ], [ %.2141.fr.i, %.loopexit173.i ] ; 2 uses
  %i.if = phi ptr [ %storemerge253.i, %.outer.backedge.i ], [ %i.id, %.loopexit173.i ] ; 2 uses
  %i.ig = icmp ult ptr %.promoted202.i461, %i.ag
  br i1 %i.ig, label %.lr.ph889, label %bb.t

.outer.split.i:                                   ; preds = %bb.m
  %i.ih = icmp ult ptr %i.ij, %i.ag
  br i1 %i.ih, label %.lr.ph889, label %bb.t

.lr.ph889:                                        ; preds = %.outer.split.i.preheader, %.outer.split.i
  %i.ii = phi ptr [ %i.ij, %.outer.split.i ], [ %.promoted202.i461, %.outer.split.i.preheader ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 8 uses
  store ptr %i.ij, ptr %i.d, align 8, !tbaa !49
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !27
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !26 ; 3 uses
  %i.io = icmp slt i32 %i.in, -2146435072
  br i1 %i.io, label %.outer.backedge.i, label %bb.m

.outer.backedge.i:                                ; preds = %bb.m, %.lr.ph889
  %storemerge253.i = getelementptr inbounds nuw i8, ptr %i.if, i64 2 ; 2 uses
  store ptr %storemerge253.i, ptr %i.e, align 8, !tbaa !46
  %storemerge.i = trunc i32 %i.in to i16
  store i16 %storemerge.i, ptr %i.if, align 2, !tbaa !50
  %.3142.ph.be.i = add nsw i32 %.3142.ph.i460, -1
  %i.ip = icmp sgt i32 %.3142.ph.i460, 1
  %.promoted202.i = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.ip, label %.outer.split.i.preheader, label %.loopexit171.split.i, !llvm.loop !113

bb.m:                                             ; preds = %.lr.ph889
  %i.iq = lshr i32 %i.in, 20
  %i.ir = and i32 %i.iq, 15
  switch i32 %i.ir, label %.outer.split.i [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4, !tbaa !29
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.m, %bb.n
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !47  ; 4 uses
  %.not161.i = icmp ne ptr %i.is, null
  %i.it = ptrtoint ptr %i.ij to i64               ; 4 uses
  %i.iu = ptrtoint ptr %.2146.i to i64            ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = trunc i64 %i.iv to i32                  ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  %or.cond300.i = select i1 %.not161.i, i1 %i.ix, i1 false
  br i1 %or.cond300.i, label %.lr.ph205.i.preheader, label %.loopexit170.i

.lr.ph205.i.preheader:                            ; preds = %.loopexit172.i
  %i.iy = xor i64 %i.iu, -1
  %i.iz = add i64 %i.iy, %i.it                    ; 2 uses
  %i.ja = and i64 %i.iz, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ja, 8
  br i1 %min.iters.check, label %.lr.ph205.i.preheader918, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph205.i.preheader
  %n.vec = and i64 %i.iz, 4294967288              ; 4 uses
  %i.jb = shl nuw nsw i64 %n.vec, 2
  %i.jc = getelementptr i8, ptr %i.is, i64 %i.jb  ; 2 uses
  %i.jd = trunc nuw i64 %n.vec to i32             ; 2 uses
  %i.je = sub i32 %i.iw, %i.jd
  %i.jf = add i32 %.3.i, %i.jd                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.jg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.is, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %step.add, ptr %i.jh, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ja, %n.vec
  br i1 %cmp.n, label %..loopexit170_crit_edge.i, label %.lr.ph205.i.preheader918

.lr.ph205.i.preheader918:                         ; preds = %.lr.ph205.i.preheader, %middle.block
  %.ph919 = phi ptr [ %i.is, %.lr.ph205.i.preheader ], [ %i.jc, %middle.block ]
  %.0133204.i.ph = phi i32 [ %i.iw, %.lr.ph205.i.preheader ], [ %i.je, %middle.block ]
  %.4203.i.ph = phi i32 [ %.3.i, %.lr.ph205.i.preheader ], [ %i.jf, %middle.block ]
  br label %.lr.ph205.i

.lr.ph205.i:                                      ; preds = %.lr.ph205.i.preheader918, %.lr.ph205.i
  %i.jj = phi ptr [ %i.jm, %.lr.ph205.i ], [ %.ph919, %.lr.ph205.i.preheader918 ] ; 2 uses
  %.0133204.i = phi i32 [ %i.jk, %.lr.ph205.i ], [ %.0133204.i.ph, %.lr.ph205.i.preheader918 ] ; 2 uses
  %.4203.i = phi i32 [ %i.jl, %.lr.ph205.i ], [ %.4203.i.ph, %.lr.ph205.i.preheader918 ] ; 2 uses
  %i.jk = add nsw i32 %.0133204.i, -1
  %i.jl = add nsw i32 %.4203.i, 1                 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  store i32 %.4203.i, ptr %i.jj, align 4, !tbaa !26
  %i.jn = icmp samesign ugt i32 %.0133204.i, 2
  br i1 %i.jn, label %.lr.ph205.i, label %..loopexit170_crit_edge.i, !llvm.loop !115

..loopexit170_crit_edge.i:                        ; preds = %.lr.ph205.i, %middle.block
  %.lcssa809 = phi i32 [ %i.jf, %middle.block ], [ %i.jl, %.lr.ph205.i ]
  %.lcssa808 = phi ptr [ %i.jc, %middle.block ], [ %i.jm, %.lr.ph205.i ]
  store ptr %.lcssa808, ptr %i.f, align 8, !tbaa !47
  br label %.loopexit170.i

.loopexit170.i:                                   ; preds = %..loopexit170_crit_edge.i, %.loopexit172.i
  %.5.i = phi i32 [ %.3.i, %.loopexit172.i ], [ %.lcssa809, %..loopexit170_crit_edge.i ] ; 4 uses
  %i.jo = load i32, ptr %1, align 4, !tbaa !29
  %i.jp = icmp slt i32 %i.jo, 1
  br i1 %i.jp, label %bb.o, label %.loopexit170..loopexit171.split.loopexit216_crit_edge.i

.loopexit170..loopexit171.split.loopexit216_crit_edge.i: ; preds = %.loopexit170.i
  %.pre241.pre.i = load ptr, ptr %i.d, align 8
  br label %.loopexit171.split.i

bb.o:                                             ; preds = %.loopexit170.i
  %i.jq = load i8, ptr %i.ii, align 1, !tbaa !27
  store i8 %i.jq, ptr %i.ba, align 1, !tbaa !27
  %i.jr = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.js = getelementptr i8, ptr %i.jr, i64 288
  %.val.i = load ptr, ptr %i.js, align 8, !tbaa !53 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge, label %bb.p

._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge: ; preds = %bb.o
  %.pre564 = load ptr, ptr %i.d, align 8, !tbaa !49
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.jt = load i8, ptr %i.bb, align 2, !tbaa !126
  %i.ju = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.jv = call signext i8 @ucnv_extInitialMatchToU_78(ptr noundef nonnull %i.ae, ptr noundef nonnull %.val.i, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.e, ptr noundef %i.ju, ptr noundef nonnull %i.f, i32 noundef %.5.i, i8 noundef signext %i.jt, ptr noundef nonnull %1)
  %.not44.i.i = icmp eq i8 %i.jv, 0
  %.pre565 = load ptr, ptr %i.d, align 8, !tbaa !49 ; 4 uses
  br i1 %.not44.i.i, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i: ; preds = %bb.p, %._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge
  %i.jw = phi ptr [ %.pre564, %._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge ], [ %.pre565, %bb.p ] ; 2 uses
  store i32 10, ptr %1, align 4, !tbaa !29
  store i8 1, ptr %i.bc, align 8, !tbaa !54
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.it
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = add i32 %.5.i, 1
  %i.kb = add i32 %i.ka, %i.jz
  br label %.loopexit171.split.i

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i: ; preds = %bb.p
  %.pre.i = load i32, ptr %1, align 4, !tbaa !29
  %i.kc = icmp slt i32 %.pre.i, 1
  store i8 0, ptr %i.bc, align 8, !tbaa !54
  %i.kd = ptrtoint ptr %.pre565 to i64            ; 2 uses
  %i.ke = sub i64 %i.kd, %i.it
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = add i32 %.5.i, 1
  %i.kh = add i32 %i.kg, %i.kf                    ; 2 uses
  br i1 %i.kc, label %bb.q, label %.loopexit171.split.i

bb.q:                                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i
  %i.ki = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.kj = load ptr, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = lshr exact i64 %i.km, 1
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = sub i64 %i.aw, %i.kd
  %i.kq = trunc i64 %i.kp to i32
  %spec.select168.i = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.ko)
  br label %bb.g

.loopexit171.split.i:                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i, %.loopexit173.i, %.outer.backedge.i, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i, %.loopexit170..loopexit171.split.loopexit216_crit_edge.i
  %2 = phi ptr [ %.promoted202.i, %.outer.backedge.i ], [ %i.jw, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i ], [ %.pre241.pre.i, %.loopexit170..loopexit171.split.loopexit216_crit_edge.i ], [ %.promoted202.i459, %.loopexit173.i ], [ %.pre565, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ] ; 4 uses
  %.3147.i = phi ptr [ %.2146.i, %.outer.backedge.i ], [ %i.ij, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i ], [ %.2146.i, %.loopexit170..loopexit171.split.loopexit216_crit_edge.i ], [ %.2146.i, %.loopexit173.i ], [ %i.ij, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ] ; 3 uses
  %.6.i = phi i32 [ %.3.i, %.outer.backedge.i ], [ %i.kb, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i ], [ %.5.i, %.loopexit170..loopexit171.split.loopexit216_crit_edge.i ], [ %.3.i, %.loopexit173.i ], [ %i.kh, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ] ; 3 uses
  %i.kr = load i32, ptr %1, align 4, !tbaa !29
  %i.ks = icmp slt i32 %i.kr, 1
  %i.kt = icmp ult ptr %2, %i.ag
  %or.cond.i = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit171.split.i
  %i.ku = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.kv = load ptr, ptr %i.ad, align 8, !tbaa !124
  %.not165.i = icmp ult ptr %i.ku, %i.kv
  br i1 %.not165.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 15, ptr %1, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %.outer.split.i.preheader, %.outer.split.i, %bb.s, %bb.r, %.loopexit171.split.i
  %.6259.i = phi i32 [ %.6.i, %.loopexit171.split.i ], [ %.6.i, %bb.s ], [ %.6.i, %bb.r ], [ %.3.i, %.outer.split.i ], [ %.3.i, %.outer.split.i.preheader ] ; 3 uses
  %.3147258.i = phi ptr [ %.3147.i, %.loopexit171.split.i ], [ %.3147.i, %bb.s ], [ %.3147.i, %bb.r ], [ %.2146.i, %.outer.split.i ], [ %.2146.i, %.outer.split.i.preheader ]
  %3 = phi ptr [ %2, %.loopexit171.split.i ], [ %2, %bb.s ], [ %2, %bb.r ], [ %i.ij, %.outer.split.i ], [ %.promoted202.i461, %.outer.split.i.preheader ] ; 2 uses
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !47  ; 5 uses
  %.not166.i = icmp eq ptr %i.kw, null
  br i1 %.not166.i, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kx = ptrtoint ptr %3 to i64
  %i.ky = ptrtoint ptr %.3147258.i to i64
  %i.kz = sub i64 %i.kx, %i.ky                    ; 6 uses
  %.not167209.i = icmp eq i64 %i.kz, 0
  br i1 %.not167209.i, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %.lr.ph212.i.preheader

.lr.ph212.i.preheader:                            ; preds = %bb.u
  %min.iters.check898 = icmp ult i64 %i.kz, 8
  br i1 %min.iters.check898, label %.lr.ph212.i.preheader916, label %vector.ph899

vector.ph899:                                     ; preds = %.lr.ph212.i.preheader
  %n.vec900 = and i64 %i.kz, -8                   ; 4 uses
  %i.la = shl i64 %n.vec900, 2
  %i.lb = getelementptr i8, ptr %i.kw, i64 %i.la  ; 2 uses
  %i.lc = and i64 %i.kz, 7
  %i.ld = trunc i64 %n.vec900 to i32
  %i.le = add i32 %.6259.i, %i.ld
  %broadcast.splatinsert901 = insertelement <4 x i32> poison, i32 %.6259.i, i64 0
  %broadcast.splat902 = shufflevector <4 x i32> %broadcast.splatinsert901, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction903 = add nsw <4 x i32> %broadcast.splat902, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %vector.ph899
  %index905 = phi i64 [ 0, %vector.ph899 ], [ %index.next909, %vector.body904 ] ; 2 uses
  %vec.ind906 = phi <4 x i32> [ %induction903, %vector.ph899 ], [ %vec.ind.next910, %vector.body904 ] ; 3 uses
  %step.add907 = add nsw <4 x i32> %vec.ind906, splat (i32 4)
  %i.lf = shl i64 %index905, 2
  %next.gep908 = getelementptr i8, ptr %i.kw, i64 %i.lf ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep908, i64 16
  store <4 x i32> %vec.ind906, ptr %next.gep908, align 4, !tbaa !26
  store <4 x i32> %step.add907, ptr %i.lg, align 4, !tbaa !26
  %index.next909 = add nuw i64 %index905, 8       ; 2 uses
  %vec.ind.next910 = add nsw <4 x i32> %vec.ind906, splat (i32 8)
  %i.lh = icmp eq i64 %index.next909, %n.vec900
  br i1 %i.lh, label %middle.block911, label %vector.body904, !llvm.loop !116

middle.block911:                                  ; preds = %vector.body904
  %cmp.n912 = icmp eq i64 %i.kz, %n.vec900
  br i1 %cmp.n912, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %.lr.ph212.i.preheader916

.lr.ph212.i.preheader916:                         ; preds = %.lr.ph212.i.preheader, %middle.block911
  %.ph917 = phi ptr [ %i.kw, %.lr.ph212.i.preheader ], [ %i.lb, %middle.block911 ]
  %.0211.i.ph = phi i64 [ %i.kz, %.lr.ph212.i.preheader ], [ %i.lc, %middle.block911 ]
  %.7210.i.ph = phi i32 [ %.6259.i, %.lr.ph212.i.preheader ], [ %i.le, %middle.block911 ]
  br label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.lr.ph212.i.preheader916, %.lr.ph212.i
  %i.li = phi ptr [ %i.lk, %.lr.ph212.i ], [ %.ph917, %.lr.ph212.i.preheader916 ] ; 2 uses
  %.0211.i = phi i64 [ %i.ll, %.lr.ph212.i ], [ %.0211.i.ph, %.lr.ph212.i.preheader916 ]
  %.7210.i = phi i32 [ %i.lj, %.lr.ph212.i ], [ %.7210.i.ph, %.lr.ph212.i.preheader916 ] ; 2 uses
  %i.lj = add nsw i32 %.7210.i, 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  store i32 %.7210.i, ptr %i.li, align 4, !tbaa !26
  %i.ll = add i64 %.0211.i, -1                    ; 2 uses
  %.not167.i = icmp eq i64 %i.ll, 0
  br i1 %.not167.i, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %.lr.ph212.i, !llvm.loop !117

_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %.lr.ph212.i, %middle.block911, %bb.t, %bb.u
  %i.lm = phi ptr [ %i.kw, %bb.u ], [ null, %bb.t ], [ %i.lb, %middle.block911 ], [ %i.lk, %.lr.ph212.i ]
  store ptr %3, ptr %i.aa, align 8, !tbaa !44
  %i.ln = load ptr, ptr %i.e, align 8, !tbaa !46
  store ptr %i.ln, ptr %i.ac, align 8, !tbaa !123
  store ptr %i.lm, ptr %i.ao, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ej

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.lo = load ptr, ptr %i.j, align 8, !tbaa !37  ; 7 uses
  %i.lp = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.lq = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 3 uses
  %i.lr = load ptr, ptr %i.ac, align 8, !tbaa !123 ; 3 uses
  store ptr %i.lr, ptr %i.b, align 8, !tbaa !46
  %i.ls = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !125
  store ptr %i.lu, ptr %i.c, align 8, !tbaa !47
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !48
  %i.lx = and i32 %i.lw, 16
  %.not.i317 = icmp eq i32 %i.lx, 0
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 48 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !41
  %..i318 = select i1 %.not.i317, i64 56, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %..i318
  %.058.i = load ptr, ptr %i.ma, align 8, !tbaa !47
  %i.mb = icmp ult ptr %i.lp, %i.lq
  br i1 %i.mb, label %.lr.ph.i319, label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

.lr.ph.i319:                                      ; preds = %bb.v
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lo, i64 65
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 64 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i, %.lr.ph.i319
  %i.mf = phi ptr [ %i.lr, %.lr.ph.i319 ], [ %i.mt, %.backedge.i ] ; 14 uses
  %i.mg = phi ptr [ %i.lp, %.lr.ph.i319 ], [ %i.ms, %.backedge.i ] ; 4 uses
  %.076.i = phi i32 [ 0, %.lr.ph.i319 ], [ %.0.be.i, %.backedge.i ] ; 10 uses
  %.not69.i = icmp ult ptr %i.mf, %i.ls
  br i1 %.not69.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 15, ptr %1, align 4, !tbaa !29
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.y:                                             ; preds = %bb.w
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1 ; 10 uses
  store ptr %i.mh, ptr %i.a, align 8, !tbaa !49
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !27
  %i.mj = zext i8 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.058.i, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !26 ; 8 uses
  %i.mm = icmp slt i32 %i.ml, -2146435072
  br i1 %i.mm, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.mn = trunc i32 %i.ml to i16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 2 ; 2 uses
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !46
  store i16 %i.mn, ptr %i.mf, align 2, !tbaa !50
  %i.mp = load ptr, ptr %i.c, align 8, !tbaa !47  ; 3 uses
  %.not75.i = icmp eq ptr %i.mp, null
  br i1 %.not75.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mq, ptr %i.c, align 8, !tbaa !47
  store i32 %.076.i, ptr %i.mp, align 4, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.mr = add nsw i32 %.076.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325, %bb.am, %bb.al, %bb.ah, %bb.ab
  %i.ms = phi ptr [ %i.mh, %bb.ab ], [ %i.mh, %bb.ah ], [ %i.mh, %bb.al ], [ %.pre, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ], [ %i.mh, %bb.am ] ; 3 uses
  %i.mt = phi ptr [ %i.mo, %bb.ab ], [ %i.nr, %bb.ah ], [ %i.nw, %bb.al ], [ %.pre.i324, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ], [ %i.mf, %bb.am ] ; 2 uses
  %.0.be.i = phi i32 [ %i.mr, %bb.ab ], [ %i.ns, %bb.ah ], [ %i.nz, %bb.al ], [ %i.oq, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ], [ %i.oa, %bb.am ]
  %i.mu = icmp ult ptr %i.ms, %i.lq
  br i1 %i.mu, label %bb.w, label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, !llvm.loop !118

bb.ac:                                            ; preds = %bb.y
  %i.mv = and i32 %i.ml, 13631488
  %or.cond.i320 = icmp eq i32 %i.mv, 1048576
  br i1 %or.cond.i320, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.mw = lshr i32 %i.ml, 10
  %i.mx = trunc i32 %i.mw to i16
  %i.my = and i16 %i.mx, 1023
  %i.mz = or disjoint i16 %i.my, -10240
  %i.na = getelementptr inbounds nuw i8, ptr %i.mf, i64 2 ; 5 uses
  store i16 %i.mz, ptr %i.mf, align 2, !tbaa !50
  %i.nb = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %.not73.i = icmp eq ptr %i.nb, null
  br i1 %.not73.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  store ptr %i.nc, ptr %i.c, align 8, !tbaa !47
  store i32 %.076.i, ptr %i.nb, align 4, !tbaa !26
  %i.nd = trunc i32 %i.ml to i16
  %i.ne = and i16 %i.nd, 1023
  %i.nf = or disjoint i16 %i.ne, -9216            ; 2 uses
  %i.ng = icmp ult ptr %i.na, %i.ls
  br i1 %i.ng, label %bb.af, label %bb.ag

.thread.i:                                        ; preds = %bb.ad
  %i.nh = trunc i32 %i.ml to i16
  %i.ni = and i16 %i.nh, 1023
  %i.nj = or disjoint i16 %i.ni, -9216            ; 2 uses
  %i.nk = icmp ult ptr %i.na, %i.ls
  br i1 %i.nk, label %.thread95.i, label %bb.ag

.thread95.i:                                      ; preds = %.thread.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  store ptr %i.nl, ptr %i.b, align 8, !tbaa !46
  store i16 %i.nj, ptr %i.na, align 2, !tbaa !50
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  store ptr %i.nm, ptr %i.b, align 8, !tbaa !46
  store i16 %i.nf, ptr %i.na, align 2, !tbaa !50
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %i.nn, ptr %i.c, align 8, !tbaa !47
  store i32 %.076.i, ptr %i.nc, align 4, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %.thread.i, %bb.ae
  %i.no = phi i16 [ %i.nj, %.thread.i ], [ %i.nf, %bb.ae ]
  %i.np = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  store i16 %i.no, ptr %i.np, align 8, !tbaa !50
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lo, i64 93
  store i8 1, ptr %i.nq, align 1, !tbaa !127
  store i32 15, ptr %1, align 4, !tbaa !29
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.ah:                                            ; preds = %bb.af, %.thread95.i
  %i.nr = phi ptr [ %i.nl, %.thread95.i ], [ %i.nm, %bb.af ]
  %i.ns = add nsw i32 %.076.i, 1
  br label %.backedge.i

bb.ai:                                            ; preds = %bb.ac
  %i.nt = lshr i32 %i.ml, 20
  %i.nu = and i32 %i.nt, 15
  switch i32 %i.nu, label %bb.am [
    i32 2, label %bb.aj
    i32 6, label %bb.an
    i32 7, label %.thread97.i
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.nv = trunc i32 %i.ml to i16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mf, i64 2 ; 2 uses
  store ptr %i.nw, ptr %i.b, align 8, !tbaa !46
  store i16 %i.nv, ptr %i.mf, align 2, !tbaa !50
  %i.nx = load ptr, ptr %i.c, align 8, !tbaa !47  ; 3 uses
  %.not72.i = icmp eq ptr %i.nx, null
  br i1 %.not72.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  store ptr %i.ny, ptr %i.c, align 8, !tbaa !47
  store i32 %.076.i, ptr %i.nx, align 4, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.nz = add nsw i32 %.076.i, 1
  br label %.backedge.i

.thread97.i:                                      ; preds = %bb.ai
  store i32 12, ptr %1, align 4, !tbaa !29
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.am:                                            ; preds = %bb.ai
  %i.oa = add nsw i32 %.076.i, 1
  br label %.backedge.i

bb.an:                                            ; preds = %bb.ai
  %.pre79.i = load i32, ptr %1, align 4, !tbaa !29
  %i.ob = icmp slt i32 %.pre79.i, 1
  br i1 %i.ob, label %bb.ao, label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.ao:                                            ; preds = %bb.an
  store ptr %i.mh, ptr %i.aa, align 8, !tbaa !44
  %i.oc = load i8, ptr %i.mg, align 1, !tbaa !27
  store i8 %i.oc, ptr %i.mc, align 1, !tbaa !27
  %i.od = load ptr, ptr %i.ly, align 8, !tbaa !41
  %i.oe = getelementptr i8, ptr %i.od, i64 288
  %.val.i321 = load ptr, ptr %i.oe, align 8, !tbaa !53 ; 2 uses
  %.not.i.i322 = icmp eq ptr %.val.i321, null
  br i1 %.not.i.i322, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i326, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
end_hunk_0
