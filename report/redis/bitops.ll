Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/bitops?download=true
inline.NumInlined: 24
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@bitfieldGeneric:bb.a
  %or.cond252.not = select i1 %.not242, i1 true, i1 %.not243
  %i.hs = zext i1 %or.cond252.not to i32
  %spec.select256 = add nsw i32 %.0213429, %i.hs
  br label %bb.bu

bb.av:                                            ; preds = %checkSignedBitfieldOverflow.exit273.thread
  call void @addReplyNull(ptr noundef nonnull %0) #23
  br label %bb.bu

bb.aw:                                            ; preds = %bb.ab
  br i1 %.not.i277, label %getUnsignedBitfield.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aw
  %i.ht = load i64, ptr %i.dj, align 8, !tbaa !158 ; 2 uses
  %i.hu = icmp eq i32 %i.dq, 1
  br i1 %i.hu, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter533 = and i64 %i.dr, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ip, %.lr.ph.i ]
  %.01314.i = phi i64 [ %i.ht, %.lr.ph.i.preheader.new ], [ %i.iq, %.lr.ph.i ] ; 4 uses
  %niter534 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter534.next.1, %.lr.ph.i ]
  %i.hv = lshr i64 %.01314.i, 3
  %i.hw = and i64 %.01314.i, 7
  %i.hx = xor i64 %i.hw, 7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hv
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !13
  %i.ia = zext i8 %i.hz to i64
  %i.ib = lshr i64 %i.ia, %i.hx
  %i.ic = add i64 %.01314.i, 1                    ; 2 uses
  %i.id = lshr i64 %i.ic, 3
  %i.ie = and i64 %i.ic, 7
  %i.if = xor i64 %i.ie, 7
  %i.ig = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.id
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !13
  %i.ii = zext i8 %i.ih to i64
  %i.ij = lshr i64 %i.ii, %i.if
  %i.ik = and i64 %i.ij, 1
  %i.il = shl i64 %.016.i, 2
  %i.im = shl nuw nsw i64 %i.ib, 1
  %i.in = and i64 %i.im, 2
  %i.io = or disjoint i64 %i.il, %i.in
  %i.ip = or disjoint i64 %i.ik, %i.io            ; 3 uses
  %i.iq = add i64 %.01314.i, 2                    ; 2 uses
  %niter534.next.1 = add i64 %niter534, 2         ; 2 uses
  %niter534.ncmp.1 = icmp eq i64 %niter534.next.1, %unroll_iter533
  br i1 %niter534.ncmp.1, label %getUnsignedBitfield.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !48

getUnsignedBitfield.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %i.ir = and i32 %i.dq, 1
  %lcmp.mod530.not = icmp eq i32 %i.ir, 0
  br i1 %lcmp.mod530.not, label %getUnsignedBitfield.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %getUnsignedBitfield.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ip, %getUnsignedBitfield.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ %i.ht, %.lr.ph.i.preheader ], [ %i.iq, %getUnsignedBitfield.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod532 = trunc i32 %i.dq to i1
  call void @llvm.assume(i1 %lcmp.mod532)
  %i.is = lshr i64 %.01314.i.epil.init, 3
  %i.it = and i64 %.01314.i.epil.init, 7
  %i.iu = xor i64 %i.it, 7
  %i.iv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.is
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !13
  %i.ix = zext i8 %i.iw to i64
  %i.iy = lshr i64 %i.ix, %i.iu
  %i.iz = and i64 %i.iy, 1
  %i.ja = shl i64 %.016.i.epil.init, 1
  %i.jb = or disjoint i64 %i.iz, %i.ja
  br label %getUnsignedBitfield.exit

getUnsignedBitfield.exit:                         ; preds = %.lr.ph.i.epil.preheader, %getUnsignedBitfield.exit.loopexit.unr-lcssa, %bb.aw
  %.0.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ip, %getUnsignedBitfield.exit.loopexit.unr-lcssa ], [ %i.jb, %.lr.ph.i.epil.preheader ] ; 9 uses
  %i.jc = icmp eq i32 %i.dl, 2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !160 ; 8 uses
  br i1 %i.jc, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %getUnsignedBitfield.exit
  %i.jf = add i64 %i.je, %.0.lcssa.i              ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !162 ; 4 uses
  %i.ji = icmp eq i32 %i.dq, 64
  %notmask.i = shl nsw i64 -1, %i.dr
  %i.jj = xor i64 %notmask.i, -1                  ; 2 uses
  %i.jk = select i1 %i.ji, i64 -1, i64 %i.jj      ; 4 uses
  %i.jl = sub i64 0, %.0.lcssa.i
  %i.jm = icmp ugt i64 %.0.lcssa.i, %i.jk
  br i1 %i.jm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jn = sub nuw i64 %i.jk, %.0.lcssa.i
  %i.jo = icmp sgt i64 %i.je, 0
  %i.jp = icmp sgt i64 %i.je, %i.jn
  %or.cond.i278 = and i1 %i.jo, %i.jp
  br i1 %or.cond.i278, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  switch i32 %i.jh, label %checkUnsignedBitfieldOverflow.exit [
    i32 0, label %bb.bc
    i32 1, label %checkUnsignedBitfieldOverflow.exit.thread374
  ]

bb.ba:                                            ; preds = %bb.ay
  %i.jq = icmp slt i64 %i.je, 0
  %i.jr = icmp slt i64 %i.je, %i.jl
  %or.cond35.i = and i1 %i.jq, %i.jr
  br i1 %or.cond35.i, label %bb.bb, label %checkUnsignedBitfieldOverflow.exit.thread374

bb.bb:                                            ; preds = %bb.ba
  switch i32 %i.jh, label %checkUnsignedBitfieldOverflow.exit [
    i32 0, label %bb.bc
    i32 1, label %checkUnsignedBitfieldOverflow.exit.thread374
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.js = and i64 %i.jf, %i.jj                    ; 2 uses
  br label %checkUnsignedBitfieldOverflow.exit.thread374

bb.bd:                                            ; preds = %getUnsignedBitfield.exit
  %i.jt = icmp ne i32 %i.dq, 64
  %notmask.i283 = shl nsw i64 -1, %i.dr
  %i.ju = xor i64 %notmask.i283, -1               ; 3 uses
  %i.jv = icmp ugt i64 %i.je, %i.ju
  %i.jw = select i1 %i.jt, i1 %i.jv, i1 false
  br i1 %i.jw, label %bb.be, label %checkUnsignedBitfieldOverflow.exit.thread374

bb.be:                                            ; preds = %bb.bd
  %i.jx = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !162 ; 2 uses
  switch i32 %i.jy, label %checkUnsignedBitfieldOverflow.exit [
    i32 0, label %bb.bf
    i32 1, label %checkUnsignedBitfieldOverflow.exit.thread374
  ]

bb.bf:                                            ; preds = %bb.be
  %i.jz = and i64 %i.je, %i.ju
  br label %checkUnsignedBitfieldOverflow.exit.thread374

checkUnsignedBitfieldOverflow.exit:               ; preds = %bb.be, %bb.az, %bb.bb
  %i.ka = phi i32 [ %i.jh, %bb.az ], [ %i.jh, %bb.bb ], [ %i.jy, %bb.be ]
  %.0190 = phi i64 [ 0, %bb.az ], [ 0, %bb.bb ], [ %.0.lcssa.i, %bb.be ]
  %i.kb = icmp eq i32 %i.ka, 2
  br i1 %i.kb, label %bb.bg, label %checkUnsignedBitfieldOverflow.exit.thread374

checkUnsignedBitfieldOverflow.exit.thread374:     ; preds = %bb.be, %bb.az, %bb.bb, %bb.bc, %bb.bf, %bb.bd, %bb.ba, %checkUnsignedBitfieldOverflow.exit
  %.0190380 = phi i64 [ %.0190, %checkUnsignedBitfieldOverflow.exit ], [ %i.jf, %bb.ba ], [ %.0.lcssa.i, %bb.bd ], [ %.0.lcssa.i, %bb.bf ], [ 0, %bb.bb ], [ %i.jk, %bb.az ], [ %i.js, %bb.bc ], [ %.0.lcssa.i, %bb.be ]
  %.2193379 = phi i64 [ 0, %checkUnsignedBitfieldOverflow.exit ], [ %i.jf, %bb.ba ], [ %i.je, %bb.bd ], [ %i.jz, %bb.bf ], [ 0, %bb.bb ], [ %i.jk, %bb.az ], [ %i.js, %bb.bc ], [ %i.ju, %bb.be ] ; 2 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0190380) #23
  %i.kc = load ptr, ptr %i.cz, align 8, !tbaa !50
  %i.kd = load i32, ptr %i.dp, align 8, !tbaa !163 ; 2 uses
  %i.ke = sext i32 %i.kd to i64                   ; 2 uses
  %.not.i292 = icmp eq i32 %i.kd, 0
  br i1 %.not.i292, label %setUnsignedBitfield.exit, label %.lr.ph.i293.preheader

.lr.ph.i293.preheader:                            ; preds = %checkUnsignedBitfieldOverflow.exit.thread374
  %i.kf = load i64, ptr %i.dj, align 8, !tbaa !158
  br label %.lr.ph.i293

.lr.ph.i293:                                      ; preds = %.lr.ph.i293.preheader, %.lr.ph.i293
  %.021.i = phi i64 [ %i.kz, %.lr.ph.i293 ], [ 0, %.lr.ph.i293.preheader ] ; 2 uses
  %.01820.i = phi i64 [ %i.ky, %.lr.ph.i293 ], [ %i.kf, %.lr.ph.i293.preheader ] ; 3 uses
  %i.kg = xor i64 %.021.i, -1
  %i.kh = add i64 %i.kg, %i.ke
  %i.ki = lshr i64 %.2193379, %i.kh
  %i.kj = and i64 %i.ki, 1
  %i.kk = lshr i64 %.01820.i, 3
  %i.kl = and i64 %.01820.i, 7
  %i.km = xor i64 %i.kl, 7                        ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kk ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !13
  %i.kp = trunc nuw nsw i64 %i.km to i32
  %i.kq = shl nuw nsw i32 1, %i.kp
  %i.kr = xor i32 %i.kq, -1
  %i.ks = zext i8 %i.ko to i32
  %i.kt = and i32 %i.kr, %i.ks
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = shl nuw nsw i64 %i.kj, %i.km
  %i.kw = or i64 %i.kv, %i.ku
  %i.kx = trunc nuw i64 %i.kw to i8
  store i8 %i.kx, ptr %i.kn, align 1, !tbaa !13
  %i.ky = add i64 %.01820.i, 1
  %i.kz = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i294 = icmp eq i64 %i.kz, %i.ke
  br i1 %exitcond.not.i294, label %setUnsignedBitfield.exit, label %.lr.ph.i293, !llvm.loop !47

setUnsignedBitfield.exit:                         ; preds = %.lr.ph.i293, %checkUnsignedBitfieldOverflow.exit.thread374
  %.not238 = icmp ne i64 %.0.lcssa.i, %.2193379
  %or.cond255.not = select i1 %.not242, i1 true, i1 %.not238
  %i.la = zext i1 %or.cond255.not to i32
  %spec.select257 = add nsw i32 %.0213429, %i.la
  br label %bb.bu

bb.bg:                                            ; preds = %checkUnsignedBitfieldOverflow.exit
  call void @addReplyNull(ptr noundef nonnull %0) #23
  br label %bb.bu

bb.bh:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  br i1 %.not230, label %getObjectReadOnlyString.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lb = load i64, ptr %.0, align 8              ; 2 uses
  %i.lc = and i64 %i.lb, 15
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %.critedge.i, label %bb.bj, !prof !88

bb.bj:                                            ; preds = %bb.bi
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef 823) #23
  call void @abort() #24
  unreachable

.critedge.i:                                      ; preds = %bb.bi
  %i.le = and i64 %i.lb, 240
  %i.lf = icmp eq i64 %i.le, 16
  %i.lg = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 12 uses
  br i1 %i.lf, label %bb.bk, label %.critedge24.i

bb.bk:                                            ; preds = %.critedge.i
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = call i32 @ll2string(ptr noundef nonnull %i.g, i64 noundef 21, i64 noundef %i.lh) #23
  %i.lj = sext i32 %i.li to i64
  br label %.lr.ph426.split.preheader

.critedge24.i:                                    ; preds = %.critedge.i
  %i.lk = getelementptr i8, ptr %i.lg, i64 -1
  %.val.i.i = load i8, ptr %i.lk, align 1, !tbaa !13 ; 2 uses
  %i.ll = and i8 %.val.i.i, 7
  switch i8 %i.ll, label %.lr.ph426.split.preheader [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.bo
    i8 4, label %bb.bp
  ]

bb.bl:                                            ; preds = %.critedge24.i
  %i.lm = lshr i8 %.val.i.i, 3
  %i.ln = zext nneg i8 %i.lm to i64
  br label %.lr.ph426.split.preheader

bb.bm:                                            ; preds = %.critedge24.i
  %i.lo = getelementptr inbounds i8, ptr %i.lg, i64 -3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !13
  %i.lq = zext i8 %i.lp to i64
  br label %.lr.ph426.split.preheader

bb.bn:                                            ; preds = %.critedge24.i
  %i.lr = getelementptr inbounds i8, ptr %i.lg, i64 -5
  %i.ls = load i16, ptr %i.lr, align 1, !tbaa !53
  %i.lt = zext i16 %i.ls to i64
  br label %.lr.ph426.split.preheader

bb.bo:                                            ; preds = %.critedge24.i
  %i.lu = getelementptr inbounds i8, ptr %i.lg, i64 -9
  %i.lv = load i32, ptr %i.lu, align 1, !tbaa !9
  %i.lw = zext i32 %i.lv to i64
  br label %.lr.ph426.split.preheader

bb.bp:                                            ; preds = %.critedge24.i
  %i.lx = getelementptr inbounds i8, ptr %i.lg, i64 -17
  %i.ly = load i64, ptr %i.lx, align 1, !tbaa !20
  br label %.lr.ph426.split.preheader

getObjectReadOnlyString.exit:                     ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.lz = load i64, ptr %i.dj, align 8, !tbaa !158
  br label %._crit_edge427

.lr.ph426.split.preheader:                        ; preds = %bb.bk, %.critedge24.i, %bb.bp, %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %.0328.ph = phi i64 [ %i.lw, %bb.bo ], [ %i.lt, %bb.bn ], [ %i.lq, %bb.bm ], [ %i.ln, %bb.bl ], [ %i.ly, %bb.bp ], [ 0, %.critedge24.i ], [ %i.lj, %bb.bk ] ; 2 uses
  %.0188.ph = phi ptr [ %i.lg, %bb.bo ], [ %i.lg, %bb.bn ], [ %i.lg, %bb.bm ], [ %i.lg, %bb.bl ], [ %i.lg, %bb.bp ], [ %i.lg, %.critedge24.i ], [ %i.g, %bb.bk ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.ma = load i64, ptr %i.dj, align 8, !tbaa !158 ; 11 uses
  %i.mb = lshr i64 %i.ma, 3                       ; 11 uses
  %i.mc = call i64 @llvm.usub.sat.i64(i64 %.0328.ph, i64 %i.mb) ; 8 uses
  %exitcond.not.not = icmp ugt i64 %.0328.ph, %i.mb
  br i1 %exitcond.not.not, label %.lr.ph426.split.1, label %._crit_edge427

.lr.ph426.split.1:                                ; preds = %.lr.ph426.split.preheader
  %i.md = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.me = load i8, ptr %i.md, align 1, !tbaa !13
  store i8 %i.me, ptr %i.f, align 1, !tbaa !13
  %exitcond.1.not = icmp eq i64 %i.mc, 1
  br i1 %exitcond.1.not, label %._crit_edge427, label %.lr.ph426.split.2

.lr.ph426.split.2:                                ; preds = %.lr.ph426.split.1
  %i.mf = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !13
  store i8 %i.mh, ptr %i.db, align 1, !tbaa !13
  %exitcond.2.not = icmp eq i64 %i.mc, 2
  br i1 %exitcond.2.not, label %._crit_edge427, label %.lr.ph426.split.3

.lr.ph426.split.3:                                ; preds = %.lr.ph426.split.2
  %i.mi = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !13
  store i8 %i.mk, ptr %i.dc, align 1, !tbaa !13
  %exitcond.3.not = icmp eq i64 %i.mc, 3
  br i1 %exitcond.3.not, label %._crit_edge427, label %.lr.ph426.split.4

.lr.ph426.split.4:                                ; preds = %.lr.ph426.split.3
  %i.ml = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !13
  store i8 %i.mn, ptr %i.dd, align 1, !tbaa !13
  %exitcond.4.not = icmp eq i64 %i.mc, 4
  br i1 %exitcond.4.not, label %._crit_edge427, label %.lr.ph426.split.5

.lr.ph426.split.5:                                ; preds = %.lr.ph426.split.4
  %i.mo = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !13
  store i8 %i.mq, ptr %i.de, align 1, !tbaa !13
  %exitcond.5.not = icmp eq i64 %i.mc, 5
  br i1 %exitcond.5.not, label %._crit_edge427, label %.lr.ph426.split.6

.lr.ph426.split.6:                                ; preds = %.lr.ph426.split.5
  %i.mr = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !13
  store i8 %i.mt, ptr %i.df, align 1, !tbaa !13
  %exitcond.6.not = icmp eq i64 %i.mc, 6
  br i1 %exitcond.6.not, label %._crit_edge427, label %.lr.ph426.split.7

.lr.ph426.split.7:                                ; preds = %.lr.ph426.split.6
  %i.mu = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 6
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !13
  store i8 %i.mw, ptr %i.dg, align 1, !tbaa !13
  %exitcond.7.not = icmp eq i64 %i.mc, 7
  br i1 %exitcond.7.not, label %._crit_edge427, label %.lr.ph426.split.8

.lr.ph426.split.8:                                ; preds = %.lr.ph426.split.7
  %i.mx = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 7
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  store i8 %i.mz, ptr %i.dh, align 1, !tbaa !13
  %exitcond.8.not = icmp eq i64 %i.mc, 8
  br i1 %exitcond.8.not, label %._crit_edge427, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph426.split.8
  %i.na = getelementptr inbounds nuw i8, ptr %.0188.ph, i64 %i.mb
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !13
  store i8 %i.nc, ptr %i.di, align 1, !tbaa !13
  br label %._crit_edge427

._crit_edge427:                                   ; preds = %.lr.ph426.split.preheader, %.lr.ph426.split.1, %.lr.ph426.split.2, %.lr.ph426.split.3, %.lr.ph426.split.4, %.lr.ph426.split.5, %.lr.ph426.split.6, %.lr.ph426.split.7, %.lr.ph426.split.8, %bb.bq, %getObjectReadOnlyString.exit
  %i.nd = phi i64 [ %i.lz, %getObjectReadOnlyString.exit ], [ %i.ma, %bb.bq ], [ %i.ma, %.lr.ph426.split.8 ], [ %i.ma, %.lr.ph426.split.7 ], [ %i.ma, %.lr.ph426.split.6 ], [ %i.ma, %.lr.ph426.split.5 ], [ %i.ma, %.lr.ph426.split.4 ], [ %i.ma, %.lr.ph426.split.3 ], [ %i.ma, %.lr.ph426.split.2 ], [ %i.ma, %.lr.ph426.split.1 ], [ %i.ma, %.lr.ph426.split.preheader ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !164
  %.not232 = icmp eq i32 %i.nf, 0
  %i.ng = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !163 ; 9 uses
  %i.ni = sext i32 %i.nh to i64                   ; 4 uses
  %.not.i311 = icmp eq i32 %i.nh, 0               ; 2 uses
  br i1 %.not232, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %._crit_edge427
  br i1 %.not.i311, label %getUnsignedBitfield.exit.thread.i307, label %.lr.ph.i.i300.preheader

.lr.ph.i.i300.preheader:                          ; preds = %bb.br
  %i.nj = load i64, ptr %i.dj, align 8, !tbaa !158
  %i.nk = and i64 %i.nd, -8
  %i.nl = sub i64 %i.nj, %i.nk                    ; 2 uses
  %i.nm = icmp eq i32 %i.nh, 1
  br i1 %i.nm, label %.lr.ph.i.i300.epil.preheader, label %.lr.ph.i.i300.preheader.new

.lr.ph.i.i300.preheader.new:                      ; preds = %.lr.ph.i.i300.preheader
  %unroll_iter = and i64 %i.ni, -2
  br label %.lr.ph.i.i300

.lr.ph.i.i300:                                    ; preds = %.lr.ph.i.i300, %.lr.ph.i.i300.preheader.new
  %.016.i.i301 = phi i64 [ 0, %.lr.ph.i.i300.preheader.new ], [ %i.oh, %.lr.ph.i.i300 ]
  %.01314.i.i303 = phi i64 [ %i.nl, %.lr.ph.i.i300.preheader.new ], [ %i.oi, %.lr.ph.i.i300 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i300.preheader.new ], [ %niter.next.1, %.lr.ph.i.i300 ]
  %i.nn = lshr i64 %.01314.i.i303, 3
  %i.no = and i64 %.01314.i.i303, 7
  %i.np = xor i64 %i.no, 7
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.nn
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !13
  %i.ns = zext i8 %i.nr to i64
  %i.nt = lshr i64 %i.ns, %i.np
  %i.nu = add i64 %.01314.i.i303, 1               ; 2 uses
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = and i64 %i.nu, 7
  %i.nx = xor i64 %i.nw, 7
  %i.ny = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.nv
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !13
  %i.oa = zext i8 %i.nz to i64
  %i.ob = lshr i64 %i.oa, %i.nx
  %i.oc = and i64 %i.ob, 1
  %i.od = shl i64 %.016.i.i301, 2
  %i.oe = shl nuw nsw i64 %i.nt, 1
  %i.of = and i64 %i.oe, 2
  %i.og = or disjoint i64 %i.od, %i.of
  %i.oh = or disjoint i64 %i.oc, %i.og            ; 3 uses
  %i.oi = add i64 %.01314.i.i303, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %getUnsignedBitfield.exit.i305.unr-lcssa, label %.lr.ph.i.i300, !llvm.loop !48

getUnsignedBitfield.exit.i305.unr-lcssa:          ; preds = %.lr.ph.i.i300
  %i.oj = and i32 %i.nh, 1
  %lcmp.mod.not = icmp eq i32 %i.oj, 0
  br i1 %lcmp.mod.not, label %getUnsignedBitfield.exit.i305, label %.lr.ph.i.i300.epil.preheader

.lr.ph.i.i300.epil.preheader:                     ; preds = %getUnsignedBitfield.exit.i305.unr-lcssa, %.lr.ph.i.i300.preheader
  %.016.i.i301.epil.init = phi i64 [ 0, %.lr.ph.i.i300.preheader ], [ %i.oh, %getUnsignedBitfield.exit.i305.unr-lcssa ]
  %.01314.i.i303.epil.init = phi i64 [ %i.nl, %.lr.ph.i.i300.preheader ], [ %i.oi, %getUnsignedBitfield.exit.i305.unr-lcssa ] ; 2 uses
  %lcmp.mod516 = trunc i32 %i.nh to i1
  call void @llvm.assume(i1 %lcmp.mod516)
  %i.ok = lshr i64 %.01314.i.i303.epil.init, 3
  %i.ol = and i64 %.01314.i.i303.epil.init, 7
  %i.om = xor i64 %i.ol, 7
  %i.on = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ok
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !13
  %i.op = zext i8 %i.oo to i64
  %i.oq = lshr i64 %i.op, %i.om
  %i.or = and i64 %i.oq, 1
  %i.os = shl i64 %.016.i.i301.epil.init, 1
  %i.ot = or disjoint i64 %i.or, %i.os
  br label %getUnsignedBitfield.exit.i305

getUnsignedBitfield.exit.i305:                    ; preds = %getUnsignedBitfield.exit.i305.unr-lcssa, %.lr.ph.i.i300.epil.preheader
  %.lcssa = phi i64 [ %i.oh, %getUnsignedBitfield.exit.i305.unr-lcssa ], [ %i.ot, %.lr.ph.i.i300.epil.preheader ] ; 2 uses
  %i.ou = icmp ult i32 %i.nh, 64
  br i1 %i.ou, label %getUnsignedBitfield.exit.thread.i307, label %getSignedBitfield.exit310

getUnsignedBitfield.exit.thread.i307:             ; preds = %getUnsignedBitfield.exit.i305, %bb.br
  %.0.lcssa.i10.i308 = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i305 ], [ 0, %bb.br ] ; 3 uses
  %i.ov = add nsw i64 %i.ni, -1
  %i.ow = shl nuw nsw i64 1, %i.ov
  %i.ox = and i64 %.0.lcssa.i10.i308, %i.ow
  %.not.i309 = icmp eq i64 %i.ox, 0
  br i1 %.not.i309, label %getSignedBitfield.exit310, label %bb.bs

bb.bs:                                            ; preds = %getUnsignedBitfield.exit.thread.i307
  %i.oy = shl nsw i64 -1, %i.ni
  %i.oz = or i64 %.0.lcssa.i10.i308, %i.oy
  br label %getSignedBitfield.exit310

bb.bt:                                            ; preds = %._crit_edge427
  br i1 %.not.i311, label %getSignedBitfield.exit310, label %.lr.ph.i312.preheader

.lr.ph.i312.preheader:                            ; preds = %bb.bt
  %i.pa = load i64, ptr %i.dj, align 8, !tbaa !158
  %i.pb = and i64 %i.nd, -8
  %i.pc = sub i64 %i.pa, %i.pb                    ; 2 uses
  %i.pd = icmp eq i32 %i.nh, 1
  br i1 %i.pd, label %.lr.ph.i312.epil.preheader, label %.lr.ph.i312.preheader.new

.lr.ph.i312.preheader.new:                        ; preds = %.lr.ph.i312.preheader
  %unroll_iter521 = and i64 %i.ni, -2
  br label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %.lr.ph.i312, %.lr.ph.i312.preheader.new
  %.016.i313 = phi i64 [ 0, %.lr.ph.i312.preheader.new ], [ %i.py, %.lr.ph.i312 ]
  %.01314.i315 = phi i64 [ %i.pc, %.lr.ph.i312.preheader.new ], [ %i.pz, %.lr.ph.i312 ] ; 4 uses
  %niter522 = phi i64 [ 0, %.lr.ph.i312.preheader.new ], [ %niter522.next.1, %.lr.ph.i312 ]
  %i.pe = lshr i64 %.01314.i315, 3
  %i.pf = and i64 %.01314.i315, 7
  %i.pg = xor i64 %i.pf, 7
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !13
  %i.pj = zext i8 %i.pi to i64
  %i.pk = lshr i64 %i.pj, %i.pg
  %i.pl = add i64 %.01314.i315, 1                 ; 2 uses
  %i.pm = lshr i64 %i.pl, 3
  %i.pn = and i64 %i.pl, 7
  %i.po = xor i64 %i.pn, 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pm
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !13
  %i.pr = zext i8 %i.pq to i64
  %i.ps = lshr i64 %i.pr, %i.po
  %i.pt = and i64 %i.ps, 1
  %i.pu = shl i64 %.016.i313, 2
  %i.pv = shl nuw nsw i64 %i.pk, 1
  %i.pw = and i64 %i.pv, 2
  %i.px = or disjoint i64 %i.pu, %i.pw
  %i.py = or disjoint i64 %i.pt, %i.px            ; 3 uses
  %i.pz = add i64 %.01314.i315, 2                 ; 2 uses
  %niter522.next.1 = add i64 %niter522, 2         ; 2 uses
  %niter522.ncmp.1 = icmp eq i64 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %getSignedBitfield.exit310.loopexit.unr-lcssa, label %.lr.ph.i312, !llvm.loop !48

getSignedBitfield.exit310.loopexit.unr-lcssa:     ; preds = %.lr.ph.i312
  %i.qa = and i32 %i.nh, 1
  %lcmp.mod518.not = icmp eq i32 %i.qa, 0
  br i1 %lcmp.mod518.not, label %getSignedBitfield.exit310, label %.lr.ph.i312.epil.preheader

.lr.ph.i312.epil.preheader:                       ; preds = %getSignedBitfield.exit310.loopexit.unr-lcssa, %.lr.ph.i312.preheader
  %.016.i313.epil.init = phi i64 [ 0, %.lr.ph.i312.preheader ], [ %i.py, %getSignedBitfield.exit310.loopexit.unr-lcssa ]
  %.01314.i315.epil.init = phi i64 [ %i.pc, %.lr.ph.i312.preheader ], [ %i.pz, %getSignedBitfield.exit310.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod520 = trunc i32 %i.nh to i1
  call void @llvm.assume(i1 %lcmp.mod520)
  %i.qb = lshr i64 %.01314.i315.epil.init, 3
  %i.qc = and i64 %.01314.i315.epil.init, 7
  %i.qd = xor i64 %i.qc, 7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.qb
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = zext i8 %i.qf to i64
  %i.qh = lshr i64 %i.qg, %i.qd
  %i.qi = and i64 %i.qh, 1
  %i.qj = shl i64 %.016.i313.epil.init, 1
  %i.qk = or disjoint i64 %i.qi, %i.qj
  br label %getSignedBitfield.exit310

getSignedBitfield.exit310:                        ; preds = %.lr.ph.i312.epil.preheader, %getSignedBitfield.exit310.loopexit.unr-lcssa, %bb.bt, %bb.bs, %getUnsignedBitfield.exit.thread.i307, %getUnsignedBitfield.exit.i305
  %.0.lcssa.i317.sink = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i305 ], [ %i.oz, %bb.bs ], [ %.0.lcssa.i10.i308, %getUnsignedBitfield.exit.thread.i307 ], [ 0, %bb.bt ], [ %i.py, %getSignedBitfield.exit310.loopexit.unr-lcssa ], [ %i.qk, %.lr.ph.i312.epil.preheader ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i317.sink) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %setUnsignedBitfield.exit, %bb.av, %setSignedBitfield.exit, %getSignedBitfield.exit310
  %.3216 = phi i32 [ %.0213429, %getSignedBitfield.exit310 ], [ %spec.select256, %setSignedBitfield.exit ], [ %.0213429, %bb.av ], [ %.0213429, %bb.bg ], [ %spec.select257, %setUnsignedBitfield.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond448.not, label %._crit_edge433, label %bb.aa, !llvm.loop !166

._crit_edge433:                                   ; preds = %bb.bu
  %.not229 = icmp eq i32 %.3216, 0
  br i1 %.not229, label %._crit_edge433.thread, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge433
  %i.ql = load i64, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.qm = icmp ne i64 %i.ql, 0
  %i.qn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.qo = icmp ne i64 %i.qn, 0
  %or.cond9 = select i1 %i.qm, i1 %i.qo, i1 false
  br i1 %or.cond9, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !105
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !89
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !104
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !50
  %i.qx = call i32 @getKeySlot(ptr noundef %i.qw) #23
  %i.qy = add i64 %i.qn, %i.ql
  call void @updateKeysizesHist(ptr noundef %i.qq, i32 noundef %i.qx, i32 noundef 0, i64 noundef %i.ql, i64 noundef %i.qy) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !105
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !89
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !104
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ra, ptr noundef %i.re, ptr noundef %.0, i32 noundef 1) #23
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !89
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !104
  %i.ri = load ptr, ptr %i.qz, align 8, !tbaa !105
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 72
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !106
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %i.rh, i32 noundef %i.rk) #23
  %i.rl = sext i32 %.3216 to i64
  %i.rm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  %i.rn = add nsw i64 %i.rm, %i.rl
  store i64 %i.rn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  br label %._crit_edge433.thread

._crit_edge433.thread:                            ; preds = %bb.z, %bb.bx, %._crit_edge433
  call void @zfree(ptr noundef %.0211.lcssa477) #23
  br label %bb.by

bb.by:                                            ; preds = %.thread, %._crit_edge433.thread, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #19

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @addReplyNull(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldroCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #3

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbUnshareStringValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #8

declare ptr @sdsgrowzero(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !15, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
