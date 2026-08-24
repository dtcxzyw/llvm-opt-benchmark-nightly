Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@jpeg2000_decode_tile:bb.a
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
  %.0123193.i186.i = phi i32 [ %i.adp, %needs_termination.exit.thread271.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
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

.preheader.preheader.i150.us.i.i:                 ; preds = %.preheader49.i.preheader.i.i, %._crit_edge52.split.i.us.i.i
  %.pre.pre.i151.us.i.i = phi i32 [ %.pre.pre.i151.us.i255.i, %._crit_edge52.split.i.us.i.i ], [ %.pre.pre.i151.i.pre.i, %.preheader49.i.preheader.i.i ] ; 4 uses
  %indvars.iv.i147.us.i.i = phi i32 [ %indvars.iv.next.i149.us.i.i, %._crit_edge52.split.i.us.i.i ], [ 4, %.preheader49.i.preheader.i.i ] ; 2 uses
  %.04753.i.us.i.i = phi i32 [ %i.ih, %._crit_edge52.split.i.us.i.i ], [ 0, %.preheader49.i.preheader.i.i ] ; 8 uses
  %umin.i148.us.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i147.us.i.i) ; 5 uses
  %i.ih = add nuw nsw i32 %.04753.i.us.i.i, 4     ; 6 uses
  %i.ii = or disjoint i32 %.04753.i.us.i.i, 3     ; 5 uses
  %i.ij = or disjoint i32 %.04753.i.us.i.i, 1     ; 7 uses
  %exitcond.not.i154.us184.us.peel.i.i.a = icmp eq i32 %i.ij, %umin.i148.us.i.i
  %i.ik = or disjoint i32 %.04753.i.us.i.i, 2     ; 5 uses
  %exitcond.not.i154.us184.us.peel220.i.i = icmp eq i32 %i.ik, %umin.i148.us.i.i
  %exitcond.not.i154.us184.us.peel226.i.i = icmp eq i32 %i.ii, %umin.i148.us.i.i
  %exitcond.not.i154.us184.us.peel232.i.i = icmp eq i32 %i.ih, %umin.i148.us.i.i
  %exitcond.not.i154.us184.us.peel.i.fr.i = freeze i1 %exitcond.not.i154.us184.us.peel.i.i.a
  br i1 %exitcond.not.i154.us184.us.peel.i.fr.i, label %.preheader.i152.us.us.i.us.i, label %.preheader.i152.us.us.i.i

.preheader.i152.us.us.i.us.i:                     ; preds = %.preheader.preheader.i150.us.i.i, %._crit_edge.i155.split.us185.us.i.us.i
  %.pre.pre.i151.us.i261.i = phi i32 [ %.pre.pre.i151.us.i260.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ]
  %.pre.i153.us.us.i.us.i = phi i32 [ %.pre59.i.us183.us.peel.i.us.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ] ; 3 uses
  %.04651.i.us.us.i.us.i = phi i32 [ %i.kc, %._crit_edge.i155.split.us185.us.i.us.i ], [ 0, %.preheader.preheader.i150.us.i.i ] ; 5 uses
  %i.il = mul nsw i32 %.pre.i153.us.us.i.us.i, %i.ij
  %i.im = add nsw i32 %i.il, %.04651.i.us.us.i.us.i
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr [2 x i8], ptr %i.n, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !73
  %i.ir = zext i16 %i.iq to i32                   ; 3 uses
  %i.is = and i32 %i.ir, 12288
  %i.it = icmp eq i32 %i.is, 8192
  br i1 %i.it, label %bb.z, label %._crit_edge.i155.split.us185.us.i.us.i

bb.z:                                             ; preds = %.preheader.i152.us.us.i.us.i
  %i.iu = and i32 %i.ir, 255
  %i.iv = lshr i32 %i.ir, 14
  %i.iw = and i32 %i.iv, 1
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.ix
  %i.iz = icmp ne i32 %i.iu, 0
  %i.ja = zext i1 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !46
  %i.jd = mul nsw i32 %.pre.i153.us.us.i.us.i, %.04753.i.us.i.i
  %i.je = add nsw i32 %i.jd, %.04651.i.us.us.i.us.i
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !49
  %i.ji = or i32 %i.jh, %i.if
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !49
  %i.jj = zext i8 %i.jc to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jj
  %i.jl = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.jk) #10
  %.not.i156.us187.us.peel.i.us.i = icmp eq i32 %i.jl, 0
  %i.jm = load i32, ptr %i.m, align 8, !tbaa !144
  %i.jn = mul nsw i32 %i.jm, %.04753.i.us.i.i
  %i.jo = add nsw i32 %i.jn, %.04651.i.us.us.i.us.i
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !49 ; 2 uses
  %i.js = and i32 %i.jr, %i.ig
  %i.jt = or i32 %i.jr, %i.ie
  %.sink.i157.us188.us.peel.i.us.i = select i1 %.not.i156.us187.us.peel.i.us.i, i32 %i.js, i32 %i.jt
  store i32 %.sink.i157.us188.us.peel.i.us.i, ptr %i.jq, align 4, !tbaa !49
  %i.ju = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.jv = mul nsw i32 %i.ju, %i.ij
  %i.jw = add nsw i32 %i.jv, %.04651.i.us.us.i.us.i
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [2 x i8], ptr %i.n, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 2      ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !73
  %i.kb = or i16 %i.ka, 16384
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !73
  br label %._crit_edge.i155.split.us185.us.i.us.i

._crit_edge.i155.split.us185.us.i.us.i:           ; preds = %bb.z, %.preheader.i152.us.us.i.us.i
  %.pre.pre.i151.us.i260.i = phi i32 [ %.pre.pre.i151.us.i261.i, %.preheader.i152.us.us.i.us.i ], [ %i.ju, %bb.z ] ; 2 uses
  %.pre59.i.us183.us.peel.i.us.i = phi i32 [ %.pre.i153.us.us.i.us.i, %.preheader.i152.us.us.i.us.i ], [ %i.ju, %bb.z ]
  %i.kc = add nuw nsw i32 %.04651.i.us.us.i.us.i, 1 ; 2 uses
  %exitcond58.not.i.us.us.i.us.i = icmp eq i32 %i.kc, %i.dc
  br i1 %exitcond58.not.i.us.us.i.us.i, label %._crit_edge52.split.i.us.i.i, label %.preheader.i152.us.us.i.us.i, !llvm.loop !178

._crit_edge52.split.i.us.i.i:                     ; preds = %._crit_edge.i155.split.us185.us.i.i, %._crit_edge.i155.split.us185.us.i.us.i
  %.pre.pre.i151.us.i255.i = phi i32 [ %.pre.pre.i151.us.i260.i, %._crit_edge.i155.split.us185.us.i.us.i ], [ %.pre.pre.i151.us.i256.i, %._crit_edge.i155.split.us185.us.i.i ]
  %i.kd = icmp samesign ult i32 %i.ih, %i.dh
  %indvars.iv.next.i149.us.i.i = add nuw nsw i32 %indvars.iv.i147.us.i.i, 4
  br i1 %i.kd, label %.preheader.preheader.i150.us.i.i, label %decode_sigpass.exit.i.i, !llvm.loop !179

.preheader.i152.us.us.i.i:                        ; preds = %.preheader.preheader.i150.us.i.i, %._crit_edge.i155.split.us185.us.i.i
  %.pre.pre.i151.us.i259.i = phi i32 [ %.pre.pre.i151.us.i256.i, %._crit_edge.i155.split.us185.us.i.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ]
  %.pre.i153.us.us.i.i = phi i32 [ %.pre59.i.us183.us.lcssa.i.i, %._crit_edge.i155.split.us185.us.i.i ], [ %.pre.pre.i151.us.i.i, %.preheader.preheader.i150.us.i.i ] ; 3 uses
  %.04651.i.us.us.i.i = phi i32 [ %i.so, %._crit_edge.i155.split.us185.us.i.i ], [ 0, %.preheader.preheader.i150.us.i.i ] ; 21 uses
  %i.ke = mul nsw i32 %.pre.i153.us.us.i.i, %i.ij
  %i.kf = add nsw i32 %i.ke, %.04651.i.us.us.i.i
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr [2 x i8], ptr %i.n, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !73
  %i.kk = zext i16 %i.kj to i32                   ; 3 uses
  %i.kl = and i32 %i.kk, 12288
  %i.km = icmp eq i32 %i.kl, 8192
  br i1 %i.km, label %bb.aa, label %.peel.next.i.i

bb.aa:                                            ; preds = %.preheader.i152.us.us.i.i
  %i.kn = and i32 %i.kk, 255
  %i.ko = lshr i32 %i.kk, 14
  %i.kp = and i32 %i.ko, 1
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.kq
  %i.ks = icmp ne i32 %i.kn, 0
  %i.kt = zext i1 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !46
  %i.kw = mul nsw i32 %.pre.i153.us.us.i.i, %.04753.i.us.i.i
  %i.kx = add nsw i32 %i.kw, %.04651.i.us.us.i.i
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !49
  %i.lb = or i32 %i.la, %i.if
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !49
  %i.lc = zext i8 %i.kv to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.lc
  %i.le = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ld) #10
  %.not.i156.us187.us.peel.i.i = icmp eq i32 %i.le, 0
  %i.lf = load i32, ptr %i.m, align 8, !tbaa !144
  %i.lg = mul nsw i32 %i.lf, %.04753.i.us.i.i
  %i.lh = add nsw i32 %i.lg, %.04651.i.us.us.i.i
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.li ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !49 ; 2 uses
  %i.ll = and i32 %i.lk, %i.ig
  %i.lm = or i32 %i.lk, %i.ie
  %.sink.i157.us188.us.peel.i.i = select i1 %.not.i156.us187.us.peel.i.i, i32 %i.ll, i32 %i.lm
  store i32 %.sink.i157.us188.us.peel.i.i, ptr %i.lj, align 4, !tbaa !49
  %i.ln = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.lo = mul nsw i32 %i.ln, %i.ij
  %i.lp = add nsw i32 %i.lo, %.04651.i.us.us.i.i
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr [2 x i8], ptr %i.n, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 2      ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !73
  %i.lu = or i16 %i.lt, 16384
  store i16 %i.lu, ptr %i.ls, align 2, !tbaa !73
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.aa, %.preheader.i152.us.us.i.i
  %.pre.pre.i151.us.i258.i = phi i32 [ %.pre.pre.i151.us.i259.i, %.preheader.i152.us.us.i.i ], [ %i.ln, %bb.aa ]
  %.pre59.i.us183.us.peel.i.i = phi i32 [ %.pre.i153.us.us.i.i, %.preheader.i152.us.us.i.i ], [ %i.ln, %bb.aa ] ; 3 uses
  %i.lv = mul nsw i32 %.pre59.i.us183.us.peel.i.i, %i.ik
  %i.lw = add nsw i32 %i.lv, %.04651.i.us.us.i.i
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr [2 x i8], ptr %i.n, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !73
  %i.mb = zext i16 %i.ma to i32                   ; 3 uses
  %i.mc = and i32 %i.mb, 12288
  %i.md = icmp eq i32 %i.mc, 8192
  br i1 %i.md, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.peel.next.i.i
  %i.me = and i32 %i.mb, 255
  %i.mf = lshr i32 %i.mb, 14
  %i.mg = and i32 %i.mf, 1
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.mh
  %i.mj = icmp ne i32 %i.me, 0
  %i.mk = zext i1 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !46
  %i.mn = mul nsw i32 %.pre59.i.us183.us.peel.i.i, %i.ij
  %i.mo = add nsw i32 %i.mn, %.04651.i.us.us.i.i
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !49
  %i.ms = or i32 %i.mr, %i.if
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !49
  %i.mt = zext i8 %i.mm to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.mt
  %i.mv = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.mu) #10
  %.not.i156.us187.us.peel217.i.i = icmp eq i32 %i.mv, 0
  %i.mw = load i32, ptr %i.m, align 8, !tbaa !144
  %i.mx = mul nsw i32 %i.mw, %i.ij
  %i.my = add nsw i32 %i.mx, %.04651.i.us.us.i.i
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %4, i64 %i.mz ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !49 ; 2 uses
  %i.nc = and i32 %i.nb, %i.ig
  %i.nd = or i32 %i.nb, %i.ie
  %.sink.i157.us188.us.peel218.i.i = select i1 %.not.i156.us187.us.peel217.i.i, i32 %i.nc, i32 %i.nd
  store i32 %.sink.i157.us188.us.peel218.i.i, ptr %i.na, align 4, !tbaa !49
  %i.ne = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.nf = mul nsw i32 %i.ne, %i.ik
  %i.ng = add nsw i32 %i.nf, %.04651.i.us.us.i.i
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr [2 x i8], ptr %i.n, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 2      ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !73
  %i.nl = or i16 %i.nk, 16384
  store i16 %i.nl, ptr %i.nj, align 2, !tbaa !73
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.peel.next.i.i
  %.pre.pre.i151.us.i257.i = phi i32 [ %.pre.pre.i151.us.i258.i, %.peel.next.i.i ], [ %i.ne, %bb.ab ] ; 2 uses
  %.pre59.i.us183.us.peel219.i.i = phi i32 [ %.pre59.i.us183.us.peel.i.i, %.peel.next.i.i ], [ %i.ne, %bb.ab ] ; 4 uses
  br i1 %exitcond.not.i154.us184.us.peel220.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next215.i.i

.peel.next215.i.i:                                ; preds = %bb.ac
  %i.nm = mul nsw i32 %.pre59.i.us183.us.peel219.i.i, %i.ii
  %i.nn = add nsw i32 %i.nm, %.04651.i.us.us.i.i
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr [2 x i8], ptr %i.n, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 2
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !73
  %i.ns = zext i16 %i.nr to i32                   ; 3 uses
  %i.nt = and i32 %i.ns, 12288
  %i.nu = icmp eq i32 %i.nt, 8192
  br i1 %i.nu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.peel.next215.i.i
  %i.nv = and i32 %i.ns, 255
  %i.nw = lshr i32 %i.ns, 14
  %i.nx = and i32 %i.nw, 1
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.ny
  %i.oa = icmp ne i32 %i.nv, 0
  %i.ob = zext i1 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !46
  %i.oe = mul nsw i32 %.pre59.i.us183.us.peel219.i.i, %i.ik
  %i.of = add nsw i32 %i.oe, %.04651.i.us.us.i.i
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.og ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !49
  %i.oj = or i32 %i.oi, %i.if
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !49
  %i.ok = zext i8 %i.od to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ok
  %i.om = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ol) #10
  %.not.i156.us187.us.peel223.i.i = icmp eq i32 %i.om, 0
  %i.on = load i32, ptr %i.m, align 8, !tbaa !144
  %i.oo = mul nsw i32 %i.on, %i.ik
  %i.op = add nsw i32 %i.oo, %.04651.i.us.us.i.i
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %4, i64 %i.oq ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !49 ; 2 uses
  %i.ot = and i32 %i.os, %i.ig
  %i.ou = or i32 %i.os, %i.ie
  %.sink.i157.us188.us.peel224.i.i = select i1 %.not.i156.us187.us.peel223.i.i, i32 %i.ot, i32 %i.ou
  store i32 %.sink.i157.us188.us.peel224.i.i, ptr %i.or, align 4, !tbaa !49
  %i.ov = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.ow = mul nsw i32 %i.ov, %i.ii
  %i.ox = add nsw i32 %i.ow, %.04651.i.us.us.i.i
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr [2 x i8], ptr %i.n, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 2      ; 2 uses
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !73
  %i.pc = or i16 %i.pb, 16384
  store i16 %i.pc, ptr %i.pa, align 2, !tbaa !73
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.peel.next215.i.i
  %.pre.pre.i151.us.i254.i = phi i32 [ %.pre.pre.i151.us.i257.i, %.peel.next215.i.i ], [ %i.ov, %bb.ad ] ; 2 uses
  %.pre59.i.us183.us.peel225.i.i = phi i32 [ %.pre59.i.us183.us.peel219.i.i, %.peel.next215.i.i ], [ %i.ov, %bb.ad ] ; 4 uses
  br i1 %exitcond.not.i154.us184.us.peel226.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next221.i.i

.peel.next221.i.i:                                ; preds = %bb.ae
  %i.pd = mul nsw i32 %.pre59.i.us183.us.peel225.i.i, %i.ih
  %i.pe = add nsw i32 %i.pd, %.04651.i.us.us.i.i
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr [2 x i8], ptr %i.n, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !73
  %i.pj = zext i16 %i.pi to i32                   ; 3 uses
  %i.pk = and i32 %i.pj, 12288
  %i.pl = icmp eq i32 %i.pk, 8192
  br i1 %i.pl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.peel.next221.i.i
  %i.pm = and i32 %i.pj, 55
  %i.pn = lshr i32 %i.pj, 14
  %i.po = and i32 %i.pn, 1
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.pp
  %i.pr = icmp ne i32 %i.pm, 0
  %i.ps = zext i1 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !46
  %i.pv = mul nsw i32 %.pre59.i.us183.us.peel225.i.i, %i.ii
  %i.pw = add nsw i32 %i.pv, %.04651.i.us.us.i.i
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %4, i64 %i.px ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !49
  %i.qa = or i32 %i.pz, %i.if
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !49
  %i.qb = zext i8 %i.pu to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.qb
  %i.qd = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.qc) #10
  %.not.i156.us187.us.peel229.i.i = icmp eq i32 %i.qd, 0
  %i.qe = load i32, ptr %i.m, align 8, !tbaa !144
  %i.qf = mul nsw i32 %i.qe, %i.ii
  %i.qg = add nsw i32 %i.qf, %.04651.i.us.us.i.i
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.qh ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !49 ; 2 uses
  %i.qk = and i32 %i.qj, %i.ig
  %i.ql = or i32 %i.qj, %i.ie
  %.sink.i157.us188.us.peel230.i.i = select i1 %.not.i156.us187.us.peel229.i.i, i32 %i.qk, i32 %i.ql
  store i32 %.sink.i157.us188.us.peel230.i.i, ptr %i.qi, align 4, !tbaa !49
  %i.qm = load i32, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.qn = mul nsw i32 %i.qm, %i.ih
  %i.qo = add nsw i32 %i.qn, %.04651.i.us.us.i.i
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr [2 x i8], ptr %i.n, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 2      ; 2 uses
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !73
  %i.qt = or i16 %i.qs, 16384
  store i16 %i.qt, ptr %i.qr, align 2, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.peel.next221.i.i
  %.pre.pre.i151.us.i253.i = phi i32 [ %.pre.pre.i151.us.i254.i, %.peel.next221.i.i ], [ %i.qm, %bb.af ] ; 2 uses
  %.pre59.i.us183.us.peel231.i.i = phi i32 [ %.pre59.i.us183.us.peel225.i.i, %.peel.next221.i.i ], [ %i.qm, %bb.af ] ; 3 uses
  br i1 %exitcond.not.i154.us184.us.peel232.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next227.i.i

.peel.next227.i.i:                                ; preds = %bb.ag, %bb.ai
  %.pre.pre.i151.us.i252.i = phi i32 [ %.pre.pre.i151.us.i251.i, %bb.ai ], [ %.pre.pre.i151.us.i253.i, %bb.ag ]
  %.pre60.i.us181.us.i.i = phi i32 [ %.pre59.i.us183.us.i.i, %bb.ai ], [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ]
  %i.qu = phi i32 [ %i.sn, %bb.ai ], [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ] ; 3 uses
  %.050.i.us182.us.i.i = phi i32 [ %i.qv, %bb.ai ], [ %i.ih, %bb.ag ] ; 3 uses
  %i.qv = add nuw nsw i32 %.050.i.us182.us.i.i, 1 ; 4 uses
  %i.qw = mul nsw i32 %i.qv, %i.qu
  %i.qx = add nsw i32 %i.qw, %.04651.i.us.us.i.i
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr [2 x i8], ptr %i.n, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qz, i64 2
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !73
  %i.rc = zext i16 %i.rb to i32                   ; 3 uses
  %i.rd = and i32 %i.rc, 12288
  %i.re = icmp eq i32 %i.rd, 8192
  br i1 %i.re, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.peel.next227.i.i
  %i.rf = and i32 %i.rc, 255
  %i.rg = lshr i32 %i.rc, 14
  %i.rh = and i32 %i.rg, 1
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.ri
  %i.rk = icmp ne i32 %i.rf, 0
  %i.rl = zext i1 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !46
  %i.ro = mul nsw i32 %.050.i.us182.us.i.i, %i.qu
  %i.rp = add nsw i32 %i.ro, %.04651.i.us.us.i.i
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.rq ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !49
  %i.rt = or i32 %i.rs, %i.if
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !49
  %i.ru = zext i8 %i.rn to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ru
  %i.rw = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.rv) #10
  %.not.i156.us187.us.i.i = icmp eq i32 %i.rw, 0
  %i.rx = load i32, ptr %i.m, align 8, !tbaa !144
  %i.ry = mul nsw i32 %i.rx, %.050.i.us182.us.i.i
  %i.rz = add nsw i32 %i.ry, %.04651.i.us.us.i.i
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sa ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !49 ; 2 uses
  %i.sd = and i32 %i.sc, %i.ig
  %i.se = or i32 %i.sc, %i.ie
  %.sink.i157.us188.us.i.i = select i1 %.not.i156.us187.us.i.i, i32 %i.sd, i32 %i.se
  store i32 %.sink.i157.us188.us.i.i, ptr %i.sb, align 4, !tbaa !49
  %i.sf = load i32, ptr %i.m, align 8, !tbaa !144 ; 4 uses
  %i.sg = mul nsw i32 %i.sf, %i.qv
  %i.sh = add nsw i32 %i.sg, %.04651.i.us.us.i.i
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr [2 x i8], ptr %i.n, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 2      ; 2 uses
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !73
  %i.sm = or i16 %i.sl, 16384
  store i16 %i.sm, ptr %i.sk, align 2, !tbaa !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.peel.next227.i.i
  %.pre.pre.i151.us.i251.i = phi i32 [ %.pre.pre.i151.us.i252.i, %.peel.next227.i.i ], [ %i.sf, %bb.ah ] ; 2 uses
  %.pre59.i.us183.us.i.i = phi i32 [ %.pre60.i.us181.us.i.i, %.peel.next227.i.i ], [ %i.sf, %bb.ah ] ; 2 uses
  %i.sn = phi i32 [ %i.qu, %.peel.next227.i.i ], [ %i.sf, %bb.ah ]
  %exitcond.not.i154.us184.us.i.i = icmp eq i32 %i.qv, %umin.i148.us.i.i
  br i1 %exitcond.not.i154.us184.us.i.i, label %._crit_edge.i155.split.us185.us.i.i, label %.peel.next227.i.i, !llvm.loop !180

._crit_edge.i155.split.us185.us.i.i:              ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %.pre.pre.i151.us.i256.i = phi i32 [ %.pre.pre.i151.us.i253.i, %bb.ag ], [ %.pre.pre.i151.us.i254.i, %bb.ae ], [ %.pre.pre.i151.us.i257.i, %bb.ac ], [ %.pre.pre.i151.us.i251.i, %bb.ai ] ; 2 uses
  %.pre59.i.us183.us.lcssa.i.i = phi i32 [ %.pre59.i.us183.us.peel231.i.i, %bb.ag ], [ %.pre59.i.us183.us.peel225.i.i, %bb.ae ], [ %.pre59.i.us183.us.peel219.i.i, %bb.ac ], [ %.pre59.i.us183.us.i.i, %bb.ai ]
  %i.so = add nuw nsw i32 %.04651.i.us.us.i.i, 1  ; 2 uses
  %exitcond58.not.i.us.us.i.i = icmp eq i32 %i.so, %i.dc
  br i1 %exitcond58.not.i.us.us.i.i, label %._crit_edge52.split.i.us.i.i, label %.preheader.i152.us.us.i.i, !llvm.loop !178

.preheader.preheader.i150.i.i:                    ; preds = %.preheader49.i.preheader.i.i, %._crit_edge52.split.i.i.i
  %.pre.pre.i151.i.i = phi i32 [ %.pre.pre.i151.i263.i, %._crit_edge52.split.i.i.i ], [ %.pre.pre.i151.i.pre.i, %.preheader49.i.preheader.i.i ] ; 2 uses
  %indvars.iv.i147.i.i = phi i32 [ %indvars.iv.next.i149.i.i, %._crit_edge52.split.i.i.i ], [ 4, %.preheader49.i.preheader.i.i ] ; 2 uses
  %.04753.i.i.i = phi i32 [ %i.uk, %._crit_edge52.split.i.i.i ], [ 0, %.preheader49.i.preheader.i.i ] ; 2 uses
  %umin.i148.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i147.i.i)
  br label %.preheader.i152.i.i

.preheader.i152.i.i:                              ; preds = %._crit_edge.i155.split.us.i.i, %.preheader.preheader.i150.i.i
  %.pre.pre.i151.i265.i = phi i32 [ %.pre.pre.i151.i263.i, %._crit_edge.i155.split.us.i.i ], [ %.pre.pre.i151.i.i, %.preheader.preheader.i150.i.i ]
  %.pre.i153.i.i = phi i32 [ %.pre59.i.us.i.i, %._crit_edge.i155.split.us.i.i ], [ %.pre.pre.i151.i.i, %.preheader.preheader.i150.i.i ] ; 2 uses
  %.04651.i.i.i = phi i32 [ %i.uj, %._crit_edge.i155.split.us.i.i ], [ 0, %.preheader.preheader.i150.i.i ] ; 5 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.preheader.i152.i.i
  %.pre.pre.i151.i264.i = phi i32 [ %.pre.pre.i151.i265.i, %.preheader.i152.i.i ], [ %.pre.pre.i151.i263.i, %bb.al ]
  %.pre60.i.us.i.i = phi i32 [ %.pre.i153.i.i, %.preheader.i152.i.i ], [ %.pre59.i.us.i.i, %bb.al ]
  %i.sp = phi i32 [ %.pre.i153.i.i, %.preheader.i152.i.i ], [ %i.ui, %bb.al ] ; 3 uses
  %.050.i.us.i.i = phi i32 [ %.04753.i.i.i, %.preheader.i152.i.i ], [ %i.sq, %bb.al ] ; 3 uses
  %i.sq = add nuw nsw i32 %.050.i.us.i.i, 1       ; 4 uses
  %i.sr = mul nsw i32 %i.sq, %i.sp
  %i.ss = add nsw i32 %i.sr, %.04651.i.i.i
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr [2 x i8], ptr %i.n, i64 %i.st
  %i.sv = getelementptr i8, ptr %i.su, i64 2
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !73
  %i.sx = zext i16 %i.sw to i32                   ; 3 uses
  %i.sy = and i32 %i.sx, 12288
  %i.sz = icmp eq i32 %i.sy, 8192
  br i1 %i.sz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ta = and i32 %i.sx, 255
  %i.tb = lshr i32 %i.sx, 14
  %i.tc = and i32 %i.tb, 1
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.td
  %i.tf = icmp ne i32 %i.ta, 0
  %i.tg = zext i1 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !46
  %i.tj = mul nsw i32 %.050.i.us.i.i, %i.sp
  %i.tk = add nsw i32 %i.tj, %.04651.i.i.i
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tl ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !49
  %i.to = or i32 %i.tn, %i.if
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !49
  %i.tp = zext i8 %i.ti to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.tp
  %i.tr = call i32 @ff_mqc_decode(ptr noundef nonnull %i.o, ptr noundef nonnull %i.tq) #10
  %.not.i156.us.i.i = icmp eq i32 %i.tr, 0
  %i.ts = load i32, ptr %i.m, align 8, !tbaa !144
  %i.tt = mul nsw i32 %i.ts, %.050.i.us.i.i
  %i.tu = add nsw i32 %i.tt, %.04651.i.i.i
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tv ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !49 ; 2 uses
  %i.ty = and i32 %i.tx, %i.ig
  %i.tz = or i32 %i.tx, %i.ie
  %.sink.i157.us.i.i = select i1 %.not.i156.us.i.i, i32 %i.ty, i32 %i.tz
  store i32 %.sink.i157.us.i.i, ptr %i.tw, align 4, !tbaa !49
  %i.ua = load i32, ptr %i.m, align 8, !tbaa !144 ; 4 uses
  %i.ub = mul nsw i32 %i.ua, %i.sq
  %i.uc = add nsw i32 %i.ub, %.04651.i.i.i
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr [2 x i8], ptr %i.n, i64 %i.ud
  %i.uf = getelementptr i8, ptr %i.ue, i64 2      ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !73
  %i.uh = or i16 %i.ug, 16384
  store i16 %i.uh, ptr %i.uf, align 2, !tbaa !73
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre.pre.i151.i263.i = phi i32 [ %.pre.pre.i151.i264.i, %bb.aj ], [ %i.ua, %bb.ak ] ; 3 uses
  %.pre59.i.us.i.i = phi i32 [ %.pre60.i.us.i.i, %bb.aj ], [ %i.ua, %bb.ak ] ; 2 uses
  %i.ui = phi i32 [ %i.sp, %bb.aj ], [ %i.ua, %bb.ak ]
  %exitcond.not.i154.us.i.i = icmp eq i32 %i.sq, %umin.i148.i.i
  br i1 %exitcond.not.i154.us.i.i, label %._crit_edge.i155.split.us.i.i, label %bb.aj, !llvm.loop !182

._crit_edge.i155.split.us.i.i:                    ; preds = %bb.al
  %i.uj = add nuw nsw i32 %.04651.i.i.i, 1        ; 2 uses
  %exitcond58.not.i.i.i = icmp eq i32 %i.uj, %i.dc
  br i1 %exitcond58.not.i.i.i, label %._crit_edge52.split.i.i.i, label %.preheader.i152.i.i, !llvm.loop !178

._crit_edge52.split.i.i.i:                        ; preds = %._crit_edge.i155.split.us.i.i
  %i.uk = add nuw nsw i32 %.04753.i.i.i, 4        ; 2 uses
  %i.ul = icmp samesign ult i32 %i.uk, %i.dh
  %indvars.iv.next.i149.i.i = add nuw nsw i32 %indvars.iv.i147.i.i, 4
  br i1 %i.ul, label %.preheader.preheader.i150.i.i, label %decode_sigpass.exit.i.i, !llvm.loop !179

bb.am:                                            ; preds = %.lr.ph.i
  %i.um = load i8, ptr %i.ah, align 2, !tbaa !127
  %i.un = and i8 %i.um, 32
  %i.uo = shl nuw i32 3, %i.ex
  %i.up = lshr i32 %i.uo, 1                       ; 2 uses
  br i1 %brmerge205.i.i, label %._crit_edge127.split.i.i.i, label %.preheader.i160.i.i

.preheader.i160.i.i:                              ; preds = %bb.am, %._crit_edge.i162.i.i
  %indvars.iv.i161.i.i = phi i32 [ %indvars.iv.next.i163.i.i, %._crit_edge.i162.i.i ], [ 4, %bb.am ] ; 2 uses
  %.0106126.i.i.i = phi i32 [ %i.uu, %._crit_edge.i162.i.i ], [ 0, %bb.am ] ; 6 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 range(i32 0, 1025) %i.dh, i32 %indvars.iv.i161.i.i) ; 2 uses
  %i.uq = or disjoint i32 %.0106126.i.i.i, 3      ; 3 uses
  %i.ur = icmp samesign ult i32 %i.uq, %i.dh
end_hunk_0
