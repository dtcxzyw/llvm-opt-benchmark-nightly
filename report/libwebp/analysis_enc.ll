Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/analysis_enc?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VP8EncAnalyze:bb.a
  %i.jf = add nsw i32 %i.jd, %i.je
  %i.jg = sdiv i32 %i.jf, %i.jc                   ; 4 uses
  %i.jh = sub nsw i32 %i.fx, %i.jg
  %i.ji = call i32 @llvm.abs.i32(i32 %i.jh, i1 true)
  %i.jj = add nuw nsw i32 %i.ji, %.198.i.us.2
  store i32 %i.jg, ptr %i.fw, align 4, !tbaa !35
  %i.jk = mul nsw i32 %i.jg, %i.jc
  %i.jl = add nsw i32 %i.jk, %.2.i.us.2
  %i.jm = add nsw i32 %i.jc, %.1100.i.us.2
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph146.i.us.3, %bb.q, %bb.p, %bb.n, %bb.l
  %i.jn = phi i32 [ %i.fx, %bb.l ], [ %i.fx, %bb.n ], [ %i.fx, %bb.p ], [ %i.jg, %bb.q ], [ %i.fx, %.lr.ph146.i.us.3 ]
  %i.jo = phi i32 [ %i.fy, %bb.l ], [ %i.fy, %bb.n ], [ %i.jb, %bb.p ], [ %i.jb, %bb.q ], [ %i.jb, %.lr.ph146.i.us.3 ]
  %i.jp = phi i32 [ %i.fz, %bb.l ], [ %i.ip, %bb.n ], [ %i.ip, %bb.p ], [ %i.ip, %bb.q ], [ %i.ip, %.lr.ph146.i.us.3 ]
  %.1100.i.us.lcssa = phi i32 [ %.1100.i.us, %bb.l ], [ %.1100.i.us.1, %bb.n ], [ %.1100.i.us.2, %bb.p ], [ %i.jm, %bb.q ], [ %.1100.i.us.2, %.lr.ph146.i.us.3 ] ; 2 uses
  %.198.i.us.lcssa = phi i32 [ %.198.i.us, %bb.l ], [ %.198.i.us.1, %bb.n ], [ %.198.i.us.2, %bb.p ], [ %i.jj, %bb.q ], [ %.198.i.us.2, %.lr.ph146.i.us.3 ]
  %.2.i.us.lcssa = phi i32 [ %.2.i.us, %bb.l ], [ %.2.i.us.1, %bb.n ], [ %.2.i.us.2, %bb.p ], [ %i.jl, %bb.q ], [ %.2.i.us.2, %.lr.ph146.i.us.3 ]
  %i.jq = icmp slt i32 %.198.i.us.lcssa, 5
  %i.jr = add nuw nsw i32 %.1102150.i.us, 1       ; 2 uses
  %exitcond187.not.i.us = icmp eq i32 %i.jr, 6
  %or.cond.i.us = select i1 %i.jq, i1 true, i1 %exitcond187.not.i.us
  br i1 %or.cond.i.us, label %._crit_edge.thread.sink.split.i, label %.preheader125.i.us, !llvm.loop !45

.preheader124.i:                                  ; preds = %.preheader126.i
  br i1 %.not138.i, label %._crit_edge.thread.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.preheader124.i, %bb.r
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %bb.r ], [ %i.fm, %.preheader124.i ] ; 4 uses
  %.4139.i = phi i32 [ %.6.i, %bb.r ], [ 0, %.preheader124.i ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !35 ; 3 uses
  %.not114.i = icmp eq i32 %i.jt, 0
  br i1 %.not114.i, label %bb.r, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph141.i
  %i.ju = zext nneg i32 %.4139.i to i64           ; 5 uses
  %i.jv = add nuw nsw i32 %.4139.i, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.jv)
  %i.jw = add nsw i32 %smax.i, -1                 ; 4 uses
  %i.jx = trunc nuw nsw i64 %indvars.iv176.i to i32 ; 7 uses
  %indvars.iv.next174.i100 = add nuw nsw i64 %i.ju, 1 ; 4 uses
  %i.jy = icmp slt i64 %indvars.iv.next174.i100, %i.fl
  br i1 %i.jy, label %.lr.ph, label %.critedge4.i

.preheader.i:                                     ; preds = %.lr.ph
  %indvars.iv.next174.i = add nuw nsw i64 %i.ju, 2 ; 4 uses
  %i.jz = icmp slt i64 %indvars.iv.next174.i, %i.fl
  br i1 %i.jz, label %.lr.ph.1, label %.critedge4.i

.lr.ph.1:                                         ; preds = %.preheader.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !35
  %i.kc = sub nsw i32 %i.jx, %i.kb
  %i.kd = call i32 @llvm.abs.i32(i32 %i.kc, i1 true)
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !35
  %i.kg = sub nsw i32 %i.jx, %i.kf
  %i.kh = call i32 @llvm.abs.i32(i32 %i.kg, i1 true)
  %i.ki = icmp samesign ult i32 %i.kd, %i.kh
  br i1 %i.ki, label %.preheader.i.1, label %.critedge4.loopexit.i, !llvm.loop !43

.preheader.i.1:                                   ; preds = %.lr.ph.1
  %indvars.iv.next174.i.1 = add nuw nsw i64 %i.ju, 3 ; 2 uses
  %i.kj = icmp slt i64 %indvars.iv.next174.i.1, %i.fl
  br i1 %i.kj, label %.lr.ph.2, label %.critedge4.i

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.1
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !35
  %i.km = sub nsw i32 %i.jx, %i.kl
  %i.kn = call i32 @llvm.abs.i32(i32 %i.km, i1 true)
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !35
  %i.kq = sub nsw i32 %i.jx, %i.kp
  %i.kr = call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = icmp samesign ult i32 %i.kn, %i.kr
  br i1 %i.ks, label %.critedge4.i, label %.critedge4.loopexit.i, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !35
  %i.kv = sub nsw i32 %i.jx, %i.ku
  %i.kw = call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ju
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !35
  %i.kz = sub nsw i32 %i.jx, %i.ky
  %i.la = call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = icmp samesign ult i32 %i.kw, %i.la
  br i1 %i.lb, label %.preheader.i, label %.critedge4.loopexit.i, !llvm.loop !43

.critedge4.loopexit.i:                            ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv173.i101.lcssa = phi i64 [ %i.ju, %.lr.ph ], [ %indvars.iv.next174.i100, %.lr.ph.1 ], [ %indvars.iv.next174.i, %.lr.ph.2 ]
  %i.lc = trunc nuw nsw i64 %indvars.iv173.i101.lcssa to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.preheader.i, %.preheader.i.1, %.lr.ph.2, %.preheader.preheader.i, %.critedge4.loopexit.i
  %.5.lcssa.i = phi i32 [ %i.lc, %.critedge4.loopexit.i ], [ %i.jw, %.preheader.preheader.i ], [ %i.jw, %.lr.ph.2 ], [ %i.jw, %.preheader.i.1 ], [ %i.jw, %.preheader.i ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i
  store i32 %.5.lcssa.i, ptr %i.ld, align 4, !tbaa !35
  %i.le = mul nsw i32 %i.jt, %i.jx
  %i.lf = zext nneg i32 %.5.lcssa.i to i64        ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !35
  %i.li = add nsw i32 %i.lh, %i.le
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !35
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lf ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !35
  %i.ll = add nsw i32 %i.lk, %i.jt
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i, %.lr.ph141.i
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge4.i ], [ %.4139.i, %.lr.ph141.i ]
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.thread.i, label %.lr.ph141.i, !llvm.loop !44

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i.us
  %i.lm = sdiv i32 %.1100.i.us.lcssa, 2
  %i.ln = add nsw i32 %.2.i.us.lcssa, %i.lm
  %i.lo = sdiv i32 %i.ln, %.1100.i.us.lcssa
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.r, %.preheader124.i, %._crit_edge.thread.sink.split.i
  %i.lp = phi i32 [ %i.id, %._crit_edge.thread.sink.split.i ], [ %i.fg, %.preheader124.i ], [ %i.fg, %bb.r ] ; 5 uses
  %i.lq = phi i32 [ %i.lo, %._crit_edge.thread.sink.split.i ], [ poison, %.preheader124.i ], [ poison, %bb.r ] ; 2 uses
  %i.lr = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.ls = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lr                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %._crit_edge.thread.i
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next189.i, %bb.s ] ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !74
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv188.i ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !38
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !35 ; 2 uses
  %i.md = trunc i32 %i.mc to i8
  %i.me = load i8, ptr %i.lx, align 4
  %i.mf = shl i8 %i.md, 5
  %i.mg = and i8 %i.mf, 96
  %i.mh = and i8 %i.me, -97
  %i.mi = or disjoint i8 %i.mg, %i.mh
  store i8 %i.mi, ptr %i.lx, align 4
  %i.mj = sext i32 %i.mc to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.ly, align 1, !tbaa !38
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.mn = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.mo = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.mp = mul nsw i32 %i.mo, %i.mn                ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next189.i, %i.mq
  br i1 %i.mr, label %bb.s, label %._crit_edge154.i, !llvm.loop !46

._crit_edge154.i:                                 ; preds = %bb.s, %._crit_edge.thread.i
  %.lcssa128.i = phi i32 [ %i.lr, %._crit_edge.thread.i ], [ %i.mn, %bb.s ] ; 7 uses
  %.lcssa127.i = phi i32 [ %i.ls, %._crit_edge.thread.i ], [ %i.mo, %bb.s ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.lt, %._crit_edge.thread.i ], [ %i.mp, %bb.s ]
  %i.ms = icmp sgt i32 %i.dl, 1
  br i1 %i.ms, label %bb.t, label %SmoothSegmentMap.exit.i

bb.t:                                             ; preds = %._crit_edge154.i
  %i.mt = load ptr, ptr %0, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 68
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !75
  %i.mw = and i32 %i.mv, 1
  %.not112.i = icmp eq i32 %i.mw, 0
  br i1 %.not112.i, label %SmoothSegmentMap.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mx = sext i32 %.lcssa.i to i64
  %i.my = call ptr @WebPSafeMalloc(i64 noundef %i.mx, i64 noundef 1) #8 ; 6 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %SmoothSegmentMap.exit.i, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.u
  %i.na = add nsw i32 %.lcssa127.i, -1
  %i.nb = icmp sgt i32 %.lcssa127.i, 2
  br i1 %i.nb, label %.preheader62.lr.ph.i.i, label %._crit_edge71.split.i.i

.preheader62.lr.ph.i.i:                           ; preds = %.preheader63.i.i
  %i.nc = add i32 %.lcssa128.i, -1                ; 3 uses
  %i.nd = icmp sgt i32 %.lcssa128.i, 2
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 23648 ; 4 uses
  %i.nf = sub nsw i32 0, %.lcssa128.i
  %i.ng = xor i32 %.lcssa128.i, -1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = sext i32 %i.nf to i64
  %i.nj = sub i32 1, %.lcssa128.i
  %i.nk = sext i32 %i.nj to i64
  %i.nl = sext i32 %i.nc to i64
  %i.nm = sext i32 %.lcssa128.i to i64
  br i1 %i.nd, label %.preheader62.preheader.i.i, label %._crit_edge71.split.i.i

.preheader62.preheader.i.i:                       ; preds = %.preheader62.lr.ph.i.i
  %i.nn = zext nneg i32 %.lcssa128.i to i64       ; 2 uses
  %wide.trip.count78.i.i = zext nneg i32 %i.na to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.nc to i64    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader62.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 1, %.preheader62.preheader.i.i ], [ %indvars.iv.next76.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.nr = mul nuw nsw i64 %indvars.iv75.i.i, %i.nn
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i, %.preheader62.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.preheader62.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ns = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.nt = add nuw nsw i64 %indvars.iv.i.i, %i.nr  ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nt ; 8 uses
  %i.nv = load i8, ptr %i.nu, align 4
  %i.nw = lshr i8 %i.nv, 5
  %i.nx = and i8 %i.nw, 3
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nh
  %i.nz = load i8, ptr %i.ny, align 4
  %i.oa = lshr i8 %i.nz, 5
  %i.ob = and i8 %i.oa, 3
  %i.oc = zext nneg i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !35
  %i.of = add nsw i32 %i.oe, 1
  store i32 %i.of, ptr %i.od, align 4, !tbaa !35
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.ni
  %i.oh = load i8, ptr %i.og, align 4
  %i.oi = lshr i8 %i.oh, 5
  %i.oj = and i8 %i.oi, 3
  %i.ok = zext nneg i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !35
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.ol, align 4, !tbaa !35
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nk
  %i.op = load i8, ptr %i.oo, align 4
  %i.oq = lshr i8 %i.op, 5
  %i.or = and i8 %i.oq, 3
  %i.os = zext nneg i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.os ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !35
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !35
  %i.ow = getelementptr inbounds i8, ptr %i.nu, i64 -4
  %i.ox = load i8, ptr %i.ow, align 4
  %i.oy = lshr i8 %i.ox, 5
  %i.oz = and i8 %i.oy, 3
  %i.pa = zext nneg i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !35
  %i.pd = add nsw i32 %i.pc, 1
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !35
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.pf = load i8, ptr %i.pe, align 4
  %i.pg = lshr i8 %i.pf, 5
  %i.ph = and i8 %i.pg, 3
  %i.pi = zext nneg i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pi ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !35
  %i.pl = add nsw i32 %i.pk, 1
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !35
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nl
  %i.pn = load i8, ptr %i.pm, align 4
  %i.po = lshr i8 %i.pn, 5
  %i.pp = and i8 %i.po, 3
  %i.pq = zext nneg i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !35
  %i.pt = add nsw i32 %i.ps, 1
  store i32 %i.pt, ptr %i.pr, align 4, !tbaa !35
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nm ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 4
  %i.pw = lshr i8 %i.pv, 5
  %i.px = and i8 %i.pw, 3
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.py ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !35
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !35
  %i.qc = getelementptr i8, ptr %i.pu, i64 4
  %i.qd = load i8, ptr %i.qc, align 4
  %i.qe = lshr i8 %i.qd, 5
  %i.qf = and i8 %i.qe, 3
  %i.qg = zext nneg i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qg ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !35
  %i.qj = add nsw i32 %i.qi, 1
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !35
  %i.qk = load i32, ptr %i.a, align 16, !tbaa !35
  %i.ql = icmp sgt i32 %i.qk, 4
  br i1 %i.ql, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qm = load i32, ptr %i.no, align 4, !tbaa !35
  %i.qn = icmp sgt i32 %i.qm, 4
  br i1 %i.qn, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.qo = load i32, ptr %i.np, align 8, !tbaa !35
  %i.qp = icmp sgt i32 %i.qo, 4
  br i1 %i.qp, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qq = load i32, ptr %i.nq, align 4, !tbaa !35
  %i.qr = icmp sgt i32 %i.qq, 4
  %spec.select.i.i = select i1 %i.qr, i8 3, i8 %i.nx
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.054.i.i = phi i8 [ %spec.select.i.i, %bb.y ], [ 0, %bb.v ], [ 1, %bb.w ], [ 2, %bb.x ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nt
  store i8 %.054.i.i, ptr %i.qs, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count78.i.i
  br i1 %exitcond79.not.i.i, label %.preheader.i.i.preheader, label %.preheader62.i.i, !llvm.loop !48

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.qt = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.qt, 1
  %i.qu = icmp eq i32 %i.nc, 2
  %unroll_iter = and i64 %i.qt, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod181 = trunc i64 %i.qt to i1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge69.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %._crit_edge69.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.qv = mul nuw nsw i64 %indvars.iv85.i.i, %i.nn ; 3 uses
  br i1 %i.qu, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %invariant.op = add nuw nsw i64 1, %i.qv
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader.i.i.new
  %indvars.iv80.i.i = phi i64 [ 1, %.preheader.i.i.new ], [ %indvars.iv.next81.i.i.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.1, %bb.z ]
  %i.qw = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.qx = add nuw nsw i64 %indvars.iv80.i.i, %i.qv ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.qx
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !76
  %i.rb = load i8, ptr %i.qy, align 4
  %i.rc = shl i8 %i.ra, 5
  %i.rd = and i8 %i.rc, 96
  %i.re = and i8 %i.rb, -97
  %i.rf = or disjoint i8 %i.re, %i.rd
  store i8 %i.rf, ptr %i.qy, align 4
  %i.rg = load ptr, ptr %i.ne, align 8, !tbaa !74
  %.reass = add nuw nsw i64 %indvars.iv80.i.i, %invariant.op ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %.reass ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.my, i64 %.reass
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !76
  %i.rk = load i8, ptr %i.rh, align 4
  %i.rl = shl i8 %i.rj, 5
  %i.rm = and i8 %i.rl, 96
  %i.rn = and i8 %i.rk, -97
  %i.ro = or disjoint i8 %i.rn, %i.rm
  store i8 %i.ro, ptr %i.rh, align 4
  %indvars.iv.next81.i.i.1 = add nuw nsw i64 %indvars.iv80.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge69.i.i.unr-lcssa, label %bb.z, !llvm.loop !49

._crit_edge69.i.i.unr-lcssa:                      ; preds = %bb.z
  br i1 %lcmp.mod.not, label %._crit_edge69.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge69.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv80.i.i.epil.init = phi i64 [ 1, %.preheader.i.i ], [ %indvars.iv.next81.i.i.1, %._crit_edge69.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod181)
  %i.rp = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.rq = add nuw nsw i64 %indvars.iv80.i.i.epil.init, %i.qv ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rq ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !76
  %i.ru = load i8, ptr %i.rr, align 4
  %i.rv = shl i8 %i.rt, 5
  %i.rw = and i8 %i.rv, 96
  %i.rx = and i8 %i.ru, -97
  %i.ry = or disjoint i8 %i.rx, %i.rw
  store i8 %i.ry, ptr %i.rr, align 4
end_hunk_0
