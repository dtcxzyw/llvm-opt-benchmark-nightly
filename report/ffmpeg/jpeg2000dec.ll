Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@jpeg2000_decode_tile:bb.a
.lr.ph.i.i:                                       ; preds = %bb.o
  %.not128.i.i.i = icmp eq i32 %i.df, %i.dg       ; 2 uses
  %.not129.i.i.i = icmp eq i32 %i.da, %i.db       ; 2 uses
  %.not110.i.i.i = icmp ne i8 %i.ds, 0            ; 4 uses
  %spec.select.i.i.i = select i1 %.not110.i.i.i, i32 12343, i32 12543
  %.not207.i.i = icmp eq i8 %i.ds, 0
  %i.et = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 2 uses
  %brmerge205.i.i = or i1 %.not129.i.i.i, %.not128.i.i.i ; 2 uses
  %or.cond3.i184.i = icmp ult i32 %reass.sub.i, -31
  br i1 %or.cond3.i184.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %needs_termination.exit.thread271.i.i, %.lr.ph.i.i
  %.0124192.i.lcssa.i = phi i32 [ %i.dq, %.lr.ph.i.i ], [ %spec.select145.i.i, %needs_termination.exit.thread271.i.i ]
  %i.ev = load ptr, ptr %i.s, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ev, i32 noundef 16, ptr noundef nonnull @.str.102, i32 noundef %.0124192.i.lcssa.i) #10
  br label %decode_cblk.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %needs_termination.exit.thread271.i.i
  %.in221.i = phi i32 [ %i.ew, %needs_termination.exit.thread271.i.i ], [ %i.dk, %.lr.ph.i.i ]
  %.0126191.i189.i = phi i32 [ %spec.select.i.i, %needs_termination.exit.thread271.i.i ], [ 2, %.lr.ph.i.i ] ; 2 uses
  %.0124192.i188.i = phi i32 [ %spec.select145.i.i, %needs_termination.exit.thread271.i.i ], [ %i.dq, %.lr.ph.i.i ] ; 2 uses
  %.0123193.i186.i = phi i32 [ %i.adk, %needs_termination.exit.thread271.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.0122196.i185.i = phi i32 [ %.1.i.i, %needs_termination.exit.thread271.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.ew = add nsw i32 %.in221.i, -1               ; 2 uses
  %i.ex = add nsw i32 %.0124192.i188.i, 1         ; 3 uses
  switch i32 %.0126191.i189.i, label %default.unreachable.i.i [
    i32 0, label %bb.p
    i32 1, label %bb.y
    i32 2, label %bb.am
  ]

bb.p:                                             ; preds = %.lr.ph.i
  %i.ey = shl nuw i32 3, %i.ex
  %i.ez = lshr i32 %i.ey, 1
  br i1 %brmerge205.i.i, label %decode_sigpass.exit.i.i, label %.preheader.preheader.i.i.preheader.i

.preheader.preheader.i.i.preheader.i:             ; preds = %bb.p
  %.pre.pre.i.i.pre.i = load i32, ptr %i.m, align 8, !tbaa !144
  br label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %._crit_edge87.split.i.i.i, %.preheader.preheader.i.i.preheader.i
  %.pre.pre.i.i.i = phi i32 [ %.pre.pre.i.i267.i, %._crit_edge87.split.i.i.i ], [ %.pre.pre.i.i.pre.i, %.preheader.preheader.i.i.preheader.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %._crit_edge87.split.i.i.i ], [ 4, %.preheader.preheader.i.i.preheader.i ] ; 2 uses
  %.07688.i.i.i = phi i32 [ %i.ic, %._crit_edge87.split.i.i.i ], [ 0, %.preheader.preheader.i.i.preheader.i ] ; 3 uses
  %umin.i.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i.i.i)
  %i.fa = or disjoint i32 %.07688.i.i.i, 3
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.pre.pre.i.i269.i = phi i32 [ %.pre.pre.i.i267.i, %._crit_edge.i.i.i ], [ %.pre.pre.i.i.i, %.preheader.preheader.i.i.i ]
  %.pre.i.i.i = phi i32 [ %.pre94.i.i.i, %._crit_edge.i.i.i ], [ %.pre.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.07586.i.i.i = phi i32 [ %i.ib, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 8 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.x, %.preheader.i.i.i
  %.pre.pre.i.i268.i = phi i32 [ %.pre.pre.i.i269.i, %.preheader.i.i.i ], [ %.pre.pre.i.i267.i, %bb.x ]
  %.pre95.i.i.i = phi i32 [ %.pre.i.i.i, %.preheader.i.i.i ], [ %.pre94.i.i.i, %bb.x ]
  %i.fb = phi i32 [ %.pre.i.i.i, %.preheader.i.i.i ], [ %i.ia, %bb.x ] ; 2 uses
  %.07485.i.i.i = phi i32 [ %.07688.i.i.i, %.preheader.i.i.i ], [ %i.fd, %bb.x ] ; 6 uses
  %i.fc = icmp eq i32 %.07485.i.i.i, %i.fa
  %or.cond.i.i.i = select i1 %.not110.i.i.i, i1 %i.fc, i1 false
  %.0.i.i.i = select i1 %or.cond.i.i.i, i32 -713, i32 -1 ; 2 uses
  %i.fd = add nuw nsw i32 %.07485.i.i.i, 1        ; 5 uses
  %i.fe = mul nsw i32 %i.fd, %i.fb
  %i.ff = add nsw i32 %i.fe, %.07586.i.i.i
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr %i.n, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 2
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !73
  %i.fk = zext i16 %i.fj to i32                   ; 2 uses
  %i.fl = and i32 %i.fk, 255
  %i.fm = and i32 %i.fl, %.0.i.i.i                ; 2 uses
  %.not78.i.i.i = icmp ne i32 %i.fm, 0
  %i.fn = and i32 %i.fk, 12288
  %.not79.i.i.i = icmp eq i32 %i.fn, 0
  %or.cond83.i.i.i = and i1 %.not79.i.i.i, %.not78.i.i.i
  br i1 %or.cond83.i.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.fo = zext nneg i32 %i.fm to i64
  %gep.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.fo
  %i.fp = load i8, ptr %gep.i.i.i, align 1, !tbaa !46
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fq
  %i.fs = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.fr) #10
  %.not80.i.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not80.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = load i32, ptr %i.m, align 8, !tbaa !144
  %i.fu = mul nsw i32 %i.ft, %i.fd
  %i.fv = add nsw i32 %i.fu, %.07586.i.i.i
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr [2 x i8], ptr %i.n, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !73
  %i.ga = zext i16 %i.fz to i32
  %i.gb = and i32 %.0.i.i.i, %i.ga                ; 2 uses
  %i.gc = and i32 %i.gb, 15
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i32 %i.gb, 8
  %i.gf = and i32 %i.ge, 15
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !46  ; 2 uses
  %i.gk = load i32, ptr %i.t, align 8, !tbaa !174
  %.not81.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not81.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gl = zext i8 %i.gj to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gl
  %i.gn = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.gm) #10
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.go = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.gd
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !46
  %i.gr = zext i8 %i.gq to i32
  %i.gs = zext i8 %i.gj to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gs
  %i.gu = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.gt) #10
  %i.gv = xor i32 %i.gu, %i.gr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink.i.i.i = phi i32 [ %i.gv, %bb.u ], [ %i.gn, %bb.t ]
  %i.gw = shl i32 %.sink.i.i.i, 31
  %i.gx = load i32, ptr %i.m, align 8, !tbaa !144
  %i.gy = mul nsw i32 %i.gx, %.07485.i.i.i
  %i.gz = add nsw i32 %i.gy, %.07586.i.i.i
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !49
  %i.hd = or i32 %i.hc, %i.gw
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !49
  %i.he = load i32, ptr %i.m, align 8, !tbaa !144
  %i.hf = mul nsw i32 %i.he, %.07485.i.i.i
  %i.hg = add nsw i32 %i.hf, %.07586.i.i.i
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !49
  %i.hk = or i32 %i.hj, %i.ez
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !49
  %i.hl = load i32, ptr %i.m, align 8, !tbaa !144
  %i.hm = mul nsw i32 %i.hl, %.07485.i.i.i
  %i.hn = add nsw i32 %i.hm, %.07586.i.i.i
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !49
  %i.hr = and i32 %i.hq, -2147483648
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %.07586.i.i.i, i32 noundef %.07485.i.i.i, i32 noundef %i.hr) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.hs = load i32, ptr %i.m, align 8, !tbaa !144 ; 4 uses
  %i.ht = mul nsw i32 %i.hs, %i.fd
  %i.hu = add nsw i32 %i.ht, %.07586.i.i.i
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [2 x i8], ptr %i.n, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 2      ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !73
  %i.hz = or i16 %i.hy, 4096
  store i16 %i.hz, ptr %i.hx, align 2, !tbaa !73
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.pre.pre.i.i267.i = phi i32 [ %i.hs, %bb.w ], [ %.pre.pre.i.i268.i, %bb.q ] ; 3 uses
  %.pre94.i.i.i = phi i32 [ %i.hs, %bb.w ], [ %.pre95.i.i.i, %bb.q ] ; 2 uses
  %i.ia = phi i32 [ %i.hs, %bb.w ], [ %i.fb, %bb.q ]
  %exitcond.not.i.i.i = icmp eq i32 %i.fd, %umin.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.q, !llvm.loop !175

._crit_edge.i.i.i:                                ; preds = %bb.x
  %i.ib = add nuw nsw i32 %.07586.i.i.i, 1        ; 2 uses
  %exitcond93.not.i.i.i = icmp eq i32 %i.ib, %i.dc
  br i1 %exitcond93.not.i.i.i, label %._crit_edge87.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !176

._crit_edge87.split.i.i.i:                        ; preds = %._crit_edge.i.i.i
  %i.ic = add nuw nsw i32 %.07688.i.i.i, 4        ; 2 uses
  %i.id = icmp samesign ult i32 %i.ic, %i.dh
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 4
  br i1 %i.id, label %.preheader.preheader.i.i.i, label %decode_sigpass.exit.i.i, !llvm.loop !177

bb.y:                                             ; preds = %.lr.ph.i
  %i.ie = shl nuw nsw i32 1, %i.ex                ; 9 uses
  br i1 %.not128.i.i.i, label %decode_sigpass.exit.i.i, label %.preheader49.lr.ph.i.i.i

.preheader49.lr.ph.i.i.i:                         ; preds = %bb.y
  %i.if = lshr i32 %i.ie, 1                       ; 7 uses
  %i.ig = xor i32 %i.ie, -1                       ; 7 uses
  br i1 %.not129.i.i.i, label %decode_sigpass.exit.i.i, label %.preheader49.i.preheader.i.i

.preheader49.i.preheader.i.i:                     ; preds = %.preheader49.lr.ph.i.i.i
  %.pre.pre.i151.i.pre.i = load i32, ptr %i.m, align 8, !tbaa !144 ; 2 uses
  br i1 %.not207.i.i, label %.preheader.preheader.i150.i.i, label %.preheader.preheader.i150.us.i.i

.preheader.preheader.i150.us.i.i:                 ; preds = %.preheader49.i.preheader.i.i, %._crit_edge52.split.i.loopexit.split.us.us.i.i
  %.pre.pre.i151.us.i.i = phi i32 [ %.us-phi.i, %._crit_edge52.split.i.loopexit.split.us.us.i.i ], [ %.pre.pre.i151.i.pre.i, %.preheader49.i.preheader.i.i ] ; 4 uses
  %indvars.iv.i147.us.i.i = phi i32 [ %indvars.iv.next.i149.us.i.i, %._crit_edge52.split.i.loopexit.split.us.us.i.i ], [ 4, %.preheader49.i.preheader.i.i ] ; 2 uses
  %.04753.i.us.i.i = phi i32 [ %5, %._crit_edge52.split.i.loopexit.split.us.us.i.i ], [ 0, %.preheader49.i.preheader.i.i ] ; 8 uses
  %umin.i148.us.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i147.us.i.i) ; 5 uses
  %i.ih = or disjoint i32 %.04753.i.us.i.i, 3     ; 5 uses
  %i.ii = or disjoint i32 %.04753.i.us.i.i, 1     ; 7 uses
  %exitcond.not.i154.us184.us.peel.i.i = icmp eq i32 %i.ii, %umin.i148.us.i.i
  %i.ij = or disjoint i32 %.04753.i.us.i.i, 2     ; 5 uses
  %exitcond.not.i154.us184.us.peel220.i.i = icmp eq i32 %i.ij, %umin.i148.us.i.i
  %exitcond.not.i154.us184.us.peel226.i.i = icmp eq i32 %i.ih, %umin.i148.us.i.i
  %5 = add nuw nsw i32 %.04753.i.us.i.i, 4        ; 6 uses
  %exitcond.not.i154.us184.us.peel232.i.i = icmp eq i32 %5, %umin.i148.us.i.i
  %exitcond.not.i154.us184.us.peel.i.fr.i = freeze i1 %exitcond.not.i154.us184.us.peel.i.i
  br i1 %exitcond.not.i154.us184.us.peel.i.fr.i, label %.preheader.i152.us.us.i.us.i, label %.preheader.i152.us.us.i.i

.preheader.i152.us.us.i.us.i:                     ; preds = %.preheader.preheader.i150.us.i.i, %._crit_edge.i155.split.us185.us.i.us.i
  %.pre.pre.i151.us.i261.i = phi i32 [ %.pre.pre.i151.us.i260.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ]
  %.pre.i153.us.us.i.us.i = phi i32 [ %.pre59.i.us183.us.peel.i.us.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ] ; 3 uses
  %.04651.i.us.us.i.us.i = phi i32 [ %i.kb, %._crit_edge.i155.split.us185.us.i.us.i ], [ 0, %.preheader.preheader.i150.us.i.i ] ; 5 uses
  %i.ik = mul nsw i32 %.pre.i153.us.us.i.us.i, %i.ii
  %i.il = add nsw i32 %i.ik, %.04651.i.us.us.i.us.i
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr [2 x i8], ptr %i.n, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !73
  %i.iq = zext i16 %i.ip to i32                   ; 3 uses
  %i.ir = and i32 %i.iq, 12288
  %i.is = icmp eq i32 %i.ir, 8192
  br i1 %i.is, label %bb.z, label %._crit_edge.i155.split.us185.us.i.us.i

bb.z:                                             ; preds = %.preheader.i152.us.us.i.us.i
  %i.it = and i32 %i.iq, 255
  %i.iu = lshr i32 %i.iq, 14
  %i.iv = and i32 %i.iu, 1
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.iw
  %i.iy = icmp ne i32 %i.it, 0
  %i.iz = zext i1 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !46
  %i.jc = mul nsw i32 %.pre.i153.us.us.i.us.i, %.04753.i.us.i.i
  %i.jd = add nsw i32 %i.jc, %.04651.i.us.us.i.us.i
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.je ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !49
  %i.jh = or i32 %i.jg, %i.if
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !49
  %i.ji = zext i8 %i.jb to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ji
  %i.jk = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.jj) #10
  %.not.i156.us187.us.peel.i.us.i = icmp eq i32 %i.jk, 0
  %i.jl = load i32, ptr %i.m, align 8, !tbaa !144
  %i.jm = mul nsw i32 %i.jl, %.04753.i.us.i.i
  %i.jn = add nsw i32 %i.jm, %.04651.i.us.us.i.us.i
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !49 ; 2 uses
  %i.jr = and i32 %i.jq, %i.ig
  %i.js = or i32 %i.jq, %i.ie
  %.sink.i157.us188.us.peel.i.us.i = select i1 %.not.i156.us187.us.peel.i.us.i, i32 %i.jr, i32 %i.js
  store i32 %.sink.i157.us188.us.peel.i.us.i, ptr %i.jp, align 4, !tbaa !49
  %i.jt = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.ju = mul nsw i32 %i.jt, %i.ii
  %i.jv = add nsw i32 %i.ju, %.04651.i.us.us.i.us.i
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [2 x i8], ptr %i.n, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 2      ; 2 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !73
  %i.ka = or i16 %i.jz, 16384
  store i16 %i.ka, ptr %i.jy, align 2, !tbaa !73
  br label %._crit_edge.i155.split.us185.us.i.us.i

._crit_edge.i155.split.us185.us.i.us.i:           ; preds = %bb.z, %.preheader.i152.us.us.i.us.i
  %.pre.pre.i151.us.i260.i = phi i32 [ %.pre.pre.i151.us.i261.i, %.preheader.i152.us.us.i.us.i ], [ %i.jt, %bb.z ] ; 2 uses
  %.pre59.i.us183.us.peel.i.us.i = phi i32 [ %.pre.i153.us.us.i.us.i, %.preheader.i152.us.us.i.us.i ], [ %i.jt, %bb.z ]
  %i.kb = add nuw nsw i32 %.04651.i.us.us.i.us.i, 1 ; 2 uses
  %exitcond58.not.i.us.us.i.us.i = icmp eq i32 %i.kb, %i.dc
  br i1 %exitcond58.not.i.us.us.i.us.i, label %._crit_edge52.split.i.loopexit.split.us.us.i.i, label %.preheader.i152.us.us.i.us.i, !llvm.loop !178

.preheader.i152.us.us.i.i:                        ; preds = %.preheader.preheader.i150.us.i.i, %._crit_edge.i155.split.us185.us.i.i
  %.pre.pre.i151.us.i259.i = phi i32 [ %.pre.pre.i151.us.i256.i, %._crit_edge.i155.split.us185.us.i.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ]
  %.pre.i153.us.us.i.i = phi i32 [ %.pre59.i.us183.us.lcssa.i.i, %._crit_edge.i155.split.us185.us.i.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ] ; 3 uses
  %.04651.i.us.us.i.i = phi i32 [ %i.sm, %._crit_edge.i155.split.us185.us.i.i ], [ 0, %.preheader.preheader.i150.us.i.i ] ; 21 uses
  %i.kc = mul nsw i32 %.pre.i153.us.us.i.i, %i.ii
  %i.kd = add nsw i32 %i.kc, %.04651.i.us.us.i.i
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr [2 x i8], ptr %i.n, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !73
  %i.ki = zext i16 %i.kh to i32                   ; 3 uses
  %i.kj = and i32 %i.ki, 12288
  %i.kk = icmp eq i32 %i.kj, 8192
  br i1 %i.kk, label %bb.aa, label %.peel.next.i.i

bb.aa:                                            ; preds = %.preheader.i152.us.us.i.i
  %i.kl = and i32 %i.ki, 255
  %i.km = lshr i32 %i.ki, 14
  %i.kn = and i32 %i.km, 1
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.ko
  %i.kq = icmp ne i32 %i.kl, 0
  %i.kr = zext i1 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !46
  %i.ku = mul nsw i32 %.pre.i153.us.us.i.i, %.04753.i.us.i.i
  %i.kv = add nsw i32 %i.ku, %.04651.i.us.us.i.i
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !49
  %i.kz = or i32 %i.ky, %i.if
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !49
  %i.la = zext i8 %i.kt to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.la
  %i.lc = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.lb) #10
  %.not.i156.us187.us.peel.i.i = icmp eq i32 %i.lc, 0
  %i.ld = load i32, ptr %i.m, align 8, !tbaa !144
  %i.le = mul nsw i32 %i.ld, %.04753.i.us.i.i
  %i.lf = add nsw i32 %i.le, %.04651.i.us.us.i.i
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.lg ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !49 ; 2 uses
  %i.lj = and i32 %i.li, %i.ig
  %i.lk = or i32 %i.li, %i.ie
  %.sink.i157.us188.us.peel.i.i = select i1 %.not.i156.us187.us.peel.i.i, i32 %i.lj, i32 %i.lk
  store i32 %.sink.i157.us188.us.peel.i.i, ptr %i.lh, align 4, !tbaa !49
  %i.ll = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.lm = mul nsw i32 %i.ll, %i.ii
  %i.ln = add nsw i32 %i.lm, %.04651.i.us.us.i.i
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr [2 x i8], ptr %i.n, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 2      ; 2 uses
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !73
  %i.ls = or i16 %i.lr, 16384
  store i16 %i.ls, ptr %i.lq, align 2, !tbaa !73
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.aa, %.preheader.i152.us.us.i.i
  %.pre.pre.i151.us.i258.i = phi i32 [ %.pre.pre.i151.us.i259.i, %.preheader.i152.us.us.i.i ], [ %i.ll, %bb.aa ]
  %.pre59.i.us183.us.peel.i.i = phi i32 [ %.pre.i153.us.us.i.i, %.preheader.i152.us.us.i.i ], [ %i.ll, %bb.aa ] ; 3 uses
  %i.lt = mul nsw i32 %.pre59.i.us183.us.peel.i.i, %i.ij
  %i.lu = add nsw i32 %i.lt, %.04651.i.us.us.i.i
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr [2 x i8], ptr %i.n, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !73
  %i.lz = zext i16 %i.ly to i32                   ; 3 uses
  %i.ma = and i32 %i.lz, 12288
  %i.mb = icmp eq i32 %i.ma, 8192
  br i1 %i.mb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.peel.next.i.i
  %i.mc = and i32 %i.lz, 255
  %i.md = lshr i32 %i.lz, 14
  %i.me = and i32 %i.md, 1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.mf
  %i.mh = icmp ne i32 %i.mc, 0
  %i.mi = zext i1 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !46
  %i.ml = mul nsw i32 %.pre59.i.us183.us.peel.i.i, %i.ii
  %i.mm = add nsw i32 %i.ml, %.04651.i.us.us.i.i
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !49
  %i.mq = or i32 %i.mp, %i.if
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !49
  %i.mr = zext i8 %i.mk to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.mr
  %i.mt = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ms) #10
  %.not.i156.us187.us.peel217.i.i = icmp eq i32 %i.mt, 0
  %i.mu = load i32, ptr %i.m, align 8, !tbaa !144
  %i.mv = mul nsw i32 %i.mu, %i.ii
  %i.mw = add nsw i32 %i.mv, %.04651.i.us.us.i.i
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %4, i64 %i.mx ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !49 ; 2 uses
  %i.na = and i32 %i.mz, %i.ig
  %i.nb = or i32 %i.mz, %i.ie
  %.sink.i157.us188.us.peel218.i.i = select i1 %.not.i156.us187.us.peel217.i.i, i32 %i.na, i32 %i.nb
  store i32 %.sink.i157.us188.us.peel218.i.i, ptr %i.my, align 4, !tbaa !49
  %i.nc = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.nd = mul nsw i32 %i.nc, %i.ij
  %i.ne = add nsw i32 %i.nd, %.04651.i.us.us.i.i
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr [2 x i8], ptr %i.n, i64 %i.nf
  %i.nh = getelementptr i8, ptr %i.ng, i64 2      ; 2 uses
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !73
  %i.nj = or i16 %i.ni, 16384
  store i16 %i.nj, ptr %i.nh, align 2, !tbaa !73
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.peel.next.i.i
  %.pre.pre.i151.us.i257.i = phi i32 [ %.pre.pre.i151.us.i258.i, %.peel.next.i.i ], [ %i.nc, %bb.ab ] ; 2 uses
  %.pre59.i.us183.us.peel219.i.i = phi i32 [ %.pre59.i.us183.us.peel.i.i, %.peel.next.i.i ], [ %i.nc, %bb.ab ] ; 4 uses
  br i1 %exitcond.not.i154.us184.us.peel220.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next215.i.i

.peel.next215.i.i:                                ; preds = %bb.ac
  %i.nk = mul nsw i32 %.pre59.i.us183.us.peel219.i.i, %i.ih
  %i.nl = add nsw i32 %i.nk, %.04651.i.us.us.i.i
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr [2 x i8], ptr %i.n, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 2
  %i.np = load i16, ptr %i.no, align 2, !tbaa !73
  %i.nq = zext i16 %i.np to i32                   ; 3 uses
  %i.nr = and i32 %i.nq, 12288
  %i.ns = icmp eq i32 %i.nr, 8192
  br i1 %i.ns, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.peel.next215.i.i
  %i.nt = and i32 %i.nq, 255
  %i.nu = lshr i32 %i.nq, 14
  %i.nv = and i32 %i.nu, 1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.nw
  %i.ny = icmp ne i32 %i.nt, 0
  %i.nz = zext i1 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !46
  %i.oc = mul nsw i32 %.pre59.i.us183.us.peel219.i.i, %i.ij
  %i.od = add nsw i32 %i.oc, %.04651.i.us.us.i.i
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %4, i64 %i.oe ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !49
  %i.oh = or i32 %i.og, %i.if
  store i32 %i.oh, ptr %i.of, align 4, !tbaa !49
  %i.oi = zext i8 %i.ob to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.oi
  %i.ok = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.oj) #10
  %.not.i156.us187.us.peel223.i.i = icmp eq i32 %i.ok, 0
  %i.ol = load i32, ptr %i.m, align 8, !tbaa !144
  %i.om = mul nsw i32 %i.ol, %i.ij
  %i.on = add nsw i32 %i.om, %.04651.i.us.us.i.i
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %4, i64 %i.oo ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !49 ; 2 uses
  %i.or = and i32 %i.oq, %i.ig
  %i.os = or i32 %i.oq, %i.ie
  %.sink.i157.us188.us.peel224.i.i = select i1 %.not.i156.us187.us.peel223.i.i, i32 %i.or, i32 %i.os
  store i32 %.sink.i157.us188.us.peel224.i.i, ptr %i.op, align 4, !tbaa !49
  %i.ot = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.ou = mul nsw i32 %i.ot, %i.ih
  %i.ov = add nsw i32 %i.ou, %.04651.i.us.us.i.i
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr [2 x i8], ptr %i.n, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.ox, i64 2      ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !73
  %i.pa = or i16 %i.oz, 16384
  store i16 %i.pa, ptr %i.oy, align 2, !tbaa !73
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.peel.next215.i.i
  %.pre.pre.i151.us.i254.i = phi i32 [ %.pre.pre.i151.us.i257.i, %.peel.next215.i.i ], [ %i.ot, %bb.ad ] ; 2 uses
  %.pre59.i.us183.us.peel225.i.i = phi i32 [ %.pre59.i.us183.us.peel219.i.i, %.peel.next215.i.i ], [ %i.ot, %bb.ad ] ; 4 uses
  br i1 %exitcond.not.i154.us184.us.peel226.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next221.i.i

.peel.next221.i.i:                                ; preds = %bb.ae
  %i.pb = mul nsw i32 %.pre59.i.us183.us.peel225.i.i, %5
  %i.pc = add nsw i32 %i.pb, %.04651.i.us.us.i.i
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr [2 x i8], ptr %i.n, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 2
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !73
  %i.ph = zext i16 %i.pg to i32                   ; 3 uses
  %i.pi = and i32 %i.ph, 12288
  %i.pj = icmp eq i32 %i.pi, 8192
  br i1 %i.pj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.peel.next221.i.i
  %i.pk = and i32 %i.ph, 55
  %i.pl = lshr i32 %i.ph, 14
  %i.pm = and i32 %i.pl, 1
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.pn
  %i.pp = icmp ne i32 %i.pk, 0
  %i.pq = zext i1 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !46
  %i.pt = mul nsw i32 %.pre59.i.us183.us.peel225.i.i, %i.ih
  %i.pu = add nsw i32 %i.pt, %.04651.i.us.us.i.i
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pv ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !49
  %i.py = or i32 %i.px, %i.if
  store i32 %i.py, ptr %i.pw, align 4, !tbaa !49
  %i.pz = zext i8 %i.ps to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.pz
  %i.qb = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.qa) #10
  %.not.i156.us187.us.peel229.i.i = icmp eq i32 %i.qb, 0
  %i.qc = load i32, ptr %i.m, align 8, !tbaa !144
  %i.qd = mul nsw i32 %i.qc, %i.ih
  %i.qe = add nsw i32 %i.qd, %.04651.i.us.us.i.i
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.qf ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !49 ; 2 uses
  %i.qi = and i32 %i.qh, %i.ig
  %i.qj = or i32 %i.qh, %i.ie
  %.sink.i157.us188.us.peel230.i.i = select i1 %.not.i156.us187.us.peel229.i.i, i32 %i.qi, i32 %i.qj
  store i32 %.sink.i157.us188.us.peel230.i.i, ptr %i.qg, align 4, !tbaa !49
  %i.qk = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.ql = mul nsw i32 %i.qk, %5
  %i.qm = add nsw i32 %i.ql, %.04651.i.us.us.i.i
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr [2 x i8], ptr %i.n, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 2      ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !73
  %i.qr = or i16 %i.qq, 16384
  store i16 %i.qr, ptr %i.qp, align 2, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.peel.next221.i.i
  %.pre.pre.i151.us.i253.i = phi i32 [ %.pre.pre.i151.us.i254.i, %.peel.next221.i.i ], [ %i.qk, %bb.af ] ; 2 uses
  %.pre59.i.us183.us.peel231.i.i = phi i32 [ %.pre59.i.us183.us.peel225.i.i, %.peel.next221.i.i ], [ %i.qk, %bb.af ] ; 3 uses
  br i1 %exitcond.not.i154.us184.us.peel232.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next227.i.i

.peel.next227.i.i:                                ; preds = %bb.ag, %bb.ai
  %.pre.pre.i151.us.i252.i = phi i32 [ %.pre.pre.i151.us.i251.i, %bb.ai ], [ %.pre.pre.i151.us.i253.i, %bb.ag ]
  %.pre60.i.us181.us.i.i = phi i32 [ %.pre59.i.us183.us.i.i, %bb.ai ], [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ]
  %i.qs = phi i32 [ %i.sl, %bb.ai ], [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ] ; 3 uses
  %.050.i.us182.us.i.i = phi i32 [ %i.qt, %bb.ai ], [ %5, %bb.ag ] ; 3 uses
  %i.qt = add nuw nsw i32 %.050.i.us182.us.i.i, 1 ; 4 uses
  %i.qu = mul nsw i32 %i.qt, %i.qs
  %i.qv = add nsw i32 %i.qu, %.04651.i.us.us.i.i
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr [2 x i8], ptr %i.n, i64 %i.qw
  %i.qy = getelementptr i8, ptr %i.qx, i64 2
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !73
  %i.ra = zext i16 %i.qz to i32                   ; 3 uses
  %i.rb = and i32 %i.ra, 12288
  %i.rc = icmp eq i32 %i.rb, 8192
  br i1 %i.rc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.peel.next227.i.i
  %i.rd = and i32 %i.ra, 255
  %i.re = lshr i32 %i.ra, 14
  %i.rf = and i32 %i.re, 1
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.rg
  %i.ri = icmp ne i32 %i.rd, 0
  %i.rj = zext i1 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !46
  %i.rm = mul nsw i32 %.050.i.us182.us.i.i, %i.qs
  %i.rn = add nsw i32 %i.rm, %.04651.i.us.us.i.i
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !49
  %i.rr = or i32 %i.rq, %i.if
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !49
  %i.rs = zext i8 %i.rl to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.rs
  %i.ru = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.rt) #10
  %.not.i156.us187.us.i.i = icmp eq i32 %i.ru, 0
  %i.rv = load i32, ptr %i.m, align 8, !tbaa !144
  %i.rw = mul nsw i32 %i.rv, %.050.i.us182.us.i.i
  %i.rx = add nsw i32 %i.rw, %.04651.i.us.us.i.i
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ry ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !49 ; 2 uses
  %i.sb = and i32 %i.sa, %i.ig
  %i.sc = or i32 %i.sa, %i.ie
  %.sink.i157.us188.us.i.i = select i1 %.not.i156.us187.us.i.i, i32 %i.sb, i32 %i.sc
  store i32 %.sink.i157.us188.us.i.i, ptr %i.rz, align 4, !tbaa !49
  %i.sd = load i32, ptr %i.m, align 8, !tbaa !144 ; 4 uses
  %i.se = mul nsw i32 %i.sd, %i.qt
  %i.sf = add nsw i32 %i.se, %.04651.i.us.us.i.i
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr [2 x i8], ptr %i.n, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 2      ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !73
  %i.sk = or i16 %i.sj, 16384
  store i16 %i.sk, ptr %i.si, align 2, !tbaa !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.peel.next227.i.i
  %.pre.pre.i151.us.i251.i = phi i32 [ %.pre.pre.i151.us.i252.i, %.peel.next227.i.i ], [ %i.sd, %bb.ah ] ; 2 uses
  %.pre59.i.us183.us.i.i = phi i32 [ %.pre60.i.us181.us.i.i, %.peel.next227.i.i ], [ %i.sd, %bb.ah ] ; 2 uses
  %i.sl = phi i32 [ %i.qs, %.peel.next227.i.i ], [ %i.sd, %bb.ah ]
  %exitcond.not.i154.us184.us.i.i = icmp eq i32 %i.qt, %umin.i148.us.i.i
  br i1 %exitcond.not.i154.us184.us.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next227.i.i, !llvm.loop !179

._crit_edge.i155.split.us185.us.i.i:              ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %.pre.pre.i151.us.i256.i = phi i32 [ %.pre.pre.i151.us.i253.i, %bb.ag ], [ %.pre.pre.i151.us.i254.i, %bb.ae ], [ %.pre.pre.i151.us.i257.i, %bb.ac ], [ %.pre.pre.i151.us.i251.i, %bb.ai ] ; 2 uses
  %.pre59.i.us183.us.lcssa.i.i = phi i32 [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ], [ %.pre59.i.us183.us.peel225.i.i, %bb.ae ], [ %.pre59.i.us183.us.peel219.i.i, %bb.ac ], [ %.pre59.i.us183.us.i.i, %bb.ai ]
  %i.sm = add nuw nsw i32 %.04651.i.us.us.i.i, 1  ; 2 uses
  %exitcond58.not.i.us.us.i.i = icmp eq i32 %i.sm, %i.dc
  br i1 %exitcond58.not.i.us.us.i.i, label %._crit_edge52.split.i.loopexit.split.us.us.i.i, label %.preheader.i152.us.us.i.i, !llvm.loop !178

._crit_edge52.split.i.loopexit.split.us.us.i.i:   ; preds = %._crit_edge.i155.split.us185.us.i.i, %._crit_edge.i155.split.us185.us.i.us.i
  %.us-phi.i = phi i32 [ %.pre.pre.i151.us.i260.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i256.i, %._crit_edge.i155.split.us185.us.i.i ]
  %6 = icmp samesign ult i32 %5, %i.dh
  %indvars.iv.next.i149.us.i.i = add nuw nsw i32 %indvars.iv.i147.us.i.i, 4
  br i1 %6, label %.preheader.preheader.i150.us.i.i, label %decode_sigpass.exit.i.i, !llvm.loop !181

.preheader.preheader.i150.i.i:                    ; preds = %.preheader49.i.preheader.i.i, %._crit_edge52.split.i.i.i
  %.pre.pre.i151.i.i = phi i32 [ %.pre.pre.i151.i263.i, %._crit_edge52.split.i.i.i ], [ %.pre.pre.i151.i.pre.i, %.preheader49.i.preheader.i.i ] ; 2 uses
  %indvars.iv.i147.i.i = phi i32 [ %indvars.iv.next.i149.i.i, %._crit_edge52.split.i.i.i ], [ 4, %.preheader49.i.preheader.i.i ] ; 2 uses
  %.04753.i.i.i = phi i32 [ %i.ui, %._crit_edge52.split.i.i.i ], [ 0, %.preheader49.i.preheader.i.i ] ; 2 uses
  %umin.i148.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i147.i.i)
  br label %.preheader.i152.i.i

.preheader.i152.i.i:                              ; preds = %._crit_edge.i155.split.us.i.i, %.preheader.preheader.i150.i.i
  %.pre.pre.i151.i265.i = phi i32 [ %.pre.pre.i151.i263.i, %._crit_edge.i155.split.us.i.i ], [ %.pre.pre.i151.i.i, %.preheader.preheader.i150.i.i ]
  %.pre.i153.i.i = phi i32 [ %.pre59.i.us.i.i, %._crit_edge.i155.split.us.i.i ], [ %.pre.pre.i151.i.i, %.preheader.preheader.i150.i.i ] ; 2 uses
  %.04651.i.i.i = phi i32 [ %i.uh, %._crit_edge.i155.split.us.i.i ], [ 0, %.preheader.preheader.i150.i.i ] ; 5 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.preheader.i152.i.i
  %.pre.pre.i151.i264.i = phi i32 [ %.pre.pre.i151.i265.i, %.preheader.i152.i.i ], [ %.pre.pre.i151.i263.i, %bb.al ]
  %.pre60.i.us.i.i = phi i32 [ %.pre.i153.i.i, %.preheader.i152.i.i ], [ %.pre59.i.us.i.i, %bb.al ]
  %i.sn = phi i32 [ %.pre.i153.i.i, %.preheader.i152.i.i ], [ %i.ug, %bb.al ] ; 3 uses
  %.050.i.us.i.i = phi i32 [ %.04753.i.i.i, %.preheader.i152.i.i ], [ %i.so, %bb.al ] ; 3 uses
  %i.so = add nuw nsw i32 %.050.i.us.i.i, 1       ; 4 uses
  %i.sp = mul nsw i32 %i.so, %i.sn
  %i.sq = add nsw i32 %i.sp, %.04651.i.i.i
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [2 x i8], ptr %i.n, i64 %i.sr
  %i.st = getelementptr i8, ptr %i.ss, i64 2
  %i.su = load i16, ptr %i.st, align 2, !tbaa !73
  %i.sv = zext i16 %i.su to i32                   ; 3 uses
  %i.sw = and i32 %i.sv, 12288
  %i.sx = icmp eq i32 %i.sw, 8192
  br i1 %i.sx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sy = and i32 %i.sv, 255
  %i.sz = lshr i32 %i.sv, 14
  %i.ta = and i32 %i.sz, 1
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.tb
  %i.td = icmp ne i32 %i.sy, 0
  %i.te = zext i1 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !46
  %i.th = mul nsw i32 %.050.i.us.i.i, %i.sn
  %i.ti = add nsw i32 %i.th, %.04651.i.i.i
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tj ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !49
  %i.tm = or i32 %i.tl, %i.if
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !49
  %i.tn = zext i8 %i.tg to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.tn
  %i.tp = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.to) #10
  %.not.i156.us.i.i = icmp eq i32 %i.tp, 0
  %i.tq = load i32, ptr %i.m, align 8, !tbaa !144
  %i.tr = mul nsw i32 %i.tq, %.050.i.us.i.i
  %i.ts = add nsw i32 %i.tr, %.04651.i.i.i
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tt ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !49 ; 2 uses
  %i.tw = and i32 %i.tv, %i.ig
  %i.tx = or i32 %i.tv, %i.ie
  %.sink.i157.us.i.i = select i1 %.not.i156.us.i.i, i32 %i.tw, i32 %i.tx
  store i32 %.sink.i157.us.i.i, ptr %i.tu, align 4, !tbaa !49
  %i.ty = load i32, ptr %i.m, align 8, !tbaa !144 ; 4 uses
  %i.tz = mul nsw i32 %i.ty, %i.so
  %i.ua = add nsw i32 %i.tz, %.04651.i.i.i
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr [2 x i8], ptr %i.n, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 2      ; 2 uses
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !73
  %i.uf = or i16 %i.ue, 16384
  store i16 %i.uf, ptr %i.ud, align 2, !tbaa !73
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre.pre.i151.i263.i = phi i32 [ %.pre.pre.i151.i264.i, %bb.aj ], [ %i.ty, %bb.ak ] ; 3 uses
  %.pre59.i.us.i.i = phi i32 [ %.pre60.i.us.i.i, %bb.aj ], [ %i.ty, %bb.ak ] ; 2 uses
  %i.ug = phi i32 [ %i.sn, %bb.aj ], [ %i.ty, %bb.ak ]
  %exitcond.not.i154.us.i.i = icmp eq i32 %i.so, %umin.i148.i.i
  br i1 %exitcond.not.i154.us.i.i, label %._crit_edge.i155.split.us.i.i, label %bb.aj, !llvm.loop !182

._crit_edge.i155.split.us.i.i:                    ; preds = %bb.al
  %i.uh = add nuw nsw i32 %.04651.i.i.i, 1        ; 2 uses
  %exitcond58.not.i.i.i = icmp eq i32 %i.uh, %i.dc
  br i1 %exitcond58.not.i.i.i, label %._crit_edge52.split.i.i.i, label %.preheader.i152.i.i, !llvm.loop !178

._crit_edge52.split.i.i.i:                        ; preds = %._crit_edge.i155.split.us.i.i
  %i.ui = add nuw nsw i32 %.04753.i.i.i, 4        ; 2 uses
  %i.uj = icmp samesign ult i32 %i.ui, %i.dh
  %indvars.iv.next.i149.i.i = add nuw nsw i32 %indvars.iv.i147.i.i, 4
  br i1 %i.uj, label %.preheader.preheader.i150.i.i, label %decode_sigpass.exit.i.i, !llvm.loop !181

bb.am:                                            ; preds = %.lr.ph.i
  %i.uk = load i8, ptr %i.ah, align 2, !tbaa !127
  %i.ul = and i8 %i.uk, 32
  %i.um = shl nuw i32 3, %i.ex
  %i.un = lshr i32 %i.um, 1                       ; 2 uses
  br i1 %brmerge205.i.i, label %._crit_edge127.split.i.i.i, label %.preheader.i160.i.i

.preheader.i160.i.i:                              ; preds = %bb.am, %._crit_edge.i162.i.i
  %indvars.iv.i161.i.i = phi i32 [ %indvars.iv.next.i163.i.i, %._crit_edge.i162.i.i ], [ 4, %bb.am ] ; 2 uses
  %.0106126.i.i.i = phi i32 [ %i.us, %._crit_edge.i162.i.i ], [ 0, %bb.am ] ; 6 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i161.i.i) ; 2 uses
  %i.uo = or disjoint i32 %.0106126.i.i.i, 3      ; 3 uses
  %i.up = icmp samesign ult i32 %i.uo, %i.dh
  %i.uq = or disjoint i32 %.0106126.i.i.i, 1      ; 4 uses
  %i.ur = or disjoint i32 %.0106126.i.i.i, 2
  %i.us = add nuw nsw i32 %.0106126.i.i.i, 4      ; 4 uses
  %invariant.smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.us, i32 range(i32 0, 1025) %i.dh)
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.i.i.i, %.preheader.i160.i.i
  %.0105123.i.i.i = phi i32 [ 0, %.preheader.i160.i.i ], [ %i.abl, %.loopexit.i.i.i ] ; 18 uses
  %.pre132.i.i.pre.i = load i32, ptr %i.m, align 8, !tbaa !144 ; 5 uses
  %i.ut = mul nsw i32 %.pre132.i.i.pre.i, %i.uq
  %i.uu = add nsw i32 %i.ut, %.0105123.i.i.i
  %i.uv = sext i32 %i.uu to i64                   ; 2 uses
  br i1 %i.up, label %bb.ao, label %.._crit_edge272.i_crit_edge

.._crit_edge272.i_crit_edge:                      ; preds = %bb.an
  %.phi.trans.insert = getelementptr [2 x i8], ptr %4, i64 %i.uv
  %.phi.trans.insert94 = getelementptr i8, ptr %.phi.trans.insert, i64 24578
  %.pre = load i16, ptr %.phi.trans.insert94, align 2, !tbaa !73
  br label %._crit_edge260.i.i

bb.ao:                                            ; preds = %bb.an
  %i.uw = getelementptr [2 x i8], ptr %i.n, i64 %i.uv
  %i.ux = getelementptr i8, ptr %i.uw, i64 2
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !73 ; 5 uses
  %i.uz = and i16 %i.uy, 12543
  %.not111.i.i.i = icmp eq i16 %i.uz, 0
  br i1 %.not111.i.i.i, label %bb.ap, label %._crit_edge260.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.va = mul nsw i32 %.pre132.i.i.pre.i, %i.ur
  %i.vb = add nsw i32 %i.va, %.0105123.i.i.i
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr [2 x i8], ptr %i.n, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 2
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !73
  %i.vg = and i16 %i.vf, 12543
  %.not112.i.i.i = icmp eq i16 %i.vg, 0
  br i1 %.not112.i.i.i, label %bb.aq, label %._crit_edge260.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.vh = mul nsw i32 %.pre132.i.i.pre.i, %i.uo
  %i.vi = add nsw i32 %i.vh, %.0105123.i.i.i
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr [2 x i8], ptr %i.n, i64 %i.vj
  %i.vl = getelementptr i8, ptr %i.vk, i64 2
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !73
  %i.vn = and i16 %i.vm, 12543
  %.not113.i.i.i = icmp eq i16 %i.vn, 0
  br i1 %.not113.i.i.i, label %bb.ar, label %._crit_edge260.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.vo = mul nsw i32 %.pre132.i.i.pre.i, %i.us
  %i.vp = add nsw i32 %i.vo, %.0105123.i.i.i
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr [2 x i8], ptr %i.n, i64 %i.vq
  %i.vs = getelementptr i8, ptr %i.vr, i64 2
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !73
  %i.vu = and i16 %i.vt, 12543
  %i.vv = zext nneg i16 %i.vu to i32
  %i.vw = and i32 %spec.select.i.i.i, %i.vv
  %.not114.i.i.i = icmp eq i32 %i.vw, 0
  br i1 %.not114.i.i.i, label %bb.as, label %._crit_edge260.i.i

bb.as:                                            ; preds = %bb.ar
  %i.vx = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #10
  %.not115.i.i.i = icmp eq i32 %i.vx, 0
  br i1 %.not115.i.i.i, label %.loopexit.i.i.i, label %.thread.i.i.i

._crit_edge260.i.i:                               ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.._crit_edge272.i_crit_edge
  %7 = phi i16 [ %.pre, %.._crit_edge272.i_crit_edge ], [ %i.uy, %bb.ar ], [ %i.uy, %bb.aq ], [ %i.uy, %bb.ap ], [ %i.uy, %bb.ao ]
  %8 = zext i16 %7 to i32                         ; 2 uses
  %9 = and i32 %8, 12288
  %.not117.peel.i.i.i = icmp eq i32 %9, 0
  br i1 %.not117.peel.i.i.i, label %bb.at, label %.critedge120.peel.i.i.i

.thread.i.i.i:                                    ; preds = %bb.as
  %i.vy = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.vz = shl i32 %i.vy, 1
  %i.wa = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.wb = or i32 %i.vz, %i.wa                     ; 2 uses
  %i.wc = add nsw i32 %i.wb, %.0106126.i.i.i      ; 3 uses
  %i.wd = icmp slt i32 %i.wc, %invariant.smin.i.i.i
  br i1 %i.wd, label %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader..critedge.peel_crit_edge.i.i.i:  ; preds = %.thread.i.i.i
  %i.we = icmp eq i32 %i.wb, 3
  %or.cond.peel150.i.i.i = and i1 %.not110.i.i.i, %i.we
  %.0.peel151.i.i.i = select i1 %or.cond.peel150.i.i.i, i32 -713, i32 -1
  %.pre132152.i.i.i = load i32, ptr %i.m, align 8, !tbaa !144
  %.pre139.i.i.i = add nsw i32 %i.wc, 1
  br label %.critedge.peel.i.i.i

bb.at:                                            ; preds = %._crit_edge260.i.i
  %i.wf = and i32 %8, 255
  %i.wg = zext nneg i32 %i.wf to i64
  %gep.peel.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.wg
  %i.wh = load i8, ptr %gep.peel.i.i.i, align 1, !tbaa !46
  %i.wi = zext i8 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.wi
  %i.wk = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.wj) #10
  %i.wl = icmp eq i32 %i.wk, 0
  %.pre134.i.i.i = load i32, ptr %i.m, align 8, !tbaa !144 ; 2 uses
  br i1 %i.wl, label %.critedge120.peel.i.i.i, label %.critedge.peel.i.i.i

.critedge.peel.i.i.i:                             ; preds = %bb.at, %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i
  %.0.peel153.i.i.i = phi i32 [ %.0.peel151.i.i.i, %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i ], [ -1, %bb.at ]
  %i.wm = phi i32 [ %i.wc, %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i ], [ %.0106126.i.i.i, %bb.at ] ; 4 uses
  %.pre-phi140.i.i.i = phi i32 [ %.pre139.i.i.i, %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i ], [ %i.uq, %bb.at ] ; 2 uses
  %i.wn = phi i32 [ %.pre132152.i.i.i, %.lr.ph.preheader..critedge.peel_crit_edge.i.i.i ], [ %.pre134.i.i.i, %bb.at ]
  %i.wo = mul nsw i32 %i.wn, %.pre-phi140.i.i.i
  %i.wp = add nsw i32 %i.wo, %.0105123.i.i.i
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr [2 x i8], ptr %4, i64 %i.wq
  %i.ws = getelementptr i8, ptr %i.wr, i64 24578
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !73
  %i.wu = zext i16 %i.wt to i32
  %i.wv = and i32 %.0.peel153.i.i.i, %i.wu        ; 2 uses
  %i.ww = and i32 %i.wv, 15
  %i.wx = zext nneg i32 %i.ww to i64              ; 2 uses
  %i.wy = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.wx
  %i.wz = lshr i32 %i.wv, 8
  %i.xa = and i32 %i.wz, 15
  %i.xb = zext nneg i32 %i.xa to i64              ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !46
  %i.xe = zext i8 %i.xd to i32
  %i.xf = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.wx
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xb
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !46
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.xi
  %i.xk = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.xj) #10
  %i.xl = xor i32 %i.xk, %i.xe
  %i.xm = shl i32 %i.xl, 31
  %i.xn = load i32, ptr %i.m, align 8, !tbaa !144
  %i.xo = mul nsw i32 %i.xn, %i.wm
  %i.xp = add nsw i32 %i.xo, %.0105123.i.i.i
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.xq ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !49
  %i.xt = or i32 %i.xs, %i.xm
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !49
  %i.xu = load i32, ptr %i.m, align 8, !tbaa !144
  %i.xv = mul nsw i32 %i.xu, %i.wm
  %i.xw = add nsw i32 %i.xv, %.0105123.i.i.i
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %4, i64 %i.xx ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !49
  %i.ya = or i32 %i.xz, %i.un
  store i32 %i.ya, ptr %i.xy, align 4, !tbaa !49
  %i.yb = load i32, ptr %i.m, align 8, !tbaa !144
  %i.yc = mul nsw i32 %i.yb, %i.wm
  %i.yd = add nsw i32 %i.yc, %.0105123.i.i.i
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !49
  %i.yh = and i32 %i.yg, -2147483648
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %.0105123.i.i.i, i32 noundef %i.wm, i32 noundef %i.yh) #10
  %.pre133.i.i.i = load i32, ptr %i.m, align 8, !tbaa !144
  br label %.critedge120.peel.i.i.i

.critedge120.peel.i.i.i:                          ; preds = %.critedge.peel.i.i.i, %bb.at, %._crit_edge260.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre-phi140.i.i.i, %.critedge.peel.i.i.i ], [ %i.uq, %bb.at ], [ %i.uq, %._crit_edge260.i.i ] ; 3 uses
  %i.yi = phi i32 [ %.pre133.i.i.i, %.critedge.peel.i.i.i ], [ %.pre134.i.i.i, %bb.at ], [ %.pre132.i.i.pre.i, %._crit_edge260.i.i ] ; 2 uses
  %i.yj = mul nsw i32 %i.yi, %.pre-phi.i.i.i
  %i.yk = add nsw i32 %i.yj, %.0105123.i.i.i
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr [2 x i8], ptr %4, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 24578  ; 2 uses
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !73
  %i.yp = and i16 %i.yo, -4097
  store i16 %i.yp, ptr %i.yn, align 2, !tbaa !73
  %exitcond.peel.not.i.i.i = icmp eq i32 %.pre-phi.i.i.i, %smin.i.i.i
  br i1 %exitcond.peel.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %.critedge120.peel.i.i.i, %.critedge120.i.i.i
  %i.yq = phi i32 [ %i.abd, %.critedge120.i.i.i ], [ %i.yi, %.critedge120.peel.i.i.i ] ; 2 uses
  %.0104121.i.i.i = phi i32 [ %i.ys, %.critedge120.i.i.i ], [ %.pre-phi.i.i.i, %.critedge120.peel.i.i.i ] ; 6 uses
  %i.yr = icmp eq i32 %.0104121.i.i.i, %i.uo
  %or.cond.i165.i.i = and i1 %.not110.i.i.i, %i.yr
  %.0.i166.i.i = select i1 %or.cond.i165.i.i, i32 -713, i32 -1 ; 2 uses
  %i.ys = add i32 %.0104121.i.i.i, 1              ; 5 uses
  %i.yt = mul nsw i32 %i.ys, %i.yq
  %i.yu = add nsw i32 %i.yt, %.0105123.i.i.i
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr [2 x i8], ptr %4, i64 %i.yv
  %i.yx = getelementptr i8, ptr %i.yw, i64 24578
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !73
  %i.yz = zext i16 %i.yy to i32                   ; 2 uses
  %i.za = and i32 %i.yz, 12288
  %.not117.i.i.i = icmp eq i32 %i.za, 0
  br i1 %.not117.i.i.i, label %bb.au, label %.critedge120.i.i.i

bb.au:                                            ; preds = %.lr.ph.peel.next.i.i.i
  %i.zb = and i32 %i.yz, 255
  %i.zc = and i32 %i.zb, %.0.i166.i.i
  %i.zd = zext nneg i32 %i.zc to i64
  %gep.i168.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.zd
  %i.ze = load i8, ptr %gep.i168.i.i, align 1, !tbaa !46
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.zf
  %i.zh = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.zg) #10
  %i.zi = icmp eq i32 %i.zh, 0
  %.pre136.i.i.i = load i32, ptr %i.m, align 8, !tbaa !144 ; 2 uses
  br i1 %i.zi, label %.critedge120.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.au
  %i.zj = mul nsw i32 %.pre136.i.i.i, %i.ys
  %i.zk = add nsw i32 %i.zj, %.0105123.i.i.i
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr [2 x i8], ptr %4, i64 %i.zl
  %i.zn = getelementptr i8, ptr %i.zm, i64 24578
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !73
  %i.zp = zext i16 %i.zo to i32
  %i.zq = and i32 %.0.i166.i.i, %i.zp             ; 2 uses
  %i.zr = and i32 %i.zq, 15
  %i.zs = zext nneg i32 %i.zr to i64              ; 2 uses
  %i.zt = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.zs
  %i.zu = lshr i32 %i.zq, 8
  %i.zv = and i32 %i.zu, 15
  %i.zw = zext nneg i32 %i.zv to i64              ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !46
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.zs
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zw
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !46
  %i.aad = zext i8 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aad
  %i.aaf = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.aae) #10
  %i.aag = xor i32 %i.aaf, %i.zz
  %i.aah = shl i32 %i.aag, 31
  %i.aai = load i32, ptr %i.m, align 8, !tbaa !144
  %i.aaj = mul nsw i32 %i.aai, %.0104121.i.i.i
  %i.aak = add nsw i32 %i.aaj, %.0105123.i.i.i
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aal ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !49
  %i.aao = or i32 %i.aan, %i.aah
  store i32 %i.aao, ptr %i.aam, align 4, !tbaa !49
  %i.aap = load i32, ptr %i.m, align 8, !tbaa !144
  %i.aaq = mul nsw i32 %i.aap, %.0104121.i.i.i
  %i.aar = add nsw i32 %i.aaq, %.0105123.i.i.i
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aas ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !49
  %i.aav = or i32 %i.aau, %i.un
  store i32 %i.aav, ptr %i.aat, align 4, !tbaa !49
  %i.aaw = load i32, ptr %i.m, align 8, !tbaa !144
  %i.aax = mul nsw i32 %i.aaw, %.0104121.i.i.i
  %i.aay = add nsw i32 %i.aax, %.0105123.i.i.i
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !49
  %i.abc = and i32 %i.abb, -2147483648
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %.0105123.i.i.i, i32 noundef %.0104121.i.i.i, i32 noundef %i.abc) #10
  %.pre135.i.i.i = load i32, ptr %i.m, align 8, !tbaa !144
  br label %.critedge120.i.i.i

.critedge120.i.i.i:                               ; preds = %.critedge.i.i.i, %bb.au, %.lr.ph.peel.next.i.i.i
  %i.abd = phi i32 [ %i.yq, %.lr.ph.peel.next.i.i.i ], [ %.pre135.i.i.i, %.critedge.i.i.i ], [ %.pre136.i.i.i, %bb.au ] ; 2 uses
  %i.abe = mul nsw i32 %i.abd, %i.ys
  %i.abf = add nsw i32 %i.abe, %.0105123.i.i.i
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr [2 x i8], ptr %4, i64 %i.abg
  %i.abi = getelementptr i8, ptr %i.abh, i64 24578 ; 2 uses
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !73
  %i.abk = and i16 %i.abj, -4097
  store i16 %i.abk, ptr %i.abi, align 2, !tbaa !73
  %exitcond.not.i167.i.i = icmp eq i32 %i.ys, %smin.i.i.i
  br i1 %exitcond.not.i167.i.i, label %.loopexit.i.i.i, label %.lr.ph.peel.next.i.i.i, !llvm.loop !183

.loopexit.i.i.i:                                  ; preds = %.critedge120.i.i.i, %.critedge120.peel.i.i.i, %.thread.i.i.i, %bb.as
  %i.abl = add nuw nsw i32 %.0105123.i.i.i, 1     ; 2 uses
  %exitcond131.not.i.i.i = icmp eq i32 %i.abl, %i.dc
  br i1 %exitcond131.not.i.i.i, label %._crit_edge.i162.i.i, label %bb.an, !llvm.loop !185

._crit_edge.i162.i.i:                             ; preds = %.loopexit.i.i.i
  %i.abm = icmp samesign ult i32 %i.us, %i.dh
  %indvars.iv.next.i163.i.i = add nuw nsw i32 %indvars.iv.i161.i.i, 4
  br i1 %i.abm, label %.preheader.i160.i.i, label %._crit_edge127.split.i.i.i, !llvm.loop !186

._crit_edge127.split.i.i.i:                       ; preds = %._crit_edge.i162.i.i, %bb.am
  %.not.i164.i.i = icmp eq i8 %i.ul, 0
  br i1 %.not.i164.i.i, label %decode_sigpass.exit.i.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge127.split.i.i.i
  %i.abn = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.abo = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.abp = shl i32 %i.abn, 2
  %i.abq = shl i32 %i.abo, 1
  %i.abr = add i32 %i.abq, %i.abp
  %i.abs = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.abt = add nsw i32 %i.abr, %i.abs
  %i.abu = shl i32 %i.abt, 1
  %i.abv = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #10
  %i.abw = add nsw i32 %i.abu, %i.abv
  %.not109.i.i.i = icmp eq i32 %i.abw, 10
  br i1 %.not109.i.i.i, label %decode_sigpass.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.abx = load ptr, ptr %i.s, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.abx, i32 noundef 16, ptr noundef nonnull @.str.107) #10
  br label %decode_sigpass.exit.i.i

default.unreachable.i.i:                          ; preds = %.lr.ph.i
  unreachable

decode_sigpass.exit.i.i:                          ; preds = %._crit_edge52.split.i.loopexit.split.us.us.i.i, %._crit_edge52.split.i.i.i, %._crit_edge87.split.i.i.i, %bb.aw, %bb.av, %._crit_edge127.split.i.i.i, %.preheader49.lr.ph.i.i.i, %bb.y, %bb.p
  %i.aby = load i8, ptr %i.ah, align 2, !tbaa !127
  %i.abz = and i8 %i.aby, 2
  %.not141.i.i = icmp eq i8 %i.abz, 0
  br i1 %.not141.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %decode_sigpass.exit.i.i
  call void @ff_mqc_init_contexts(ptr noundef nonnull %i.o) #10
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %decode_sigpass.exit.i.i
  %.not142.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not142.i.i, label %._crit_edge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aca = load i8, ptr %i.ah, align 2, !tbaa !127
  %i.acb = zext i8 %i.aca to i32                  ; 3 uses
  %i.acc = and i32 %i.acb, 1
  %.not.i169.i.i = icmp eq i32 %i.acc, 0
  br i1 %.not.i169.i.i, label %needs_termination.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.acd = urem i32 %.0123193.i186.i, 3           ; 2 uses
  %i.ace = icmp eq i32 %i.acd, 0
  %i.acf = icmp samesign ugt i32 %.0123193.i186.i, 8 ; 3 uses
  %or.cond.i170.i.i = and i1 %i.acf, %i.ace
  br i1 %or.cond.i170.i.i, label %needs_termination.exit.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.acg = icmp eq i32 %i.acd, 2
  %or.cond3.i.i.i = and i1 %i.acf, %i.acg
  br i1 %or.cond3.i.i.i, label %needs_termination.exit.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ach = and i32 %i.acb, 4
  %.not16.i.i.i = icmp eq i32 %i.ach, 0
  br i1 %.not16.i.i.i, label %needs_termination.exit.thread271.i.i, label %needs_termination.exit.thread.i.i

needs_termination.exit.i.i:                       ; preds = %bb.az
  %.pre243.i.i = and i32 %i.acb, 4
  %i.aci = icmp eq i32 %.pre243.i.i, 0
  br i1 %i.aci, label %needs_termination.exit.thread271.i.i, label %needs_termination.exit.thread.i.i

needs_termination.exit.thread.i.i:                ; preds = %needs_termination.exit.i.i, %bb.bc, %bb.bb, %bb.ba
  %.1.i174.i.i = phi i1 [ false, %needs_termination.exit.i.i ], [ false, %bb.bb ], [ true, %bb.ba ], [ %i.acf, %bb.bc ]
  %i.acj = load i32, ptr %i.et, align 8, !tbaa !187
  %.not144.i.i = icmp slt i32 %.0122196.i185.i, %i.acj
  br i1 %.not144.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %needs_termination.exit.thread.i.i
  %i.ack = load ptr, ptr %i.s, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ack, i32 noundef 16, ptr noundef nonnull @.str.103) #10
  br label %decode_cblk.exit.thread.i

bb.be:                                            ; preds = %needs_termination.exit.thread.i.i
  %i.acl = load ptr, ptr %i.ei, align 8, !tbaa !173 ; 2 uses
  %i.acm = load ptr, ptr %i.eu, align 8, !tbaa !188
  %i.acn = add nsw i32 %.0122196.i185.i, 1        ; 2 uses
  %i.aco = sext i32 %i.acn to i64                 ; 2 uses
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !49
  %i.acr = sext i32 %i.acq to i64                 ; 2 uses
  %i.acs = getelementptr inbounds i8, ptr %i.acl, i64 %i.acr
  %i.act = getelementptr inbounds i8, ptr %i.acs, i64 -2 ; 2 uses
  %i.acu = load ptr, ptr %i.o, align 8, !tbaa !189 ; 2 uses
  %i.acv = ptrtoint ptr %i.act to i64
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = sub i64 %i.acv, %i.acw                 ; 2 uses
  %i.acy = icmp slt i64 %i.acx, 0
  %i.acz = icmp ne ptr %i.act, %i.acu
  %i.ada = or i1 %i.acz, %i.acy
  br i1 %i.ada, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.adb = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adc = load i8, ptr %i.cu, align 8, !tbaa !170
  %i.add = zext i8 %i.adc to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.adb, i32 noundef 24, ptr noundef nonnull @.str.104, i64 noundef %i.acx, i32 noundef %.0123193.i186.i, i32 noundef %i.add) #10
  %.pre.i.i = load ptr, ptr %i.ei, align 8, !tbaa !173
  %.pre235.i.i = load ptr, ptr %i.eu, align 8, !tbaa !188
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %.pre235.i.i, i64 %i.aco
  %.pre236.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !49
  %.pre241.i.i = sext i32 %.pre236.i.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi242.i.i = phi i64 [ %.pre241.i.i, %bb.bf ], [ %i.acr, %bb.be ]
  %i.ade = phi ptr [ %.pre.i.i, %bb.bf ], [ %i.acl, %bb.be ]
  %i.adf = getelementptr inbounds i8, ptr %i.ade, i64 %.pre-phi242.i.i
  %i.adg = zext i1 %.1.i174.i.i to i32
  call void @ff_mqc_initdec(ptr noundef nonnull %i.o, ptr noundef %i.adf, i32 noundef %i.adg, i32 noundef 0) #10
  br label %needs_termination.exit.thread271.i.i

needs_termination.exit.thread271.i.i:             ; preds = %bb.bg, %needs_termination.exit.i.i, %bb.bc
  %.1.i.i = phi i32 [ %i.acn, %bb.bg ], [ %.0122196.i185.i, %needs_termination.exit.i.i ], [ %.0122196.i185.i, %bb.bc ]
  %i.adh = add nuw nsw i32 %.0126191.i189.i, 1    ; 2 uses
  %i.adi = icmp eq i32 %i.adh, 3                  ; 2 uses
  %spec.select.i.i = select i1 %i.adi, i32 0, i32 %i.adh
  %i.adj = sext i1 %i.adi to i32
  %spec.select145.i.i = add nsw i32 %.0124192.i188.i, %i.adj ; 3 uses
  %i.adk = add nuw nsw i32 %.0123193.i186.i, 1
  %i.adl = add i32 %spec.select145.i.i, -30
  %or.cond3.i.i = icmp ult i32 %i.adl, -31
  br i1 %or.cond3.i.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !190

._crit_edge.i.i:                                  ; preds = %bb.ay, %bb.o
  %i.adm = load ptr, ptr %i.ei, align 8, !tbaa !173 ; 2 uses
  %i.adn = load i16, ptr %i.eb, align 4, !tbaa !172
  %i.ado = zext i16 %i.adn to i64                 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ado
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 -2 ; 2 uses
  %i.adr = load ptr, ptr %i.o, align 8, !tbaa !189 ; 3 uses
  %i.ads = icmp ugt ptr %i.adq, %i.adr
  br i1 %i.ads, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.adt = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adu = ptrtoint ptr %i.adq to i64
  %i.adv = ptrtoint ptr %i.adr to i64
  %i.adw = sub i64 %i.adu, %i.adv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.adt, i32 noundef 24, ptr noundef nonnull @.str.105, i64 noundef %i.adw) #10
  %.pre237.i.i = load ptr, ptr %i.ei, align 8, !tbaa !173
  %.pre238.i.i = load i16, ptr %i.eb, align 4, !tbaa !172
  %.pre239.i.i = load ptr, ptr %i.o, align 8, !tbaa !189
  %.pre240.i.i = zext i16 %.pre238.i.i to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre240.i.i, %bb.bh ], [ %i.ado, %._crit_edge.i.i ]
  %i.adx = phi ptr [ %.pre239.i.i, %bb.bh ], [ %i.adr, %._crit_edge.i.i ]
  %i.ady = phi ptr [ %.pre237.i.i, %bb.bh ], [ %i.adm, %._crit_edge.i.i ]
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.pre-phi.i.i
  %i.aea = icmp ult ptr %i.adz, %i.adx
  br i1 %i.aea, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.aeb = load ptr, ptr %i.s, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aeb, i32 noundef 24, ptr noundef nonnull @.str.106) #10
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.aec = icmp sgt i32 %i.dh, 0
  br i1 %i.aec, label %.preheader.lr.ph.i.i, label %decode_cblk.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.bk
  %i.aed = icmp slt i32 %i.dc, 1
  %.not140.i.i = icmp eq i8 %i.di, 0
  %or.cond282.i.i = or i1 %i.aed, %.not140.i.i
  br i1 %or.cond282.i.i, label %decode_cblk.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %._crit_edge199.split.i.i
  %.0121200.i.i = phi i32 [ %i.aee, %._crit_edge199.split.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  br label %bb.bl

._crit_edge199.split.i.i:                         ; preds = %bb.bl
  %i.aee = add nuw nsw i32 %.0121200.i.i, 1       ; 2 uses
  %exitcond234.not.i.i = icmp eq i32 %i.aee, %i.dh
  br i1 %exitcond234.not.i.i, label %decode_cblk.exit.thread.i, label %.preheader.i.i, !llvm.loop !191

bb.bl:                                            ; preds = %bb.bl, %.preheader.i.i
  %.0120197.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.aer, %bb.bl ] ; 2 uses
  %i.aef = load i32, ptr %i.m, align 8, !tbaa !144
  %i.aeg = mul nsw i32 %i.aef, %.0121200.i.i
  %i.aeh = add nsw i32 %i.aeg, %.0120197.i.i
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aei ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !49 ; 2 uses
  %i.ael = and i32 %i.aek, -2147483648
  %i.aem = and i32 %i.aek, 2147483647             ; 2 uses
  %i.aen = and i32 %i.aem, %i.cb
  %i.aeo = icmp eq i32 %i.aen, 0
  %i.aep = select i1 %i.aeo, i32 %i.do, i32 0
  %spec.select146.i.i = shl i32 %i.aem, %i.aep
  %i.aeq = or i32 %spec.select146.i.i, %i.ael
  store i32 %i.aeq, ptr %i.aej, align 4, !tbaa !49
  %i.aer = add nuw nsw i32 %.0120197.i.i, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aer, %i.dc
  br i1 %exitcond.not.i.i, label %._crit_edge199.split.i.i, label %bb.bl, !llvm.loop !192

decode_cblk.exit.i:                               ; preds = %bb.i
  %i.aes = call i32 @ff_jpeg2000_decode_htj2k(ptr noundef %i.b, ptr noundef nonnull %i.w, ptr noundef nonnull %4, ptr noundef nonnull %i.cu, i32 noundef %i.dc, i32 noundef %i.dh, i32 noundef %i.bi, i8 noundef zeroext %i.di) #10
  %.not122.i = icmp eq i32 %i.aes, 0
  br i1 %.not122.i, label %dequantization_float.exit.i, label %decode_cblk.exit.thread.i

decode_cblk.exit.thread.i:                        ; preds = %._crit_edge199.split.i.i, %decode_cblk.exit.i, %.preheader.lr.ph.i.i, %bb.bk, %bb.bd, %._crit_edge.i
  %i.aet = load i32, ptr %i.cy, align 8, !tbaa !49 ; 4 uses
  %i.aeu = load i32, ptr %i.bb, align 8, !tbaa !49
  %i.aev = sub i32 %i.aet, %i.aeu                 ; 3 uses
  %i.aew = load i32, ptr %i.dd, align 8, !tbaa !49 ; 3 uses
  %i.aex = load i32, ptr %i.bn, align 8, !tbaa !49
  %i.aey = sub i32 %i.aew, %i.aex                 ; 3 uses
  %i.aez = load i8, ptr %i.ai, align 2, !tbaa !126
  switch i8 %i.aez, label %bb.bo [
    i8 0, label %bb.bm
    i8 2, label %bb.bn
  ]

bb.bm:                                            ; preds = %decode_cblk.exit.thread.i
  %.val.i = load float, ptr %i.cc, align 8, !tbaa !193
  %i.afa = load i32, ptr %i.cz, align 4, !tbaa !49
  %i.afb = sub i32 %i.afa, %i.aet                 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v4i32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 720}
!30 = !{!31, !6, i64 3168}
!31 = !{!"Jpeg2000DecoderContext", !11, i64 0, !32, i64 8, !33, i64 16, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !16, i64 80, !6, i64 88, !33, i64 96, !7, i64 120, !7, i64 136, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 164, !7, i64 1188, !7, i64 1192, !6, i64 1208, !6, i64 1212, !6, i64 1216, !6, i64 1220, !6, i64 1224, !17, i64 1228, !7, i64 1236, !7, i64 1588, !34, i64 2788, !7, i64 3116, !6, i64 3120, !6, i64 3124, !35, i64 3128, !36, i64 3136, !7, i64 3160, !7, i64 3161, !7, i64 3162, !7, i64 3163, !7, i64 3164, !7, i64 3165, !6, i64 3168}
!32 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!33 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!34 = !{!"Jpeg2000POC", !7, i64 0, !6, i64 320, !6, i64 324}
!35 = !{!"p1 _ZTS12Jpeg2000Tile", !12, i64 0}
!36 = !{!"Jpeg2000DSPContext", !7, i64 0}
!37 = !{!31, !32, i64 8}
!38 = !{!39, !16, i64 24}
!39 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!40 = !{!39, !6, i64 32}
!41 = !{!33, !16, i64 0}
!42 = !{!33, !16, i64 16}
!43 = !{!33, !16, i64 8}
!44 = !{!31, !6, i64 3124}
!45 = !{!16, !16, i64 0}
!46 = !{!7, !7, i64 0}
!47 = !{!31, !6, i64 160}
!48 = !{!31, !7, i64 1188}
!49 = !{!6, !6, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = !{!31, !35, i64 3128}
!57 = !{!58, !60, i64 3992}
!58 = !{!"Jpeg2000Tile", !59, i64 0, !7, i64 8, !7, i64 12, !7, i64 364, !34, i64 1564, !7, i64 1896, !7, i64 3944, !16, i64 3952, !6, i64 3960, !33, i64 3968, !60, i64 3992, !7, i64 3996}
!59 = !{!"p1 _ZTS17Jpeg2000Component", !12, i64 0}
!60 = !{!"short", !7, i64 0}
!61 = !{!62, !16, i64 8}
!62 = !{!"Jpeg2000TilePart", !7, i64 0, !16, i64 8, !33, i64 16, !33, i64 40}
!63 = !{!31, !7, i64 76}
!64 = !{!58, !7, i64 3944}
!65 = !{!58, !16, i64 3952}
!66 = !{!58, !6, i64 3960}
!67 = !{!31, !16, i64 16}
!68 = !{!10, !6, i64 516}
!69 = !{!31, !6, i64 156}
!70 = !{!31, !6, i64 1220}
!71 = !{!31, !6, i64 1216}
!72 = !{!31, !7, i64 3160}
!73 = !{!60, !60, i64 0}
!74 = distinct !{!74, !51}
!75 = !{!31, !7, i64 3161}
!76 = !{!31, !7, i64 3162}
!77 = !{!31, !7, i64 3163}
!78 = !{!31, !7, i64 3164}
!79 = !{!31, !7, i64 3165}
!80 = !{!81, !7, i64 11}
!81 = !{!"Jpeg2000CodingStyle", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 50, !7, i64 84}
!82 = !{!81, !7, i64 84}
!83 = !{!81, !7, i64 15}
!84 = !{!81, !7, i64 12}
!85 = !{!81, !7, i64 13}
!86 = distinct !{!86, !51}
!87 = !{!58, !59, i64 0}
!88 = !{!89, !7, i64 400}
!89 = !{!"Jpeg2000Component", !90, i64 0, !91, i64 8, !92, i64 352, !26, i64 360, !7, i64 368, !7, i64 384, !7, i64 400}
!90 = !{!"p1 _ZTS16Jpeg2000ResLevel", !12, i64 0}
!91 = !{!"DWTContext", !7, i64 0, !7, i64 256, !7, i64 320, !7, i64 321, !26, i64 328, !92, i64 336}
!92 = !{!"p1 float", !12, i64 0}
!93 = distinct !{!93, !51}
!94 = !{!34, !6, i64 320}
!95 = !{!96, !7, i64 6}
!96 = !{!"Jpeg2000POCEntry", !60, i64 0, !60, i64 2, !60, i64 4, !7, i64 6, !7, i64 7, !7, i64 8}
!97 = !{!96, !60, i64 2}
!98 = !{!96, !60, i64 0}
!99 = !{!96, !7, i64 7}
!100 = !{!96, !7, i64 8}
!101 = distinct !{!101, !51}
!102 = !{!34, !6, i64 324}
!103 = !{i64 0, i64 320, !46, i64 320, i64 4, !49, i64 324, i64 4, !49}
!104 = !{!31, !16, i64 80}
!105 = !{!31, !6, i64 88}
!106 = !{!62, !7, i64 0}
!107 = !{!58, !6, i64 1888}
!108 = distinct !{!108, !51}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !51}
!113 = !{!31, !6, i64 1228}
!114 = !{!31, !6, i64 1232}
!115 = !{!10, !6, i64 704}
!116 = distinct !{!116, !51}
!117 = !{!31, !6, i64 1208}
!118 = !{!31, !6, i64 56}
!119 = !{!31, !6, i64 48}
!120 = !{!31, !6, i64 40}
!121 = !{!31, !6, i64 1212}
!122 = !{!31, !6, i64 60}
!123 = !{!31, !6, i64 52}
!124 = !{!31, !6, i64 44}
!125 = distinct !{!125, !51}
!126 = !{!81, !7, i64 10}
!127 = !{!81, !7, i64 14}
!128 = !{!31, !6, i64 3120}
!129 = !{!58, !6, i64 1884}
!130 = distinct !{!130, !51}
!131 = !{!96, !60, i64 4}
!132 = !{!10, !12, i64 680}
!133 = !{!10, !6, i64 136}
!134 = !{!135, !6, i64 276}
!135 = !{!"AVFrame", !7, i64 0, !7, i64 64, !136, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !137, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !138, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!136 = !{!"p2 omnipotent char", !28, i64 0}
!137 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!138 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!139 = distinct !{!139, !51}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51}
!142 = !{!31, !6, i64 152}
!143 = !{!81, !7, i64 8}
!144 = !{!145, !6, i64 36944}
!145 = !{!"Jpeg2000T1Context", !7, i64 0, !7, i64 24576, !146, i64 36888, !6, i64 36944}
!146 = !{!"MqcState", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !6, i64 48}
!147 = !{!81, !6, i64 4}
!148 = !{!89, !90, i64 0}
!149 = !{!150, !7, i64 0}
!150 = !{!"Jpeg2000ResLevel", !7, i64 0, !7, i64 4, !6, i64 20, !6, i64 24, !7, i64 28, !7, i64 29, !151, i64 32}
!151 = !{!"p1 _ZTS12Jpeg2000Band", !12, i64 0}
!152 = !{!150, !151, i64 32}
!153 = !{!154, !7, i64 299}
!154 = !{!"Jpeg2000QuantStyle", !7, i64 0, !7, i64 100, !7, i64 298, !7, i64 299}
!155 = !{!150, !6, i64 20}
!156 = !{!150, !6, i64 24}
!157 = !{!158, !159, i64 32}
!158 = !{!"Jpeg2000Band", !7, i64 0, !60, i64 16, !60, i64 18, !6, i64 20, !18, i64 24, !159, i64 32}
!159 = !{!"p1 _ZTS12Jpeg2000Prec", !12, i64 0}
!160 = !{!161, !6, i64 0}
!161 = !{!"Jpeg2000Prec", !6, i64 0, !6, i64 4, !162, i64 8, !162, i64 16, !163, i64 24, !6, i64 32, !7, i64 36}
!162 = !{!"p1 _ZTS15Jpeg2000TgtNode", !12, i64 0}
!163 = !{!"p1 _ZTS12Jpeg2000Cblk", !12, i64 0}
!164 = !{!161, !6, i64 4}
!165 = !{!161, !163, i64 24}
!166 = !{!167, !7, i64 100}
!167 = !{!"Jpeg2000Cblk", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !60, i64 4, !19, i64 8, !7, i64 16, !7, i64 17, !16, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !26, i64 48, !168, i64 56, !169, i64 64, !7, i64 72, !6, i64 88, !7, i64 92, !7, i64 100, !7, i64 101}
!168 = !{!"p1 _ZTS12Jpeg2000Pass", !12, i64 0}
!169 = !{!"p1 _ZTS13Jpeg2000Layer", !12, i64 0}
!170 = !{!167, !7, i64 0}
!171 = !{!167, !7, i64 2}
!172 = !{!167, !60, i64 4}
!173 = !{!167, !16, i64 24}
!174 = !{!145, !6, i64 36936}
!175 = distinct !{!175, !51}
!176 = distinct !{!176, !51}
!177 = distinct !{!177, !51}
!178 = distinct !{!178, !51}
!179 = distinct !{!179, !51, !180}
!180 = !{!"llvm.loop.peeled.count", i32 4}
!181 = distinct !{!181, !51}
!182 = distinct !{!182, !51}
!183 = distinct !{!183, !51, !184}
!184 = !{!"llvm.loop.peeled.count", i32 1}
!185 = distinct !{!185, !51}
!186 = distinct !{!186, !51}
!187 = !{!167, !6, i64 40}
!188 = !{!167, !26, i64 48}
!189 = !{!145, !16, i64 36888}
!190 = distinct !{!190, !51}
!191 = distinct !{!191, !51}
!192 = distinct !{!192, !51}
!193 = !{!158, !18, i64 24}
!194 = !{!89, !92, i64 352}
!195 = !{!18, !18, i64 0}
!196 = distinct !{!196, !51, !197, !198}
!197 = !{!"llvm.loop.isvectorized", i32 1}
!198 = !{!"llvm.loop.unroll.runtime.disable"}
!199 = distinct !{!199, !51, !198, !197}
!200 = distinct !{!200, !51}
!201 = !{!158, !6, i64 20}
!202 = !{!89, !26, i64 360}
!203 = !{!204}
!204 = distinct !{!204, !205}
!205 = distinct !{!205, !"LVerDomain"}
!206 = !{!207}
!207 = distinct !{!207, !205}
!208 = !{!209}
!209 = distinct !{!209, !205}
!210 = !{!207, !204}
!211 = distinct !{!211, !51, !197, !198}
!212 = distinct !{!212, !51, !197}
!213 = distinct !{!213, !51}
!214 = !{!215}
!215 = distinct !{!215, !216}
!216 = distinct !{!216, !"LVerDomain"}
!217 = !{!218}
!218 = distinct !{!218, !216}
!219 = !{!220}
!220 = distinct !{!220, !216}
!221 = !{!218, !215}
!222 = distinct !{!222, !51, !197, !198}
!223 = distinct !{!223, !51, !197, !198}
!224 = distinct !{!224, !51, !197}
!225 = distinct !{!225, !51, !197}
!226 = distinct !{!226, !51}
!227 = distinct !{!227, !51}
!228 = distinct !{!228, !51}
!229 = distinct !{!229, !51}
!230 = distinct !{!230, !51}
!231 = !{!12, !12, i64 0}
!232 = distinct !{!232, !51}
!233 = distinct !{null}
!234 = !{!235, !15, i64 16}
!235 = !{!"AVPixFmtDescriptor", !16, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !15, i64 16, !7, i64 24, !16, i64 104}
!236 = !{!235, !7, i64 8}
!237 = distinct !{!237, !51}
!238 = distinct !{!238, !51}
!239 = distinct !{!239, !51}
!240 = distinct !{!240, !51}
!241 = !{!135, !6, i64 116}
!242 = distinct !{!242, !51}
!243 = distinct !{!243, !51}
!244 = distinct !{!244, !51}
!245 = distinct !{!245, !51}
!246 = !{!10, !6, i64 688}
!247 = !{!10, !15, i64 792}
!248 = distinct !{!248, !51, !197, !198}
!249 = distinct !{!249, !51, !198, !197}
!250 = distinct !{!250, !51}
!251 = distinct !{!251, !51}
!252 = distinct !{!252, !110}
!253 = distinct !{!253, !51}
!254 = distinct !{!254, !51}
!255 = distinct !{!255, !51}
!256 = distinct !{!256, !51}
!257 = !{!10, !6, i64 652}
!258 = !{!259, !6, i64 16}
!259 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!260 = !{!235, !7, i64 9}
!261 = !{!235, !7, i64 10}
!262 = !{!81, !6, i64 0}
!263 = !{!81, !7, i64 9}
!264 = !{!10, !6, i64 64}
!265 = distinct !{!265, !51, !184}
!266 = !{!154, !7, i64 298}
!267 = distinct !{!267, !51}
!268 = !{!269}
!269 = distinct !{!269, !270}
!270 = distinct !{!270, !"LVerDomain"}
!271 = !{!272}
!272 = distinct !{!272, !270}
!273 = !{!274, !269}
!274 = distinct !{!274, !270}
!275 = !{!274}
!276 = distinct !{!276, !51, !197}
!277 = distinct !{!277, !51}
!278 = distinct !{!278, !51}
!279 = distinct !{!279, !51}
!280 = distinct !{!280, !51}
!281 = distinct !{!281, !51}
!282 = distinct !{!282, !51}
!283 = distinct !{!283, !51}
!284 = distinct !{!284, !51}
!285 = distinct !{!285, !51}
!286 = !{!150, !7, i64 28}
!287 = !{!150, !7, i64 29}
!288 = distinct !{!288, !51, !197, !198}
!289 = distinct !{!289, !51, !198, !197}
!290 = distinct !{!290, !51}
!291 = distinct !{!291, !51}
!292 = distinct !{!292, !51}
!293 = distinct !{!293, !51, !294}
!294 = !{!"llvm.loop.unswitch.partial.disable"}
!295 = distinct !{!295, !51}
!296 = distinct !{!296, !51}
!297 = distinct !{!297, !51}
!298 = distinct !{!298, !51}
!299 = distinct !{!299, !51}
!300 = distinct !{!300, !51, !294}
!301 = distinct !{!301, !51}
!302 = distinct !{!302, !51, !197, !198}
!303 = distinct !{!303, !51, !198, !197}
!304 = distinct !{!304, !51}
!305 = distinct !{!305, !51}
!306 = distinct !{!306, !51}
!307 = distinct !{!307, !51}
!308 = distinct !{!308, !51}
!309 = distinct !{!309, !51, !294}
!310 = !{!161, !6, i64 32}
!311 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45}
!312 = distinct !{!312, !51, !294}
!313 = !{!167, !7, i64 3}
!314 = !{!167, !7, i64 101}
!315 = !{!161, !162, i64 16}
!316 = !{!161, !162, i64 8}
!317 = !{!167, !6, i64 88}
!318 = !{!167, !7, i64 17}
!319 = distinct !{!319, !51}
!320 = !{!167, !7, i64 16}
!321 = !{!167, !6, i64 44}
!322 = !{!167, !19, i64 8}
!323 = distinct !{!323, !51, !197, !198}
!324 = distinct !{!324, !51, !198, !197}
!325 = distinct !{!325, !51}
!326 = distinct !{!326, !51}
!327 = distinct !{!327, !51}
!328 = distinct !{!328, !51}
!329 = distinct !{!329, !51}
!330 = distinct !{!330, !51}
!331 = distinct !{!331, !51}
!332 = distinct !{!332, !51}
!333 = distinct !{!333, !51, !197, !198}
!334 = !{!167, !15, i64 32}
!335 = distinct !{!335, !51, !198, !197}
!336 = distinct !{!336, !51}
!337 = distinct !{!337, !51}
!338 = distinct !{!338, !51}
!339 = distinct !{!339, !51}
!340 = distinct !{!340, !51}
!341 = !{!342, !7, i64 2}
!342 = !{!"Jpeg2000TgtNode", !7, i64 0, !7, i64 1, !7, i64 2, !162, i64 8}
!343 = !{!162, !162, i64 0}
!344 = !{!342, !162, i64 8}
!345 = distinct !{!345, !51}
!346 = !{!342, !7, i64 0}
!347 = distinct !{!347, !51}
end_hunk_1
