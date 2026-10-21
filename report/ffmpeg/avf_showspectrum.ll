Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showspectrum?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@plot_spectrum_column:bb.a
  %i.gs = load i32, ptr %i.ga, align 4, !tbaa !70
  %i.gt = sext i32 %i.gs to i64
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.0265355.1, i64 %i.gu
  %indvars.iv.next413.1 = add nuw nsw i64 %indvars.iv412.1, 1 ; 2 uses
  %i.gw = load i32, ptr %i.m, align 4, !tbaa !84  ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next413.1, %i.gx
  br i1 %i.gy, label %.lr.ph357.1, label %._crit_edge358.1, !llvm.loop !287

._crit_edge358.1:                                 ; preds = %.lr.ph357.1
  %i.gz = icmp sgt i32 %i.gw, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ca, i64 72 ; 2 uses
  br i1 %i.gz, label %.lr.ph357.preheader.2, label %._crit_edge358.2

.lr.ph357.preheader.2:                            ; preds = %._crit_edge358.1
  %.pre441.a = load i32, ptr %i.et, align 8, !tbaa !52
  %.pre457.a = sext i32 %.pre441.a to i64
  %.pre439 = load i32, ptr %i.eq, align 4, !tbaa !68
  %.pre440.a = load i32, ptr %i.er, align 8, !tbaa !88
  %.pre453.a = xor i32 %.pre440.a, -1
  %.pre455 = add i32 %.pre439, %.pre453.a
  %.pre438 = load i32, ptr %i.ep, align 4, !tbaa !87
  %.pre451 = sext i32 %.pre438 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !69
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %.pre451
  %i.he = load i32, ptr %i.ha, align 8, !tbaa !70
  %i.hf = mul nsw i32 %.pre455, %i.he
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %.pre457.a
  br label %.lr.ph357.2

.lr.ph357.2:                                      ; preds = %.lr.ph357.2, %.lr.ph357.preheader.2
  %indvars.iv412.2 = phi i64 [ 0, %.lr.ph357.preheader.2 ], [ %indvars.iv.next413.2, %.lr.ph357.2 ] ; 2 uses
  %.0265355.2 = phi ptr [ %i.hi, %.lr.ph357.preheader.2 ], [ %i.hv, %.lr.ph357.2 ] ; 2 uses
  %i.hj = load ptr, ptr %i.eu, align 8, !tbaa !99
  %.idx499.a = shl nuw nsw i64 %indvars.iv412.2, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx499.a
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !77 ; 2 uses
  %i.hn = fcmp nsz ogt float %i.hm, 0.000000e+00
  %i.ho = select nsz i1 %i.hn, float %i.hm, float 0.000000e+00 ; 2 uses
  %i.hp = fcmp nsz ogt float %i.ho, 2.550000e+02
  %..i303.2 = select nsz i1 %i.hp, float 2.550000e+02, float %i.ho
  %i.hq = tail call i64 @llvm.lrint.i64.f32(float %..i303.2)
  %i.hr = trunc i64 %i.hq to i8
  store i8 %i.hr, ptr %.0265355.2, align 1, !tbaa !108
  %i.hs = load i32, ptr %i.ha, align 8, !tbaa !70
  %i.ht = sext i32 %i.hs to i64
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds i8, ptr %.0265355.2, i64 %i.hu
  %indvars.iv.next413.2 = add nuw nsw i64 %indvars.iv412.2, 1 ; 2 uses
  %i.hw = load i32, ptr %i.m, align 4, !tbaa !84  ; 2 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next413.2, %i.hx
  br i1 %i.hy, label %.lr.ph357.2, label %._crit_edge358.loopexit.2, !llvm.loop !287

._crit_edge358.loopexit.2:                        ; preds = %.lr.ph357.2
  %i.hz = icmp sgt i32 %i.hw, 0
  br label %._crit_edge358.2

._crit_edge358.2:                                 ; preds = %bb.g, %._crit_edge358, %._crit_edge358.loopexit.2, %._crit_edge358.1
  %i.ia = phi i1 [ %i.hz, %._crit_edge358.loopexit.2 ], [ false, %._crit_edge358.1 ], [ false, %._crit_edge358 ], [ false, %bb.g ]
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge358.2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ca, i64 76 ; 2 uses
  br i1 %i.ia, label %.lr.ph363, label %.loopexit

.lr.ph363:                                        ; preds = %bb.h
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !69
  %i.ie = load i32, ptr %i.ep, align 4, !tbaa !87
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %i.id, i64 %i.if
  %i.ih = load i32, ptr %i.eq, align 4, !tbaa !68
  %i.ii = load i32, ptr %i.er, align 8, !tbaa !88
  %i.ij = xor i32 %i.ii, -1
  %i.ik = add i32 %i.ih, %i.ij
  %i.il = load i32, ptr %i.ib, align 4, !tbaa !70
  %i.im = mul nsw i32 %i.ik, %i.il
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds i8, ptr %i.ig, i64 %i.in
  %i.ip = load i32, ptr %i.et, align 8, !tbaa !52
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.io, i64 %i.iq
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph363, %bb.i
  %indvars.iv419 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next420, %bb.i ] ; 2 uses
  %.0264361 = phi ptr [ %i.ir, %.lr.ph363 ], [ %i.je, %bb.i ] ; 2 uses
  %i.is = load ptr, ptr %i.eu, align 8, !tbaa !99
  %.idx500.a = shl nuw nsw i64 %indvars.iv419, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx500.a
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !77 ; 2 uses
  %i.iw = fcmp nsz ogt float %i.iv, 0.000000e+00
  %i.ix = select nsz i1 %i.iw, float %i.iv, float 0.000000e+00 ; 2 uses
  %i.iy = fcmp nsz ogt float %i.ix, 2.550000e+02
  %..i302 = select nsz i1 %i.iy, float 2.550000e+02, float %i.ix
  %i.iz = tail call i64 @llvm.lrint.i64.f32(float %..i302)
  %i.ja = trunc i64 %i.iz to i8
  store i8 %i.ja, ptr %.0264361, align 1, !tbaa !108
  %i.jb = load i32, ptr %i.ib, align 4, !tbaa !70
  %i.jc = sext i32 %i.jb to i64
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds i8, ptr %.0264361, i64 %i.jd
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.jf = load i32, ptr %i.m, align 4, !tbaa !84
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next420, %i.jg
  br i1 %i.jh, label %bb.i, label %.loopexit, !llvm.loop !288

bb.j:                                             ; preds = %bb.c
  switch i32 %i.ce, label %._crit_edge423 [
    i32 1, label %.preheader316
    i32 3, label %.preheader317
  ]

._crit_edge423:                                   ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %.pre.a = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.m

.preheader317:                                    ; preds = %bb.j
  %i.ji = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.jl = load i32, ptr %i.m, align 4, !tbaa !84  ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %.preheader317.split.preheader, label %.split.us

.preheader317.split.preheader:                    ; preds = %.preheader317
  %wide.trip.count385 = select i1 %.not, i64 3, i64 4
  br label %.preheader317.split

.preheader316:                                    ; preds = %bb.j
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.jq = load i32, ptr %i.m, align 4, !tbaa !84  ; 3 uses
  %i.jr = icmp sgt i32 %i.jq, 1
  br i1 %i.jr, label %.preheader315.preheader, label %.split330.us

.preheader315.preheader:                          ; preds = %.preheader316
  %wide.trip.count390 = select i1 %.not, i64 3, i64 4
  br label %.preheader315

.preheader315:                                    ; preds = %.preheader315.preheader, %._crit_edge327
  %i.js = phi i32 [ %i.jq, %.preheader315.preheader ], [ %i.kr, %._crit_edge327 ] ; 2 uses
  %indvars.iv387 = phi i64 [ 0, %.preheader315.preheader ], [ %indvars.iv.next388, %._crit_edge327 ] ; 3 uses
  %i.jt = icmp sgt i32 %i.js, 1
  br i1 %i.jt, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %.preheader315
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv387
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv387
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph326, %bb.k
  %.5325 = phi i32 [ 1, %.lr.ph326 ], [ %i.ko, %bb.k ] ; 3 uses
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !69 ; 2 uses
  %i.jx = add nsw i32 %.5325, -1
  %i.jy = load i32, ptr %i.jn, align 8, !tbaa !88 ; 2 uses
  %i.jz = add nsw i32 %i.jx, %i.jy
  %i.ka = load i32, ptr %i.jv, align 4, !tbaa !70 ; 2 uses
  %i.kb = mul nsw i32 %i.jz, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %i.jw, i64 %i.kc
  %i.ke = load i32, ptr %i.jp, align 4, !tbaa !87
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kd, i64 %i.kf
  %i.kh = add nsw i32 %i.jy, %.5325
  %i.ki = mul nsw i32 %i.kh, %i.ka
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.jw, i64 %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %i.kf
  %i.km = load i32, ptr %i.n, align 8, !tbaa !85
  %i.kn = sext i32 %i.km to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.kg, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  %i.ko = add nuw nsw i32 %.5325, 1               ; 2 uses
  %i.kp = load i32, ptr %i.m, align 4, !tbaa !84  ; 2 uses
  %i.kq = icmp slt i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.k, label %._crit_edge327, !llvm.loop !289

._crit_edge327:                                   ; preds = %bb.k, %.preheader315
  %i.kr = phi i32 [ %i.js, %.preheader315 ], [ %i.kp, %bb.k ] ; 2 uses
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %.split330.us, label %.preheader315, !llvm.loop !290

.split330.us:                                     ; preds = %._crit_edge327, %.preheader316
  %i.ks = phi i32 [ %i.jq, %.preheader316 ], [ %i.kr, %._crit_edge327 ]
  %i.kt = add nsw i32 %i.ks, -1                   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !52
  br label %bb.m

.preheader317.splitthread-pre-split:              ; preds = %._crit_edge
  %.pr = load i32, ptr %i.m, align 4, !tbaa !84
  br label %.preheader317.split

.preheader317.split:                              ; preds = %.preheader317.splitthread-pre-split, %.preheader317.split.preheader
  %i.kv = phi i32 [ %.pr, %.preheader317.splitthread-pre-split ], [ %i.jl, %.preheader317.split.preheader ] ; 2 uses
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %.preheader317.splitthread-pre-split ], [ 0, %.preheader317.split.preheader ] ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 1
  br i1 %i.kw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader317.split
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv382
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv382
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.6.in323 = phi i32 [ %i.kv, %.lr.ph ], [ %.6, %bb.l ] ; 3 uses
  %.6 = add nsw i32 %.6.in323, -1                 ; 2 uses
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !69 ; 2 uses
  %i.la = load i32, ptr %i.ji, align 8, !tbaa !88 ; 2 uses
  %i.lb = add nsw i32 %i.la, %.6
  %i.lc = load i32, ptr %i.ky, align 4, !tbaa !70 ; 2 uses
  %i.ld = mul nsw i32 %i.lb, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds i8, ptr %i.kz, i64 %i.le
  %i.lg = load i32, ptr %i.jk, align 4, !tbaa !87
  %i.lh = sext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  %i.lj = add nsw i32 %.6.in323, -2
  %i.lk = add nsw i32 %i.lj, %i.la
  %i.ll = mul nsw i32 %i.lk, %i.lc
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %i.kz, i64 %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %i.lh
  %i.lp = load i32, ptr %i.n, align 8, !tbaa !85
  %i.lq = sext i32 %i.lp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.lo, i64 %i.lq, i1 false)
  %i.lr = icmp samesign ugt i32 %.6.in323, 2
  br i1 %i.lr, label %bb.l, label %._crit_edge, !llvm.loop !291

._crit_edge:                                      ; preds = %bb.l, %.preheader317.split
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count385
  br i1 %exitcond386.not, label %.split.us, label %.preheader317.splitthread-pre-split, !llvm.loop !292

.split.us:                                        ; preds = %._crit_edge, %.preheader317
  %i.ls = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i32 0, ptr %i.ls, align 8, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge423, %.split.us, %.split330.us
  %i.lt = phi i32 [ %.pre.a, %._crit_edge423 ], [ 0, %.split.us ], [ %i.kt, %.split330.us ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.g, i64 300 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.g, i64 248 ; 4 uses
  %i.ly = load i32, ptr %i.n, align 8, !tbaa !85
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph334.preheader, label %._crit_edge335.2

.lr.ph334.preheader:                              ; preds = %bb.m
  %i.ma = load i32, ptr %i.lw, align 8, !tbaa !88
  %i.mb = add nsw i32 %i.ma, %i.lt
  %i.mc = load i32, ptr %i.lu, align 4, !tbaa !87
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.mf = load ptr, ptr %i.ca, align 8, !tbaa !69
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 %i.md
  %i.mh = load i32, ptr %i.me, align 8, !tbaa !70
  %i.mi = mul nsw i32 %i.mb, %i.mh
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  br label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %.lr.ph334
  %indvars.iv392 = phi i64 [ 0, %.lr.ph334.preheader ], [ %indvars.iv.next393, %.lr.ph334 ] ; 2 uses
  %.0263332 = phi ptr [ %i.mk, %.lr.ph334.preheader ], [ %i.mt, %.lr.ph334 ] ; 2 uses
  %i.ml = load ptr, ptr %i.lx, align 8, !tbaa !99
  %.idx = shl nuw nsw i64 %indvars.iv392, 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !77 ; 2 uses
  %i.mo = fcmp nsz ogt float %i.mn, 0.000000e+00
  %i.mp = select nsz i1 %i.mo, float %i.mn, float 0.000000e+00 ; 2 uses
  %i.mq = fcmp nsz ogt float %i.mp, 2.550000e+02
  %..i301 = select nsz i1 %i.mq, float 2.550000e+02, float %i.mp
  %i.mr = tail call i64 @llvm.lrint.i64.f32(float %..i301)
  %i.ms = trunc i64 %i.mr to i8
  store i8 %i.ms, ptr %.0263332, align 1, !tbaa !108
  %i.mt = getelementptr inbounds nuw i8, ptr %.0263332, i64 1
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.mu = load i32, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %i.mv = sext i32 %i.mu to i64
  %i.mw = icmp slt i64 %indvars.iv.next393, %i.mv
  br i1 %i.mw, label %.lr.ph334, label %._crit_edge335, !llvm.loop !293

._crit_edge335:                                   ; preds = %.lr.ph334
  %i.mx = icmp sgt i32 %i.mu, 0
  br i1 %i.mx, label %.lr.ph334.preheader.1, label %._crit_edge335.2

.lr.ph334.preheader.1:                            ; preds = %._crit_edge335
  %.pre426.a = load i32, ptr %i.lw, align 8, !tbaa !88
  %.pre425 = load i32, ptr %i.lv, align 8, !tbaa !52
  %.pre461.a = add nsw i32 %.pre426.a, %.pre425
  %.pre424 = load i32, ptr %i.lu, align 4, !tbaa !87
  %.pre459 = sext i32 %.pre424 to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !69
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 %.pre459
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ca, i64 68
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !70
  %i.nd = mul nsw i32 %.pre461.a, %i.nc
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %i.na, i64 %i.ne
  br label %.lr.ph334.1

.lr.ph334.1:                                      ; preds = %.lr.ph334.1, %.lr.ph334.preheader.1
  %indvars.iv392.1 = phi i64 [ 0, %.lr.ph334.preheader.1 ], [ %indvars.iv.next393.1, %.lr.ph334.1 ] ; 2 uses
  %.0263332.1 = phi ptr [ %i.nf, %.lr.ph334.preheader.1 ], [ %i.np, %.lr.ph334.1 ] ; 2 uses
  %i.ng = load ptr, ptr %i.lx, align 8, !tbaa !99
  %.idx494 = shl nuw nsw i64 %indvars.iv392.1, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx494
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !77 ; 2 uses
  %i.nk = fcmp nsz ogt float %i.nj, 0.000000e+00
  %i.nl = select nsz i1 %i.nk, float %i.nj, float 0.000000e+00 ; 2 uses
  %i.nm = fcmp nsz ogt float %i.nl, 2.550000e+02
  %..i301.1 = select nsz i1 %i.nm, float 2.550000e+02, float %i.nl
  %i.nn = tail call i64 @llvm.lrint.i64.f32(float %..i301.1)
  %i.no = trunc i64 %i.nn to i8
  store i8 %i.no, ptr %.0263332.1, align 1, !tbaa !108
  %i.np = getelementptr inbounds nuw i8, ptr %.0263332.1, i64 1
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392.1, 1 ; 2 uses
  %i.nq = load i32, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = icmp slt i64 %indvars.iv.next393.1, %i.nr
  br i1 %i.ns, label %.lr.ph334.1, label %._crit_edge335.1, !llvm.loop !293

._crit_edge335.1:                                 ; preds = %.lr.ph334.1
  %i.nt = icmp sgt i32 %i.nq, 0
  br i1 %i.nt, label %.lr.ph334.preheader.2, label %._crit_edge335.2

.lr.ph334.preheader.2:                            ; preds = %._crit_edge335.1
  %.pre429.a = load i32, ptr %i.lw, align 8, !tbaa !88
  %.pre428 = load i32, ptr %i.lv, align 8, !tbaa !52
  %.pre465.a = add nsw i32 %.pre429.a, %.pre428
  %.pre427 = load i32, ptr %i.lu, align 4, !tbaa !87
  %.pre463 = sext i32 %.pre427 to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !69
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %.pre463
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !70
  %i.nz = mul nsw i32 %.pre465.a, %i.ny
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds i8, ptr %i.nw, i64 %i.oa
  br label %.lr.ph334.2

.lr.ph334.2:                                      ; preds = %.lr.ph334.2, %.lr.ph334.preheader.2
  %indvars.iv392.2 = phi i64 [ 0, %.lr.ph334.preheader.2 ], [ %indvars.iv.next393.2, %.lr.ph334.2 ] ; 2 uses
  %.0263332.2 = phi ptr [ %i.ob, %.lr.ph334.preheader.2 ], [ %i.ol, %.lr.ph334.2 ] ; 2 uses
  %i.oc = load ptr, ptr %i.lx, align 8, !tbaa !99
  %.idx495 = shl nuw nsw i64 %indvars.iv392.2, 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.idx495
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load float, ptr %i.oe, align 4, !tbaa !77 ; 2 uses
  %i.og = fcmp nsz ogt float %i.of, 0.000000e+00
  %i.oh = select nsz i1 %i.og, float %i.of, float 0.000000e+00 ; 2 uses
  %i.oi = fcmp nsz ogt float %i.oh, 2.550000e+02
  %..i301.2 = select nsz i1 %i.oi, float 2.550000e+02, float %i.oh
  %i.oj = tail call i64 @llvm.lrint.i64.f32(float %..i301.2)
  %i.ok = trunc i64 %i.oj to i8
  store i8 %i.ok, ptr %.0263332.2, align 1, !tbaa !108
  %i.ol = getelementptr inbounds nuw i8, ptr %.0263332.2, i64 1
  %indvars.iv.next393.2 = add nuw nsw i64 %indvars.iv392.2, 1 ; 3 uses
  %i.om = load i32, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %i.on = sext i32 %i.om to i64
  %i.oo = icmp slt i64 %indvars.iv.next393.2, %i.on
  br i1 %i.oo, label %.lr.ph334.2, label %._crit_edge335.loopexit.2, !llvm.loop !293

._crit_edge335.loopexit.2:                        ; preds = %.lr.ph334.2
  %i.op = trunc nuw nsw i64 %indvars.iv.next393.2 to i32
  %i.oq = icmp slt i32 %i.om, 1
  %i.or = or i1 %.not, %i.oq
  br label %._crit_edge335.2

._crit_edge335.2:                                 ; preds = %bb.m, %._crit_edge335, %._crit_edge335.loopexit.2, %._crit_edge335.1
  %.not523 = phi i1 [ true, %._crit_edge335.1 ], [ %i.or, %._crit_edge335.loopexit.2 ], [ true, %._crit_edge335 ], [ true, %bb.m ]
  %.3274.lcssa.2 = phi i32 [ 0, %._crit_edge335.1 ], [ %i.op, %._crit_edge335.loopexit.2 ], [ 0, %._crit_edge335 ], [ 0, %bb.m ]
  %.3274.lcssa.2.mux = select i1 %.not, i32 %.3274.lcssa.2, i32 0
  br i1 %.not523, label %.loopexit, label %.lr.ph340

.lr.ph340:                                        ; preds = %._crit_edge335.2
  %i.os = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !69
  %i.ou = load i32, ptr %i.lu, align 4, !tbaa !87
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds i8, ptr %i.ot, i64 %i.ov
  %i.ox = load i32, ptr %i.lw, align 8, !tbaa !88
  %i.oy = load i32, ptr %i.lv, align 8, !tbaa !52
  %i.oz = add nsw i32 %i.ox, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ca, i64 76
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !70
  %i.pc = mul nsw i32 %i.oz, %i.pb
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds i8, ptr %i.ow, i64 %i.pd
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph340, %bb.n
  %indvars.iv399 = phi i64 [ 0, %.lr.ph340 ], [ %indvars.iv.next400, %bb.n ] ; 2 uses
  %.0338 = phi ptr [ %i.pe, %.lr.ph340 ], [ %i.po, %bb.n ] ; 2 uses
  %i.pf = load ptr, ptr %i.lx, align 8, !tbaa !99
  %.idx496 = shl nuw nsw i64 %indvars.iv399, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx496
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !77 ; 2 uses
  %i.pj = fcmp nsz ogt float %i.pi, 0.000000e+00
  %i.pk = select nsz i1 %i.pj, float %i.pi, float 0.000000e+00 ; 2 uses
  %i.pl = fcmp nsz ogt float %i.pk, 2.550000e+02
  %..i = select nsz i1 %i.pl, float 2.550000e+02, float %i.pk
  %i.pm = tail call i64 @llvm.lrint.i64.f32(float %..i)
  %i.pn = trunc i64 %i.pm to i8
  store i8 %i.pn, ptr %.0338, align 1, !tbaa !108
  %i.po = getelementptr inbounds nuw i8, ptr %.0338, i64 1
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.pp = load i32, ptr %i.n, align 8, !tbaa !85
  %i.pq = sext i32 %i.pp to i64
  %i.pr = icmp slt i64 %indvars.iv.next400, %i.pq
  br i1 %i.pr, label %bb.n, label %.loopexit, !llvm.loop !294

.loopexit:                                        ; preds = %bb.n, %bb.i, %._crit_edge335.2, %bb.h, %._crit_edge358.2
  %.5276 = phi i32 [ %.3274.lcssa.2.mux, %._crit_edge335.2 ], [ %.0271.lcssa, %._crit_edge358.2 ], [ %.0271.lcssa, %bb.h ], [ %.0271.lcssa, %bb.i ], [ 1, %bb.n ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !51 ; 2 uses
  %.not289 = icmp eq i32 %i.pt, 2                 ; 2 uses
  br i1 %.not289, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.pu = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !52 ; 2 uses
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.p, label %.thread

bb.p:                                             ; preds = %.loopexit, %bb.o
  %i.px = getelementptr inbounds nuw i8, ptr %i.g, i64 280
end_hunk_0
