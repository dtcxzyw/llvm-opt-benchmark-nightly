Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@VP8LEncodeStream:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eu, i64 3072 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.eu, i64 7168 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eu, i64 1024 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !3
  %i.jw = call i64 @VP8LBitsEntropy(ptr noundef %i.eu, i32 noundef 256) #7
  %i.jx = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jt, i32 noundef 256) #7
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eu, i64 2048
  %i.jz = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jy, i32 noundef 256) #7
  %i.ka = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jn, i32 noundef 256) #7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.eu, i64 4096
  %i.kc = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kb, i32 noundef 256) #7
  %i.kd = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jk, i32 noundef 256) #7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.eu, i64 6144
  %i.kf = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.ke, i32 noundef 256) #7
  %i.kg = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jq, i32 noundef 256) #7
  %i.kh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8192
  %i.ki = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kh, i32 noundef 256) #7
  %i.kj = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.je, i32 noundef 256) #7
  %i.kk = getelementptr inbounds nuw i8, ptr %i.eu, i64 10240
  %i.kl = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kk, i32 noundef 256) #7
  %i.km = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jh, i32 noundef 256) #7
  %i.kn = getelementptr inbounds nuw i8, ptr %i.eu, i64 12288
  %i.ko = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kn, i32 noundef 256) #7
  %i.kp = add i64 %i.jz, %i.jw                    ; 2 uses
  %i.kq = add i64 %i.ka, %i.jx                    ; 2 uses
  %i.kr = add i64 %i.ki, %i.kp
  %i.ks = add i64 %i.kr, %i.kl                    ; 2 uses
  %i.kt = add i64 %i.kj, %i.kq
  %i.ku = add i64 %i.kt, %i.km
  %i.kv = shl nuw nsw i32 1, %i.ei                ; 2 uses
  %i.kw = add i32 %i.t, -1
  %i.kx = add i32 %i.kw, %i.kv
  %i.ky = lshr i32 %i.kx, %i.ei
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = add i32 %i.v, -1
  %i.lb = add i32 %i.la, %i.kv
  %i.lc = lshr i32 %i.lb, %i.ei
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.kz, %i.ld            ; 2 uses
  %i.lf = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 96), align 16, !tbaa !3
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul i64 %i.le, %i.lg
  %i.li = add i64 %i.ku, %i.lh                    ; 2 uses
  %i.lj = sext i32 %spec.select.i to i64
  %i.lk = shl nsw i64 %i.lj, 26
  %i.ll = add i64 %i.ko, %i.lk
  %i.lm = add i64 %i.kc, %i.kp
  %i.ln = add i64 %i.lm, %i.kf                    ; 2 uses
  %i.lo = add i64 %i.kd, %i.kq
  %i.lp = add i64 %i.lo, %i.kg
  %i.lq = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 56), align 8, !tbaa !3
  %i.lr = zext i32 %i.lq to i64
  %i.ls = mul i64 %i.le, %i.lr
  %i.lt = add i64 %i.lp, %i.ls                    ; 2 uses
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ln, i64 %i.lt) ; 2 uses
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.ks) ; 2 uses
  %i.lw = icmp ugt i64 %i.lu, %i.ks
  %i.lx = icmp ugt i64 %i.ln, %i.lt
  %spec.select125.i = zext i1 %i.lx to i32
  %spec.select125.i.1 = select i1 %i.lw, i32 2, i32 %spec.select125.i
  %i.ly = icmp ugt i64 %i.lv, %i.li
  %spec.select125.i.2 = select i1 %i.ly, i32 3, i32 %spec.select125.i.1 ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge108.split.i.i
  %i.lz = call i64 @llvm.umin.i64(i64 %i.lv, i64 %i.li)
  %i.ma = icmp ugt i64 %i.lz, %i.ll
  %spec.select125.i.3 = select i1 %i.ma, i32 4, i32 %spec.select125.i.2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge108.split.i.i
  %spec.select125.i.lcssa = phi i32 [ %spec.select125.i.3, %bb.o ], [ %spec.select125.i.2, %._crit_edge108.split.i.i ] ; 2 uses
  %i.mb = zext i32 %spec.select125.i.lcssa to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @AnalyzeEntropy.kHistoPairs, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !40
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [1024 x i8], ptr %i.eu, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !40
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [1024 x i8], ptr %i.eu, i64 %i.mi ; 3 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.t
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next124.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.next124.i.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = or i32 %i.mn, %i.ml
  %.not100.i.i.1 = icmp eq i32 %i.mo, 0
  br i1 %.not100.i.i.1, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next124.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i, 2 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next124.i.i.1
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.next124.i.i.1
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !3
  %i.mt = or i32 %i.ms, %i.mq
  %.not100.i.i.2 = icmp eq i32 %i.mt, 0
  br i1 %.not100.i.i.2, label %bb.s, label %.loopexit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next124.i.i.2 = add nuw nsw i64 %indvars.iv123.i.i, 3 ; 2 uses
  %exitcond126.not.i.i.2 = icmp eq i64 %indvars.iv.next124.i.i.2, 256
  br i1 %exitcond126.not.i.i.2, label %.loopexit.i.i, label %bb.t, !llvm.loop !41

bb.t:                                             ; preds = %bb.s, %bb.p
  %indvars.iv123.i.i = phi i64 [ 1, %bb.p ], [ %indvars.iv.next124.i.i.2, %bb.s ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv123.i.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !3
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv123.i.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !3
  %i.my = or i32 %i.mx, %i.mv
  %.not100.i.i = icmp eq i32 %i.my, 0
  br i1 %.not100.i.i, label %bb.q, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.t
  %.0192 = phi i32 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.r ]
  call void @WebPSafeFree(ptr noundef nonnull %i.eu) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %.loopexit.i.i
  %.1193 = phi i32 [ %.0192, %.loopexit.i.i ], [ 1, %bb.g ] ; 3 uses
  %.2120.ph.i = phi i32 [ %spec.select125.i.lcssa, %.loopexit.i.i ], [ 4, %bb.g ] ; 2 uses
  %i.mz = icmp eq i32 %i.y, 6
  %i.na = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.nb = load float, ptr %i.na, align 4, !tbaa !42 ; 2 uses
  %i.nc = fcmp oeq float %i.nb, 1.000000e+02
  %or.cond.i = select i1 %i.mz, i1 %i.nc, i1 false
  br i1 %or.cond.i, label %.loopexit.3.i, label %._crit_edge.i

.loopexit.3.i:                                    ; preds = %bb.u
  store i32 0, ptr %3, align 16, !tbaa !33
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.nd, align 4, !tbaa !35
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.ne, align 4, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 3, ptr %i.nf, align 16, !tbaa !35
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2, ptr %i.ng, align 8, !tbaa !33
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 3, ptr %i.nh, align 4, !tbaa !35
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 3, ptr %i.ni, align 4, !tbaa !33
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 3, ptr %i.nj, align 8, !tbaa !35
  br i1 %i.ad, label %.loopexit.loopexit.5.i, label %.preheader.preheader.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.3.i
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 4, ptr %i.nk, align 16, !tbaa !33
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 1, ptr %i.nl, align 4, !tbaa !35
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 4, ptr %i.nm, align 4, !tbaa !33
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 2, ptr %i.nn, align 16, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 5, ptr %i.no, align 8, !tbaa !33
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i32 1, ptr %i.np, align 4, !tbaa !35
  br label %.preheader.preheader.i.sink.split

._crit_edge.i:                                    ; preds = %bb.u
  store i32 %.2120.ph.i, ptr %3, align 16, !tbaa !33
  %i.nq = select i1 %i.ad, i32 1, i32 3
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !35
  %i.ns = fcmp oge float %i.nb, 7.500000e+01
  %i.nt = icmp eq i32 %i.y, 5
  %or.cond9.i = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond9.i, label %bb.v, label %.preheader.preheader.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.nu = icmp eq i32 %.2120.ph.i, 4
  br i1 %i.nu, label %.preheader.preheader.i.sink.split, label %.preheader.preheader.i

.preheader.preheader.i.sink.split:                ; preds = %bb.v, %.loopexit.loopexit.5.i
  %.sink282.sroa.phi = phi ptr [ %.sink282.sroa.gep, %.loopexit.loopexit.5.i ], [ %.sink282.sroa.gep313, %bb.v ]
  %.sink280.sroa.phi = phi ptr [ %.sink280.sroa.gep, %.loopexit.loopexit.5.i ], [ %.sink280.sroa.gep312, %bb.v ]
  %.sink = phi i32 [ 2, %.loopexit.loopexit.5.i ], [ 1, %bb.v ]
  %.2197.ph = phi i32 [ 8, %.loopexit.loopexit.5.i ], [ 2, %bb.v ]
  store i32 5, ptr %.sink282.sroa.phi, align 4, !tbaa !33
  store i32 %.sink, ptr %.sink280.sroa.phi, align 8, !tbaa !35
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.sink.split, %.loopexit.3.i, %bb.v, %._crit_edge.i
  %.2197 = phi i32 [ 1, %._crit_edge.i ], [ 1, %bb.v ], [ 4, %.loopexit.3.i ], [ %.2197.ph, %.preheader.preheader.i.sink.split ] ; 6 uses
  %.2155.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.v ], [ 1, %.loopexit.3.i ], [ 1, %.preheader.preheader.i.sink.split ] ; 7 uses
  %i.nv = zext i32 %.2197 to i64                  ; 5 uses
  br i1 %.not.i125, label %.preheader.i.us.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i
  %xtraiter = and i64 %i.nv, 1
  %i.nw = icmp eq i32 %.2197, 1
  br i1 %i.nw, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.nv, 4294967294
  br label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.preheader.i.thread, %.preheader.preheader.i
  %i.nx = phi i64 [ 1, %.preheader.preheader.i.thread ], [ %i.nv, %.preheader.preheader.i ] ; 5 uses
  %.2155.i270 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.2155.i, %.preheader.preheader.i ] ; 5 uses
  %.2269 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.1193, %.preheader.preheader.i ] ; 2 uses
  %.2197267 = phi i32 [ 1, %.preheader.preheader.i.thread ], [ %.2197, %.preheader.preheader.i ] ; 2 uses
  %i.ny = add nsw i64 %i.nx, -1
  %xtraiter304 = and i64 %i.nx, 3                 ; 3 uses
  %i.nz = icmp ult i64 %i.ny, 3
  br i1 %i.nz, label %.preheader.i.us.epil.preheader, label %.preheader.i.us.preheader.new

.preheader.i.us.preheader.new:                    ; preds = %.preheader.i.us.preheader
  %unroll_iter307 = and i64 %i.nx, 4294967292
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.preheader.new
  %indvars.iv143.i.us = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %indvars.iv.next144.i.us.3, %.preheader.i.us ] ; 5 uses
  %niter308 = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %niter308.next.3, %.preheader.i.us ]
  %i.oa = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i32 3, ptr %i.ob, align 8, !tbaa !43
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 %.2155.i270, ptr %i.oc, align 4, !tbaa !45
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  store i32 1, ptr %i.od, align 8, !tbaa !46
  %i.oe = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  store i32 3, ptr %i.of, align 4, !tbaa !43
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  store i32 %.2155.i270, ptr %i.og, align 8, !tbaa !45
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 52
  store i32 1, ptr %i.oh, align 4, !tbaa !46
  %i.oi = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store i32 3, ptr %i.oj, align 16, !tbaa !43
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 68
  store i32 %.2155.i270, ptr %i.ok, align 4, !tbaa !45
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 80
  store i32 1, ptr %i.ol, align 16, !tbaa !46
  %i.om = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 92
  store i32 3, ptr %i.on, align 4, !tbaa !43
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 96
  store i32 %.2155.i270, ptr %i.oo, align 16, !tbaa !45
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 108
  store i32 1, ptr %i.op, align 4, !tbaa !46
  %indvars.iv.next144.i.us.3 = add nuw nsw i64 %indvars.iv143.i.us, 4 ; 2 uses
  %niter308.next.3 = add i64 %niter308, 4         ; 2 uses
  %niter308.ncmp.3 = icmp eq i64 %niter308.next.3, %unroll_iter307
  br i1 %niter308.ncmp.3, label %EncoderAnalyze.exit.loopexit.unr-lcssa, label %.preheader.i.us, !llvm.loop !47

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv143.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next144.i.1, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.oq = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i32 3, ptr %i.or, align 8, !tbaa !43
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  store i32 %.2155.i, ptr %i.os, align 4, !tbaa !45
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store i32 4, ptr %i.ot, align 8, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 20
  store i32 %.2155.i, ptr %i.ou, align 4, !tbaa !45
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store i32 2, ptr %i.ov, align 8, !tbaa !46
  %i.ow = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 36
  store i32 3, ptr %i.ox, align 4, !tbaa !43
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  store i32 %.2155.i, ptr %i.oy, align 8, !tbaa !45
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 44
  store i32 4, ptr %i.oz, align 4, !tbaa !43
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  store i32 %.2155.i, ptr %i.pa, align 8, !tbaa !45
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 52
  store i32 2, ptr %i.pb, align 4, !tbaa !46
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EncoderAnalyze.exit.loopexit298.unr-lcssa, label %.preheader.i, !llvm.loop !47

EncoderAnalyze.exit.loopexit.unr-lcssa:           ; preds = %.preheader.i.us
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil.preheader

.preheader.i.us.epil.preheader:                   ; preds = %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.preheader
  %indvars.iv143.i.us.epil.init = phi i64 [ 0, %.preheader.i.us.preheader ], [ %indvars.iv.next144.i.us.3, %EncoderAnalyze.exit.loopexit.unr-lcssa ]
  %lcmp.mod306 = icmp ne i64 %xtraiter304, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %.preheader.i.us.epil

.preheader.i.us.epil:                             ; preds = %.preheader.i.us.epil, %.preheader.i.us.epil.preheader
  %indvars.iv143.i.us.epil = phi i64 [ %indvars.iv.next144.i.us.epil, %.preheader.i.us.epil ], [ %indvars.iv143.i.us.epil.init, %.preheader.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.us.epil ], [ 0, %.preheader.i.us.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us.epil ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i32 3, ptr %i.pd, align 4, !tbaa !43
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 %.2155.i270, ptr %i.pe, align 4, !tbaa !45
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  store i32 1, ptr %i.pf, align 4, !tbaa !46
  %indvars.iv.next144.i.us.epil = add nuw nsw i64 %indvars.iv143.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter304
  br i1 %epil.iter.cmp.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil, !llvm.loop !48

EncoderAnalyze.exit.loopexit298.unr-lcssa:        ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EncoderAnalyze.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %EncoderAnalyze.exit.loopexit298.unr-lcssa, %.preheader.i.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next144.i.1, %EncoderAnalyze.exit.loopexit298.unr-lcssa ]
  %lcmp.mod303 = trunc i32 %.2197 to i1
  call void @llvm.assume(i1 %lcmp.mod303)
  %i.pg = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.epil.init ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i32 3, ptr %i.ph, align 4, !tbaa !43
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 %.2155.i, ptr %i.pi, align 4, !tbaa !45
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i32 4, ptr %i.pj, align 4, !tbaa !43
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 20
  store i32 %.2155.i, ptr %i.pk, align 4, !tbaa !45
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i32 2, ptr %i.pl, align 4, !tbaa !46
  br label %EncoderAnalyze.exit

EncoderAnalyze.exit:                              ; preds = %.preheader.i.epil.preheader, %EncoderAnalyze.exit.loopexit298.unr-lcssa, %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.epil
  %11 = phi i64 [ %i.nx, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %i.nx, %.preheader.i.us.epil ], [ %i.nv, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %i.nv, %.preheader.i.epil.preheader ]
  %.2268 = phi i32 [ %.2269, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2269, %.preheader.i.us.epil ], [ %.1193, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.1193, %.preheader.i.epil.preheader ] ; 2 uses
  %.2197266 = phi i32 [ %.2197267, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2197267, %.preheader.i.us.epil ], [ %.2197, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.2197, %.preheader.i.epil.preheader ] ; 3 uses
  %i.pm = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !18
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !22
  %i.pr = mul nsw i32 %i.pq, %i.po                ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  %i.pt = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.ps, i32 noundef %i.pr) #7
  %.not.i126 = icmp eq i32 %i.pt, 0
  br i1 %.not.i126, label %EncoderAnalyze.exit.thread, label %bb.w

EncoderAnalyze.exit.thread:                       ; preds = %EncoderAnalyze.exit, %bb.h
  %i.pu = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.w:                                             ; preds = %EncoderAnalyze.exit
  %i.pv = add nsw i32 %i.pr, -1
  %i.pw = sdiv i32 %i.pv, 16
  %i.px = add nsw i32 %i.pw, 1                    ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.py, i32 noundef %i.px) #7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.pz, i32 noundef %i.px) #7
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qa, i32 noundef %i.px) #7
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qb, i32 noundef %i.px) #7
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !50
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qf = lshr i32 %.2197266, 1                   ; 4 uses
  %.not230 = icmp eq i32 %i.qf, 0
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.qh = sub nsw i32 %.2197266, %i.qf
  %narrow = mul nsw i32 %i.qh, 28
  %i.qi = sext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.qi
  %12 = lshr i64 %11, 1
  %i.qj = mul nuw nsw i64 %12, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qg, ptr align 4 %scevgep, i64 %i.qj, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 424
  store i32 %i.qf, ptr %i.qk, align 8, !tbaa !51
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w
  %.0102 = phi i32 [ %i.qf, %._crit_edge ], [ 0, %bb.w ] ; 3 uses
  %i.ql = sub nsw i32 %.2197266, %.0102           ; 3 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %bb.y
  %i.qn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.qo = zext nneg i32 %i.ql to i64
  %i.qp = mul nuw nsw i64 %i.qo, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qn, ptr nonnull align 16 %3, i64 %i.qp, i1 false)
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.y
  %i.qq = getelementptr inbounds nuw i8, ptr %6, i64 424
  store i32 %i.ql, ptr %i.qq, align 8, !tbaa !51
  %.inv.not = icmp eq i32 %.0102, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qt = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.sroa.gep139 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %7, i64 432
  %.sroa.gep145 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.gep148 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.gep153 = getelementptr inbounds nuw i8, ptr %6, i64 432
  %.sroa.gep156 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.gep159 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %6, align 8, !tbaa !53
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 428
  store i32 %.2268, ptr %.sroa.gep, align 4, !tbaa !54
  store ptr %1, ptr %.sroa.gep150, align 8, !tbaa !55
  %i.qw = load ptr, ptr %i.qu, align 8, !tbaa !56
  store ptr %i.qw, ptr %.sroa.gep153, align 8, !tbaa !57
  store ptr %2, ptr %.sroa.gep156, align 8, !tbaa !58
  store ptr %i.a, ptr %.sroa.gep159, align 8, !tbaa !59
  %i.qx = load ptr, ptr %i.g, align 8, !tbaa !60
  call void %i.qx(ptr noundef nonnull %4) #7
  store ptr %6, ptr %..sroa.sel.v.sroa.gep, align 8, !tbaa !62
  store ptr null, ptr %..sroa.sel.v.sroa.gep245, align 8, !tbaa !64
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep248, align 8, !tbaa !65
  br i1 %.inv.not, label %bb.ab, label %._crit_edge227.peel.newph

._crit_edge227.peel.newph:                        ; preds = %._crit_edge227
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 428
  store ptr %0, ptr %7, align 8, !tbaa !53
  store i32 %.2268, ptr %.sroa.sel.v.sroa.sel, align 4, !tbaa !54
  %i.qy = load i32, ptr %i.qr, align 8, !tbaa !18
  %i.qz = load i32, ptr %i.qs, align 4, !tbaa !22
  %i.ra = call i32 @WebPPictureView(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.qy, i32 noundef %i.qz, ptr noundef nonnull %10) #7 ; 0 uses
  store ptr null, ptr %i.qt, align 8, !tbaa !66
  store ptr %10, ptr %.sroa.gep139, align 8, !tbaa !55
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !56
  %i.rc = icmp eq ptr %i.rb, null
  %i.rd = select i1 %i.rc, ptr null, ptr %8
  store ptr %i.rd, ptr %.sroa.gep142, align 8, !tbaa !57
  %i.re = call i32 @VP8LBitWriterClone(ptr noundef %2, ptr noundef nonnull %9) #7
  %.not118 = icmp eq i32 %i.re, 0
  br i1 %.not118, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %._crit_edge227.peel.newph
  %i.rf = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.z:                                             ; preds = %._crit_edge227.peel.newph
  store ptr %9, ptr %.sroa.gep145, align 8, !tbaa !58
  %i.rg = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 18 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %VP8LEncoderNew.exit128.thread, label %bb.aa

VP8LEncoderNew.exit128.thread:                    ; preds = %bb.z
  %i.ri = call i32 @WebPEncodingSetError(ptr noundef nonnull %10, i32 noundef 1) #7 ; 0 uses
  br label %EncoderInit.exit132.thread

bb.aa:                                            ; preds = %bb.z
  store ptr %0, ptr %i.rg, align 8, !tbaa !7
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 2 uses
  store ptr %10, ptr %i.rj, align 8, !tbaa !15
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  store i32 0, ptr %i.rk, align 8, !tbaa !16
  call void @VP8LEncDspInit() #7
  %i.rl = load ptr, ptr %i.rj, align 8, !tbaa !15 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !22
  %i.rq = mul nsw i32 %i.rp, %i.rn                ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rg, i64 2312
  %i.rs = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.rr, i32 noundef %i.rq) #7
  %.not.i129 = icmp eq i32 %i.rs, 0
  br i1 %.not.i129, label %EncoderInit.exit132.thread, label %.loopexit310

EncoderInit.exit132.thread:                       ; preds = %bb.aa, %VP8LEncoderNew.exit128.thread
  %i.rt = phi ptr [ %i.rg, %VP8LEncoderNew.exit128.thread ], [ %i.rg, %bb.aa ]
  %i.ru = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

.loopexit310:                                     ; preds = %bb.aa
  %i.rv = add nsw i32 %i.rq, -1
  %i.rw = sdiv i32 %i.rv, 16
  %i.rx = add nsw i32 %i.rw, 1                    ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rg, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.ry, i32 noundef %i.rx) #7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rg, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.rz, i32 noundef %i.rx) #7
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rg, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sa, i32 noundef %i.rx) #7
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rg, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sb, i32 noundef %i.rx) #7
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rg, i64 68
  %i.sd = load <2 x i32>, ptr %i.ed, align 4, !tbaa !3
  store <2 x i32> %i.sd, ptr %i.sc, align 4, !tbaa !3
  %i.se = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rg, i64 76
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !32
  %i.sg = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rg, i64 100
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !26
  %i.si = getelementptr inbounds nuw i8, ptr %i.rg, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.si, ptr noundef nonnull align 8 dereferenceable(1024) %i.qv, i64 1024, i1 false)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rg, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sj, ptr noundef nonnull align 8 dereferenceable(1024) %i.aa, i64 1024, i1 false)
  store ptr %i.rg, ptr %.sroa.gep148, align 8, !tbaa !59
  %i.sk = load ptr, ptr %i.g, align 8, !tbaa !60
  call void %i.sk(ptr noundef nonnull %5) #7
  store ptr %7, ptr %..sroa.sel.v.sroa.gep243, align 8, !tbaa !62
  store ptr null, ptr %..sroa.sel.v.sroa.gep246, align 8, !tbaa !64
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep249, align 8, !tbaa !65
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit310, %._crit_edge227
  %.1104.lcssa = phi ptr [ null, %._crit_edge227 ], [ %i.rg, %.loopexit310 ] ; 7 uses
  %.not120 = icmp eq i32 %.0102, 0
  br i1 %.not120, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !67
  %i.sn = call i32 %i.sm(ptr noundef nonnull %5) #7
  %.not121 = icmp eq i32 %i.sn, 0
  br i1 %.not121, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.so = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.ae:                                            ; preds = %bb.ac
  %i.sp = load ptr, ptr %i.qu, align 8, !tbaa !56 ; 2 uses
  %.not122 = icmp eq ptr %i.sp, null
  br i1 %.not122, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %8, ptr noundef nonnull align 4 dereferenceable(188) %i.sp, i64 188, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !68
  call void %i.sr(ptr noundef nonnull %5) #7
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !69
  call void %i.st(ptr noundef nonnull %4) #7
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !70
  %i.sw = call i32 %i.sv(ptr noundef nonnull %4) #7
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !71
  call void %i.sy(ptr noundef nonnull %4) #7
  %i.sz = load ptr, ptr %i.su, align 8, !tbaa !70
  %i.ta = call i32 %i.sz(ptr noundef nonnull %5) #7
  %i.tb = load ptr, ptr %i.sx, align 8, !tbaa !71
  call void %i.tb(ptr noundef nonnull %5) #7
  %i.tc = icmp ne i32 %i.sw, 0
  %i.td = icmp ne i32 %i.ta, 0
  %or.cond = select i1 %i.tc, i1 %i.td, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !72
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %bb.ai, label %VP8LEncoderDelete.exit134

bb.ai:                                            ; preds = %bb.ah
  %i.th = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !72
  %i.tj = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef %i.ti) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.aj:                                            ; preds = %bb.ag
  %i.tk = getelementptr inbounds nuw i8, ptr %9, i64 24
end_hunk_0
