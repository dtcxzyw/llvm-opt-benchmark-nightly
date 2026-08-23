Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tdefl_optimize_huffman_table:bb.a
tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2, !tbaa !369
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !369
  %i.fx = load i16, ptr %.03953.us.i, align 2, !tbaa !369
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2, !tbaa !369
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2, !tbaa !369
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !369 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !369 ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2, !tbaa !369
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2, !tbaa !369
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2, !tbaa !369
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !369
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !369
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !369 ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !369 ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !369
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !369
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2, !tbaa !369
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !369
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !369
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !377

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2, !tbaa !369
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !369
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !369
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2, !tbaa !369
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !378

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !369
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !369
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2, !tbaa !369
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !369
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !369
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2, !tbaa !369
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !369
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !369
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2, !tbaa !369
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !369
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !369
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2, !tbaa !369
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !379

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jw, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jv, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 4 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %7 = zext nneg i32 %.385110.i to i64
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %indvars.iv118.i = phi i64 [ %7, %.lr.ph99.preheader.i ], [ %indvars.iv.next119.i, %bb.t ] ; 4 uses
  %.497.i = phi i32 [ 0, %.lr.ph99.preheader.i ], [ %i.jc, %bb.t ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv118.i
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !369
  %i.ja = zext i16 %i.iz to i32
  %i.jb = icmp eq i32 %.0113.i, %i.ja
  br i1 %i.jb, label %bb.t, label %.critedge.loopexit.split.loop.exit140.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jc = add nuw nsw i32 %.497.i, 1
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, -1
  %8 = icmp sgt i64 %indvars.iv118.i, 0
  br i1 %8, label %.lr.ph99.i, label %.critedge.i, !llvm.loop !380

.critedge.loopexit.split.loop.exit140.i:          ; preds = %.lr.ph99.i
  %9 = trunc nuw nsw i64 %indvars.iv118.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.t, %.critedge.loopexit.split.loop.exit140.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %9, %.critedge.loopexit.split.loop.exit140.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.497.i, %.critedge.loopexit.split.loop.exit140.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jd = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jd, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.je = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jf = sext i32 %.2111.i to i64                ; 2 uses
  %i.jg = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.jg, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jf, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.ji, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.je, ptr %i.jh, align 2, !tbaa !369
  %i.ji = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !381

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jf, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.ji, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jj = sub i32 %.1.lcssa.i, %.075112.i
  %i.jk = icmp ugt i32 %i.jj, -4
  br i1 %i.jk, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.js, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jl = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.je, ptr %i.jl, align 2, !tbaa !369
  %i.jm = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 -4
  store i16 %i.je, ptr %i.jn, align 2, !tbaa !369
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -8
  store i16 %i.je, ptr %i.jp, align 2, !tbaa !369
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -12
  store i16 %i.je, ptr %i.jr, align 2, !tbaa !369
  %i.js = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jt = icmp sgt i32 %i.js, %.1.lcssa.i
  br i1 %i.jt, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i, !llvm.loop !382

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.ju = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.ju, %._crit_edge108.loopexit.i ]
  %i.jv = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jw = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81, !llvm.loop !383

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jx = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jx, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread166, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.jy = icmp ult i32 %.1.lcssa, 4
  br i1 %i.jy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !369
  %i.kb = zext i16 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !3
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !369
  %i.ki = zext i16 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !3
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !369
  %i.kp = zext i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kp ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4, !tbaa !3
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !369
  %i.kw = zext i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !3
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !384

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128.epil
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !369
  %i.lc = zext i16 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !3
  %i.lf = add nsw i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !3
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !385

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.lg = icmp eq i32 %.1.lcssa, 1
  br i1 %i.lg, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lh = zext nneg i32 %3 to i64                 ; 11 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh ; 5 uses
  %i.lj = sub nuw nsw i64 32, %i.lh               ; 2 uses
  %n.vec = and i64 %i.lj, 56                      ; 4 uses
  %i.lk = add nuw nsw i64 %n.vec, %i.lh
  %.promoted.i = load i32, ptr %i.li, align 4, !tbaa !3
  %i.ll = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %wide.load = load <4 x i32>, ptr %i.ln, align 4, !tbaa !3
  %wide.load180 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !3 ; 2 uses
  %i.lp = add <4 x i32> %wide.load, %i.ll         ; 2 uses
  %i.lq = icmp eq i64 %n.vec, 8
  br i1 %i.lq, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lh ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lt, align 4, !tbaa !3
  %wide.load180.1 = load <4 x i32>, ptr %i.lu, align 4, !tbaa !3
  %i.lv = add <4 x i32> %wide.load.1, %i.lp       ; 2 uses
  %i.lw = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lx = icmp eq i64 %n.vec, 16
  br i1 %i.lx, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lh ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.ma, align 4, !tbaa !3
  %wide.load180.2 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !3
  %i.mc = add <4 x i32> %wide.load.2, %i.lv
  %i.md = add <4 x i32> %wide.load180.2, %i.lw
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lp, %.preheader35.i ], [ %i.lv, %vector.body.1 ], [ %i.mc, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.lw, %vector.body.1 ], [ %i.md, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.me = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.me, ptr %i.li, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.lj, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lh, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lh, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lk, %middle.block ]
  %i.mf = phi i32 [ %i.mi, %scalar.ph ], [ %i.me, %middle.block ]
end_hunk_0
