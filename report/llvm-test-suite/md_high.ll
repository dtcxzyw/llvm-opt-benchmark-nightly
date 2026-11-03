Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/md_high?download=true
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@encode_one_macroblock_high:bb.a
  switch i32 %i.q, label %bb.at [
    i32 3, label %bb.as
    i32 0, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  call void @FindSkipModeMotionVector() #5
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  store double 1.000000e+30, ptr %i.b, align 8, !tbaa !39
  %i.id = load ptr, ptr @input, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2120
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !47
  %.not284 = icmp eq i32 %i.if, 0
  %.pre362 = load ptr, ptr @img, align 8, !tbaa !13 ; 2 uses
  br i1 %.not284, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = getelementptr inbounds nuw i8, ptr %.pre362, i64 14410
  store i16 0, ptr %i.ig, align 2, !tbaa !38
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %.pre362, i64 15536
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !61
  %.not285 = icmp eq i32 %i.ii, 0
  br i1 %.not285, label %.lr.ph, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @IntraChromaPrediction(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #5
  %i.ij = load ptr, ptr @input, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4176
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !62
  %.not286 = icmp eq i32 %i.il, 0
  br i1 %.not286, label %.lr.ph, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @IntraChromaRDDecision(ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0) #5
  %i.im = load i32, ptr %i.bb, align 8, !tbaa !45
  %sext287 = shl i32 %i.im, 16
  %i.in = ashr exact i32 %sext287, 16             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax, %bb.aw, %bb.av
  %.0247 = phi i32 [ %i.in, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %.0246 = phi i32 [ %i.in, %bb.ax ], [ 3, %bb.aw ], [ 0, %bb.av ]
  store i32 %.0247, ptr %i.bb, align 8, !tbaa !45
  %i.io = getelementptr inbounds nuw i8, ptr %i.ai, i64 364
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre373.a = load ptr, ptr @img, align 8, !tbaa !13 ; 2 uses
  %.pre366.pre.pre.pre = load ptr, ptr @input, align 8, !tbaa !13
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %.loopexit
  %.pre366.pre.pre = phi ptr [ %.pre366.pre.pre.pre, %.lr.ph ], [ %.pre366.pre.pre382, %.loopexit ] ; 8 uses
  %.pre365 = phi ptr [ %.pre373.a, %.lr.ph ], [ %.pre365374, %.loopexit ] ; 7 uses
  %i.iq = phi ptr [ %.pre373.a, %.lr.ph ], [ %i.ri, %.loopexit ] ; 5 uses
  %storemerge332 = phi i32 [ %.0247, %.lr.ph ], [ %i.rk, %.loopexit ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 15536
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !61
  %.not298 = icmp eq i32 %i.is, 0
  br i1 %.not298, label %.thread313.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.be, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.it = getelementptr inbounds nuw i8, ptr %.pre366.pre.pre, i64 4048
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !63
  %.not299 = icmp eq i32 %i.iu, 0
  br i1 %.not299, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre366.pre.pre, i64 4072
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !64
  %i.ix = icmp eq i32 %i.iw, 1
  br i1 %i.ix, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.not300 = icmp eq i32 %storemerge332, 0
  br i1 %.not300, label %.thread313.preheader, label %.loopexit

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.iy = icmp ne i32 %storemerge332, 2
  %i.iz = load i32, ptr %i.l, align 4
  %i.ja = icmp ne i32 %i.iz, 0                    ; 2 uses
  %or.cond5 = select i1 %i.iy, i1 true, i1 %i.ja
  br i1 %or.cond5, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.jb = icmp ne i32 %storemerge332, 1
  %i.jc = load i32, ptr %i.m, align 4
  %i.jd = icmp ne i32 %i.jc, 0                    ; 2 uses
  %or.cond7 = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %or.cond7, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.je = icmp eq i32 %storemerge332, 3
  br i1 %i.je, label %bb.bg, label %.thread313.preheader

bb.bg:                                            ; preds = %bb.bf
  %or.cond9 = select i1 %i.jd, i1 %i.ja, i1 false
  %i.jf = load i32, ptr %i.n, align 4
  %i.jg = icmp ne i32 %i.jf, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.jg, i1 false
  br i1 %or.cond11, label %.thread313.preheader, label %.loopexit

.thread313.preheader:                             ; preds = %bb.bc, %bb.bg, %bb.bf, %bb.ay
  br label %.thread313

.thread313:                                       ; preds = %.thread313.preheader, %.critedge309.thread
  %.pre366.pre.pre385 = phi ptr [ %.pre366.pre.pre383, %.critedge309.thread ], [ %.pre366.pre.pre, %.thread313.preheader ] ; 5 uses
  %.pre366 = phi ptr [ %.pre366379, %.critedge309.thread ], [ %.pre366.pre.pre, %.thread313.preheader ] ; 8 uses
  %.pre365377 = phi ptr [ %.pre365375, %.critedge309.thread ], [ %.pre365, %.thread313.preheader ] ; 5 uses
  %i.jh = phi ptr [ %i.re, %.critedge309.thread ], [ %.pre365, %.thread313.preheader ] ; 5 uses
  %i.ji = phi ptr [ %i.rf, %.critedge309.thread ], [ %.pre365, %.thread313.preheader ] ; 7 uses
  %.0255330 = phi i32 [ %.2257, %.critedge309.thread ], [ 0, %.thread313.preheader ] ; 4 uses
  %.0260329 = phi i32 [ %i.rg, %.critedge309.thread ], [ 0, %.thread313.preheader ] ; 3 uses
  %i.jj = sext i32 %.0260329 to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr @mb_mode_table, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !7  ; 6 uses
  %i.jm = icmp eq i32 %i.jl, 1                    ; 3 uses
  %or.cond14 = and i1 %i.s, %i.jm
  br i1 %or.cond14, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.thread313
  %i.jn = trunc i32 %.0255330 to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre366, i64 2120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), i8 %i.jn, i64 4, i1 false)
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !47
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = icmp eq i32 %.0255330, 2
  %or.cond16 = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond16, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 14410
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !38
  %i.ju = icmp slt i16 %i.jt, 2
  %spec.select306 = select i1 %i.ju, i32 1, i32 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1256 = phi i32 [ %.0255330, %bb.bh ], [ %spec.select306, %bb.bi ] ; 2 uses
  %i.jv = icmp slt i32 %.1256, 2
  %i.jw = sext i1 %i.jv to i32
  %spec.select307 = add nsw i32 %.0260329, %i.jw
  %i.jx = add nsw i32 %.1256, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread313
  %.2262 = phi i32 [ %spec.select307, %bb.bj ], [ %.0260329, %.thread313 ] ; 2 uses
  %.2257 = phi i32 [ %i.jx, %bb.bj ], [ %.0255330, %.thread313 ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.pre366, i64 2960
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !65
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = icmp sgt i32 %i.jl, 9
  %i.kc = and i1 %i.kb, %i.ka
  %or.cond22 = and i1 %i.be, %i.kc
  %i.kd = load i16, ptr @best_mode, align 2
  %i.ke = icmp slt i16 %i.kd, 4
  %or.cond25 = select i1 %or.cond22, i1 %i.ke, i1 false
  br i1 %or.cond25, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kf = load i32, ptr %i.io, align 4, !tbaa !66
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %.critedge309.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.s, label %bb.bn, label %.critedge309

bb.bn:                                            ; preds = %bb.bm
  %i.kh = load ptr, ptr @active_pps, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 196
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !68
  %i.kk = icmp eq i32 %i.kj, 1
  %i.kl = icmp slt i32 %i.jl, 8
  %or.cond27 = and i1 %i.kl, %i.kk
  br i1 %or.cond27, label %.preheader318, label %.critedge309

.preheader318:                                    ; preds = %bb.bn
  %i.km = sext i32 %i.jl to i64                   ; 4 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr @best8x8pdir, i64 %i.km ; 4 uses
  %i.ko = load ptr, ptr @active_sps, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32 ; 4 uses
  %i.kq = load ptr, ptr @wbp_weight, align 8      ; 5 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr @best8x8fwref, i64 %i.km ; 4 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr @best8x8bwref, i64 %i.km ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.ku = load i8, ptr %i.kn, align 4, !tbaa !48
  %i.kv = icmp eq i8 %i.ku, 2
  br i1 %i.kv, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.preheader318
  %i.kw = load i32, ptr %i.kp, align 4, !tbaa !72
  %.fr397 = freeze i32 %i.kw
  %.not412 = icmp eq i32 %.fr397, 0
  %i.kx = load ptr, ptr %i.kq, align 8, !tbaa !55
  %i.ky = load i8, ptr %i.kr, align 4, !tbaa !48
  %i.kz = sext i8 %i.ky to i64                    ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !74
  %i.lc = load i8, ptr %i.ks, align 4, !tbaa !48
  %i.ld = sext i8 %i.lc to i64                    ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !75 ; 3 uses
  %i.lg = load ptr, ptr %i.kt, align 8, !tbaa !55
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.kz
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !74
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.ld
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !75 ; 3 uses
  %i.ll = load i32, ptr %i.lf, align 4, !tbaa !7
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !7
  %i.ln = add i32 %i.ll, -128
  %i.lo = add i32 %i.ln, %i.lm
  %or.cond29 = icmp ult i32 %i.lo, -256           ; 2 uses
  br i1 %.not412, label %.preheader.split.us, label %bb.bo

.preheader.split.us:                              ; preds = %.preheader
  br i1 %or.cond29, label %.loopexit354, label %.critedge

bb.bo:                                            ; preds = %.preheader
  br i1 %or.cond29, label %.loopexit354, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !7
  %i.lt = add i32 %i.lq, -128
  %i.lu = add i32 %i.lt, %i.ls
  %or.cond29.1407 = icmp ult i32 %i.lu, -256
  br i1 %or.cond29.1407, label %.loopexit354, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !7
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !7
  %i.lz = add i32 %i.lw, -128
  %i.ma = add i32 %i.lz, %i.ly
  %or.cond29.2410 = icmp ult i32 %i.ma, -256
  br i1 %or.cond29.2410, label %.loopexit354, label %.critedge

.critedge:                                        ; preds = %.preheader.split.us, %bb.bq, %.preheader318
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !48
  %i.md = icmp eq i8 %i.mc, 2
  br i1 %i.md, label %.preheader.1, label %.critedge.1

.preheader.1:                                     ; preds = %.critedge
  %i.me = load i32, ptr %i.kp, align 4, !tbaa !72
  %.fr = freeze i32 %i.me
  %.not413 = icmp eq i32 %.fr, 0
  %i.mf = load ptr, ptr %i.kq, align 8, !tbaa !55
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !48
  %i.mi = sext i8 %i.mh to i64                    ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.mi
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !74
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !48
  %i.mn = sext i8 %i.mm to i64                    ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !75 ; 3 uses
  %i.mq = load ptr, ptr %i.kt, align 8, !tbaa !55
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.mi
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !74
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.mn
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !75 ; 3 uses
  %i.mv = load i32, ptr %i.mp, align 4, !tbaa !7
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !7
  %i.mx = add i32 %i.mv, -128
  %i.my = add i32 %i.mx, %i.mw
  %or.cond29.1 = icmp ult i32 %i.my, -256         ; 2 uses
  br i1 %.not413, label %.preheader.split.us.1, label %bb.br

.preheader.split.us.1:                            ; preds = %.preheader.1
  br i1 %or.cond29.1, label %.loopexit354, label %.critedge.1

bb.br:                                            ; preds = %.preheader.1
  br i1 %or.cond29.1, label %.loopexit354, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !7
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = add i32 %i.na, -128
  %i.ne = add i32 %i.nd, %i.nc
  %or.cond29.1.1 = icmp ult i32 %i.ne, -256
  br i1 %or.cond29.1.1, label %.loopexit354, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !7
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !7
  %i.nj = add i32 %i.ng, -128
  %i.nk = add i32 %i.nj, %i.ni
  %or.cond29.1.2 = icmp ult i32 %i.nk, -256
  br i1 %or.cond29.1.2, label %.loopexit354, label %.critedge.1

.critedge.1:                                      ; preds = %.preheader.split.us.1, %bb.bt, %.critedge
  %i.nl = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %i.nm = load i8, ptr %i.nl, align 2, !tbaa !48
  %i.nn = icmp eq i8 %i.nm, 2
  br i1 %i.nn, label %.preheader.2, label %.critedge.2

.preheader.2:                                     ; preds = %.critedge.1
  %i.no = load i32, ptr %i.kp, align 4, !tbaa !72
  %.fr400 = freeze i32 %i.no
  %.not414 = icmp eq i32 %.fr400, 0
  %i.np = load ptr, ptr %i.kq, align 8, !tbaa !55
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.nr = load i8, ptr %i.nq, align 2, !tbaa !48
  %i.ns = sext i8 %i.nr to i64                    ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !74
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.nw = load i8, ptr %i.nv, align 2, !tbaa !48
  %i.nx = sext i8 %i.nw to i64                    ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %i.nx
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !75 ; 3 uses
  %i.oa = load ptr, ptr %i.kt, align 8, !tbaa !55
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.ns
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !74
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.nx
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !75 ; 3 uses
  %i.of = load i32, ptr %i.nz, align 4, !tbaa !7
  %i.og = load i32, ptr %i.oe, align 4, !tbaa !7
  %i.oh = add i32 %i.of, -128
  %i.oi = add i32 %i.oh, %i.og
  %or.cond29.2 = icmp ult i32 %i.oi, -256         ; 2 uses
  br i1 %.not414, label %.preheader.split.us.2, label %bb.bu

.preheader.split.us.2:                            ; preds = %.preheader.2
  br i1 %or.cond29.2, label %.loopexit354, label %.critedge.2

bb.bu:                                            ; preds = %.preheader.2
  br i1 %or.cond29.2, label %.loopexit354, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !7
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = add i32 %i.ok, -128
  %i.oo = add i32 %i.on, %i.om
  %or.cond29.2.1 = icmp ult i32 %i.oo, -256
  br i1 %or.cond29.2.1, label %.loopexit354, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !7
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.os = load i32, ptr %i.or, align 4, !tbaa !7
  %i.ot = add i32 %i.oq, -128
  %i.ou = add i32 %i.ot, %i.os
  %or.cond29.2.2 = icmp ult i32 %i.ou, -256
  br i1 %or.cond29.2.2, label %.loopexit354, label %.critedge.2

.critedge.2:                                      ; preds = %.preheader.split.us.2, %bb.bw, %.critedge.1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.kn, i64 3
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !48
  %i.ox = icmp eq i8 %i.ow, 2
  br i1 %i.ox, label %.preheader.3, label %.critedge309

.preheader.3:                                     ; preds = %.critedge.2
  %i.oy = load i32, ptr %i.kp, align 4, !tbaa !72
  %.fr402 = freeze i32 %i.oy
  %.not415 = icmp eq i32 %.fr402, 0
  %i.oz = load ptr, ptr %i.kq, align 8, !tbaa !55
  %i.pa = getelementptr inbounds nuw i8, ptr %i.kr, i64 3
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !48
  %i.pc = sext i8 %i.pb to i64                    ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !74
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !48
  %i.ph = sext i8 %i.pg to i64                    ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %i.ph
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !75 ; 3 uses
  %i.pk = load ptr, ptr %i.kt, align 8, !tbaa !55
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %i.pc
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !74
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %i.ph
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !75 ; 3 uses
  %i.pp = load i32, ptr %i.pj, align 4, !tbaa !7
  %i.pq = load i32, ptr %i.po, align 4, !tbaa !7
  %i.pr = add i32 %i.pp, -128
  %i.ps = add i32 %i.pr, %i.pq
  %or.cond29.3 = icmp ult i32 %i.ps, -256         ; 2 uses
  br i1 %.not415, label %.preheader.split.us.3, label %bb.bx

.preheader.split.us.3:                            ; preds = %.preheader.3
  br i1 %or.cond29.3, label %.loopexit354, label %.critedge309

bb.bx:                                            ; preds = %.preheader.3
  br i1 %or.cond29.3, label %.loopexit354, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !7
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !7
  %i.px = add i32 %i.pu, -128
  %i.py = add i32 %i.px, %i.pw
  %or.cond29.3.1 = icmp ult i32 %i.py, -256
  br i1 %or.cond29.3.1, label %.loopexit354, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !7
  %i.qb = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !7
  %i.qd = add i32 %i.qa, -128
  %i.qe = add i32 %i.qd, %i.qc
  %or.cond29.3.2 = icmp ult i32 %i.qe, -256
  br i1 %or.cond29.3.2, label %.loopexit354, label %.critedge309

.loopexit354:                                     ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bt, %bb.bs, %bb.br, %bb.bw, %bb.bv, %bb.bu, %bb.bz, %bb.by, %bb.bx, %.preheader.split.us, %.preheader.split.us.1, %.preheader.split.us.2, %.preheader.split.us.3
  %i.qf = getelementptr inbounds nuw i8, ptr %.pre366, i64 2120
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !47
  %i.qh = icmp ne i32 %i.qg, 0
  %i.qi = icmp eq i32 %.2257, 2
  %or.cond31 = select i1 %i.qh, i1 %i.qi, i1 false
  br i1 %or.cond31, label %bb.ca, label %.critedge309.thread

bb.ca:                                            ; preds = %.loopexit354
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ji, i64 14408
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.km ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !38 ; 2 uses
  %i.qm = icmp slt i16 %i.ql, 2
  %or.cond33 = and i1 %i.jm, %i.qm
  br i1 %or.cond33, label %bb.cb, label %.critedge309.thread

bb.cb:                                            ; preds = %bb.ca
  %i.qn = add nsw i16 %i.ql, 1
  store i16 %i.qn, ptr %i.qk, align 2, !tbaa !38
  br label %.critedge309.thread

.critedge309:                                     ; preds = %.critedge.2, %bb.bz, %.preheader.split.us.3, %bb.bn, %bb.bm
  %i.qo = sext i32 %i.jl to i64                   ; 2 uses
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !38
  %.not305 = icmp eq i16 %i.qq, 0
  br i1 %.not305, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.critedge309
  call void @compute_mode_RD_cost(i32 noundef %i.jl, ptr noundef %i.ai, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i32 noundef 0, i16 noundef signext %i.t, ptr noundef nonnull %i.j) #5
  %.pre364 = load ptr, ptr @img, align 8, !tbaa !13 ; 3 uses
  %.pre367 = load ptr, ptr @input, align 8, !tbaa !13 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.critedge309
  %.pre366.pre.pre384 = phi ptr [ %.pre367, %bb.cc ], [ %.pre366.pre.pre385, %.critedge309 ] ; 3 uses
  %.pre366380 = phi ptr [ %.pre367, %bb.cc ], [ %.pre366, %.critedge309 ] ; 4 uses
  %.pre365376 = phi ptr [ %.pre364, %bb.cc ], [ %.pre365377, %.critedge309 ] ; 3 uses
  %i.qr = phi ptr [ %.pre364, %bb.cc ], [ %i.jh, %.critedge309 ] ; 6 uses
  %i.qs = phi ptr [ %.pre364, %bb.cc ], [ %i.ji, %.critedge309 ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.pre366380, i64 2120
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !47
  %i.qv = icmp ne i32 %i.qu, 0
  %or.cond36 = and i1 %i.s, %i.qv
  %i.qw = icmp eq i32 %.2257, 2
  %or.cond38 = select i1 %or.cond36, i1 %i.qw, i1 false
  br i1 %or.cond38, label %bb.ce, label %.critedge309.thread

bb.ce:                                            ; preds = %bb.cd
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 14408
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qx, i64 %i.qo ; 2 uses
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !38 ; 2 uses
  %i.ra = icmp slt i16 %i.qz, 2
  %or.cond40 = and i1 %i.jm, %i.ra
  %i.rb = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), align 4
  %i.rc = icmp eq i8 %i.rb, 2
  %or.cond43 = select i1 %or.cond40, i1 %i.rc, i1 false
  br i1 %or.cond43, label %bb.cf, label %.critedge309.thread

bb.cf:                                            ; preds = %bb.ce
  %i.rd = add nsw i16 %i.qz, 1
  store i16 %i.rd, ptr %i.qy, align 2, !tbaa !38
  br label %.critedge309.thread

.critedge309.thread:                              ; preds = %bb.ca, %bb.cb, %.loopexit354, %bb.cd, %bb.ce, %bb.cf, %bb.bl
  %.pre366.pre.pre383 = phi ptr [ %.pre366.pre.pre385, %bb.ca ], [ %.pre366.pre.pre385, %bb.cb ], [ %.pre366.pre.pre385, %.loopexit354 ], [ %.pre366.pre.pre384, %bb.cd ], [ %.pre366.pre.pre384, %bb.ce ], [ %.pre366.pre.pre384, %bb.cf ], [ %.pre366.pre.pre385, %bb.bl ] ; 2 uses
  %.pre366379 = phi ptr [ %.pre366, %bb.ca ], [ %.pre366, %bb.cb ], [ %.pre366, %.loopexit354 ], [ %.pre366380, %bb.cd ], [ %.pre366380, %bb.ce ], [ %.pre366380, %bb.cf ], [ %.pre366, %bb.bl ]
  %.pre365375 = phi ptr [ %.pre365377, %bb.ca ], [ %.pre365377, %bb.cb ], [ %.pre365377, %.loopexit354 ], [ %.pre365376, %bb.cd ], [ %.pre365376, %bb.ce ], [ %.pre365376, %bb.cf ], [ %.pre365377, %bb.bl ] ; 2 uses
  %i.re = phi ptr [ %i.jh, %bb.ca ], [ %i.jh, %bb.cb ], [ %i.jh, %.loopexit354 ], [ %i.qr, %bb.cd ], [ %i.qr, %bb.ce ], [ %i.qr, %bb.cf ], [ %i.jh, %bb.bl ] ; 2 uses
  %i.rf = phi ptr [ %i.ji, %bb.ca ], [ %i.ji, %bb.cb ], [ %i.ji, %.loopexit354 ], [ %i.qs, %bb.cd ], [ %i.qr, %bb.ce ], [ %i.qr, %bb.cf ], [ %i.ji, %bb.bl ]
  %i.rg = add nsw i32 %.2262, 1
  %i.rh = icmp slt i32 %.2262, 8
  br i1 %i.rh, label %.thread313, label %.loopexit.loopexit, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %.critedge309.thread
  %.pre368 = load i32, ptr %i.bb, align 8, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bc, %bb.bg, %bb.bd, %bb.be
  %.pre366.pre.pre382 = phi ptr [ %.pre366.pre.pre383, %.loopexit.loopexit ], [ %.pre366.pre.pre, %bb.bc ], [ %.pre366.pre.pre, %bb.bg ], [ %.pre366.pre.pre, %bb.bd ], [ %.pre366.pre.pre, %bb.be ]
  %.pre365374 = phi ptr [ %.pre365375, %.loopexit.loopexit ], [ %.pre365, %bb.bc ], [ %.pre365, %bb.bg ], [ %.pre365, %bb.bd ], [ %.pre365, %bb.be ]
  %i.ri = phi ptr [ %i.re, %.loopexit.loopexit ], [ %i.iq, %bb.bc ], [ %i.iq, %bb.bg ], [ %i.iq, %bb.bd ], [ %i.iq, %bb.be ]
  %i.rj = phi i32 [ %.pre368, %.loopexit.loopexit ], [ %storemerge332, %bb.bc ], [ 3, %bb.bg ], [ 2, %bb.bd ], [ 1, %bb.be ] ; 2 uses
  %i.rk = add nsw i32 %i.rj, 1                    ; 2 uses
  store i32 %i.rk, ptr %i.bb, align 8, !tbaa !45
  %.not288.not = icmp slt i32 %i.rj, %.0246
  br i1 %.not288.not, label %bb.ay, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !76 ; 2 uses
  switch i32 %i.rm, label %bb.cg [
    i32 9, label %bb.ch
    i32 10, label %bb.ch
    i32 13, label %bb.ch
  ]

bb.cg:                                            ; preds = %._crit_edge
  %i.rn = icmp eq i32 %i.rm, 14
  %i.ro = zext i1 %i.rn to i32
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %bb.cg
  %i.rp = phi i32 [ 1, %._crit_edge ], [ 1, %._crit_edge ], [ 1, %._crit_edge ], [ %i.ro, %bb.cg ]
  %i.rq = load i32, ptr @cbp, align 4, !tbaa !7
  %i.rr = icmp ne i32 %i.rq, 0                    ; 2 uses
  %i.rs = load i16, ptr @best_mode, align 2       ; 2 uses
  %i.rt = icmp eq i16 %i.rs, 10
  %or.cond46 = select i1 %i.rr, i1 true, i1 %i.rt
  %i.ru = icmp ne i16 %i.rs, 14                   ; 3 uses
  %or.cond49 = select i1 %or.cond46, i1 %i.ru, i1 false
  br i1 %or.cond49, label %.sink.split, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.rr, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rv = load ptr, ptr @input, align 8, !tbaa !13
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 5116
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !58
  %i.ry = icmp ne i32 %i.rx, 0
  %or.cond52.not = select i1 %i.ry, i1 %i.ru, i1 false
  br i1 %or.cond52.not, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.ru, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.rz, align 4, !tbaa !77
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ai, i64 496
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !78
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store i32 %i.sb, ptr %i.sc, align 8, !tbaa !79
  call void @set_chroma_qp(ptr noundef nonnull %i.ai) #5
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !79
  %i.se = load ptr, ptr @img, align 8, !tbaa !13
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 36
  store i32 %i.sd, ptr %i.sf, align 4, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ch, %bb.cl
  %.sink = phi i32 [ 0, %bb.cl ], [ 1, %bb.ch ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ai, i64 504
  store i32 %.sink, ptr %i.sg, align 8, !tbaa !81
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %bb.ck, %bb.cj
  call void @set_stored_macroblock_parameters() #5
  %i.sh = load ptr, ptr @input, align 8, !tbaa !13
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 5116
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !58
  %.not289 = icmp eq i32 %i.sj, 0
  br i1 %.not289, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sk = load i16, ptr @best_mode, align 2, !tbaa !38
  call void @update_rc(ptr noundef nonnull %i.ai, i16 noundef signext %i.sk) #5
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.sl = load double, ptr %i.b, align 8, !tbaa !39
  %i.sm = load ptr, ptr @rdopt, align 8, !tbaa !13
  store double %i.sl, ptr %i.sm, align 8, !tbaa !83
  %i.sn = load ptr, ptr @img, align 8, !tbaa !13  ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 15268
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !84
  %.not290 = icmp eq i32 %i.sp, 0
  br i1 %.not290, label %bb.cw, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !37
  %i.ss = and i32 %i.sr, 1
  %.not291 = icmp eq i32 %i.ss, 0
  br i1 %.not291, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.st = load i32, ptr %i.rl, align 8, !tbaa !76
  %.not292 = icmp eq i32 %i.st, 0
  br i1 %.not292, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.s, label %bb.cs, label %.thread315

bb.cs:                                            ; preds = %bb.cr
  %i.su = getelementptr inbounds nuw i8, ptr %i.ai, i64 364
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !66
  %.not293 = icmp eq i32 %i.sv, 0
  br i1 %.not293, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.sw = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !76
  %.not294 = icmp eq i32 %i.sx, 0
  br i1 %.not294, label %bb.cu, label %bb.cw

.thread315:                                       ; preds = %bb.cr
  %i.sy = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !76
  %.not294316 = icmp eq i32 %i.sz, 0
  br i1 %.not294316, label %.thread317, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ta = getelementptr inbounds nuw i8, ptr %i.aq, i64 364
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !66
  %.not295 = icmp eq i32 %i.tb, 0
  br i1 %.not295, label %.thread317, label %bb.cw

.thread317:                                       ; preds = %.thread315, %bb.cu
  %i.tc = call i32 @field_flag_inference() #5
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.te = load i16, ptr %i.td, align 2, !tbaa !86
  %i.tf = sext i16 %i.te to i32
  %i.tg = icmp eq i32 %i.tc, %i.tf
  br i1 %i.tg, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.thread317
  %i.th = load ptr, ptr @rdopt, align 8, !tbaa !13
end_hunk_0
