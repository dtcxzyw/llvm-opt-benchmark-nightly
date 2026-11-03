Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/md_highloss?download=true
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@encode_one_macroblock_highloss:bb.a

bb.av:                                            ; preds = %bb.au, %bb.at
  switch i32 %i.q, label %bb.ax [
    i32 3, label %bb.aw
    i32 0, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  call void @FindSkipModeMotionVector() #5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.n, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  store double 1.000000e+30, ptr %i.b, align 8, !tbaa !14
  %i.iu = load ptr, ptr @input, align 8, !tbaa !16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 2120
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !51
  %.not303 = icmp eq i32 %i.iw, 0
  %.pre389 = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  br i1 %.not303, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ix = getelementptr inbounds nuw i8, ptr %.pre389, i64 14410
  store i16 0, ptr %i.ix, align 2, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.iy = getelementptr inbounds nuw i8, ptr %.pre389, i64 15536
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !65
  %.not304 = icmp eq i32 %i.iz, 0
  br i1 %.not304, label %.lr.ph.preheader, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @IntraChromaPrediction(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #5
  %i.ja = load ptr, ptr @input, align 8, !tbaa !16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4176
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !66
  %.not305 = icmp eq i32 %i.jc, 0
  br i1 %.not305, label %.lr.ph.preheader, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @IntraChromaRDDecision(ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0) #5
  %i.jd = load i32, ptr %i.bm, align 8, !tbaa !49
  %sext306 = shl i32 %i.jd, 16
  %i.je = ashr exact i32 %sext306, 16             ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bb, %bb.ba, %bb.az
  %.0254 = phi i32 [ %i.je, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.0253 = phi i32 [ %i.je, %bb.bb ], [ 3, %bb.ba ], [ 0, %bb.az ]
  store i32 %.0254, ptr %i.bm, align 8, !tbaa !49
  %.pre400.a = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %.pre393.pre.pre.pre = load ptr, ptr @input, align 8, !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.pre393.pre.pre = phi ptr [ %.pre393.pre.pre409, %.loopexit ], [ %.pre393.pre.pre.pre, %.lr.ph.preheader ] ; 8 uses
  %.pre392 = phi ptr [ %.pre392401, %.loopexit ], [ %.pre400.a, %.lr.ph.preheader ] ; 7 uses
  %i.jf = phi ptr [ %i.rx, %.loopexit ], [ %.pre400.a, %.lr.ph.preheader ] ; 5 uses
  %storemerge354 = phi i32 [ %i.rz, %.loopexit ], [ %.0254, %.lr.ph.preheader ] ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 15536
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !65
  %.not308 = icmp eq i32 %i.jh, 0
  br i1 %.not308, label %.thread328.preheader, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  br i1 %i.bo, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre393.pre.pre, i64 4048
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !67
  %.not309 = icmp eq i32 %i.jj, 0
  br i1 %.not309, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre393.pre.pre, i64 4072
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !68
  %i.jm = icmp eq i32 %i.jl, 1
  br i1 %i.jm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %.not310 = icmp eq i32 %storemerge354, 0
  br i1 %.not310, label %.thread328.preheader, label %.loopexit

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.jn = icmp ne i32 %storemerge354, 2
  %i.jo = load i32, ptr %i.l, align 4
  %i.jp = icmp ne i32 %i.jo, 0                    ; 2 uses
  %or.cond5 = select i1 %i.jn, i1 true, i1 %i.jp
  br i1 %or.cond5, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.jq = icmp ne i32 %storemerge354, 1
  %i.jr = load i32, ptr %i.m, align 4
  %i.js = icmp ne i32 %i.jr, 0                    ; 2 uses
  %or.cond7 = select i1 %i.jq, i1 true, i1 %i.js
  br i1 %or.cond7, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.jt = icmp eq i32 %storemerge354, 3
  br i1 %i.jt, label %bb.bj, label %.thread328.preheader

bb.bj:                                            ; preds = %bb.bi
  %or.cond9 = select i1 %i.js, i1 %i.jp, i1 false
  %i.ju = load i32, ptr %i.n, align 4
  %i.jv = icmp ne i32 %i.ju, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.jv, i1 false
  br i1 %or.cond11, label %.thread328.preheader, label %.loopexit

.thread328.preheader:                             ; preds = %bb.bf, %bb.bj, %bb.bi, %.lr.ph
  br label %.thread328

.thread328:                                       ; preds = %.thread328.preheader, %.critedge324.thread
  %.pre393.pre.pre412 = phi ptr [ %.pre393.pre.pre410, %.critedge324.thread ], [ %.pre393.pre.pre, %.thread328.preheader ] ; 5 uses
  %.pre393 = phi ptr [ %.pre393406, %.critedge324.thread ], [ %.pre393.pre.pre, %.thread328.preheader ] ; 8 uses
  %.pre392404 = phi ptr [ %.pre392402, %.critedge324.thread ], [ %.pre392, %.thread328.preheader ] ; 5 uses
  %i.jw = phi ptr [ %i.rt, %.critedge324.thread ], [ %.pre392, %.thread328.preheader ] ; 5 uses
  %i.jx = phi ptr [ %i.ru, %.critedge324.thread ], [ %.pre392, %.thread328.preheader ] ; 7 uses
  %.0264352 = phi i32 [ %.2266, %.critedge324.thread ], [ 0, %.thread328.preheader ] ; 4 uses
  %.0268351 = phi i32 [ %i.rv, %.critedge324.thread ], [ 0, %.thread328.preheader ] ; 3 uses
  %i.jy = sext i32 %.0268351 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr @mb_mode_table, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !7  ; 6 uses
  %i.kb = icmp eq i32 %i.ka, 1                    ; 3 uses
  %or.cond14 = and i1 %i.s, %i.kb
  br i1 %or.cond14, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.thread328
  %i.kc = trunc i32 %.0264352 to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre393, i64 2120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), i8 %i.kc, i64 4, i1 false)
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !51
  %i.kf = icmp ne i32 %i.ke, 0
  %i.kg = icmp eq i32 %.0264352, 2
  %or.cond16 = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %or.cond16, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 14410
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !44
  %i.kj = icmp slt i16 %i.ki, 2
  %spec.select321 = select i1 %i.kj, i32 1, i32 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1265 = phi i32 [ %.0264352, %bb.bk ], [ %spec.select321, %bb.bl ] ; 2 uses
  %i.kk = icmp slt i32 %.1265, 2
  %i.kl = sext i1 %i.kk to i32
  %spec.select322 = add nsw i32 %.0268351, %i.kl
  %i.km = add nsw i32 %.1265, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread328
  %.2270 = phi i32 [ %spec.select322, %bb.bm ], [ %.0268351, %.thread328 ] ; 2 uses
  %.2266 = phi i32 [ %i.km, %bb.bm ], [ %.0264352, %.thread328 ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre393, i64 2960
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !69
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = icmp sgt i32 %i.ka, 9
  %i.kr = and i1 %i.kq, %i.kp
  %or.cond22 = and i1 %i.bo, %i.kr
  %i.ks = load i16, ptr @best_mode, align 2
  %i.kt = icmp slt i16 %i.ks, 4
  %or.cond25 = select i1 %or.cond22, i1 %i.kt, i1 false
  br i1 %or.cond25, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ku = load i32, ptr %i.bz, align 4, !tbaa !70
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %.critedge324.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.s, label %bb.bq, label %.critedge324

bb.bq:                                            ; preds = %bb.bp
  %i.kw = load ptr, ptr @active_pps, align 8, !tbaa !16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 196
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !72
  %i.kz = icmp eq i32 %i.ky, 1
  %i.la = icmp slt i32 %i.ka, 8
  %or.cond27 = and i1 %i.la, %i.kz
  br i1 %or.cond27, label %.preheader340, label %.critedge324

.preheader340:                                    ; preds = %bb.bq
  %i.lb = sext i32 %i.ka to i64                   ; 4 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr @best8x8pdir, i64 %i.lb ; 4 uses
  %i.ld = load ptr, ptr @active_sps, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32 ; 4 uses
  %i.lf = load ptr, ptr @wbp_weight, align 8      ; 5 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr @best8x8fwref, i64 %i.lb ; 4 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr @best8x8bwref, i64 %i.lb ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 4 uses
  %i.lj = load i8, ptr %i.lc, align 4, !tbaa !52
  %i.lk = icmp eq i8 %i.lj, 2
  br i1 %i.lk, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.preheader340
  %i.ll = load i32, ptr %i.le, align 4, !tbaa !76
  %.not441 = icmp eq i32 %i.ll, 0
  %i.lm = load ptr, ptr %i.lf, align 8, !tbaa !59
  %i.ln = load i8, ptr %i.lg, align 4, !tbaa !52
  %i.lo = sext i8 %i.ln to i64                    ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !78
  %i.lr = load i8, ptr %i.lh, align 4, !tbaa !52
  %i.ls = sext i8 %i.lr to i64                    ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.ls
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !79 ; 3 uses
  %i.lv = load ptr, ptr %i.li, align 8, !tbaa !59
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.lo
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !78
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %i.ls
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !79 ; 3 uses
  %i.ma = load i32, ptr %i.lu, align 4, !tbaa !7
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !7
  %i.mc = add i32 %i.ma, -128
  %i.md = add i32 %i.mc, %i.mb
  %or.cond29 = icmp ult i32 %i.md, -256
  br i1 %or.cond29, label %.loopexit379, label %bb.br

bb.br:                                            ; preds = %.preheader
  br i1 %.not441, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !7
  %i.mi = add i32 %i.mf, -128
  %i.mj = add i32 %i.mi, %i.mh
  %or.cond29.1436 = icmp ult i32 %i.mj, -256
  br i1 %or.cond29.1436, label %.loopexit379, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !7
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !7
  %i.mo = add i32 %i.ml, -128
  %i.mp = add i32 %i.mo, %i.mn
  %or.cond29.2439 = icmp ult i32 %i.mp, -256
  br i1 %or.cond29.2439, label %.loopexit379, label %.critedge

.critedge:                                        ; preds = %bb.br, %bb.bt, %.preheader340
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !52
  %i.ms = icmp eq i8 %i.mr, 2
  br i1 %i.ms, label %.preheader.1, label %.critedge.1

.preheader.1:                                     ; preds = %.critedge
  %i.mt = load i32, ptr %i.le, align 4, !tbaa !76
  %.not442 = icmp eq i32 %i.mt, 0
  %i.mu = load ptr, ptr %i.lf, align 8, !tbaa !59
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !52
  %i.mx = sext i8 %i.mw to i64                    ; 2 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mu, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !78
  %i.na = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !52
  %i.nc = sext i8 %i.nb to i64                    ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !79 ; 3 uses
  %i.nf = load ptr, ptr %i.li, align 8, !tbaa !59
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.mx
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !78
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.nc
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !79 ; 3 uses
  %i.nk = load i32, ptr %i.ne, align 4, !tbaa !7
  %i.nl = load i32, ptr %i.nj, align 4, !tbaa !7
  %i.nm = add i32 %i.nk, -128
  %i.nn = add i32 %i.nm, %i.nl
  %or.cond29.1 = icmp ult i32 %i.nn, -256
  br i1 %or.cond29.1, label %.loopexit379, label %bb.bu

bb.bu:                                            ; preds = %.preheader.1
  br i1 %.not442, label %.critedge.1, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !7
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !7
  %i.ns = add i32 %i.np, -128
  %i.nt = add i32 %i.ns, %i.nr
  %or.cond29.1.1 = icmp ult i32 %i.nt, -256
  br i1 %or.cond29.1.1, label %.loopexit379, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !7
  %i.ny = add i32 %i.nv, -128
  %i.nz = add i32 %i.ny, %i.nx
  %or.cond29.1.2 = icmp ult i32 %i.nz, -256
  br i1 %or.cond29.1.2, label %.loopexit379, label %.critedge.1

.critedge.1:                                      ; preds = %bb.bu, %bb.bw, %.critedge
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.ob = load i8, ptr %i.oa, align 2, !tbaa !52
  %i.oc = icmp eq i8 %i.ob, 2
  br i1 %i.oc, label %.preheader.2, label %.critedge.2

.preheader.2:                                     ; preds = %.critedge.1
  %i.od = load i32, ptr %i.le, align 4, !tbaa !76
  %.not443 = icmp eq i32 %i.od, 0
  %i.oe = load ptr, ptr %i.lf, align 8, !tbaa !59
  %i.of = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.og = load i8, ptr %i.of, align 2, !tbaa !52
  %i.oh = sext i8 %i.og to i64                    ; 2 uses
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !78
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.ol = load i8, ptr %i.ok, align 2, !tbaa !52
  %i.om = sext i8 %i.ol to i64                    ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.oj, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !79 ; 3 uses
  %i.op = load ptr, ptr %i.li, align 8, !tbaa !59
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.oh
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !78
  %i.os = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.om
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !79 ; 3 uses
  %i.ou = load i32, ptr %i.oo, align 4, !tbaa !7
  %i.ov = load i32, ptr %i.ot, align 4, !tbaa !7
  %i.ow = add i32 %i.ou, -128
  %i.ox = add i32 %i.ow, %i.ov
  %or.cond29.2 = icmp ult i32 %i.ox, -256
  br i1 %or.cond29.2, label %.loopexit379, label %bb.bx

bb.bx:                                            ; preds = %.preheader.2
  br i1 %.not443, label %.critedge.2, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !7
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !7
  %i.pc = add i32 %i.oz, -128
  %i.pd = add i32 %i.pc, %i.pb
  %or.cond29.2.1 = icmp ult i32 %i.pd, -256
  br i1 %or.cond29.2.1, label %.loopexit379, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !7
  %i.pi = add i32 %i.pf, -128
  %i.pj = add i32 %i.pi, %i.ph
  %or.cond29.2.2 = icmp ult i32 %i.pj, -256
  br i1 %or.cond29.2.2, label %.loopexit379, label %.critedge.2

.critedge.2:                                      ; preds = %bb.bx, %bb.bz, %.critedge.1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.lc, i64 3
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !52
  %i.pm = icmp eq i8 %i.pl, 2
  br i1 %i.pm, label %.preheader.3, label %.critedge324

.preheader.3:                                     ; preds = %.critedge.2
  %i.pn = load i32, ptr %i.le, align 4, !tbaa !76
  %.not444 = icmp eq i32 %i.pn, 0
  %i.po = load ptr, ptr %i.lf, align 8, !tbaa !59
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lg, i64 3
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !52
  %i.pr = sext i8 %i.pq to i64                    ; 2 uses
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.pr
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !78
  %i.pu = getelementptr inbounds nuw i8, ptr %i.lh, i64 3
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !52
  %i.pw = sext i8 %i.pv to i64                    ; 2 uses
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !79 ; 3 uses
  %i.pz = load ptr, ptr %i.li, align 8, !tbaa !59
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.pr
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !78
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.pw
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !79 ; 3 uses
  %i.qe = load i32, ptr %i.py, align 4, !tbaa !7
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !7
  %i.qg = add i32 %i.qe, -128
  %i.qh = add i32 %i.qg, %i.qf
  %or.cond29.3 = icmp ult i32 %i.qh, -256
  br i1 %or.cond29.3, label %.loopexit379, label %bb.ca

bb.ca:                                            ; preds = %.preheader.3
  br i1 %.not444, label %.critedge324, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qi = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !7
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !7
  %i.qm = add i32 %i.qj, -128
  %i.qn = add i32 %i.qm, %i.ql
  %or.cond29.3.1 = icmp ult i32 %i.qn, -256
  br i1 %or.cond29.3.1, label %.loopexit379, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qo = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !7
  %i.qs = add i32 %i.qp, -128
  %i.qt = add i32 %i.qs, %i.qr
  %or.cond29.3.2 = icmp ult i32 %i.qt, -256
  br i1 %or.cond29.3.2, label %.loopexit379, label %.critedge324

.loopexit379:                                     ; preds = %.preheader, %bb.bs, %bb.bt, %.preheader.1, %bb.bv, %bb.bw, %.preheader.2, %bb.by, %bb.bz, %.preheader.3, %bb.cb, %bb.cc
  %i.qu = getelementptr inbounds nuw i8, ptr %.pre393, i64 2120
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !51
  %i.qw = icmp ne i32 %i.qv, 0
  %i.qx = icmp eq i32 %.2266, 2
  %or.cond31 = select i1 %i.qw, i1 %i.qx, i1 false
  br i1 %or.cond31, label %bb.cd, label %.critedge324.thread

bb.cd:                                            ; preds = %.loopexit379
  %i.qy = getelementptr inbounds nuw i8, ptr %i.jx, i64 14408
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.qy, i64 %i.lb ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !44 ; 2 uses
  %i.rb = icmp slt i16 %i.ra, 2
  %or.cond33 = and i1 %i.kb, %i.rb
  br i1 %or.cond33, label %bb.ce, label %.critedge324.thread

bb.ce:                                            ; preds = %bb.cd
  %i.rc = add nsw i16 %i.ra, 1
  store i16 %i.rc, ptr %i.qz, align 2, !tbaa !44
  br label %.critedge324.thread

.critedge324:                                     ; preds = %bb.ca, %bb.cc, %.critedge.2, %bb.bq, %bb.bp
  %i.rd = sext i32 %i.ka to i64                   ; 2 uses
  %i.re = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !44
  %.not315 = icmp eq i16 %i.rf, 0
  br i1 %.not315, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.critedge324
  call void @compute_mode_RD_cost(i32 noundef %i.ka, ptr noundef %i.as, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i32 noundef 0, i16 noundef signext %i.t, ptr noundef nonnull %i.j) #5
  %.pre391 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre394 = load ptr, ptr @input, align 8, !tbaa !16 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.critedge324
  %.pre393.pre.pre411 = phi ptr [ %.pre394, %bb.cf ], [ %.pre393.pre.pre412, %.critedge324 ] ; 3 uses
  %.pre393407 = phi ptr [ %.pre394, %bb.cf ], [ %.pre393, %.critedge324 ] ; 4 uses
  %.pre392403 = phi ptr [ %.pre391, %bb.cf ], [ %.pre392404, %.critedge324 ] ; 3 uses
  %i.rg = phi ptr [ %.pre391, %bb.cf ], [ %i.jw, %.critedge324 ] ; 6 uses
  %i.rh = phi ptr [ %.pre391, %bb.cf ], [ %i.jx, %.critedge324 ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.pre393407, i64 2120
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !51
  %i.rk = icmp ne i32 %i.rj, 0
  %or.cond36 = and i1 %i.s, %i.rk
  %i.rl = icmp eq i32 %.2266, 2
  %or.cond38 = select i1 %or.cond36, i1 %i.rl, i1 false
  br i1 %or.cond38, label %bb.ch, label %.critedge324.thread

bb.ch:                                            ; preds = %bb.cg
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 14408
  %i.rn = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.rd ; 2 uses
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !44 ; 2 uses
  %i.rp = icmp slt i16 %i.ro, 2
  %or.cond40 = and i1 %i.kb, %i.rp
  %i.rq = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), align 4
  %i.rr = icmp eq i8 %i.rq, 2
  %or.cond43 = select i1 %or.cond40, i1 %i.rr, i1 false
  br i1 %or.cond43, label %bb.ci, label %.critedge324.thread

bb.ci:                                            ; preds = %bb.ch
  %i.rs = add nsw i16 %i.ro, 1
  store i16 %i.rs, ptr %i.rn, align 2, !tbaa !44
  br label %.critedge324.thread

.critedge324.thread:                              ; preds = %bb.cd, %bb.ce, %.loopexit379, %bb.cg, %bb.ch, %bb.ci, %bb.bo
  %.pre393.pre.pre410 = phi ptr [ %.pre393.pre.pre412, %bb.cd ], [ %.pre393.pre.pre412, %bb.ce ], [ %.pre393.pre.pre412, %.loopexit379 ], [ %.pre393.pre.pre411, %bb.cg ], [ %.pre393.pre.pre411, %bb.ch ], [ %.pre393.pre.pre411, %bb.ci ], [ %.pre393.pre.pre412, %bb.bo ] ; 2 uses
  %.pre393406 = phi ptr [ %.pre393, %bb.cd ], [ %.pre393, %bb.ce ], [ %.pre393, %.loopexit379 ], [ %.pre393407, %bb.cg ], [ %.pre393407, %bb.ch ], [ %.pre393407, %bb.ci ], [ %.pre393, %bb.bo ]
  %.pre392402 = phi ptr [ %.pre392404, %bb.cd ], [ %.pre392404, %bb.ce ], [ %.pre392404, %.loopexit379 ], [ %.pre392403, %bb.cg ], [ %.pre392403, %bb.ch ], [ %.pre392403, %bb.ci ], [ %.pre392404, %bb.bo ] ; 2 uses
  %i.rt = phi ptr [ %i.jw, %bb.cd ], [ %i.jw, %bb.ce ], [ %i.jw, %.loopexit379 ], [ %i.rg, %bb.cg ], [ %i.rg, %bb.ch ], [ %i.rg, %bb.ci ], [ %i.jw, %bb.bo ] ; 2 uses
  %i.ru = phi ptr [ %i.jx, %bb.cd ], [ %i.jx, %bb.ce ], [ %i.jx, %.loopexit379 ], [ %i.rh, %bb.cg ], [ %i.rg, %bb.ch ], [ %i.rg, %bb.ci ], [ %i.jx, %bb.bo ]
  %i.rv = add nsw i32 %.2270, 1
  %i.rw = icmp slt i32 %.2270, 8
  br i1 %i.rw, label %.thread328, label %.loopexit.loopexit, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %.critedge324.thread
  %.pre395 = load i32, ptr %i.bm, align 8, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bf, %bb.bj, %bb.bg, %bb.bh
  %.pre393.pre.pre409 = phi ptr [ %.pre393.pre.pre410, %.loopexit.loopexit ], [ %.pre393.pre.pre, %bb.bf ], [ %.pre393.pre.pre, %bb.bj ], [ %.pre393.pre.pre, %bb.bg ], [ %.pre393.pre.pre, %bb.bh ]
  %.pre392401 = phi ptr [ %.pre392402, %.loopexit.loopexit ], [ %.pre392, %bb.bf ], [ %.pre392, %bb.bj ], [ %.pre392, %bb.bg ], [ %.pre392, %bb.bh ]
  %i.rx = phi ptr [ %i.rt, %.loopexit.loopexit ], [ %i.jf, %bb.bf ], [ %i.jf, %bb.bj ], [ %i.jf, %bb.bg ], [ %i.jf, %bb.bh ]
  %i.ry = phi i32 [ %.pre395, %.loopexit.loopexit ], [ %storemerge354, %bb.bf ], [ 3, %bb.bj ], [ 2, %bb.bg ], [ 1, %bb.bh ] ; 2 uses
  %i.rz = add nsw i32 %i.ry, 1                    ; 2 uses
  store i32 %i.rz, ptr %i.bm, align 8, !tbaa !49
  %.not307.not = icmp slt i32 %i.ry, %.0253
  br i1 %.not307.not, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  %i.sa = icmp eq i32 %.0274355, 0
  br i1 %i.sa, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %._crit_edge
  %i.sb = load i32, ptr %i.ca, align 8, !tbaa !80 ; 2 uses
  switch i32 %i.sb, label %bb.ck [
    i32 9, label %bb.cl
    i32 10, label %bb.cl
    i32 13, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.sc = icmp eq i32 %i.sb, 14
  %i.sd = zext i1 %i.sc to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.cj, %bb.cj, %._crit_edge
  %.1256 = phi i32 [ %.0255356, %._crit_edge ], [ 1, %bb.cj ], [ 1, %bb.cj ], [ 1, %bb.cj ], [ %i.sd, %bb.ck ] ; 2 uses
  %i.se = add nuw nsw i32 %.0274355, 1            ; 2 uses
  %exitcond383.not = icmp eq i32 %i.se, %i.am
  br i1 %exitcond383.not, label %bb.cm, label %bb.l, !llvm.loop !12

bb.cm:                                            ; preds = %bb.cl
  %i.sf = load i32, ptr @cbp, align 4, !tbaa !7
  %i.sg = icmp ne i32 %i.sf, 0                    ; 2 uses
  %i.sh = load i16, ptr @best_mode, align 2       ; 2 uses
  %i.si = icmp eq i16 %i.sh, 10
  %or.cond46 = select i1 %i.sg, i1 true, i1 %i.si
  %i.sj = icmp ne i16 %i.sh, 14                   ; 3 uses
  %or.cond49 = select i1 %or.cond46, i1 %i.sj, i1 false
  br i1 %or.cond49, label %.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.sg, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sk = load ptr, ptr @input, align 8, !tbaa !16
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 5116
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !62
  %i.sn = icmp ne i32 %i.sm, 0
  %or.cond52.not = select i1 %i.sn, i1 %i.sj, i1 false
  br i1 %or.cond52.not, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  br i1 %i.sj, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.so = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.so, align 4, !tbaa !81
  %i.sp = getelementptr inbounds nuw i8, ptr %i.as, i64 496
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !82
  %i.sr = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store i32 %i.sq, ptr %i.sr, align 8, !tbaa !83
  call void @set_chroma_qp(ptr noundef nonnull %i.as) #5
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !83
  %i.st = load ptr, ptr @img, align 8, !tbaa !16
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 36
  store i32 %i.ss, ptr %i.su, align 4, !tbaa !84
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cm, %bb.cq
  %.sink = phi i32 [ 0, %bb.cq ], [ 1, %bb.cm ]
  %i.sv = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  store i32 %.sink, ptr %i.sv, align 8, !tbaa !85
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split, %bb.cp, %bb.co
  call void @set_stored_macroblock_parameters() #5
  %i.sw = load ptr, ptr @input, align 8, !tbaa !16
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 5116
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !62
  %.not289 = icmp eq i32 %i.sy, 0
  br i1 %.not289, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sz = load i16, ptr @best_mode, align 2, !tbaa !44
  call void @update_rc(ptr noundef nonnull %i.as, i16 noundef signext %i.sz) #5
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ta = load double, ptr %i.b, align 8, !tbaa !14
  %i.tb = load ptr, ptr @rdopt, align 8, !tbaa !16
  store double %i.ta, ptr %i.tb, align 8, !tbaa !87
  %i.tc = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 15268
  %i.te = load i32, ptr %i.td, align 4, !tbaa !88
  %.not290 = icmp eq i32 %i.te, 0
  br i1 %.not290, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !43
  %i.th = and i32 %i.tg, 1
  %.not291 = icmp eq i32 %i.th, 0
  br i1 %.not291, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ti = load i32, ptr %i.ca, align 8, !tbaa !80
  %.not292 = icmp eq i32 %i.ti, 0
  br i1 %.not292, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.s, label %bb.cx, label %.thread330

bb.cx:                                            ; preds = %bb.cw
  %i.tj = load i32, ptr %i.bz, align 4, !tbaa !70
  %.not293 = icmp eq i32 %i.tj, 0
  br i1 %.not293, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !80
  %.not294 = icmp eq i32 %i.tl, 0
  br i1 %.not294, label %bb.cz, label %bb.db

.thread330:                                       ; preds = %bb.cw
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !80
  %.not294331 = icmp eq i32 %i.tn, 0
  br i1 %.not294331, label %.thread332, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.to = getelementptr inbounds nuw i8, ptr %i.ba, i64 364
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !70
  %.not295 = icmp eq i32 %i.tp, 0
  br i1 %.not295, label %.thread332, label %bb.db

.thread332:                                       ; preds = %.thread330, %bb.cz
  %i.tq = call i32 @field_flag_inference() #5
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 78
end_hunk_0
