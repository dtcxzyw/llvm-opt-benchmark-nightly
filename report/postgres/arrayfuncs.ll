Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@array_set_slice:bb.a
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gr
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.az
  %i.gt = phi ptr [ %i.go, %bb.az ], [ %i.gm, %.thread ] ; 2 uses
  %i.gu = phi ptr [ %i.gs, %bb.az ], [ null, %.thread ]
  %i.gv = call fastcc ptr @array_seek(ptr noundef nonnull %i.gt, i32 noundef 0, ptr noundef readonly %i.gu, i32 noundef %i.fp, i32 noundef %9, i8 noundef signext %11)
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 2 uses
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load i32, ptr %i.bt, align 4            ; 3 uses
  %.not307 = icmp eq i32 %i.ha, 0                 ; 3 uses
  br i1 %.not307, label %bb.bb, label %.thread403

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load i32, ptr %i.s, align 4             ; 3 uses
  %i.hc = shl i32 %i.hb, 3
  %i.hd = add i32 %i.hc, 16                       ; 2 uses
  %.val = load i32, ptr %i.p, align 4
  %i.he = lshr i32 %.val, 2
  %i.hf = sext i32 %i.hd to i64                   ; 2 uses
  %i.hg = sub i32 %i.he, %i.hd                    ; 2 uses
  %i.hh = icmp sgt i32 %i.t, 1
  br i1 %i.hh, label %.thread406, label %._crit_edge576

.thread403:                                       ; preds = %bb.ba
  %.val404 = load i32, ptr %i.p, align 4
  %i.hi = lshr i32 %.val404, 2
  %i.hj = sext i32 %i.ha to i64                   ; 4 uses
  %i.hk = sub i32 %i.hi, %i.ha                    ; 2 uses
  %i.hl = icmp sgt i32 %i.t, 1
  %.pre574 = load i32, ptr %i.s, align 4          ; 2 uses
  br i1 %i.hl, label %.thread405, label %._crit_edge576

.thread406:                                       ; preds = %bb.bb
  %i.hm = sext i32 %i.hb to i64
  %i.hn = shl nsw i64 %i.hm, 3
  %i.ho = getelementptr i8, ptr %i.p, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 16
  br label %bb.bc

.thread405:                                       ; preds = %.thread403
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.hj
  %i.hr = sext i32 %.pre574 to i64
  %i.hs = shl nsw i64 %i.hr, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.hs
  br label %bb.bc

bb.bc:                                            ; preds = %.thread406, %.thread405
  %i.hu = phi ptr [ %i.hq, %.thread405 ], [ %i.hp, %.thread406 ]
  %i.hv = phi i32 [ %i.hk, %.thread405 ], [ %i.hg, %.thread406 ]
  %i.hw = phi i64 [ %i.hj, %.thread405 ], [ %i.hf, %.thread406 ]
  %i.hx = phi ptr [ %i.ht, %.thread405 ], [ null, %.thread406 ]
  %i.hy = call fastcc i32 @array_slice_size(ptr noundef nonnull %i.hu, ptr noundef %i.hx, i32 noundef %i.t, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %3, ptr noundef %2, i32 noundef %9, i8 noundef signext %11)
  br label %bb.bf

._crit_edge576:                                   ; preds = %bb.bb, %.thread403
  %.pre-phi = phi i64 [ %i.hj, %.thread403 ], [ 0, %bb.bb ]
  %i.hz = phi i32 [ %.pre574, %.thread403 ], [ %i.hb, %bb.bb ]
  %i.ia = phi i32 [ %i.hk, %.thread403 ], [ %i.hg, %bb.bb ] ; 2 uses
  %i.ib = phi i64 [ %i.hj, %.thread403 ], [ %i.hf, %bb.bb ]
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %i.id = shl nsw i64 %i.ic, 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4            ; 4 uses
  %i.ig = load i32, ptr %i.bm, align 4
  %i.ih = add i32 %i.ig, %i.if                    ; 3 uses
  %i.ii = add i32 %i.ih, -1
  %i.ij = load i32, ptr %3, align 4
  %. = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ij) ; 3 uses
  %i.ik = load i32, ptr %2, align 4
  %i.il = call i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ik) ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.p, i64 %.pre-phi
  %i.in = shl nsw i64 %i.ic, 3                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.p, i64 %i.in
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  %i.ir = select i1 %.not307, ptr %i.iq, ptr %i.im ; 3 uses
  %i.is = select i1 %.not307, ptr null, ptr %i.io ; 2 uses
  %i.it = call i32 @llvm.smin.i32(i32 %., i32 %i.ih)
  %i.iu = sub i32 %i.it, %i.if                    ; 3 uses
  %i.iv = call fastcc ptr @array_seek(ptr noundef %i.ir, i32 noundef 0, ptr noundef readonly %i.is, i32 noundef %i.iu, i32 noundef %9, i8 noundef signext %11)
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.ir to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = icmp sgt i32 %., %i.il
  br i1 %i.ja, label %._crit_edge575, label %bb.bd

._crit_edge575:                                   ; preds = %._crit_edge576
  %.pre578 = shl i64 %i.iy, 32
  %.pre579 = ashr exact i64 %.pre578, 32
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge576
  %i.jb = sub i32 %i.il, %.
  %i.jc = add i32 %i.jb, 1                        ; 2 uses
  %sext = shl i64 %i.iy, 32
  %i.jd = ashr exact i64 %sext, 32                ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.ir, i64 %i.jd ; 2 uses
  %i.jf = call fastcc ptr @array_seek(ptr noundef %i.je, i32 noundef %i.iu, ptr noundef readonly %i.is, i32 noundef %i.jc, i32 noundef %9, i8 noundef signext %11)
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = trunc i64 %i.ji to i32
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge575, %bb.bd
  %.pre-phi580 = phi i64 [ %.pre579, %._crit_edge575 ], [ %i.jd, %bb.bd ]
  %.0274 = phi i32 [ 0, %._crit_edge575 ], [ %i.jj, %bb.bd ] ; 2 uses
  %.0 = phi i32 [ 0, %._crit_edge575 ], [ %i.jc, %bb.bd ]
  %i.jk = add i32 %i.il, 1
  %i.jl = call i32 @llvm.smax.i32(i32 %i.jk, i32 %i.if)
  %i.jm = sub i32 %i.ih, %i.jl
  %i.jn = add i32 %.0274, %i.iz
  %i.jo = sub i32 %i.ia, %i.jn
  %i.jp = sext i32 %i.jo to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.jq = phi i1 [ true, %bb.bc ], [ false, %bb.be ]
  %i.jr = phi i32 [ %i.hv, %bb.bc ], [ %i.ia, %bb.be ]
  %i.js = phi i64 [ %i.hw, %bb.bc ], [ %i.ib, %bb.be ]
  %.1275 = phi i32 [ %i.hy, %bb.bc ], [ %.0274, %bb.be ] ; 2 uses
  %.0272 = phi i64 [ 0, %bb.bc ], [ %.pre-phi580, %bb.be ] ; 3 uses
  %.0271 = phi i64 [ 0, %bb.bc ], [ %i.jp, %bb.be ]
  %.0270 = phi i32 [ 0, %bb.bc ], [ %i.iu, %bb.be ] ; 4 uses
  %.0269 = phi i32 [ 0, %bb.bc ], [ %i.jm, %bb.be ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.bc ], [ %.0, %bb.be ]
  %i.jt = add i32 %.0273, %i.gz
  %i.ju = add i32 %i.jt, %i.jr
  %i.jv = sub i32 %i.ju, %.1275                   ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = call ptr @palloc0(i64 noundef %i.jw) #16 ; 8 uses
  %i.jy = shl i32 %i.jv, 2
  store i32 %i.jy, ptr %i.jx, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  store i32 %i.gf, ptr %i.ka, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 %i.kc, ptr %i.kd, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ke, ptr nonnull align 16 %i.e, i64 %i.bo, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kf, ptr nonnull align 16 %i.f, i64 %i.bo, i1 false)
  br i1 %i.jq, label %bb.bg, label %bb.cu

bb.bg:                                            ; preds = %bb.bf
  %.not.i = icmp eq i32 %i.gf, 0                  ; 6 uses
  %i.kg = sext i32 %i.gf to i64
  %i.kh = shl nuw nsw i32 %i.t, 3
  %narrow = add nuw nsw i32 %i.kh, 16
  %i.ki = zext nneg i32 %narrow to i64
  %i.kj = select i1 %.not.i, i64 %i.ki, i64 %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not136.i = icmp eq i32 %i.kl, 0               ; 2 uses
  br i1 %.not136.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.km = sext i32 %i.kl to i64
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.kn = load i32, ptr %i.s, align 4
  %i.ko = sext i32 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 3
  %i.kq = add nsw i64 %i.kp, 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.kr = phi i64 [ %i.km, %bb.bh ], [ %i.kq, %bb.bi ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.kr ; 4 uses
  %i.kt = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not137.i = icmp eq i32 %i.kt, 0               ; 2 uses
  br i1 %.not137.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ku = sext i32 %i.kt to i64
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.kv = load i32, ptr %i.fq, align 4
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 3
  %i.ky = add nsw i64 %i.kx, 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kz = phi i64 [ %i.ku, %bb.bk ], [ %i.ky, %bb.bl ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.kz
  %i.lb = shl nuw nsw i32 %i.t, 3
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.lc ; 2 uses
  %i.le = select i1 %.not.i, ptr null, ptr %i.ld  ; 6 uses
  br i1 %.not136.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lf = load i32, ptr %i.s, align 4
  %i.lg = sext i32 %i.lf to i64
  %i.lh = shl nsw i64 %i.lg, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.lh
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.lj = phi ptr [ %i.li, %bb.bn ], [ null, %bb.bm ] ; 10 uses
  br i1 %.not137.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lk = load i32, ptr %i.fq, align 4
  %i.ll = sext i32 %i.lk to i64
  %i.lm = shl nsw i64 %i.ll, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.lm
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.lo = phi ptr [ %i.ln, %bb.bp ], [ null, %bb.bo ] ; 3 uses
  %i.lp = load i32, ptr %i.s, align 4
  %i.lq = call i32 @ArrayGetNItems(i32 noundef %i.lp, ptr noundef nonnull %i.bm) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.lr = call i32 @ArrayGetOffset(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %3) #16 ; 7 uses
  %i.ls = call fastcc ptr @array_seek(ptr noundef %i.ks, i32 noundef 0, ptr noundef readonly %i.lj, i32 noundef %i.lr, i32 noundef %9, i8 noundef signext %11)
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.ks to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %sext.i.i = shl i64 %i.lv, 32
  %i.lw = ashr exact i64 %sext.i.i, 32            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr align 1 %i.ks, i64 %i.lw, i1 false)
  %i.lx = getelementptr inbounds i8, ptr %i.kk, i64 %i.lw
  %i.ly = getelementptr inbounds i8, ptr %i.ks, i64 %i.lw
  %i.lz = icmp slt i32 %i.lr, 1
  %or.cond.i = or i1 %.not.i, %i.lz
  br i1 %or.cond.i, label %array_bitmap_copy.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ma = load i8, ptr %i.ld, align 1
  %i.mb = zext i8 %i.ma to i32                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i, label %.lr.ph94.i.outer.i.preheader, label %.lr.ph.preheader.i.i

.lr.ph94.i.outer.i.preheader:                     ; preds = %bb.br
  %i.mc = icmp samesign ugt i32 %i.lr, 1
  br i1 %i.mc, label %.lr.ph94.i.2.i.a, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i

.lr.ph.preheader.i.i:                             ; preds = %bb.br
  %i.md = load i8, ptr %i.lj, align 1
  %i.me = zext i8 %i.md to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread75.i.i, %.lr.ph.preheader.i.i
  %.in.i.i = phi i32 [ %i.mf, %.thread75.i.i ], [ %i.lr, %.lr.ph.preheader.i.i ] ; 2 uses
  %.088.i.i = phi i32 [ %.1.i.i, %.thread75.i.i ], [ %i.me, %.lr.ph.preheader.i.i ] ; 2 uses
  %.04287.i.i = phi i32 [ %.143.i.i, %.thread75.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %.04486.i.i = phi i32 [ %.2.i.i, %.thread75.i.i ], [ %i.mb, %.lr.ph.preheader.i.i ] ; 2 uses
  %.04685.i.i = phi i32 [ %.147.i.i, %.thread75.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.05284.i.i = phi ptr [ %.153.i.i, %.thread75.i.i ], [ %i.le, %.lr.ph.preheader.i.i ] ; 3 uses
  %.05683.i.i = phi ptr [ %.157.i.i, %.thread75.i.i ], [ %i.lj, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.mf = add nsw i32 %.in.i.i, -1                ; 3 uses
  %i.mg = and i32 %.04287.i.i, %.088.i.i
  %.not65.i.i = icmp eq i32 %i.mg, 0
  %i.mh = or i32 %.04685.i.i, %.04486.i.i
  %i.mi = xor i32 %.04685.i.i, -1
  %i.mj = and i32 %.04486.i.i, %i.mi
  %.145.i.i = select i1 %.not65.i.i, i32 %i.mj, i32 %i.mh ; 2 uses
  %i.mk = shl i32 %.04685.i.i, 1                  ; 2 uses
  %i.ml = icmp eq i32 %i.mk, 256
  br i1 %i.ml, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %.lr.ph.i.i
  %i.mm = trunc i32 %.145.i.i to i8
  store i8 %i.mm, ptr %.05284.i.i, align 1
  %.not80.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not80.i.i, label %array_bitmap_copy.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mn = getelementptr inbounds nuw i8, ptr %.05284.i.i, i64 1 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1
  %i.mp = zext i8 %i.mo to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i.i
  %.153.i.i = phi ptr [ %i.mn, %bb.bt ], [ %.05284.i.i, %.lr.ph.i.i ] ; 2 uses
  %.147.i.i = phi i32 [ 1, %bb.bt ], [ %i.mk, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.mp, %bb.bt ], [ %.145.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.mq = shl i32 %.04287.i.i, 1                  ; 2 uses
  %i.mr = icmp eq i32 %i.mq, 256
  br i1 %i.mr, label %bb.bv, label %.thread75.i.i

bb.bv:                                            ; preds = %bb.bu
  %.not81.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not81.i.i, label %._crit_edge.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ms = getelementptr inbounds nuw i8, ptr %.05683.i.i, i64 1 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = zext i8 %i.mt to i32
  br label %.thread75.i.i

.thread75.i.i:                                    ; preds = %bb.bw, %bb.bu
  %.157.i.i = phi ptr [ %i.ms, %bb.bw ], [ %.05683.i.i, %bb.bu ]
  %.143.i.i = phi i32 [ 1, %bb.bw ], [ %i.mq, %bb.bu ]
  %.1.i.i = phi i32 [ %i.mu, %bb.bw ], [ %.088.i.i, %bb.bu ]
  %i.mv = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.mv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.thread75.i.i, %bb.bv
  %.not64.i.i = icmp eq i32 %.147.i.i, 1
  br i1 %.not64.i.i, label %array_bitmap_copy.exit.i, label %._crit_edge95.thread.sink.split.i.i

bb.bx:                                            ; preds = %.lr.ph94.i.6.i
  %i.mw = add nsw i32 %.in99.i.ph.i498, -8        ; 3 uses
  store i8 -1, ptr %.25491.i.ph.i500, align 1
  %.not82.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not82.i.i, label %array_bitmap_copy.exit.i, label %.thread.i

.lr.ph94.i.2.i.a:                                 ; preds = %.lr.ph94.i.outer.i.preheader, %.thread.i
  %.25491.i.ph.i500 = phi ptr [ %i.mz, %.thread.i ], [ %i.le, %.lr.ph94.i.outer.i.preheader ] ; 8 uses
  %.393.i.ph.i499738 = phi i32 [ %i.nb, %.thread.i ], [ %i.mb, %.lr.ph94.i.outer.i.preheader ] ; 6 uses
  %.in99.i.ph.i498 = phi i32 [ %i.mw, %.thread.i ], [ %i.lr, %.lr.ph94.i.outer.i.preheader ] ; 7 uses
  %12 = icmp samesign ugt i32 %.in99.i.ph.i498, 2
  br i1 %12, label %.lr.ph94.i.2.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit425.i

.lr.ph94.i.2.i:                                   ; preds = %.lr.ph94.i.2.i.a
  %.not393.i = icmp eq i32 %.in99.i.ph.i498, 3
  br i1 %.not393.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit422.i, label %.lr.ph94.i.3.i

.lr.ph94.i.3.i:                                   ; preds = %.lr.ph94.i.2.i
  %i.mx = icmp samesign ugt i32 %.in99.i.ph.i498, 4
  br i1 %i.mx, label %.lr.ph94.i.4.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit419.i

.lr.ph94.i.4.i:                                   ; preds = %.lr.ph94.i.3.i
  %.not394.i = icmp eq i32 %.in99.i.ph.i498, 5
  br i1 %.not394.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit416.i, label %.lr.ph94.i.5.i

.lr.ph94.i.5.i:                                   ; preds = %.lr.ph94.i.4.i
  %i.my = icmp samesign ugt i32 %.in99.i.ph.i498, 6
  br i1 %i.my, label %.lr.ph94.i.6.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit413.i

.lr.ph94.i.6.i:                                   ; preds = %.lr.ph94.i.5.i
  %.not395.i = icmp eq i32 %.in99.i.ph.i498, 7
  br i1 %.not395.i, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit.i, label %bb.bx

.thread.i:                                        ; preds = %bb.bx
  %i.mz = getelementptr inbounds nuw i8, ptr %.25491.i.ph.i500, i64 1 ; 3 uses
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = zext i8 %i.na to i32                    ; 2 uses
  %.not505 = icmp eq i32 %i.mw, 1
  br i1 %.not505, label %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i, label %.lr.ph94.i.2.i.a, !llvm.loop !1

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit.i: ; preds = %.lr.ph94.i.6.i
  %i.nc = or i32 %.393.i.ph.i499738, 127
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit413.i: ; preds = %.lr.ph94.i.5.i
  %i.nd = or i32 %.393.i.ph.i499738, 63
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit416.i: ; preds = %.lr.ph94.i.4.i
  %i.ne = or i32 %.393.i.ph.i499738, 31
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit419.i: ; preds = %.lr.ph94.i.3.i
  %i.nf = or i32 %.393.i.ph.i499738, 15
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit422.i: ; preds = %.lr.ph94.i.2.i
  %i.ng = or i32 %.393.i.ph.i499738, 7
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit425.i: ; preds = %.lr.ph94.i.2.i.a
  %i.nh = or i32 %.393.i.ph.i499738, 3
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i: ; preds = %.thread.i, %.lr.ph94.i.outer.i.preheader
  %.393.i.ph.i.lcssa = phi i32 [ %i.mb, %.lr.ph94.i.outer.i.preheader ], [ %i.nb, %.thread.i ]
  %.25491.i.ph.i.lcssa = phi ptr [ %i.le, %.lr.ph94.i.outer.i.preheader ], [ %i.mz, %.thread.i ]
  %i.ni = or i32 %.393.i.ph.i.lcssa, 1
  br label %._crit_edge95.thread.sink.split.i.i

._crit_edge95.thread.sink.split.i.i:              ; preds = %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit425.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit422.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit419.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit416.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit413.i, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit.i, %._crit_edge.i.i
  %.273110.sink.i.i = phi i32 [ %.2.i.i, %._crit_edge.i.i ], [ %i.nh, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit425.i ], [ %i.ng, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit422.i ], [ %i.nf, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit419.i ], [ %i.ne, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit416.i ], [ %i.nd, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit413.i ], [ %i.nc, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit.i ], [ %i.ni, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i ]
  %.15369112.sink.i.i = phi ptr [ %.153.i.i, %._crit_edge.i.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit425.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit422.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit419.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit416.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit413.i ], [ %.25491.i.ph.i500, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit.i ], [ %.25491.i.ph.i.lcssa, %._crit_edge95.thread.sink.split.i.loopexit.split.loop.exit428.i ]
  %i.nj = trunc i32 %.273110.sink.i.i to i8
  store i8 %i.nj, ptr %.15369112.sink.i.i, align 1
  br label %array_bitmap_copy.exit.i

array_bitmap_copy.exit.i:                         ; preds = %bb.bs, %bb.bx, %._crit_edge95.thread.sink.split.i.i, %._crit_edge.i.i, %bb.bq
  call void @mda_get_prod(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #16
  call void @mda_get_range(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %2) #16
  call void @mda_get_offset_values(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 range(i64 0, 25) %i.bo, i1 false)
  %i.nk = add nsw i32 %i.t, -1
  %.not.i145.i = icmp eq ptr %i.lj, null          ; 2 uses
  %.not.i184.i = icmp eq ptr %i.lo, null
  br label %bb.by

bb.by:                                            ; preds = %array_bitmap_copy.exit221.i, %array_bitmap_copy.exit.i
  %.0126.i = phi ptr [ %i.lx, %array_bitmap_copy.exit.i ], [ %i.qo, %array_bitmap_copy.exit221.i ] ; 3 uses
  %.0124.i = phi ptr [ %i.ly, %array_bitmap_copy.exit.i ], [ %i.qs, %array_bitmap_copy.exit221.i ] ; 5 uses
  %.0123.i = phi ptr [ %i.la, %array_bitmap_copy.exit.i ], [ %i.qp, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0121.i = phi i32 [ %i.lr, %array_bitmap_copy.exit.i ], [ %i.qq, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0120.i = phi i32 [ %i.lr, %array_bitmap_copy.exit.i ], [ %i.qt, %array_bitmap_copy.exit221.i ] ; 5 uses
  %.0119.i = phi i32 [ 0, %array_bitmap_copy.exit.i ], [ %i.qr, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0.i = phi i32 [ %i.nk, %array_bitmap_copy.exit.i ], [ %i.qu, %array_bitmap_copy.exit221.i ]
  %i.nl = sext i32 %.0.i to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nl ; 3 uses
  %i.nn = load i32, ptr %i.nm, align 4            ; 2 uses
  %.not142.i = icmp eq i32 %i.nn, 0
  br i1 %.not142.i, label %bb.cj, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.no = call fastcc ptr @array_seek(ptr noundef %.0124.i, i32 noundef %.0120.i, ptr noundef readonly %i.lj, i32 noundef %i.nn, i32 noundef %9, i8 noundef signext %11)
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %.0124.i to i64
  %i.nr = sub i64 %i.np, %i.nq
  %sext.i144.i = shl i64 %i.nr, 32
  %i.ns = ashr exact i64 %sext.i144.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0126.i, ptr align 1 %.0124.i, i64 %i.ns, i1 false)
  %i.nt = getelementptr inbounds i8, ptr %.0126.i, i64 %i.ns
  %i.nu = getelementptr inbounds i8, ptr %.0124.i, i64 %i.ns
  br i1 %.not.i, label %array_bitmap_copy.exit182.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nv = load i32, ptr %i.nm, align 4            ; 3 uses
  %i.nw = icmp slt i32 %i.nv, 1
  br i1 %i.nw, label %array_bitmap_copy.exit182.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nx = sdiv i32 %.0121.i, 8
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds i8, ptr %i.le, i64 %i.ny ; 3 uses
  %i.oa = and i32 %.0121.i, 7
  %i.ob = shl nuw nsw i32 1, %i.oa                ; 2 uses
  %i.oc = load i8, ptr %i.nz, align 1
  %i.od = zext i8 %i.oc to i32                    ; 2 uses
  br i1 %.not.i145.i, label %.lr.ph94.i171.outer.i, label %.lr.ph.preheader.i146.i

.lr.ph.preheader.i146.i:                          ; preds = %bb.cb
  %i.oe = sdiv i32 %.0120.i, 8
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds i8, ptr %i.lj, i64 %i.of ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = zext i8 %i.oh to i32
  %i.oj = and i32 %.0120.i, 7
  %i.ok = shl nuw nsw i32 1, %i.oj
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.thread75.i160.i, %.lr.ph.preheader.i146.i
  %.in.i148.i = phi i32 [ %i.ol, %.thread75.i160.i ], [ %i.nv, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.088.i149.i = phi i32 [ %.1.i163.i, %.thread75.i160.i ], [ %i.oi, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04287.i150.i = phi i32 [ %.143.i162.i, %.thread75.i160.i ], [ %i.ok, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04486.i151.i = phi i32 [ %.2.i159.i, %.thread75.i160.i ], [ %i.od, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04685.i152.i = phi i32 [ %.147.i158.i, %.thread75.i160.i ], [ %i.ob, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05284.i153.i = phi ptr [ %.153.i157.i, %.thread75.i160.i ], [ %i.nz, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05683.i154.i = phi ptr [ %.157.i161.i, %.thread75.i160.i ], [ %i.og, %.lr.ph.preheader.i146.i ] ; 2 uses
  %i.ol = add nsw i32 %.in.i148.i, -1             ; 3 uses
  %i.om = and i32 %.04287.i150.i, %.088.i149.i
  %.not65.i155.i = icmp eq i32 %i.om, 0
  %i.on = or i32 %.04685.i152.i, %.04486.i151.i
  %i.oo = xor i32 %.04685.i152.i, -1
  %i.op = and i32 %.04486.i151.i, %i.oo
  %.145.i156.i = select i1 %.not65.i155.i, i32 %i.op, i32 %i.on ; 2 uses
  %i.oq = shl i32 %.04685.i152.i, 1               ; 2 uses
  %i.or = icmp eq i32 %i.oq, 256
  br i1 %i.or, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %.lr.ph.i147.i
  %i.os = trunc i32 %.145.i156.i to i8
  store i8 %i.os, ptr %.05284.i153.i, align 1
  %.not80.i170.i = icmp eq i32 %i.ol, 0
  br i1 %.not80.i170.i, label %array_bitmap_copy.exit182.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = getelementptr inbounds nuw i8, ptr %.05284.i153.i, i64 1 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1
  %i.ov = zext i8 %i.ou to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i147.i
  %.153.i157.i = phi ptr [ %i.ot, %bb.cd ], [ %.05284.i153.i, %.lr.ph.i147.i ] ; 2 uses
  %.147.i158.i = phi i32 [ 1, %bb.cd ], [ %i.oq, %.lr.ph.i147.i ] ; 2 uses
  %.2.i159.i = phi i32 [ %i.ov, %bb.cd ], [ %.145.i156.i, %.lr.ph.i147.i ] ; 2 uses
  %i.ow = shl i32 %.04287.i150.i, 1               ; 2 uses
  %i.ox = icmp eq i32 %i.ow, 256
  br i1 %i.ox, label %bb.cf, label %.thread75.i160.i

bb.cf:                                            ; preds = %bb.ce
  %.not81.i169.i = icmp eq i32 %i.ol, 0
  br i1 %.not81.i169.i, label %._crit_edge.i164.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oy = getelementptr inbounds nuw i8, ptr %.05683.i154.i, i64 1 ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i32
  br label %.thread75.i160.i

.thread75.i160.i:                                 ; preds = %bb.cg, %bb.ce
  %.157.i161.i = phi ptr [ %i.oy, %bb.cg ], [ %.05683.i154.i, %bb.ce ]
  %.143.i162.i = phi i32 [ 1, %bb.cg ], [ %i.ow, %bb.ce ]
  %.1.i163.i = phi i32 [ %i.pa, %bb.cg ], [ %.088.i149.i, %bb.ce ]
  %i.pb = icmp samesign ugt i32 %.in.i148.i, 1
  br i1 %i.pb, label %.lr.ph.i147.i, label %._crit_edge.i164.i, !llvm.loop !0

._crit_edge.i164.i:                               ; preds = %.thread75.i160.i, %bb.cf
  %.not64.i165.i = icmp eq i32 %.147.i158.i, 1
  br i1 %.not64.i165.i, label %array_bitmap_copy.exit182.i, label %._crit_edge95.thread.sink.split.i166.i

.lr.ph94.i171.i:                                  ; preds = %.lr.ph94.i171.outer.i, %bb.ci
  %.in99.i172.i = phi i32 [ %i.pc, %bb.ci ], [ %.in99.i172.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %.393.i173.i = phi i32 [ %i.pd, %bb.ci ], [ %.393.i173.ph.i, %.lr.ph94.i171.outer.i ]
  %.24892.i174.i = phi i32 [ %i.pe, %bb.ci ], [ %.24892.i174.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %i.pc = add nsw i32 %.in99.i172.i, -1           ; 3 uses
  %i.pd = or i32 %.24892.i174.i, %.393.i173.i     ; 3 uses
  %i.pe = shl i32 %.24892.i174.i, 1               ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 256
  br i1 %i.pf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph94.i171.i
  %i.pg = trunc i32 %i.pd to i8
  store i8 %i.pg, ptr %.25491.i175.ph.i, align 1
  %.not82.i181.i = icmp eq i32 %i.pc, 0
  br i1 %.not82.i181.i, label %array_bitmap_copy.exit182.i, label %.thread271.i

bb.ci:                                            ; preds = %.lr.ph94.i171.i
  %i.ph = icmp samesign ugt i32 %.in99.i172.i, 1
  br i1 %i.ph, label %.lr.ph94.i171.i, label %._crit_edge95.thread.sink.split.i166.i, !llvm.loop !1

.thread271.i:                                     ; preds = %bb.ch
  %i.pi = getelementptr inbounds nuw i8, ptr %.25491.i175.ph.i, i64 1 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i32
  br label %.lr.ph94.i171.outer.i, !llvm.loop !1

.lr.ph94.i171.outer.i:                            ; preds = %bb.cb, %.thread271.i
  %.in99.i172.ph.i = phi i32 [ %i.pc, %.thread271.i ], [ %i.nv, %bb.cb ]
  %.393.i173.ph.i = phi i32 [ %i.pk, %.thread271.i ], [ %i.od, %bb.cb ]
  %.24892.i174.ph.i = phi i32 [ 1, %.thread271.i ], [ %i.ob, %bb.cb ]
  %.25491.i175.ph.i = phi ptr [ %i.pi, %.thread271.i ], [ %i.nz, %bb.cb ] ; 3 uses
  br label %.lr.ph94.i171.i

._crit_edge95.thread.sink.split.i166.i:           ; preds = %bb.ci, %._crit_edge.i164.i
  %.273110.sink.i167.i = phi i32 [ %.2.i159.i, %._crit_edge.i164.i ], [ %i.pd, %bb.ci ]
  %.15369112.sink.i168.i = phi ptr [ %.153.i157.i, %._crit_edge.i164.i ], [ %.25491.i175.ph.i, %bb.ci ]
  %i.pl = trunc i32 %.273110.sink.i167.i to i8
  store i8 %i.pl, ptr %.15369112.sink.i168.i, align 1
  br label %array_bitmap_copy.exit182.i

array_bitmap_copy.exit182.i:                      ; preds = %bb.cc, %bb.ch, %._crit_edge95.thread.sink.split.i166.i, %._crit_edge.i164.i, %bb.ca, %bb.bz
  %i.pm = load i32, ptr %i.nm, align 4            ; 2 uses
  %i.pn = add i32 %i.pm, %.0121.i
  %i.po = add i32 %i.pm, %.0120.i
  br label %bb.cj

bb.cj:                                            ; preds = %array_bitmap_copy.exit182.i, %bb.by
  %.1127.i = phi ptr [ %i.nt, %array_bitmap_copy.exit182.i ], [ %.0126.i, %bb.by ] ; 2 uses
  %.1125.i = phi ptr [ %i.nu, %array_bitmap_copy.exit182.i ], [ %.0124.i, %bb.by ]
  %.1122.i = phi i32 [ %i.pn, %array_bitmap_copy.exit182.i ], [ %.0121.i, %bb.by ] ; 3 uses
  %.1.i = phi i32 [ %i.po, %array_bitmap_copy.exit182.i ], [ %.0120.i, %bb.by ] ; 2 uses
  %i.pp = call fastcc ptr @array_seek(ptr noundef %.0123.i, i32 noundef %.0119.i, ptr noundef readonly %i.lo, i32 noundef 1, i32 noundef %9, i8 noundef signext %11)
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %.0123.i to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %sext.i183.i = shl i64 %i.ps, 32
  %i.pt = ashr exact i64 %sext.i183.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1127.i, ptr align 1 %.0123.i, i64 %i.pt, i1 false)
  br i1 %.not.i, label %array_bitmap_copy.exit221.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pu = sdiv i32 %.1122.i, 8
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds i8, ptr %i.le, i64 %i.pv ; 2 uses
  %i.px = and i32 %.1122.i, 7
  %i.py = shl nuw nsw i32 1, %i.px                ; 3 uses
  %i.pz = load i8, ptr %i.pw, align 1
  %i.qa = zext i8 %i.pz to i32                    ; 3 uses
  br i1 %.not.i184.i, label %.lr.ph94.i210.i, label %.lr.ph.preheader.i185.i

.lr.ph.preheader.i185.i:                          ; preds = %bb.ck
  %i.qb = sdiv i32 %.0119.i, 8
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds i8, ptr %i.lo, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1
end_hunk_0
