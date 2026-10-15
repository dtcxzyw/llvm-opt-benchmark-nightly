Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/apply?download=true
inline.NumInlined: 449
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@apply_fragments:bb.a
  br i1 %i.gm, label %bb.ao, label %._crit_edge.i239.i

._crit_edge.i239.i:                               ; preds = %.lr.ph.i.i.i
  %.pre.i241.i = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  br label %.lr.ph.i.i242.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.gn = mul i64 %i.gl, 3
  %i.go = add i64 %i.gn, 48
  %i.gp = lshr i64 %i.go, 1
  %..i248.i = call i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gk) ; 4 uses
  store i64 %..i248.i, ptr %i.ae, align 8, !tbaa !160
  %i.gq = icmp ugt i64 %..i248.i, 1152921504606846975
  br i1 %i.gq, label %bb.ap, label %st_mult.exit.i249.i

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i248.i) #25
  unreachable

st_mult.exit.i249.i:                              ; preds = %bb.ao
  %i.gr = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %i.gs = shl nuw i64 %..i248.i, 4
  %i.gt = call ptr @xrealloc(ptr noundef %i.gr, i64 noundef %i.gs) #21 ; 2 uses
  store ptr %i.gt, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %.pre23.i250.i = load i64, ptr %i.ad, align 8, !tbaa !159
  br label %.lr.ph.i.i242.i

.lr.ph.i.i242.i:                                  ; preds = %st_mult.exit.i249.i, %._crit_edge.i239.i
  %i.gu = phi i64 [ %i.gj, %._crit_edge.i239.i ], [ %.pre23.i250.i, %st_mult.exit.i249.i ]
  %i.gv = phi ptr [ %.pre.i241.i, %._crit_edge.i239.i ], [ %i.gt, %st_mult.exit.i249.i ]
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  store i64 1, ptr %i.gw, align 8, !tbaa !162
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %i.gz = and i32 %i.gy, -16777216
  %i.ha = or disjoint i32 %i.gz, %.1.i.i.i
  store i32 %i.ha, ptr %i.gx, align 8
  %i.hb = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %i.hc = load i64, ptr %i.ad, align 8, !tbaa !159
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 16777215
  %i.hh = or disjoint i32 %i.hg, 16777216
  store i32 %i.hh, ptr %i.he, align 8
  %i.hi = load i64, ptr %i.ad, align 8, !tbaa !159
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.ad, align 8, !tbaa !159
  br label %.thread357.thread.i

bb.aq:                                            ; preds = %bb.aj, %bb.ai
  %.not193.i = icmp eq i32 %.0151.i, 0
  %or.cond224.i = or i1 %.not194.i, %.not193.i
  br i1 %or.cond224.i, label %.thread.i32, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.hl = call i32 @ws_blank_line(ptr noundef nonnull %i.hk, i32 noundef %.0151.i) #21
  %.not195.i = icmp ne i32 %i.hl, 0
  %spec.select225.i = zext i1 %.not195.i to i32
  br label %.thread.i32

.thread.i32:                                      ; preds = %bb.ar, %bb.aq, %bb.aj, %bb.ai
  %i.hm = phi i32 [ 16777216, %bb.aq ], [ 16777216, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %cond.i = phi i1 [ false, %bb.aq ], [ false, %bb.ar ], [ true, %bb.aj ], [ true, %bb.ai ]
  %.0149.i = phi i32 [ 0, %bb.aq ], [ %spec.select225.i, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.ho = sext i32 %.0151.i to i64                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0172517.i, ptr nonnull align 1 %i.hn, i64 %i.ho, i1 false)
  %i.hp = load i64, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  %i.hr = load i64, ptr %i.ab, align 8, !tbaa !160 ; 2 uses
  %i.hs = icmp ugt i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.as, label %._crit_edge.i252.i

._crit_edge.i252.i:                               ; preds = %.thread.i32
  %.pre.i254.i = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  br label %bb.au

bb.as:                                            ; preds = %.thread.i32
  %i.ht = mul i64 %i.hr, 3
  %i.hu = add i64 %i.ht, 48
  %i.hv = lshr i64 %i.hu, 1
  %..i261.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 %i.hq) ; 4 uses
  store i64 %..i261.i, ptr %i.ab, align 8, !tbaa !160
  %i.hw = icmp ugt i64 %..i261.i, 1152921504606846975
  br i1 %i.hw, label %bb.at, label %st_mult.exit.i262.i

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i261.i) #25
  unreachable

st_mult.exit.i262.i:                              ; preds = %bb.as
  %i.hx = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %i.hy = shl nuw i64 %..i261.i, 4
  %i.hz = call ptr @xrealloc(ptr noundef %i.hx, i64 noundef %i.hy) #21 ; 2 uses
  store ptr %i.hz, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %.pre23.i263.i = load i64, ptr %i.aa, align 8, !tbaa !159
  br label %bb.au

bb.au:                                            ; preds = %st_mult.exit.i262.i, %._crit_edge.i252.i
  %i.ia = phi i64 [ %i.hp, %._crit_edge.i252.i ], [ %.pre23.i263.i, %st_mult.exit.i262.i ]
  %i.ib = phi ptr [ %.pre.i254.i, %._crit_edge.i252.i ], [ %i.hz, %st_mult.exit.i262.i ]
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !162
  switch i32 %.0151.i, label %.lr.ph.i.i255.i.preheader.new [
    i32 0, label %image_add_line.exit264.i
    i32 1, label %.lr.ph.i.i255.i.epil.preheader
  ]

.lr.ph.i.i255.i.preheader.new:                    ; preds = %bb.au
  %unroll_iter = and i64 %i.ho, -2
  br label %.lr.ph.i.i255.i

.lr.ph.i.i255.i:                                  ; preds = %.lr.ph.i.i255.i, %.lr.ph.i.i255.i.preheader.new
  %.010.i.i256.i = phi i32 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %.1.i.i259.i.1, %.lr.ph.i.i255.i ] ; 2 uses
  %.089.i.i257.i = phi i64 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %i.iw, %.lr.ph.i.i255.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i255.i ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !63  ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !63
  %i.ii = and i8 %i.ih, 1
  %.not.i.i258.i = icmp eq i8 %i.ii, 0
  %i.ij = mul i32 %.010.i.i256.i, 3
  %i.ik = zext i8 %i.ie to i32
  %i.il = add i32 %i.ij, %i.ik
  %.1.i.i259.i = select i1 %.not.i.i258.i, i32 %i.il, i32 %.010.i.i256.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !63  ; 2 uses
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !63
  %i.is = and i8 %i.ir, 1
  %.not.i.i258.i.1 = icmp eq i8 %i.is, 0
  %i.it = mul i32 %.1.i.i259.i, 3
  %i.iu = zext i8 %i.io to i32
  %i.iv = add i32 %i.it, %i.iu
  %.1.i.i259.i.1 = select i1 %.not.i.i258.i.1, i32 %i.iv, i32 %.1.i.i259.i ; 3 uses
  %i.iw = add nuw i64 %.089.i.i257.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash_line.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i255.i, !llvm.loop !4

hash_line.exit.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph.i.i255.i
  %i.ix = and i32 %.0151.i, 1
  %lcmp.mod.not = icmp eq i32 %i.ix, 0
  br i1 %lcmp.mod.not, label %hash_line.exit.loopexit.i.i, label %.lr.ph.i.i255.i.epil.preheader

.lr.ph.i.i255.i.epil.preheader:                   ; preds = %bb.au, %hash_line.exit.loopexit.i.i.unr-lcssa
  %.010.i.i256.i.epil.init = phi i32 [ 0, %bb.au ], [ %.1.i.i259.i.1, %hash_line.exit.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.089.i.i257.i.epil.init = phi i64 [ 0, %bb.au ], [ %i.iw, %hash_line.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod599 = trunc i32 %.0151.i to i1
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.iy = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i.epil.init
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !63  ; 2 uses
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !63
  %i.jd = and i8 %i.jc, 1
  %.not.i.i258.i.epil = icmp eq i8 %i.jd, 0
  %i.je = mul i32 %.010.i.i256.i.epil.init, 3
  %i.jf = zext i8 %i.iz to i32
  %i.jg = add i32 %i.je, %i.jf
  %.1.i.i259.i.epil = select i1 %.not.i.i258.i.epil, i32 %i.jg, i32 %.010.i.i256.i.epil.init
  br label %hash_line.exit.loopexit.i.i

hash_line.exit.loopexit.i.i:                      ; preds = %hash_line.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i255.i.epil.preheader
  %.1.i.i259.i.lcssa = phi i32 [ %.1.i.i259.i.1, %hash_line.exit.loopexit.i.i.unr-lcssa ], [ %.1.i.i259.i.epil, %.lr.ph.i.i255.i.epil.preheader ]
  %i.jh = and i32 %.1.i.i259.i.lcssa, 16777215
  br label %image_add_line.exit264.i

image_add_line.exit264.i:                         ; preds = %bb.au, %hash_line.exit.loopexit.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %i.jh, %hash_line.exit.loopexit.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = and i32 %i.jj, -16777216
  %i.jl = or disjoint i32 %i.jk, %.0.lcssa.i.i.i
  store i32 %i.jl, ptr %i.ji, align 8
  %i.jm = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %i.jn = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = and i32 %i.jq, 16777215
  %i.js = or disjoint i32 %i.jr, %i.hm
  store i32 %i.js, ptr %i.jp, align 8
  %i.jt = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.ju = add i64 %i.jt, 1
  store i64 %i.ju, ptr %i.aa, align 8, !tbaa !159
  %i.jv = getelementptr inbounds i8, ptr %.0172517.i, i64 %i.ho ; 2 uses
  br i1 %cond.i, label %.thread357.i, label %10

.thread335.i:                                     ; preds = %bb.aj, %bb.ai
  %i.jw = load i32, ptr %i.u, align 8, !tbaa !265
  %.not196.i = icmp eq i32 %i.jw, 0
  br i1 %.not196.i, label %.thread345.i, label %.thread357.i

.thread345.i:                                     ; preds = %.thread335.i
  %i.jx = load i64, ptr %i.v, align 8, !tbaa !79  ; 3 uses
  %i.jy = load i32, ptr %i.w, align 8, !tbaa !108
  %.not198.i = icmp eq i32 %i.jy, 0
  br i1 %.not198.i, label %bb.aw, label %bb.av

10:                                               ; preds = %image_add_line.exit264.i
  %11 = load i64, ptr %i.v, align 8, !tbaa !79
  br label %bb.aw

bb.av:                                            ; preds = %.thread345.i
  %i.jz = load i32, ptr %i.x, align 8, !tbaa !43
  %.not199.i = icmp eq i32 %i.jz, 3
  br i1 %.not199.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %10, %.thread345.i
  %i.ka = phi i64 [ %i.jx, %bb.av ], [ %i.jx, %.thread345.i ], [ %11, %10 ]
  %.1173342354.i = phi ptr [ %.0172517.i, %bb.av ], [ %.0172517.i, %.thread345.i ], [ %i.jv, %10 ]
  %.1344351.i = phi i32 [ 0, %bb.av ], [ 0, %.thread345.i ], [ %.0149.i, %10 ]
  %i.kb = phi i1 [ false, %bb.av ], [ false, %.thread345.i ], [ true, %10 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.kd = sext i32 %.0151.i to i64
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef nonnull %i.kc, i64 noundef %i.kd) #21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ke = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  call void @ws_fix_copy(ptr noundef nonnull %6, ptr noundef nonnull %i.ke, i32 noundef %.0151.i, i32 noundef %i.s, ptr noundef nonnull %i.y) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kf = phi i64 [ %i.jx, %bb.ax ], [ %i.ka, %bb.aw ] ; 4 uses
  %.1173342353.i = phi ptr [ %.0172517.i, %bb.ax ], [ %.1173342354.i, %bb.aw ] ; 3 uses
  %.1344350.i = phi i32 [ 0, %bb.ax ], [ %.1344351.i, %bb.aw ] ; 2 uses
  %i.kg = phi i1 [ false, %bb.ax ], [ %i.kb, %bb.aw ] ; 2 uses
  %i.kh = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kf ; 3 uses
  %i.kj = load i64, ptr %i.v, align 8, !tbaa !79  ; 3 uses
  %i.kk = sub i64 %i.kj, %i.kf                    ; 4 uses
  %i.kl = load i64, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.km = add i64 %i.kl, 1                        ; 2 uses
  %i.kn = load i64, ptr %i.ae, align 8, !tbaa !160 ; 2 uses
  %i.ko = icmp ugt i64 %i.km, %i.kn
  br i1 %i.ko, label %bb.az, label %._crit_edge.i265.i

._crit_edge.i265.i:                               ; preds = %bb.ay
  %.pre.i267.i = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.kp = mul i64 %i.kn, 3
  %i.kq = add i64 %i.kp, 48
  %i.kr = lshr i64 %i.kq, 1
  %..i277.i = call i64 @llvm.umax.i64(i64 %i.kr, i64 %i.km) ; 4 uses
  store i64 %..i277.i, ptr %i.ae, align 8, !tbaa !160
  %i.ks = icmp ugt i64 %..i277.i, 1152921504606846975
  br i1 %i.ks, label %bb.ba, label %st_mult.exit.i278.i

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i277.i) #25
  unreachable

st_mult.exit.i278.i:                              ; preds = %bb.az
  %i.kt = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %i.ku = shl nuw i64 %..i277.i, 4
  %i.kv = call ptr @xrealloc(ptr noundef %i.kt, i64 noundef %i.ku) #21 ; 2 uses
  store ptr %i.kv, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %.pre23.i279.i = load i64, ptr %i.ad, align 8, !tbaa !159
  br label %bb.bb

bb.bb:                                            ; preds = %st_mult.exit.i278.i, %._crit_edge.i265.i
  %i.kw = phi i64 [ %i.kl, %._crit_edge.i265.i ], [ %.pre23.i279.i, %st_mult.exit.i278.i ]
  %i.kx = phi ptr [ %.pre.i267.i, %._crit_edge.i265.i ], [ %i.kv, %st_mult.exit.i278.i ]
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %i.kw ; 2 uses
  store i64 %i.kk, ptr %i.ky, align 8, !tbaa !162
  %.not11.i.i268.i = icmp eq i64 %i.kj, %i.kf
  br i1 %.not11.i.i268.i, label %image_add_line.exit280.i, label %.lr.ph.i.i269.i.preheader

.lr.ph.i.i269.i.preheader:                        ; preds = %bb.bb
  %.neg = add i64 %i.kf, 1
  %xtraiter600 = and i64 %i.kk, 1
  %i.kz = icmp eq i64 %i.kj, %.neg
  br i1 %i.kz, label %.lr.ph.i.i269.i.epil.preheader, label %.lr.ph.i.i269.i.preheader.new

.lr.ph.i.i269.i.preheader.new:                    ; preds = %.lr.ph.i.i269.i.preheader
  %unroll_iter604 = and i64 %i.kk, -2
  br label %.lr.ph.i.i269.i

.lr.ph.i.i269.i:                                  ; preds = %.lr.ph.i.i269.i, %.lr.ph.i.i269.i.preheader.new
  %.010.i.i270.i = phi i32 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %.1.i.i273.i.1, %.lr.ph.i.i269.i ] ; 2 uses
  %.089.i.i271.i = phi i64 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %i.lt, %.lr.ph.i.i269.i ] ; 3 uses
  %niter605 = phi i64 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %niter605.next.1, %.lr.ph.i.i269.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.089.i.i271.i
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !63  ; 2 uses
  %i.lc = zext i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !63
  %i.lf = and i8 %i.le, 1
  %.not.i.i272.i = icmp eq i8 %i.lf, 0
  %i.lg = mul i32 %.010.i.i270.i, 3
  %i.lh = zext i8 %i.lb to i32
  %i.li = add i32 %i.lg, %i.lh
  %.1.i.i273.i = select i1 %.not.i.i272.i, i32 %i.li, i32 %.010.i.i270.i ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.089.i.i271.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !63  ; 2 uses
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !63
  %i.lp = and i8 %i.lo, 1
  %.not.i.i272.i.1 = icmp eq i8 %i.lp, 0
  %i.lq = mul i32 %.1.i.i273.i, 3
  %i.lr = zext i8 %i.ll to i32
  %i.ls = add i32 %i.lq, %i.lr
  %.1.i.i273.i.1 = select i1 %.not.i.i272.i.1, i32 %i.ls, i32 %.1.i.i273.i ; 3 uses
  %i.lt = add nuw i64 %.089.i.i271.i, 2           ; 2 uses
  %niter605.next.1 = add i64 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i64 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %hash_line.exit.loopexit.i275.i.unr-lcssa, label %.lr.ph.i.i269.i, !llvm.loop !4

hash_line.exit.loopexit.i275.i.unr-lcssa:         ; preds = %.lr.ph.i.i269.i
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  br i1 %lcmp.mod601.not, label %hash_line.exit.loopexit.i275.i, label %.lr.ph.i.i269.i.epil.preheader

.lr.ph.i.i269.i.epil.preheader:                   ; preds = %hash_line.exit.loopexit.i275.i.unr-lcssa, %.lr.ph.i.i269.i.preheader
  %.010.i.i270.i.epil.init = phi i32 [ 0, %.lr.ph.i.i269.i.preheader ], [ %.1.i.i273.i.1, %hash_line.exit.loopexit.i275.i.unr-lcssa ] ; 2 uses
  %.089.i.i271.i.epil.init = phi i64 [ 0, %.lr.ph.i.i269.i.preheader ], [ %i.lt, %hash_line.exit.loopexit.i275.i.unr-lcssa ]
  %lcmp.mod603 = trunc i64 %i.kk to i1
  call void @llvm.assume(i1 %lcmp.mod603)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.089.i.i271.i.epil.init
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !63  ; 2 uses
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !63
  %i.lz = and i8 %i.ly, 1
  %.not.i.i272.i.epil = icmp eq i8 %i.lz, 0
  %i.ma = mul i32 %.010.i.i270.i.epil.init, 3
  %i.mb = zext i8 %i.lv to i32
  %i.mc = add i32 %i.ma, %i.mb
  %.1.i.i273.i.epil = select i1 %.not.i.i272.i.epil, i32 %i.mc, i32 %.010.i.i270.i.epil.init
  br label %hash_line.exit.loopexit.i275.i

hash_line.exit.loopexit.i275.i:                   ; preds = %hash_line.exit.loopexit.i275.i.unr-lcssa, %.lr.ph.i.i269.i.epil.preheader
  %.1.i.i273.i.lcssa = phi i32 [ %.1.i.i273.i.1, %hash_line.exit.loopexit.i275.i.unr-lcssa ], [ %.1.i.i273.i.epil, %.lr.ph.i.i269.i.epil.preheader ]
  %i.md = and i32 %.1.i.i273.i.lcssa, 16777215
  br label %image_add_line.exit280.i

image_add_line.exit280.i:                         ; preds = %hash_line.exit.loopexit.i275.i, %bb.bb
  %.0.lcssa.i.i276.i = phi i32 [ 0, %bb.bb ], [ %i.md, %hash_line.exit.loopexit.i275.i ]
  %i.me = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = and i32 %i.mf, -16777216
  %i.mh = or disjoint i32 %i.mg, %.0.lcssa.i.i276.i
  store i32 %i.mh, ptr %i.me, align 8
  %i.mi = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !156
  %i.mj = load i64, ptr %i.ad, align 8, !tbaa !159
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8
  %i.mn = select i1 %i.kg, i32 16777216, i32 0
  %i.mo = and i32 %i.mm, 16777215
  %i.mp = or disjoint i32 %i.mo, %i.mn
  store i32 %i.mp, ptr %i.ml, align 8
  %i.mq = load i64, ptr %i.ad, align 8, !tbaa !159
  %i.mr = add i64 %i.mq, 1
  store i64 %i.mr, ptr %i.ad, align 8, !tbaa !159
  %or.cond226.i = or i1 %.not194.i, %i.kg
  br i1 %or.cond226.i, label %.thread357.i, label %bb.bf

bb.bc:                                            ; preds = %bb.aj, %bb.ai
  %i.ms = sext i8 %i.ew to i32
  %i.mt = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %bb.bd, label %apply_one_fragment.exit

bb.bd:                                            ; preds = %bb.bc
  %i.mv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i.i33 = icmp eq i32 %i.mv, 0
  br i1 %.not4.i.i33, label %_.exit.i34, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.225, i32 noundef 5) #21
  br label %_.exit.i34

_.exit.i34:                                       ; preds = %bb.be, %bb.bd
  %.0.i281.i = phi ptr [ %i.mw, %bb.be ], [ @.str.225, %bb.bd ]
  %i.mx = call i32 (ptr, ...) @error(ptr noundef %.0.i281.i, i32 noundef %i.ms) #21 ; 0 uses
  br label %apply_one_fragment.exit

bb.bf:                                            ; preds = %image_add_line.exit280.i
  %i.my = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.mz = call i32 @ws_blank_line(ptr noundef nonnull %i.my, i32 noundef %.0151.i) #21
  %.not201.i = icmp eq i32 %i.mz, 0
  br i1 %.not201.i, label %.thread357.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not204.i = icmp eq i32 %.0167518.i, 0
  %spec.select228.i = select i1 %.not204.i, i32 %.0162523.i, i32 %.0164519.i
  %i.na = add nsw i32 %.0167518.i, 1
  br label %.thread357.thread.i

.thread357.i:                                     ; preds = %bb.bf, %image_add_line.exit280.i, %.thread335.i, %image_add_line.exit264.i
  %.2363.i = phi i32 [ %.1344350.i, %bb.bf ], [ %.1344350.i, %image_add_line.exit280.i ], [ %.0149.i, %image_add_line.exit264.i ], [ 0, %.thread335.i ]
  %.2174362.i = phi ptr [ %.1173342353.i, %bb.bf ], [ %.1173342353.i, %image_add_line.exit280.i ], [ %i.jv, %image_add_line.exit264.i ], [ %.0172517.i, %.thread335.i ]
  %.2363.fr.i = freeze i32 %.2363.i
  %.not203.i = icmp eq i32 %.2363.fr.i, 0
  %spec.select395.i = select i1 %.not203.i, i32 0, i32 %.0167518.i
  br label %.thread357.thread.i

.thread357.thread.i:                              ; preds = %.thread357.i, %bb.bg, %.lr.ph.i.i242.i, %bb.ak, %bb.aj, %bb.aj, %bb.ai, %bb.ai
  %.2174361.i = phi ptr [ %.1173342353.i, %bb.bg ], [ %i.ez, %.lr.ph.i.i242.i ], [ %.2174362.i, %.thread357.i ], [ %.0172517.i, %bb.ak ], [ %.0172517.i, %bb.aj ], [ %.0172517.i, %bb.aj ], [ %.0172517.i, %bb.ai ], [ %.0172517.i, %bb.ai ] ; 2 uses
  %.1168.i = phi i32 [ %i.na, %bb.bg ], [ %.0167518.i, %.lr.ph.i.i242.i ], [ %spec.select395.i, %.thread357.i ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 2 uses
  %.2166.i = phi i32 [ %spec.select228.i, %bb.bg ], [ %.0164519.i, %.lr.ph.i.i242.i ], [ %.0164519.i, %.thread357.i ], [ %.0164519.i, %bb.ak ], [ %.0164519.i, %bb.aj ], [ %.0164519.i, %bb.aj ], [ %.0164519.i, %bb.ai ], [ %.0164519.i, %bb.ai ] ; 2 uses
  %sext205.i = shl i64 %.1.i.i, 32
  %i.nb = ashr exact i64 %sext205.i, 32
  %i.nc = getelementptr inbounds i8, ptr %.0179511.i, i64 %i.nb
end_hunk_0
begin_hunk_1_@apply_fragments:bb.a
  br i1 %i.qj, label %.lr.ph.i.i288.i, label %._crit_edge.thread.i.i.i

.lr.ph.i.i288.i:                                  ; preds = %.preheader159.i.i.i.a
  %i.qk = load ptr, ptr %i.am, align 8, !tbaa !156
  %wide.trip.count.i.i.i = zext nneg i32 %.0115.i.i.i to i64 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [16 x i8], ptr %i.qk, i64 %i.qb
  %i.ql = load ptr, ptr %.phi.trans.insert.i253.i, align 8 ; 10 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cc
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i289.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i289.i, label %._crit_edge.i.i.i, label %bb.cb, !llvm.loop !242

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i.i288.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i288.i ], [ %indvars.iv.next.i.i.i, %bb.ca ] ; 3 uses
  %gep.i.i.i = getelementptr [16 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 8
  %i.qn = load i32, ptr %i.qm, align 8            ; 2 uses
  %i.qo = and i32 %i.qn, 33554432
  %.not144.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not144.i.i.i, label %bb.cc, label %.preheader.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = xor i32 %i.qr, %i.qn
  %i.qt = and i32 %i.qs, 16777215
  %.not145.i.i.i = icmp eq i32 %i.qt, 0
  br i1 %.not145.i.i.i, label %bb.ca, label %.preheader.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ca
  %i.qu = icmp eq i64 %i.qa, %wide.trip.count.i.i.i
  br i1 %i.qu, label %bb.cd, label %bb.ch

._crit_edge.thread.i.i.i:                         ; preds = %.preheader159.i.i.i.a
  %i.qv = sext i32 %.0115.i.i.i to i64
  %i.qw = icmp eq i64 %i.qa, %i.qv
  br i1 %i.qw, label %bb.cd, label %.preheader.i.i

bb.cd:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  %i.qx = load i64, ptr %i.ao, align 8, !tbaa !158 ; 2 uses
  %i.qy = add i64 %i.qx, %.163.i.i                ; 2 uses
  %i.qz = load i64, ptr %i.ap, align 8, !tbaa !158 ; 2 uses
  br i1 %i.pb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ra = icmp eq i64 %i.qy, %i.qz
  br i1 %i.ra, label %bb.cg, label %bb.cl

bb.cf:                                            ; preds = %bb.cd
  %.not138.i.i.i = icmp ugt i64 %i.qy, %i.qz
  br i1 %.not138.i.i.i, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.rb = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.163.i.i
  %i.rd = load ptr, ptr %i.an, align 8, !tbaa !157
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.rc, ptr %i.rd, i64 %i.qx)
  %.not139.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not139.i.i.i, label %find_pos.exit.i, label %bb.cl

bb.ch:                                            ; preds = %._crit_edge.i.i.i
  %i.re = load ptr, ptr %i.an, align 8, !tbaa !157 ; 7 uses
  %xtraiter606 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.rf = icmp ult i32 %.0115.i.i.i, 8
  br i1 %i.rf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ch
  %unroll_iter610 = and i64 %wide.trip.count.i.i.i, 2147483640
  br label %bb.cj

.preheader158.i.i.i.unr-lcssa:                    ; preds = %bb.cj
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br i1 %lcmp.mod607.not, label %.preheader158.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader158.i.i.i.unr-lcssa, %bb.ch
  %indvars.iv202.i.i.i.epil.init = phi i64 [ 0, %bb.ch ], [ %indvars.iv.next203.i.i.i.7, %.preheader158.i.i.i.unr-lcssa ]
  %.0110169.i.i.i.epil.init = phi ptr [ %i.re, %bb.ch ], [ %i.sq, %.preheader158.i.i.i.unr-lcssa ]
  %lcmp.mod609 = icmp ne i64 %xtraiter606, 0
  call void @llvm.assume(i1 %lcmp.mod609)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.epil.preheader
  %indvars.iv202.i.i.i.epil = phi i64 [ %indvars.iv202.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next203.i.i.i.epil, %bb.ci ] ; 2 uses
  %.0110169.i.i.i.epil = phi ptr [ %.0110169.i.i.i.epil.init, %.epil.preheader ], [ %i.ri, %bb.ci ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ci ]
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i.epil
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !162
  %i.ri = getelementptr inbounds nuw i8, ptr %.0110169.i.i.i.epil, i64 %i.rh ; 2 uses
  %indvars.iv.next203.i.i.i.epil = add nuw nsw i64 %indvars.iv202.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter606
  br i1 %epil.iter.cmp.not, label %.preheader158.i.i.i, label %bb.ci, !llvm.loop !243

.preheader158.i.i.i:                              ; preds = %bb.ci, %.preheader158.i.i.i.unr-lcssa
  %.lcssa521 = phi ptr [ %i.sq, %.preheader158.i.i.i.unr-lcssa ], [ %i.ri, %bb.ci ] ; 4 uses
  %i.rj = icmp ult ptr %i.re, %.lcssa521
  br i1 %i.rj, label %.lr.ph173.preheader.i.i.i, label %._crit_edge174.i.i.i

.lr.ph173.preheader.i.i.i:                        ; preds = %.preheader158.i.i.i
  %i.rk = ptrtoaddr ptr %i.re to i64
  %.pre220.i.i.i = ptrtoaddr ptr %.lcssa521 to i64
  %i.rl = sub i64 %.pre220.i.i.i, %i.rk
  %scevgep.i.i.i = getelementptr i8, ptr %i.re, i64 %i.rl
  br label %.lr.ph173.i.i.i

bb.cj:                                            ; preds = %bb.cj, %.new
  %indvars.iv202.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next203.i.i.i.7, %bb.cj ] ; 9 uses
  %.0110169.i.i.i = phi ptr [ %i.re, %.new ], [ %i.sq, %bb.cj ]
  %niter611 = phi i64 [ 0, %.new ], [ %niter611.next.7, %bb.cj ]
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !162
  %i.ro = getelementptr inbounds nuw i8, ptr %.0110169.i.i.i, i64 %i.rn
  %i.rp = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !162
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !162
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rv
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 48
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !162
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rz
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 64
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !162
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sd
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 80
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !162
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sh
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 96
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !162
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sl
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv202.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 112
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !162
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sp ; 3 uses
  %indvars.iv.next203.i.i.i.7 = add nuw nsw i64 %indvars.iv202.i.i.i, 8 ; 2 uses
  %niter611.next.7 = add i64 %niter611, 8         ; 2 uses
  %niter611.ncmp.7 = icmp eq i64 %niter611.next.7, %unroll_iter610
  br i1 %niter611.ncmp.7, label %.preheader158.i.i.i.unr-lcssa, label %bb.cj, !llvm.loop !244

.lr.ph173.i.i.i:                                  ; preds = %bb.ck, %.lr.ph173.preheader.i.i.i
  %.0111172.i.i.i = phi ptr [ %i.sw, %bb.ck ], [ %i.re, %.lr.ph173.preheader.i.i.i ] ; 3 uses
  %i.sr = load i8, ptr %.0111172.i.i.i, align 1, !tbaa !63
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !63
  %i.sv = and i8 %i.su, 1
  %.not136.i.i.i = icmp eq i8 %i.sv, 0
  br i1 %.not136.i.i.i, label %._crit_edge174.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph173.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.0111172.i.i.i, i64 1 ; 2 uses
  %exitcond208.not.i.i.i = icmp eq ptr %i.sw, %.lcssa521
  br i1 %exitcond208.not.i.i.i, label %._crit_edge174.i.i.i, label %.lr.ph173.i.i.i, !llvm.loop !245

._crit_edge174.i.i.i:                             ; preds = %bb.ck, %.lr.ph173.i.i.i, %.preheader158.i.i.i
  %.0111.lcssa.i.i.i = phi ptr [ %i.re, %.preheader158.i.i.i ], [ %.0111172.i.i.i, %.lr.ph173.i.i.i ], [ %scevgep.i.i.i, %bb.ck ]
  %i.sx = icmp eq ptr %.0111.lcssa.i.i.i, %.lcssa521
  br i1 %i.sx, label %.preheader.i.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge174.i.i.i, %bb.cg, %bb.cf, %bb.ce
  %i.sy = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.sz = icmp eq i32 %i.sy, 1
  br i1 %i.sz, label %bb.cm, label %bb.cu

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br i1 %i.qj, label %.lr.ph.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i:                   ; preds = %bb.cm
  %.pre.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cm
  %i.ta = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %i.tb = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.tc = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.163.i.i
  %i.te = load ptr, ptr %i.an, align 8, !tbaa !157 ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %.0115.i.i.i to i64 ; 2 uses
  %invariant.gep.i.i.i.i = getelementptr [16 x i8], ptr %i.tb, i64 %i.qb
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cs, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.cs ] ; 3 uses
  %.04775.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.vd, %bb.cs ] ; 2 uses
  %.04874.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ve, %bb.cs ] ; 2 uses
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv.i.i.i.i
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !162 ; 3 uses
  %gep.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.th = load i64, ptr %gep.i.i.i.i, align 8, !tbaa !162 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 %.04874.i.i.i.i ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 %.04775.i.i.i.i ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.th ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tg ; 2 uses
  %.not81.i.i.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not81.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cn, %.critedge2.i.i.i.i.i
  %.04458.i.i.i.i.i = phi ptr [ %i.tm, %.critedge2.i.i.i.i.i ], [ %i.tk, %bb.cn ] ; 2 uses
  %i.tm = getelementptr inbounds i8, ptr %.04458.i.i.i.i.i, i64 -1 ; 4 uses
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !63
  switch i8 %i.tn, label %.critedge.i.i.i.i.i [
    i8 13, label %.critedge2.i.i.i.i.i
    i8 10, label %.critedge2.i.i.i.i.i
  ]

.critedge2.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.to = icmp ult ptr %i.ti, %i.tm
  br i1 %i.to, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !246

.critedge.i.i.i.i.i:                              ; preds = %.critedge2.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.cn
  %.044.lcssa.i.i.i.i.i = phi ptr [ %i.tk, %bb.cn ], [ %i.tm, %.critedge2.i.i.i.i.i ], [ %.04458.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.044.lcssa83.i.i.i.i.i = ptrtoaddr ptr %.044.lcssa.i.i.i.i.i to i64
  %.not82.i.i.i.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not82.i.i.i.i.i, label %.critedge4.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i

.lr.ph62.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i, %.critedge6.i.i.i.i.i
  %.061.i.i.i.i.i = phi ptr [ %i.tp, %.critedge6.i.i.i.i.i ], [ %i.tl, %.critedge.i.i.i.i.i ] ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %.061.i.i.i.i.i, i64 -1 ; 4 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !63
  switch i8 %i.tq, label %.critedge4.i.i.i.i.i [
    i8 13, label %.critedge6.i.i.i.i.i
    i8 10, label %.critedge6.i.i.i.i.i
  ]

.critedge6.i.i.i.i.i:                             ; preds = %.lr.ph62.i.i.i.i.i, %.lr.ph62.i.i.i.i.i
  %i.tr = icmp ult ptr %i.tj, %i.tp
  br i1 %i.tr, label %.lr.ph62.i.i.i.i.i, label %.critedge4.i.i.i.i.i, !llvm.loop !247

.critedge4.i.i.i.i.i:                             ; preds = %.critedge6.i.i.i.i.i, %.lr.ph62.i.i.i.i.i, %.critedge.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.tl, %.critedge.i.i.i.i.i ], [ %i.tp, %.critedge6.i.i.i.i.i ], [ %.061.i.i.i.i.i, %.lr.ph62.i.i.i.i.i ] ; 5 uses
  %.0.lcssa86.i.i.i.i.i = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ts = icmp ult ptr %i.ti, %.044.lcssa.i.i.i.i.i
  %i.tt = icmp ult ptr %i.tj, %.0.lcssa.i.i.i.i.i
  %i.tu = select i1 %i.ts, i1 %i.tt, i1 false
  br i1 %i.tu, label %.lr.ph78.i.i.i.i.i, label %fuzzy_matchlines.exit.i.i.i.i

.lr.ph78.i.i.i.i.i:                               ; preds = %.critedge4.i.i.i.i.i, %.critedge10.i.i.i.i.i
  %.04677.i.i.i.i.i = phi ptr [ %.2.i.i.i.i.i, %.critedge10.i.i.i.i.i ], [ %i.tj, %.critedge4.i.i.i.i.i ] ; 8 uses
  %.04776.i.i.i.i.i = phi ptr [ %.249.i.i.i.i.i, %.critedge10.i.i.i.i.i ], [ %i.ti, %.critedge4.i.i.i.i.i ] ; 7 uses
  %.0467788.i.i.i.i.i = ptrtoaddr ptr %.04677.i.i.i.i.i to i64
  %.0477684.i.i.i.i.i = ptrtoaddr ptr %.04776.i.i.i.i.i to i64
  %i.tv = load i8, ptr %.04776.i.i.i.i.i, align 1, !tbaa !63 ; 2 uses
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !63
  %i.tz = and i8 %i.ty, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.tz, 0
  br i1 %.not.i.i.i.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %.lr.ph78.i.i.i.i.i
  %i.ua = load i8, ptr %.04677.i.i.i.i.i, align 1, !tbaa !63
  %i.ub = zext i8 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !63
  %i.ue = and i8 %i.ud, 1
  %.not53.i.i.i.i.i = icmp eq i8 %i.ue, 0
  br i1 %.not53.i.i.i.i.i, label %.critedge88.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.co
  %i.uf = icmp ult ptr %.04776.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  br i1 %i.uf, label %.lr.ph67.preheader.i.i.i.i.i, label %.critedge8.i.i.i.i.i

.lr.ph67.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.04776.i.i.i.i.i, i64 %.044.lcssa83.i.i.i.i.i
  %i.ug = sub i64 0, %.0477684.i.i.i.i.i
  %scevgep85.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i, i64 %i.ug ; 2 uses
  br label %.lr.ph67.i.i.i.i.i

.lr.ph67.i.i.i.i.i:                               ; preds = %bb.cp, %.lr.ph67.preheader.i.i.i.i.i
  %.14866.i.i.i.i.i = phi ptr [ %i.um, %bb.cp ], [ %.04776.i.i.i.i.i, %.lr.ph67.preheader.i.i.i.i.i ] ; 3 uses
  %i.uh = load i8, ptr %.14866.i.i.i.i.i, align 1, !tbaa !63
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !63
  %i.ul = and i8 %i.uk, 1
  %.not54.i.i.i.i.i = icmp eq i8 %i.ul, 0
  br i1 %.not54.i.i.i.i.i, label %.critedge8.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph67.i.i.i.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.14866.i.i.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq ptr %i.um, %scevgep85.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge8.i.i.i.i.i, label %.lr.ph67.i.i.i.i.i, !llvm.loop !248

.critedge8.i.i.i.i.i:                             ; preds = %bb.cp, %.lr.ph67.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.148.lcssa.i.i.i.i.i = phi ptr [ %.04776.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.14866.i.i.i.i.i, %.lr.ph67.i.i.i.i.i ], [ %scevgep85.i.i.i.i.i, %bb.cp ] ; 3 uses
  %i.un = icmp ult ptr %.04677.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  br i1 %i.un, label %.lr.ph72.preheader.i.i.i.i.i, label %.critedge10.i.i.i.i.i

.lr.ph72.preheader.i.i.i.i.i:                     ; preds = %.critedge8.i.i.i.i.i
  %scevgep87.i.i.i.i.i = getelementptr i8, ptr %.04677.i.i.i.i.i, i64 %.0.lcssa86.i.i.i.i.i
  %i.uo = sub i64 0, %.0467788.i.i.i.i.i
  %scevgep89.i.i.i.i.i = getelementptr i8, ptr %scevgep87.i.i.i.i.i, i64 %i.uo ; 2 uses
  br label %.lr.ph72.i.i.i.i.i

.lr.ph72.i.i.i.i.i:                               ; preds = %bb.cq, %.lr.ph72.preheader.i.i.i.i.i
  %.171.i.i.i.i.i = phi ptr [ %i.uu, %bb.cq ], [ %.04677.i.i.i.i.i, %.lr.ph72.preheader.i.i.i.i.i ] ; 3 uses
  %i.up = load i8, ptr %.171.i.i.i.i.i, align 1, !tbaa !63
  %i.uq = zext i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !63
  %i.ut = and i8 %i.us, 1
  %.not55.i.i.i.i.i = icmp eq i8 %i.ut, 0
  br i1 %.not55.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph72.i.i.i.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %.171.i.i.i.i.i, i64 1 ; 2 uses
  %exitcond90.not.i.i.i.i.i = icmp eq ptr %i.uu, %scevgep89.i.i.i.i.i
  br i1 %exitcond90.not.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i, !llvm.loop !249

bb.cr:                                            ; preds = %.lr.ph78.i.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.04776.i.i.i.i.i, i64 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.04677.i.i.i.i.i, i64 1
  %i.ux = load i8, ptr %.04677.i.i.i.i.i, align 1, !tbaa !63
  %.not52.i.i.i.i.i = icmp eq i8 %i.tv, %i.ux
  br i1 %.not52.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %.critedge88.i.i

.critedge10.i.i.i.i.i:                            ; preds = %bb.cq, %.lr.ph72.i.i.i.i.i, %bb.cr, %.critedge8.i.i.i.i.i
  %.249.i.i.i.i.i = phi ptr [ %i.uv, %bb.cr ], [ %.148.lcssa.i.i.i.i.i, %.critedge8.i.i.i.i.i ], [ %.148.lcssa.i.i.i.i.i, %.lr.ph72.i.i.i.i.i ], [ %.148.lcssa.i.i.i.i.i, %bb.cq ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %i.uw, %bb.cr ], [ %.04677.i.i.i.i.i, %.critedge8.i.i.i.i.i ], [ %scevgep89.i.i.i.i.i, %bb.cq ], [ %.171.i.i.i.i.i, %.lr.ph72.i.i.i.i.i ] ; 3 uses
  %i.uy = icmp ult ptr %.249.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  %i.uz = icmp ult ptr %.2.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  %i.va = select i1 %i.uy, i1 %i.uz, i1 false
  br i1 %i.va, label %.lr.ph78.i.i.i.i.i, label %fuzzy_matchlines.exit.i.i.i.i, !llvm.loop !250

fuzzy_matchlines.exit.i.i.i.i:                    ; preds = %.critedge10.i.i.i.i.i, %.critedge4.i.i.i.i.i
  %.047.lcssa.i.i.i.i.i = phi ptr [ %i.ti, %.critedge4.i.i.i.i.i ], [ %.249.i.i.i.i.i, %.critedge10.i.i.i.i.i ]
  %.046.lcssa.i.i.i.i.i = phi ptr [ %i.tj, %.critedge4.i.i.i.i.i ], [ %.2.i.i.i.i.i, %.critedge10.i.i.i.i.i ]
  %i.vb = icmp ne ptr %.047.lcssa.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  %i.vc = icmp ne ptr %.046.lcssa.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  %.not64.i.i.i.i = select i1 %i.vb, i1 true, i1 %i.vc
  br i1 %.not64.i.i.i.i, label %.critedge88.i.i, label %bb.cs

bb.cs:                                            ; preds = %fuzzy_matchlines.exit.i.i.i.i
  %i.vd = add i64 %i.tg, %.04775.i.i.i.i          ; 2 uses
  %i.ve = add i64 %i.th, %.04874.i.i.i.i          ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.cn, !llvm.loop !251

._crit_edge.i.i.i.i:                              ; preds = %bb.cs, %.._crit_edge_crit_edge.i.i.i.i
  %i.vf = phi ptr [ %.pre.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i ], [ %i.te, %bb.cs ] ; 2 uses
  %.050.lcssa.i.i.i.i = phi i64 [ 0, %.._crit_edge_crit_edge.i.i.i.i ], [ %wide.trip.count.i.i.i.i, %bb.cs ] ; 5 uses
  %.048.lcssa.i.i.i.i = phi i64 [ 0, %.._crit_edge_crit_edge.i.i.i.i ], [ %i.ve, %bb.cs ] ; 2 uses
  %.047.lcssa.i.i.i.i = phi i64 [ 0, %.._crit_edge_crit_edge.i.i.i.i ], [ %i.vd, %bb.cs ] ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.047.lcssa.i.i.i.i ; 2 uses
  %i.vh = icmp ugt i64 %i.qa, %.050.lcssa.i.i.i.i
  br i1 %i.vh, label %.lr.ph81.i.i.i.i, label %._crit_edge82.i.i.i.i

.lr.ph81.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i
  %i.vi = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156 ; 3 uses
  %i.vj = sub nuw i64 %i.qa, %.050.lcssa.i.i.i.i  ; 3 uses
  %min.iters.check476.a = icmp ult i64 %i.vj, 5
  br i1 %min.iters.check476.a, label %scalar.ph475.preheader.a, label %vector.ph477.a

vector.ph477.a:                                   ; preds = %.lr.ph81.i.i.i.i
  %i.vk = and i64 %i.vj, 3                        ; 2 uses
  %i.vl = icmp eq i64 %i.vk, 0
  %i.vm = select i1 %i.vl, i64 4, i64 %i.vk
  %n.vec478.a = sub i64 %i.vj, %i.vm              ; 2 uses
  %i.vn = add i64 %.050.lcssa.i.i.i.i, %n.vec478.a
  %i.vo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.047.lcssa.i.i.i.i, i64 0
  br label %vector.body479.a

vector.body479.a:                                 ; preds = %vector.body479.a, %vector.ph477.a
  %index480.a = phi i64 [ 0, %vector.ph477.a ], [ %index.next487.a, %vector.body479.a ] ; 2 uses
  %vec.phi481.a = phi <2 x i64> [ %i.vo, %vector.ph477.a ], [ %i.vt, %vector.body479.a ]
  %vec.phi482.a = phi <2 x i64> [ zeroinitializer, %vector.ph477.a ], [ %i.vu, %vector.body479.a ]
  %i.vp = add nuw i64 %.050.lcssa.i.i.i.i, %index480.a ; 2 uses
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %i.vi, i64 %i.vp
  %i.vr = getelementptr [16 x i8], ptr %i.vi, i64 %i.vp
  %i.vs = getelementptr i8, ptr %i.vr, i64 32
  %wide.vec483.a = load <4 x i64>, ptr %i.vq, align 8, !tbaa !162
  %strided.vec484.a = shufflevector <4 x i64> %wide.vec483.a, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec485.a = load <4 x i64>, ptr %i.vs, align 8, !tbaa !162
  %strided.vec486.a = shufflevector <4 x i64> %wide.vec485.a, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.vt = add <2 x i64> %strided.vec484.a, %vec.phi481.a ; 2 uses
  %i.vu = add <2 x i64> %strided.vec486.a, %vec.phi482.a ; 2 uses
  %index.next487.a = add nuw i64 %index480.a, 4   ; 2 uses
  %i.vv = icmp eq i64 %index.next487.a, %n.vec478.a
  br i1 %i.vv, label %middle.block488.a, label %vector.body479.a, !llvm.loop !252

middle.block488.a:                                ; preds = %vector.body479.a
  %bin.rdx489.a = add <2 x i64> %i.vu, %i.vt
  %i.vw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx489.a)
  br label %scalar.ph475.preheader.a

scalar.ph475.preheader.a:                         ; preds = %.lr.ph81.i.i.i.i, %middle.block488.a
  %indvars.iv94.i.i.i.i.ph = phi i64 [ %.050.lcssa.i.i.i.i, %.lr.ph81.i.i.i.i ], [ %i.vn, %middle.block488.a ]
  %.279.i.i.i.i.ph = phi i64 [ %.047.lcssa.i.i.i.i, %.lr.ph81.i.i.i.i ], [ %i.vw, %middle.block488.a ]
  br label %scalar.ph475.a

scalar.ph475.a:                                   ; preds = %scalar.ph475.preheader.a, %scalar.ph475.a
  %indvars.iv94.i.i.i.i = phi i64 [ %indvars.iv.next95.i.i.i.i, %scalar.ph475.a ], [ %indvars.iv94.i.i.i.i.ph, %scalar.ph475.preheader.a ] ; 2 uses
  %.279.i.i.i.i = phi i64 [ %i.vz, %scalar.ph475.a ], [ %.279.i.i.i.i.ph, %scalar.ph475.preheader.a ]
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vi, i64 %indvars.iv94.i.i.i.i
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !162
  %i.vz = add i64 %i.vy, %.279.i.i.i.i            ; 2 uses
  %indvars.iv.next95.i.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i.i, 1 ; 2 uses
  %exitcond97.not.i.i.i.i = icmp eq i64 %indvars.iv.next95.i.i.i.i, %i.qa
  br i1 %exitcond97.not.i.i.i.i, label %._crit_edge82.i.i.i.i, label %scalar.ph475.a, !llvm.loop !253

._crit_edge82.i.i.i.i:                            ; preds = %scalar.ph475.a, %._crit_edge.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i64 [ %.047.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vz, %scalar.ph475.a ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.2.lcssa.i.i.i.i
  %i.wb = icmp samesign ult i64 %.047.lcssa.i.i.i.i, %.2.lcssa.i.i.i.i
  br i1 %i.wb, label %.lr.ph86.i.i.i.i, label %._crit_edge87.i.i.i.i

bb.ct:                                            ; preds = %.lr.ph86.i.i.i.i
  %i.wc = getelementptr inbounds nuw i8, ptr %.04684.i.i.i.i, i64 1 ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %i.wa
  br i1 %i.wd, label %.lr.ph86.i.i.i.i, label %._crit_edge87.i.i.i.i, !llvm.loop !254

.lr.ph86.i.i.i.i:                                 ; preds = %._crit_edge82.i.i.i.i, %bb.ct
  %.04684.i.i.i.i = phi ptr [ %i.wc, %bb.ct ], [ %i.vg, %._crit_edge82.i.i.i.i ] ; 2 uses
  %i.we = load i8, ptr %.04684.i.i.i.i, align 1, !tbaa !63
  %i.wf = zext i8 %i.we to i64
  %i.wg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !63
  %i.wi = and i8 %i.wh, 1
  %.not.i.i.i.i = icmp eq i8 %i.wi, 0
  br i1 %.not.i.i.i.i, label %.critedge88.i.i, label %bb.ct

._crit_edge87.i.i.i.i:                            ; preds = %._crit_edge82.i.i.i.i, %bb.ct
  %gepdiff.i.i.i.i = sub nsw i64 %.2.lcssa.i.i.i.i, %.047.lcssa.i.i.i.i ; 2 uses
  %i.wj = add i64 %gepdiff.i.i.i.i, %.048.lcssa.i.i.i.i
  call void @strbuf_init(ptr noundef nonnull %3, i64 noundef %i.wj) #21
  %i.wk = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.163.i.i
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef %i.wl, i64 noundef %.048.lcssa.i.i.i.i) #21
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef %i.vg, i64 noundef %gepdiff.i.i.i.i) #21
  %i.wm = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #21
  %i.wn = load i64, ptr %i.a, align 8, !tbaa !128
  call fastcc void @update_pre_post_images(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %i.wm, i64 noundef %i.wn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %find_pos.exit.i

bb.cu:                                            ; preds = %bb.cl
  %i.wo = load i32, ptr %i.x, align 8, !tbaa !43
  %.not140.i.i.i = icmp eq i32 %i.wo, 3
  br i1 %.not140.i.i.i, label %bb.cv, label %.preheader.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.wp = load i64, ptr %i.ao, align 8, !tbaa !158
  %i.wq = add i64 %i.wp, 1
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %i.wq) #21
  %i.wr = load ptr, ptr %i.an, align 8, !tbaa !157 ; 2 uses
  br i1 %i.qj, label %.lr.ph182.i.i.i, label %.preheader.i.i.i

.lr.ph182.i.i.i:                                  ; preds = %bb.cv
  %i.ws = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 %.163.i.i
  %wide.trip.count212.i.i.i = zext nneg i32 %.0115.i.i.i to i64 ; 2 uses
  br label %bb.cw

.preheader.i.i.i:                                 ; preds = %bb.cy, %bb.cv
  %.2124.lcssa.i.i.i = phi i64 [ 0, %bb.cv ], [ %wide.trip.count212.i.i.i, %bb.cy ] ; 2 uses
  %.0118.lcssa.i.i.i = phi ptr [ %i.wr, %bb.cv ], [ %i.xn, %bb.cy ]
  %i.wu = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.wv = icmp ugt i64 %i.wu, %.2124.lcssa.i.i.i
  br i1 %i.wv, label %.lr.ph191.i.i.i.a, label %._crit_edge192.i.i.i

.lr.ph191.i.i.i.a:                                ; preds = %.preheader.i.i.i
  %.pre.i.i.i = load i64, ptr %i.as, align 8, !tbaa !79
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cy, %.lr.ph182.i.i.i
  %indvars.iv209.i.i.i = phi i64 [ 0, %.lr.ph182.i.i.i ], [ %indvars.iv.next210.i.i.i, %bb.cy ] ; 3 uses
  %.0116180.i.i.i = phi ptr [ %i.wt, %.lr.ph182.i.i.i ], [ %i.xo, %bb.cy ] ; 2 uses
  %.0118179.i.i.i = phi ptr [ %i.wr, %.lr.ph182.i.i.i ], [ %i.xn, %bb.cy ] ; 2 uses
  %i.ww = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %i.wx = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %indvars.iv209.i.i.i
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !162 ; 2 uses
  %i.wz = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.xa = getelementptr [16 x i8], ptr %i.wz, i64 %indvars.iv209.i.i.i
  %i.xb = getelementptr [16 x i8], ptr %i.xa, i64 %i.qb
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !162 ; 3 uses
  %i.xd = load i64, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.xe = trunc i64 %i.wy to i32
  call void @ws_fix_copy(ptr noundef nonnull %4, ptr noundef %.0118179.i.i.i, i32 noundef %i.xe, i32 noundef %i.s, ptr noundef null) #21
  call void @strbuf_init(ptr noundef nonnull %5, i64 noundef %i.xc) #21
  %i.xf = trunc i64 %i.xc to i32
  call void @ws_fix_copy(ptr noundef nonnull %5, ptr noundef %.0116180.i.i.i, i32 noundef %i.xf, i32 noundef %i.s, ptr noundef null) #21
  %i.xg = load i64, ptr %i.at, align 8, !tbaa !79 ; 2 uses
  %i.xh = load i64, ptr %i.as, align 8, !tbaa !79
  %i.xi = sub i64 %i.xh, %i.xd
  %i.xj = icmp eq i64 %i.xg, %i.xi
  br i1 %i.xj, label %bb.cx, label %.critedge.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.xk = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.xl = load ptr, ptr %i.av, align 8, !tbaa !78
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xd
  %bcmp142.i.i.i = call i32 @bcmp(ptr %i.xk, ptr %i.xm, i64 %i.xg)
  %.not143.i.i.i = icmp eq i32 %bcmp142.i.i.i, 0
  call void @strbuf_release(ptr noundef nonnull %5) #21
  br i1 %.not143.i.i.i, label %bb.cy, label %.thread.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.cw
  call void @strbuf_release(ptr noundef nonnull %5) #21
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.cx, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.preheader.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.xn = getelementptr inbounds nuw i8, ptr %.0118179.i.i.i, i64 %i.wy ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0116180.i.i.i, i64 %i.xc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %indvars.iv.next210.i.i.i = add nuw nsw i64 %indvars.iv209.i.i.i, 1 ; 2 uses
  %exitcond213.not.i.i.i = icmp eq i64 %indvars.iv.next210.i.i.i, %wide.trip.count212.i.i.i
  br i1 %exitcond213.not.i.i.i, label %.preheader.i.i.i, label %bb.cw, !llvm.loop !255

bb.cz:                                            ; preds = %._crit_edge188.i.i.i, %.lr.ph191.i.i.i.a
  %i.xp = phi i64 [ %.pre.i.i.i, %.lr.ph191.i.i.i.a ], [ %i.xu, %._crit_edge188.i.i.i ]
  %indvars.iv217.i.i.i = phi i64 [ %.2124.lcssa.i.i.i, %.lr.ph191.i.i.i.a ], [ %indvars.iv.next218.i.i.i, %._crit_edge188.i.i.i ] ; 2 uses
  %.2120190.i.i.i = phi ptr [ %.0118.lcssa.i.i.i, %.lr.ph191.i.i.i.a ], [ %i.ye, %._crit_edge188.i.i.i ] ; 2 uses
  %i.xq = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !156
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.xq, i64 %indvars.iv217.i.i.i
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !162 ; 2 uses
  %i.xt = trunc i64 %i.xs to i32
  call void @ws_fix_copy(ptr noundef nonnull %4, ptr noundef %.2120190.i.i.i, i32 noundef %i.xt, i32 noundef %i.s, ptr noundef null) #21
  %i.xu = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %sext.i.i.i = shl i64 %i.xp, 32
  %i.xv = ashr exact i64 %sext.i.i.i, 32          ; 2 uses
  %i.xw = icmp ugt i64 %i.xu, %i.xv
  br i1 %i.xw, label %.lr.ph187.i.i.i, label %._crit_edge188.i.i.i
end_hunk_1
