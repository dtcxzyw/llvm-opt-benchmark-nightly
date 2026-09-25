Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jvp_strtod:bb.a
  %i.ja = sext i32 %i.iy to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ja ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !16
  store ptr %i.jc, ptr %.1, align 8, !tbaa !18
  store ptr %.1, ptr %i.jb, align 8, !tbaa !16
  br label %Bfree.exit617

bb.bq:                                            ; preds = %bb.az
  %i.jd = icmp samesign ugt i32 %i.hp, 31
  br i1 %i.jd, label %.lr.ph973.preheader, label %._crit_edge974

.lr.ph973.preheader:                              ; preds = %bb.bq
  %i.je = lshr i32 %i.hp, 4
  br label %.lr.ph973

.lr.ph973:                                        ; preds = %.lr.ph973.preheader, %bb.bs
  %indvars.iv1109 = phi i64 [ 0, %.lr.ph973.preheader ], [ %indvars.iv.next1110, %bb.bs ] ; 2 uses
  %.0477970 = phi i32 [ %i.je, %.lr.ph973.preheader ], [ %i.jl, %bb.bs ] ; 3 uses
  %i.jf = phi double [ %.promoted968, %.lr.ph973.preheader ], [ %i.jk, %bb.bs ] ; 2 uses
  %i.jg = and i32 %.0477970, 1
  %.not571 = icmp eq i32 %i.jg, 0
  br i1 %.not571, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph973
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1109
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !23
  %i.jj = fmul double %i.ji, %i.jf
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph973, %bb.br
  %i.jk = phi double [ %i.jf, %.lr.ph973 ], [ %i.jj, %bb.br ] ; 2 uses
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 2 uses
  %i.jl = lshr i32 %.0477970, 1
  %i.jm = icmp samesign ugt i32 %.0477970, 3
  br i1 %i.jm, label %.lr.ph973, label %._crit_edge974, !llvm.loop !40

._crit_edge974:                                   ; preds = %bb.bs, %bb.bq
  %.lcssa969 = phi double [ %.promoted968, %bb.bq ], [ %i.jk, %bb.bs ] ; 2 uses
  %.0462.lcssa = phi i64 [ 0, %bb.bq ], [ %indvars.iv.next1110, %bb.bs ]
  store double %.lcssa969, ptr %3, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.jo = bitcast double %.lcssa969 to i64
  %i.jp = lshr i64 %i.jo, 32
  %i.jq = trunc nuw i64 %i.jp to i32
  %i.jr = add i32 %i.jq, -55574528
  store i32 %i.jr, ptr %i.jn, align 4, !tbaa !21
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0462.lcssa
  %i.jt = load double, ptr %i.js, align 8, !tbaa !23
  %i.ju = load double, ptr %3, align 8, !tbaa !21
  %i.jv = fmul double %i.jt, %i.ju                ; 2 uses
  store double %i.jv, ptr %3, align 8, !tbaa !21
  %i.jw = bitcast double %i.jv to i64
  %i.jx = lshr i64 %i.jw, 32
  %i.jy = trunc nuw i64 %i.jx to i32              ; 2 uses
  %i.jz = and i32 %i.jy, 2146435072               ; 2 uses
  %i.ka = icmp samesign ugt i32 %i.jz, 2090860544
  br i1 %i.ka, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge974
  %i.kb = icmp samesign ugt i32 %i.jz, 2089811968
  br i1 %i.kb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 2146435071, ptr %i.jn, align 4, !tbaa !21
  store i32 -1, ptr %3, align 8, !tbaa !21
  br label %bb.cn

bb.bv:                                            ; preds = %bb.bt
  %i.kc = add i32 %i.jy, 55574528
  store i32 %i.kc, ptr %i.jn, align 4, !tbaa !21
  br label %bb.cn

bb.bw:                                            ; preds = %bb.av
  %i.kd = icmp slt i32 %i.hp, 0
  br i1 %i.kd, label %bb.bx, label %bb.cn

bb.bx:                                            ; preds = %bb.bw
  %i.ke = sub nsw i32 0, %i.hp                    ; 4 uses
  %i.kf = and i32 %i.ke, 15                       ; 2 uses
  %.not541 = icmp eq i32 %i.kf, 0
  br i1 %.not541, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !23
  %i.kj = fdiv double %i.hn, %i.ki                ; 2 uses
  store double %i.kj, ptr %3, align 8, !tbaa !21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.promoted = phi double [ %i.kj, %bb.by ], [ %i.hn, %bb.bx ]
  %i.kk = lshr i32 %i.ke, 4                       ; 2 uses
  %.not542 = icmp eq i32 %i.kk, 0
  br i1 %.not542, label %bb.cn, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kl = icmp samesign ugt i32 %i.ke, 511
  br i1 %i.kl, label %bb.cm, label %.preheader1392

.preheader1392:                                   ; preds = %bb.ca, %bb.cc
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cc ], [ 0, %bb.ca ] ; 2 uses
  %.1478966 = phi i32 [ %i.ks, %bb.cc ], [ %i.kk, %bb.ca ] ; 2 uses
  %i.km = phi double [ %i.kr, %bb.cc ], [ %.promoted, %bb.ca ] ; 2 uses
  %i.kn = and i32 %.1478966, 1
  %.not546 = icmp eq i32 %i.kn, 0
  br i1 %.not546, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.preheader1392
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !23
  %i.kq = fmul double %i.kp, %i.km
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader1392, %bb.cb
  %i.kr = phi double [ %i.km, %.preheader1392 ], [ %i.kq, %bb.cb ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ks = lshr i32 %.1478966, 1                   ; 2 uses
  %.not544 = icmp eq i32 %i.ks, 0
  br i1 %.not544, label %bb.cd, label %.preheader1392, !llvm.loop !41

bb.cd:                                            ; preds = %bb.cc
  %.not543 = icmp samesign ult i32 %i.ke, 256     ; 2 uses
  %spec.select769 = select i1 %.not543, i32 0, i32 106
  store double %i.kr, ptr %3, align 8
  %i.kt = bitcast double %i.kr to i64             ; 2 uses
  %i.ku = lshr i64 %i.kt, 32
  %i.kv = trunc nuw i64 %i.ku to i32              ; 2 uses
  %i.kw = trunc i64 %i.kt to i32
  br i1 %.not543, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ky = lshr i32 %i.kv, 20
  %i.kz = and i32 %i.ky, 2047                     ; 6 uses
  %i.la = sub nuw nsw i32 107, %i.kz
  %i.lb = icmp samesign ult i32 %i.kz, 107
  br i1 %i.lb, label %bb.cf, label %thread-pre-split

bb.cf:                                            ; preds = %bb.ce
  %i.lc = icmp samesign ult i32 %i.kz, 76
  br i1 %i.lc, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.ld = icmp samesign ult i32 %i.kz, 53
  br i1 %i.ld, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %3, align 8, !tbaa !21
  %i.le = icmp samesign ult i32 %i.kz, 55
  br i1 %i.le, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 57671680, ptr %i.kx, align 4, !tbaa !21
  br label %thread-pre-split

bb.cj:                                            ; preds = %bb.ch
  %i.lf = sub nuw nsw i32 75, %i.kz
  %i.lg = shl nsw i32 -1, %i.lf
  %i.lh = and i32 %i.lg, %i.kv
  store i32 %i.lh, ptr %i.kx, align 4, !tbaa !21
  br label %thread-pre-split

bb.ck:                                            ; preds = %bb.cf
  %i.li = shl nsw i32 -1, %i.la
  %i.lj = and i32 %i.li, %i.kw
  store i32 %i.lj, ptr %3, align 8, !tbaa !21
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ce, %bb.ci, %bb.cj, %bb.ck
  %.pr = load double, ptr %3, align 8, !tbaa !21
  br label %bb.cl

bb.cl:                                            ; preds = %thread-pre-split, %bb.cd
  %i.lk = phi double [ %.pr, %thread-pre-split ], [ %i.kr, %bb.cd ]
  %i.ll = fcmp une double %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %sulp.exit646, %bb.eq, %bb.ix, %bb.fi, %bb.cl, %bb.cg, %bb.ca
  %.2405 = phi ptr [ %.4407, %bb.ix ], [ %.4407, %bb.eq ], [ null, %bb.cl ], [ %.4407, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4407, %sulp.exit646 ]
  %.2400 = phi ptr [ %.4402, %bb.ix ], [ %.4402, %bb.eq ], [ null, %bb.cl ], [ %.4402, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4402, %sulp.exit646 ]
  %.2397 = phi ptr [ null, %bb.ix ], [ %.231.lcssa.i, %bb.eq ], [ null, %bb.cl ], [ %.231.lcssa.i, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.231.lcssa.i, %sulp.exit646 ]
  %.2392 = phi ptr [ %.4394, %bb.ix ], [ %.4394, %bb.eq ], [ null, %bb.cl ], [ %.4394, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %.4394, %sulp.exit646 ]
  %.2 = phi ptr [ %.5, %bb.ix ], [ %.3, %bb.eq ], [ null, %bb.cl ], [ %i.th, %bb.fi ], [ null, %bb.ca ], [ null, %bb.cg ], [ %i.th, %sulp.exit646 ]
  store double 0.000000e+00, ptr %3, align 8, !tbaa !21
  br label %bb.ba

bb.cn:                                            ; preds = %bb.bw, %bb.cl, %bb.bz, %bb.ay, %bb.bv, %bb.bu
  %.sroa.47706.1 = phi i32 [ 0, %bb.ay ], [ 0, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bz ], [ %spec.select769, %bb.cl ], [ 0, %bb.bw ] ; 6 uses
  %i.lm = sub nsw i32 %.5460, %.4441              ; 6 uses
  %i.ln = icmp sgt i32 %.5460, 40
  br i1 %i.ln, label %bb.co, label %.loopexit785

bb.co:                                            ; preds = %bb.cn
  %i.lo = icmp slt i32 %spec.select577, 18
  %i.lp = add nsw i32 %.sroa.12.0, 18
  %.2464 = select i1 %i.lo, i32 %i.lp, i32 18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.1470 = phi i32 [ 18, %bb.co ], [ %i.lt, %bb.cp ] ; 12 uses
  %.3465 = phi i32 [ %.2464, %bb.co ], [ %.4466, %bb.cp ] ; 3 uses
  %.not549 = icmp sgt i32 %.3465, %.sroa.6.2
  %spec.select578 = tail call i32 @llvm.smin.i32(i32 %.3465, i32 %.sroa.0.2)
  %.4466.in = select i1 %.not549, i32 %.3465, i32 %spec.select578
  %.4466 = add nsw i32 %.4466.in, -1              ; 2 uses
  %i.lq = sext i32 %.4466 to i64
  %i.lr = getelementptr inbounds i8, ptr %.2433, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !21
  %.not551 = icmp eq i8 %i.ls, 48
  %i.lt = add nsw i32 %.1470, -1
  br i1 %.not551, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lu = sub nsw i32 %.5460, %.1470
  %i.lv = add nsw i32 %i.lu, %i.gc                ; 4 uses
  %spec.select579 = tail call i32 @llvm.smin.i32(i32 %spec.select577, i32 %.1470) ; 9 uses
  %i.lw = icmp slt i32 %.1470, 9
  br i1 %i.lw, label %.preheader786, label %.loopexit785

.preheader786:                                    ; preds = %bb.cq
  %i.lx = icmp sgt i32 %spec.select579, 0
  br i1 %i.lx, label %.lr.ph979.preheader, label %.preheader784

.lr.ph979.preheader:                              ; preds = %.preheader786
  %wide.trip.count = zext nneg i32 %spec.select579 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %4 = icmp ult i32 %spec.select579, 4
  br i1 %4, label %.lr.ph979.epil.preheader, label %.lr.ph979.preheader.new

.lr.ph979.preheader.new:                          ; preds = %.lr.ph979.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph979

.preheader784.loopexit.unr-lcssa:                 ; preds = %.lr.ph979
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader784, label %.lr.ph979.epil.preheader

.lr.ph979.epil.preheader:                         ; preds = %.preheader784.loopexit.unr-lcssa, %.lr.ph979.preheader
  %indvars.iv1112.epil.init = phi i64 [ 0, %.lr.ph979.preheader ], [ %indvars.iv.next1113.3, %.preheader784.loopexit.unr-lcssa ]
  %.9978.epil.init = phi i32 [ 0, %.lr.ph979.preheader ], [ %i.nq, %.preheader784.loopexit.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %.lr.ph979.epil

.lr.ph979.epil:                                   ; preds = %.lr.ph979.epil, %.lr.ph979.epil.preheader
  %indvars.iv1112.epil = phi i64 [ %indvars.iv1112.epil.init, %.lr.ph979.epil.preheader ], [ %indvars.iv.next1113.epil, %.lr.ph979.epil ] ; 2 uses
  %.9978.epil = phi i32 [ %.9978.epil.init, %.lr.ph979.epil.preheader ], [ %i.md, %.lr.ph979.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph979.epil.preheader ], [ %epil.iter.next, %.lr.ph979.epil ]
  %i.ly = mul i32 %.9978.epil, 10
  %i.lz = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112.epil
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !21
  %i.mb = sext i8 %i.ma to i32
  %i.mc = add i32 %i.ly, -48
  %i.md = add i32 %i.mc, %i.mb                    ; 2 uses
  %indvars.iv.next1113.epil = add nuw nsw i64 %indvars.iv1112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader784, label %.lr.ph979.epil, !llvm.loop !42

.preheader784:                                    ; preds = %.preheader784.loopexit.unr-lcssa, %.lr.ph979.epil, %.preheader786
  %.2471.lcssa = phi i32 [ 0, %.preheader786 ], [ %spec.select579, %.lr.ph979.epil ], [ %spec.select579, %.preheader784.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa = phi i32 [ 0, %.preheader786 ], [ %i.nq, %.preheader784.loopexit.unr-lcssa ], [ %i.md, %.lr.ph979.epil ] ; 3 uses
  %i.me = icmp slt i32 %.2471.lcssa, %.1470
  br i1 %i.me, label %.lr.ph985.preheader, label %._crit_edge.thread.i

.lr.ph985.preheader:                              ; preds = %.preheader784
  %i.mf = sext i32 %.sroa.6.2 to i64              ; 2 uses
  %i.mg = sub i32 %.1470, %.2471.lcssa
  %xtraiter1628 = and i32 %i.mg, 3                ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph985.prol.loopexit, label %.lr.ph985.prol

.lr.ph985.prol:                                   ; preds = %.lr.ph985.preheader, %.lr.ph985.prol
  %indvars.iv1117.prol = phi i64 [ %indvars.iv.next1118.prol, %.lr.ph985.prol ], [ %i.mf, %.lr.ph985.preheader ] ; 2 uses
  %.10984.prol = phi i32 [ %i.mm, %.lr.ph985.prol ], [ %.9.lcssa, %.lr.ph985.preheader ]
  %.3472982.prol = phi i32 [ %i.mn, %.lr.ph985.prol ], [ %.2471.lcssa, %.lr.ph985.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph985.prol ], [ 0, %.lr.ph985.preheader ]
  %i.mh = mul i32 %.10984.prol, 10
  %indvars.iv.next1118.prol = add nsw i64 %indvars.iv1117.prol, 1 ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %.2433, i64 %indvars.iv1117.prol
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !21
  %i.mk = sext i8 %i.mj to i32
  %i.ml = add i32 %i.mh, -48
  %i.mm = add i32 %i.ml, %i.mk                    ; 3 uses
  %i.mn = add nuw nsw i32 %.3472982.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1628
  br i1 %prol.iter.cmp.not, label %.lr.ph985.prol.loopexit, label %.lr.ph985.prol, !llvm.loop !43

.lr.ph985.prol.loopexit:                          ; preds = %.lr.ph985.prol, %.lr.ph985.preheader
  %.lcssa1604.unr = phi i32 [ poison, %.lr.ph985.preheader ], [ %i.mm, %.lr.ph985.prol ]
  %indvars.iv1117.unr = phi i64 [ %i.mf, %.lr.ph985.preheader ], [ %indvars.iv.next1118.prol, %.lr.ph985.prol ]
  %.10984.unr = phi i32 [ %.9.lcssa, %.lr.ph985.preheader ], [ %i.mm, %.lr.ph985.prol ]
  %.3472982.unr = phi i32 [ %.2471.lcssa, %.lr.ph985.preheader ], [ %i.mn, %.lr.ph985.prol ]
  %i.mo = sub i32 %.2471.lcssa, %.1470
  %i.mp = icmp ugt i32 %i.mo, -4
  br i1 %i.mp, label %._crit_edge.thread.i, label %.lr.ph985

.lr.ph979:                                        ; preds = %.lr.ph979, %.lr.ph979.preheader.new
  %indvars.iv1112 = phi i64 [ 0, %.lr.ph979.preheader.new ], [ %indvars.iv.next1113.3, %.lr.ph979 ] ; 5 uses
  %.9978 = phi i32 [ 0, %.lr.ph979.preheader.new ], [ %i.nq, %.lr.ph979 ]
  %niter = phi i64 [ 0, %.lr.ph979.preheader.new ], [ %niter.next.3, %.lr.ph979 ]
  %i.mq = mul i32 %.9978, 10
  %i.mr = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !21
  %i.mt = sext i8 %i.ms to i32
  %i.mu = add i32 %i.mq, -48
  %i.mv = add i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, 10
  %i.mx = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !21
  %i.na = sext i8 %i.mz to i32
  %i.nb = add i32 %i.mw, -48
  %i.nc = add i32 %i.nb, %i.na
  %i.nd = mul i32 %i.nc, 10
  %i.ne = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 2
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !21
  %i.nh = sext i8 %i.ng to i32
  %i.ni = add i32 %i.nd, -48
  %i.nj = add i32 %i.ni, %i.nh
  %i.nk = mul i32 %i.nj, 10
  %i.nl = getelementptr inbounds nuw i8, ptr %.2433, i64 %indvars.iv1112
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 3
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !21
  %i.no = sext i8 %i.nn to i32
  %i.np = add i32 %i.nk, -48
  %i.nq = add i32 %i.np, %i.no                    ; 3 uses
  %indvars.iv.next1113.3 = add nuw nsw i64 %indvars.iv1112, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader784.loopexit.unr-lcssa, label %.lr.ph979, !llvm.loop !44

.lr.ph985:                                        ; preds = %.lr.ph985.prol.loopexit, %.lr.ph985
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118.3, %.lr.ph985 ], [ %indvars.iv1117.unr, %.lr.ph985.prol.loopexit ] ; 5 uses
  %.10984 = phi i32 [ %i.or, %.lr.ph985 ], [ %.10984.unr, %.lr.ph985.prol.loopexit ]
  %.3472982 = phi i32 [ %i.os, %.lr.ph985 ], [ %.3472982.unr, %.lr.ph985.prol.loopexit ]
  %i.nr = mul i32 %.10984, 10
  %i.ns = getelementptr inbounds i8, ptr %.2433, i64 %indvars.iv1117
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !21
  %i.nu = sext i8 %i.nt to i32
  %i.nv = add i32 %i.nr, -48
  %i.nw = add i32 %i.nv, %i.nu
  %i.nx = mul i32 %i.nw, 10
  %i.ny = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.nz = getelementptr i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !21
  %i.ob = sext i8 %i.oa to i32
  %i.oc = add i32 %i.nx, -48
  %i.od = add i32 %i.oc, %i.ob
  %i.oe = mul i32 %i.od, 10
  %i.of = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.og = getelementptr i8, ptr %i.of, i64 2
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !21
  %i.oi = sext i8 %i.oh to i32
  %i.oj = add i32 %i.oe, -48
  %i.ok = add i32 %i.oj, %i.oi
  %i.ol = mul i32 %i.ok, 10
  %indvars.iv.next1118.3 = add nsw i64 %indvars.iv1117, 4
  %i.om = getelementptr i8, ptr %.2433, i64 %indvars.iv1117
  %i.on = getelementptr i8, ptr %i.om, i64 3
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !21
  %i.op = sext i8 %i.oo to i32
  %i.oq = add i32 %i.ol, -48
  %i.or = add i32 %i.oq, %i.op                    ; 2 uses
  %i.os = add nuw nsw i32 %.3472982, 4            ; 2 uses
  %exitcond1121.not.3 = icmp eq i32 %i.os, %.1470
  br i1 %exitcond1121.not.3, label %._crit_edge.thread.i, label %.lr.ph985, !llvm.loop !45

.loopexit785:                                     ; preds = %bb.cq, %bb.cn
  %.2481 = phi i32 [ %i.gc, %bb.cn ], [ %i.lv, %bb.cq ] ; 3 uses
  %.6461 = phi i32 [ %.5460, %bb.cn ], [ %.1470, %bb.cq ] ; 5 uses
  %.2454 = phi i32 [ %spec.select577, %bb.cn ], [ %spec.select579, %bb.cq ] ; 3 uses
  %i.ot = add nuw nsw i32 %.6461, 8
  %i.ou = sdiv i32 %i.ot, 9
  %i.ov = icmp sgt i32 %.6461, 9
  br i1 %i.ov, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit785, %.lr.ph.i
  %.040.i = phi i32 [ %i.ow, %.lr.ph.i ], [ 1, %.loopexit785 ]
  %.02739.i = phi i32 [ %i.ox, %.lr.ph.i ], [ 0, %.loopexit785 ] ; 2 uses
  %i.ow = shl i32 %.040.i, 1                      ; 2 uses
  %i.ox = add nuw nsw i32 %.02739.i, 1            ; 3 uses
  %i.oy = icmp sgt i32 %i.ou, %i.ow
  br i1 %i.oy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.oz = icmp samesign ult i32 %.02739.i, 7
  br i1 %i.oz, label %._crit_edge.thread.i, label %bb.cs

._crit_edge.thread.i:                             ; preds = %.lr.ph985.prol.loopexit, %.lr.ph985, %.preheader784, %._crit_edge.i, %.loopexit785
  %.111261 = phi i32 [ %.8422, %._crit_edge.i ], [ %.8422, %.loopexit785 ], [ %.9.lcssa, %.preheader784 ], [ %.lcssa1604.unr, %.lr.ph985.prol.loopexit ], [ %i.or, %.lr.ph985 ] ; 2 uses
  %.24541258 = phi i32 [ %.2454, %._crit_edge.i ], [ %.2454, %.loopexit785 ], [ %spec.select579, %.preheader784 ], [ %spec.select579, %.lr.ph985 ], [ %spec.select579, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.64611255 = phi i32 [ %.6461, %._crit_edge.i ], [ %.6461, %.loopexit785 ], [ %.1470, %.preheader784 ], [ %.1470, %.lr.ph985 ], [ %.1470, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.24811252 = phi i32 [ %.2481, %._crit_edge.i ], [ %.2481, %.loopexit785 ], [ %i.lv, %.preheader784 ], [ %i.lv, %.lr.ph985 ], [ %i.lv, %.lr.ph985.prol.loopexit ] ; 2 uses
  %.027.lcssa57.i = phi i32 [ %i.ox, %._crit_edge.i ], [ 0, %.loopexit785 ], [ 0, %.preheader784 ], [ 0, %.lr.ph985 ], [ 0, %.lr.ph985.prol.loopexit ] ; 2 uses
  %i.pa = zext nneg i32 %.027.lcssa57.i to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pa ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge.thread.i
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !18
  store ptr %i.pd, ptr %i.pb, align 8, !tbaa !16
  br label %Balloc.exit.i

bb.cs:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.111260 = phi i32 [ %.111261, %._crit_edge.thread.i ], [ %.8422, %._crit_edge.i ]
  %.24541257 = phi i32 [ %.24541258, %._crit_edge.thread.i ], [ %.2454, %._crit_edge.i ]
  %.64611254 = phi i32 [ %.64611255, %._crit_edge.thread.i ], [ %.6461, %._crit_edge.i ]
  %.24811251 = phi i32 [ %.24811252, %._crit_edge.thread.i ], [ %.2481, %._crit_edge.i ]
  %.027.lcssa56.i = phi i32 [ %.027.lcssa57.i, %._crit_edge.thread.i ], [ %i.ox, %._crit_edge.i ] ; 2 uses
  %i.pe = shl nuw i32 1, %.027.lcssa56.i          ; 2 uses
  %i.pf = add nsw i32 %i.pe, -1
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2
  %i.pi = add nuw nsw i64 %i.ph, 32
  %i.pj = tail call ptr @jv_mem_alloc(i64 noundef %i.pi) #10 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i32 %.027.lcssa56.i, ptr %i.pk, align 8, !tbaa !19
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  store i32 %i.pe, ptr %i.pl, align 4, !tbaa !25
  br label %Balloc.exit.i

Balloc.exit.i:                                    ; preds = %bb.cs, %bb.cr
  %.111259 = phi i32 [ %.111261, %bb.cr ], [ %.111260, %bb.cs ]
  %.24541256 = phi i32 [ %.24541258, %bb.cr ], [ %.24541257, %bb.cs ] ; 3 uses
  %.64611253 = phi i32 [ %.64611255, %bb.cr ], [ %.64611254, %bb.cs ] ; 4 uses
  %.24811250 = phi i32 [ %.24811252, %bb.cr ], [ %.24811251, %bb.cs ] ; 3 uses
  %.0.i.i = phi ptr [ %i.pc, %bb.cr ], [ %i.pj, %bb.cs ] ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.pn, align 8, !tbaa !26
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %.111259, ptr %i.po, align 8, !tbaa !27
  store i32 1, ptr %i.pm, align 4, !tbaa !28
  %i.pp = icmp sgt i32 %.24541256, 9
  br i1 %i.pp, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %Balloc.exit.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.2433, i64 9
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.032.i = phi ptr [ %i.pq, %bb.ct ], [ %i.pr, %bb.cu ] ; 2 uses
  %.029.i = phi ptr [ %.0.i.i, %bb.ct ], [ %i.pv, %bb.cu ]
  %.028.i = phi i32 [ 9, %bb.ct ], [ %i.pw, %bb.cu ]
  %i.pr = getelementptr inbounds nuw i8, ptr %.032.i, i64 1 ; 2 uses
  %i.ps = load i8, ptr %.032.i, align 1, !tbaa !21
  %i.pt = sext i8 %i.ps to i32
  %i.pu = add nsw i32 %i.pt, -48
  %i.pv = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef %.029.i, i32 noundef 10, i32 noundef %i.pu) ; 2 uses
  %i.pw = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pw, %.24541256
  br i1 %exitcond.not.i, label %bb.cv, label %bb.cu, !llvm.loop !47

bb.cv:                                            ; preds = %bb.cu
  %i.px = sext i32 %.sroa.12.0 to i64
  %i.py = getelementptr inbounds i8, ptr %i.pr, i64 %i.px
  br label %bb.cx

bb.cw:                                            ; preds = %Balloc.exit.i
  %i.pz = sext i32 %.sroa.12.0 to i64
  %i.qa = getelementptr i8, ptr %.2433, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 9
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.133.i = phi ptr [ %i.py, %bb.cv ], [ %i.qb, %bb.cw ]
  %.130.i = phi ptr [ %i.pv, %bb.cv ], [ %.0.i.i, %bb.cw ] ; 2 uses
  %.1.i = phi i32 [ %.24541256, %bb.cv ], [ 9, %bb.cw ] ; 2 uses
  %i.qc = icmp slt i32 %.1.i, %.64611253
  br i1 %i.qc, label %.lr.ph45.i, label %s2b.exit

.lr.ph45.i:                                       ; preds = %bb.cx, %.lr.ph45.i
  %.243.i = phi i32 [ %i.qi, %.lr.ph45.i ], [ %.1.i, %bb.cx ]
  %.23142.i = phi ptr [ %i.qh, %.lr.ph45.i ], [ %.130.i, %bb.cx ]
  %.23441.i = phi ptr [ %i.qd, %.lr.ph45.i ], [ %.133.i, %bb.cx ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.23441.i, i64 1
  %i.qe = load i8, ptr %.23441.i, align 1, !tbaa !21
  %i.qf = sext i8 %i.qe to i32
  %i.qg = add nsw i32 %i.qf, -48
  %i.qh = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef %.23142.i, i32 noundef 10, i32 noundef %i.qg) ; 2 uses
  %i.qi = add nuw i32 %.243.i, 1                  ; 2 uses
  %exitcond52.not.i = icmp eq i32 %i.qi, %.64611253
  br i1 %exitcond52.not.i, label %s2b.exit, label %.lr.ph45.i, !llvm.loop !48

s2b.exit:                                         ; preds = %.lr.ph45.i, %bb.cx
  %.231.lcssa.i = phi ptr [ %.130.i, %bb.cx ], [ %i.qh, %.lr.ph45.i ] ; 12 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 8 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %.231.lcssa.i, i64 20
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.qn = icmp sgt i32 %.24811250, -1             ; 2 uses
  %i.qo = sub nsw i32 0, %.24811250
  %.0494 = select i1 %i.qn, i32 0, i32 %i.qo      ; 3 uses
  %.0490 = select i1 %i.qn, i32 %.24811250, i32 0 ; 3 uses
  %.1492 = add i32 %.0490, %.sroa.47706.1
  %.not552 = icmp eq i32 %.0494, 0
  %5 = icmp sgt i32 %.0490, 0
  %i.qp = icmp sgt i32 %i.lm, %.64611253          ; 6 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.qr = icmp ne i32 %.sroa.47706.1, 0
  %i.qs = icmp eq i32 %i.lm, %.64611253
  %i.qt = icmp eq i32 %.sroa.47706.1, 0           ; 8 uses
  %or.cond44.not774 = and i1 %i.qs, %i.qt
  br label %Bfree.exit662

Bfree.exit662:                                    ; preds = %Bfree.exit662.backedge, %s2b.exit
  %i.qu = load i32, ptr %i.qj, align 8, !tbaa !19 ; 4 uses
  %i.qv = icmp slt i32 %i.qu, 8
  br i1 %i.qv, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %Bfree.exit662
  %i.qw = sext i32 %i.qu to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.qw ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !16 ; 3 uses
  %.not.i619 = icmp eq ptr %i.qy, null
  br i1 %.not.i619, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !18
  store ptr %i.qz, ptr %i.qx, align 8, !tbaa !16
  br label %Balloc.exit

bb.da:                                            ; preds = %bb.cy, %Bfree.exit662
  %i.ra = shl nuw i32 1, %i.qu                    ; 2 uses
  %i.rb = add nsw i32 %i.ra, -1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = shl nuw nsw i64 %i.rc, 2
  %i.re = add nuw nsw i64 %i.rd, 32
  %i.rf = tail call ptr @jv_mem_alloc(i64 noundef %i.re) #10 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 %i.qu, ptr %i.rg, align 8, !tbaa !19
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  store i32 %i.ra, ptr %i.rh, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.cz, %bb.da
  %.0.i618 = phi ptr [ %i.qy, %bb.cz ], [ %i.rf, %bb.da ] ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i618, i64 20
  store i32 0, ptr %i.ri, align 4, !tbaa !28
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i618, i64 16 ; 2 uses
  store i32 0, ptr %i.rj, align 8, !tbaa !26
  %i.rk = load i32, ptr %i.ql, align 4, !tbaa !28
  %i.rl = sext i32 %i.rk to i64
  %i.rm = shl nsw i64 %i.rl, 2
  %i.rn = add nsw i64 %i.rm, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rj, ptr nonnull align 8 %i.qk, i64 %i.rn, i1 false)
  %i.ro = call fastcc ptr @d2b(ptr noundef %0, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.f) ; 7 uses
  %i.rp = load ptr, ptr %i.qm, align 8, !tbaa !16 ; 3 uses
  %.not.i.i620 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i620, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %Balloc.exit
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !18
  store ptr %i.rq, ptr %i.qm, align 8, !tbaa !16
  br label %i2b.exit

bb.dc:                                            ; preds = %Balloc.exit
  %i.rr = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store i32 1, ptr %i.rs, align 8, !tbaa !19
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  store i32 2, ptr %i.rt, align 4, !tbaa !25
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.db, %bb.dc
  %.0.i.i622 = phi ptr [ %i.rp, %bb.db ], [ %i.rr, %bb.dc ] ; 5 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 20
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 16
  store i32 0, ptr %i.rv, align 8, !tbaa !26
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i.i622, i64 24
  store i32 1, ptr %i.rw, align 8, !tbaa !27
  store i32 1, ptr %i.ru, align 4, !tbaa !28
  %i.rx = load i32, ptr %i.e, align 4, !tbaa !27  ; 4 uses
  %i.ry = icmp sgt i32 %i.rx, -1                  ; 2 uses
  %i.rz = select i1 %i.ry, i32 %i.rx, i32 0
  %.1496 = add nuw nsw i32 %i.rz, %.0494          ; 3 uses
  %i.sa = select i1 %i.ry, i32 0, i32 %i.rx
  %i.sb = sub nsw i32 %i.rx, %.sroa.47706.1
  %i.sc = load i32, ptr %i.f, align 4, !tbaa !27  ; 2 uses
  %i.sd = add nsw i32 %i.sb, %i.sc                ; 5 uses
  %i.se = sub nsw i32 54, %i.sc                   ; 2 uses
  %i.sf = icmp slt i32 %i.sd, -1021
  br i1 %i.sf, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %i2b.exit
  %i.sg = sub nuw nsw i32 -1021, %i.sd            ; 2 uses
  %i.sh = sub nsw i32 %i.se, %i.sg                ; 3 uses
  %i.si = icmp samesign ugt i32 %i.sd, -1053
  br i1 %i.si, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.sj = shl nuw i32 1, %i.sg
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  %i.sk = icmp samesign ugt i32 %i.sd, -1073
  br i1 %i.sk, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sl = sub nuw nsw i32 -1053, %i.sd
  %i.sm = shl nuw nsw i32 1, %i.sl
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dg, %i2b.exit
  %.6468 = phi i32 [ %i.sh, %bb.de ], [ %i.sh, %bb.dg ], [ %i.se, %i2b.exit ], [ %i.sh, %bb.df ] ; 2 uses
  %.0388 = phi i32 [ %i.sj, %bb.de ], [ 1, %bb.dg ], [ 1, %i2b.exit ], [ 1, %bb.df ]
  %.0387 = phi i32 [ 0, %bb.de ], [ %i.sm, %bb.dg ], [ 0, %i2b.exit ], [ 2146435072, %bb.df ] ; 2 uses
  %i.sn = add nsw i32 %.6468, %.1496              ; 2 uses
  %i.so = sub i32 %.1492, %i.sa
  %i.sp = add i32 %i.so, %.6468                   ; 2 uses
  %i.sq = tail call i32 @llvm.smin.i32(i32 %i.sn, i32 %i.sp)
  %spec.select580 = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 %.1496)
  %i.sr = tail call i32 @llvm.smax.i32(i32 %spec.select580, i32 0) ; 3 uses
  %.2497 = sub nsw i32 %i.sn, %i.sr               ; 2 uses
  %.2493 = sub nsw i32 %i.sp, %i.sr               ; 2 uses
  %.0489 = sub nsw i32 %.1496, %i.sr              ; 2 uses
  br i1 %.not552, label %Bfree.exit624, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ss = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i622, i32 noundef %.0494) ; 4 uses
  %i.st = tail call fastcc ptr @mult(ptr noundef nonnull %0, ptr noundef %i.ss, ptr noundef %i.ro) ; 3 uses
  %.not.i623 = icmp eq ptr %i.ro, null
  br i1 %.not.i623, label %Bfree.exit624, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.su = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !19 ; 2 uses
  %i.sw = icmp sgt i32 %i.sv, 7
  br i1 %i.sw, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  tail call void @jv_mem_free(ptr noundef nonnull %i.ro) #10
  br label %Bfree.exit624

bb.dl:                                            ; preds = %bb.dj
  %i.sx = sext i32 %i.sv to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.sx ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !16
  store ptr %i.sz, ptr %i.ro, align 8, !tbaa !18
  store ptr %i.ro, ptr %i.sy, align 8, !tbaa !16
  br label %Bfree.exit624

Bfree.exit624:                                    ; preds = %bb.dl, %bb.dk, %bb.di, %bb.dh
  %.3406 = phi ptr [ %i.ro, %bb.dh ], [ %i.st, %bb.di ], [ %i.st, %bb.dk ], [ %i.st, %bb.dl ] ; 2 uses
  %.3393 = phi ptr [ %.0.i.i622, %bb.dh ], [ %i.ss, %bb.di ], [ %i.ss, %bb.dk ], [ %i.ss, %bb.dl ] ; 2 uses
  %i.ta = icmp sgt i32 %.2497, 0
  br i1 %i.ta, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %Bfree.exit624
  %i.tb = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3406, i32 noundef %.2497)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %Bfree.exit624
  %.4407 = phi ptr [ %i.tb, %bb.dm ], [ %.3406, %Bfree.exit624 ] ; 18 uses
  br i1 %5, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.tc = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i618, i32 noundef %.0490)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.3401 = phi ptr [ %i.tc, %bb.do ], [ %.0.i618, %bb.dn ] ; 2 uses
  %i.td = icmp sgt i32 %.2493, 0
  br i1 %i.td, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.te = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3401, i32 noundef %.2493)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.4402 = phi ptr [ %i.te, %bb.dq ], [ %.3401, %bb.dp ] ; 18 uses
  %i.tf = icmp sgt i32 %.0489, 0
  br i1 %i.tf, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.tg = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.3393, i32 noundef %.0489)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.4394 = phi ptr [ %i.tg, %bb.ds ], [ %.3393, %bb.dr ] ; 21 uses
  %i.th = tail call fastcc ptr @diff(ptr noundef nonnull %0, ptr noundef %.4407, ptr noundef %.4402) ; 27 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !26 ; 16 uses
  store i32 0, ptr %i.ti, align 8, !tbaa !26
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !28 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.4394, i64 20 ; 3 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !28 ; 2 uses
  %i.to = sub nsw i32 %i.tl, %i.tn                ; 2 uses
  %.not.i625 = icmp eq i32 %i.to, 0
  br i1 %.not.i625, label %bb.du, label %cmp.exit

bb.du:                                            ; preds = %bb.dt
  %i.tp = sext i32 %i.tn to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.tp, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.tq = getelementptr inbounds nuw i8, ptr %.4394, i64 24
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.tp
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.017.idx.i = phi i64 [ %.add.i, %bb.du ], [ %.017.add.i, %bb.dx ] ; 2 uses
  %.0.i626 = phi ptr [ %i.tr, %bb.du ], [ %i.tt, %bb.dx ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.th, i64 %.017.add.i
  %i.ts = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.tt = getelementptr inbounds i8, ptr %.0.i626, i64 -4 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq i32 %i.ts, %i.tu
  br i1 %.not23.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tv = icmp ult i32 %i.ts, %i.tu
  %i.tw = select i1 %i.tv, i32 -1, i32 1
  br label %cmp.exit

bb.dx:                                            ; preds = %bb.dv
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.dv, label %cmp.exit.thread

cmp.exit:                                         ; preds = %bb.dt, %bb.dw
  %.018.i = phi i32 [ %i.to, %bb.dt ], [ %i.tw, %bb.dw ] ; 2 uses
  %i.tx = icmp slt i32 %.018.i, 1
  %or.cond17 = and i1 %i.qp, %i.tx
  br i1 %or.cond17, label %bb.dy, label %bb.dz

cmp.exit.thread:                                  ; preds = %bb.dx
  br i1 %i.qp, label %bb.dy, label %bb.eh

bb.dy:                                            ; preds = %cmp.exit.thread, %cmp.exit
  %.not553.a = icmp eq i32 %i.tj, 0
  br i1 %.not553.a, label %.thread762, label %cmp.exit637.thread

bb.dz:                                            ; preds = %cmp.exit
  %i.ty = icmp slt i32 %.018.i, 0
  br i1 %i.ty, label %.thread762, label %bb.fb

.thread762:                                       ; preds = %bb.dy, %bb.dz
  %i.tz = icmp ne i32 %i.tj, 0
  %i.ua = load i32, ptr %3, align 8
  %i.ub = icmp ne i32 %i.ua, 0
  %or.cond20 = select i1 %i.tz, i1 true, i1 %i.ub
  br i1 %or.cond20, label %cmp.exit637.thread, label %bb.ea

bb.ea:                                            ; preds = %.thread762
  %i.uc = load i32, ptr %i.qq, align 4, !tbaa !21 ; 4 uses
  %i.ud = and i32 %i.uc, 1048575
  %.not566 = icmp ne i32 %i.ud, 0
  %i.ue = and i32 %i.uc, 2146435072
  %i.uf = icmp samesign ult i32 %i.ue, 112197633
  %or.cond582 = select i1 %.not566, i1 true, i1 %i.uf
  br i1 %or.cond582, label %cmp.exit637.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ug = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !27
  %.not567 = icmp eq i32 %i.uh, 0
  %i.ui = icmp slt i32 %i.tl, 2
  %or.cond770 = and i1 %i.ui, %.not567
  br i1 %or.cond770, label %cmp.exit637.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.uj = tail call fastcc ptr @lshift(ptr noundef %0, ptr noundef nonnull %i.th, i32 noundef 1) ; 7 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !28 ; 3 uses
  %i.um = load i32, ptr %i.tm, align 4, !tbaa !28 ; 2 uses
  %.not.i627 = icmp eq i32 %i.ul, %i.um
  br i1 %.not.i627, label %bb.ed, label %cmp.exit637

bb.ed:                                            ; preds = %bb.ec
  %i.un = sext i32 %i.ul to i64                   ; 2 uses
  %.idx.i629 = shl nsw i64 %i.un, 2
  %.add.i630 = add nsw i64 %.idx.i629, 24
  %i.uo = getelementptr inbounds nuw i8, ptr %.4394, i64 24
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.un
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eg, %bb.ed
  %.017.idx.i631 = phi i64 [ %.add.i630, %bb.ed ], [ %.017.add.i633, %bb.eg ] ; 2 uses
  %.0.i632 = phi ptr [ %i.up, %bb.ed ], [ %i.ur, %bb.eg ]
  %.017.add.i633 = add nsw i64 %.017.idx.i631, -4 ; 2 uses
  %.ptr.i634 = getelementptr inbounds i8, ptr %i.uj, i64 %.017.add.i633
  %i.uq = load i32, ptr %.ptr.i634, align 4, !tbaa !27 ; 2 uses
  %i.ur = getelementptr inbounds i8, ptr %.0.i632, i64 -4 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !27 ; 2 uses
  %.not23.i635 = icmp eq i32 %i.uq, %i.us
  br i1 %.not23.i635, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ut = icmp ult i32 %i.uq, %i.us
  br i1 %i.ut, label %cmp.exit637.thread, label %cmp.exit637.thread765

bb.eg:                                            ; preds = %bb.ee
  %.not24.i636 = icmp sgt i64 %.017.idx.i631, 28
  br i1 %.not24.i636, label %bb.ee, label %cmp.exit637.thread

cmp.exit637:                                      ; preds = %bb.ec
  %i.uu = icmp sgt i32 %i.ul, %i.um
  br i1 %i.uu, label %cmp.exit637.thread765, label %cmp.exit637.thread

bb.eh:                                            ; preds = %cmp.exit.thread
  %.not560.a = icmp eq i32 %i.tj, 0               ; 2 uses
  %i.uv = load i32, ptr %i.qq, align 4, !tbaa !21 ; 9 uses
  %i.uw = and i32 %i.uv, 1048575                  ; 2 uses
  br i1 %.not560.a, label %bb.ep, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ux = icmp eq i32 %i.uw, 1048575
  br i1 %i.ux, label %bb.ej, label %.loopexit783

bb.ej:                                            ; preds = %bb.ei
  %i.uy = load i32, ptr %3, align 8, !tbaa !21    ; 2 uses
  br i1 %i.qt, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uz = and i32 %i.uv, 2146435072               ; 2 uses
  %i.va = icmp samesign ult i32 %i.uz, 111149057
  br i1 %i.va, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.vb = lshr exact i32 %i.uz, 20
  %i.vc = sub nuw nsw i32 107, %i.vb
  %i.vd = shl nsw i32 -1, %i.vc
  br label %bb.em

bb.em:                                            ; preds = %bb.ej, %bb.ek, %bb.el
  %i.ve = phi i32 [ %i.vd, %bb.el ], [ -1, %bb.ek ], [ -1, %bb.ej ]
  %i.vf = icmp eq i32 %i.uy, %i.ve
  br i1 %i.vf, label %bb.en, label %.loopexit783

bb.en:                                            ; preds = %bb.em
  %i.vg = icmp eq i32 %i.uv, 2146435071
  %i.vh = icmp eq i32 %i.uy, -1
  %or.cond23 = select i1 %i.vg, i1 %i.vh, i1 false
  br i1 %or.cond23, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vi = and i32 %i.uv, 2146435072
  %i.vj = add nuw i32 %i.vi, 1048576
  store i32 %i.vj, ptr %i.qq, align 4, !tbaa !21
  store i32 0, ptr %3, align 8, !tbaa !21
  br label %cmp.exit637.thread

bb.ep:                                            ; preds = %bb.eh
  %i.vk = icmp ne i32 %i.uw, 0
  %i.vl = load i32, ptr %3, align 8
  %i.vm = icmp ne i32 %i.vl, 0
  %or.cond26 = select i1 %i.vk, i1 true, i1 %i.vm
  br i1 %or.cond26, label %.loopexit783, label %cmp.exit637.thread765

cmp.exit637.thread765:                            ; preds = %bb.ef, %bb.ep, %cmp.exit637
  %i.vn = phi i32 [ %i.uc, %cmp.exit637 ], [ %i.uv, %bb.ep ], [ %i.uc, %bb.ef ]
  %.3 = phi ptr [ %i.uj, %cmp.exit637 ], [ %i.th, %bb.ep ], [ %i.uj, %bb.ef ] ; 4 uses
  %.pre1131 = and i32 %i.vn, 2146435072           ; 3 uses
  %i.vo = icmp samesign ugt i32 %.pre1131, 112197632
end_hunk_0
begin_hunk_1_@jvp_dtoa:bb.a
    i32 2, label %bb.z
    i32 4, label %bb.aa
    i32 3, label %bb.ab
    i32 5, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0468 = phi i32 [ 0, %bb.z ], [ 1, %bb.y ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 4 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.1469 = phi i32 [ 0, %bb.ab ], [ 1, %bb.y ]
  %i.da = add nsw i32 %.2474, %3                  ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  br label %bb.ad

default.unreachable:                              ; preds = %bb.y
  unreachable

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0523 = phi i32 [ %spec.store.select, %bb.aa ], [ %3, %bb.ac ] ; 3 uses
  %.1503 = phi i32 [ %spec.store.select, %bb.aa ], [ %spec.store.select4, %bb.ac ] ; 2 uses
  %.0489 = phi i32 [ %spec.store.select, %bb.aa ], [ %i.db, %bb.ac ] ; 3 uses
  %.0488 = phi i32 [ %spec.store.select, %bb.aa ], [ %i.da, %bb.ac ] ; 3 uses
  %.2470 = phi i32 [ %.0468, %bb.aa ], [ %.1469, %bb.ac ] ; 3 uses
  %.not9.i = icmp samesign ult i32 %.1503, 28
  br i1 %.not9.i, label %._crit_edge.thread.i, label %.lr.ph.i620.preheader

.lr.ph.i620.preheader:                            ; preds = %bb.ad
  %invariant.op = add nsw i32 %.1503, -24
  br label %.lr.ph.i620

.lr.ph.i620:                                      ; preds = %.lr.ph.i620.preheader, %.lr.ph.i620
  %.011.i = phi i32 [ %i.dc, %.lr.ph.i620 ], [ 0, %.lr.ph.i620.preheader ] ; 2 uses
  %.0810.i = phi i32 [ %i.dd, %.lr.ph.i620 ], [ 4, %.lr.ph.i620.preheader ]
  %i.dc = add nuw nsw i32 %.011.i, 1              ; 3 uses
  %i.dd = shl i32 %.0810.i, 1                     ; 2 uses
  %.not.i621 = icmp sgt i32 %i.dd, %invariant.op
  br i1 %.not.i621, label %._crit_edge.i622, label %.lr.ph.i620, !llvm.loop !63

._crit_edge.i622:                                 ; preds = %.lr.ph.i620
  %i.de = icmp samesign ult i32 %.011.i, 7
  br i1 %i.de, label %._crit_edge.thread.i, label %bb.af

._crit_edge.thread.i:                             ; preds = %bb.y, %bb.y, %._crit_edge.i622, %bb.ad
  %.2470717.a = phi i32 [ %.2470, %._crit_edge.i622 ], [ %.2470, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.y ] ; 2 uses
  %.0488712.a = phi i32 [ %.0488, %._crit_edge.i622 ], [ %.0488, %bb.ad ], [ -1, %bb.y ], [ -1, %bb.y ] ; 2 uses
  %.0489709.a = phi i32 [ %.0489, %._crit_edge.i622 ], [ %.0489, %bb.ad ], [ -1, %bb.y ], [ -1, %bb.y ] ; 2 uses
  %.0523706.a = phi i32 [ %.0523, %._crit_edge.i622 ], [ %.0523, %bb.ad ], [ 0, %bb.y ], [ 0, %bb.y ] ; 2 uses
  %.0.lcssa15.i = phi i32 [ %i.dc, %._crit_edge.i622 ], [ 0, %bb.ad ], [ 0, %bb.y ], [ 0, %bb.y ] ; 3 uses
  %i.df = zext nneg i32 %.0.lcssa15.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !18
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !16
  br label %rv_alloc.exit

bb.af:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i622
  %.2470716.a = phi i32 [ %.2470717.a, %._crit_edge.thread.i ], [ %.2470, %._crit_edge.i622 ]
  %.0488711.a = phi i32 [ %.0488712.a, %._crit_edge.thread.i ], [ %.0488, %._crit_edge.i622 ]
  %.0489708.a = phi i32 [ %.0489709.a, %._crit_edge.thread.i ], [ %.0489, %._crit_edge.i622 ]
  %.0523705.a = phi i32 [ %.0523706.a, %._crit_edge.thread.i ], [ %.0523, %._crit_edge.i622 ]
  %.0.lcssa14.i = phi i32 [ %.0.lcssa15.i, %._crit_edge.thread.i ], [ %i.dc, %._crit_edge.i622 ] ; 3 uses
  %i.dj = shl nuw i32 1, %.0.lcssa14.i            ; 2 uses
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 32
  %i.do = tail call ptr @jv_mem_alloc(i64 noundef %i.dn) #10 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %.0.lcssa14.i, ptr %i.dp, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 %i.dj, ptr %i.dq, align 4, !tbaa !25
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.ae, %bb.af
  %.2470715 = phi i32 [ %.2470717.a, %bb.ae ], [ %.2470716.a, %bb.af ] ; 2 uses
  %.0488710 = phi i32 [ %.0488712.a, %bb.ae ], [ %.0488711.a, %bb.af ] ; 4 uses
  %.0489707 = phi i32 [ %.0489709.a, %bb.ae ], [ %.0489708.a, %bb.af ] ; 11 uses
  %.0523704 = phi i32 [ %.0523706.a, %bb.ae ], [ %.0523705.a, %bb.af ] ; 2 uses
  %.0.lcssa16.i = phi i32 [ %.0.lcssa15.i, %bb.ae ], [ %.0.lcssa14.i, %bb.af ]
  %.0.i.i = phi ptr [ %i.dh, %bb.ae ], [ %i.do, %bb.af ] ; 23 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 0, ptr %i.dr, align 4, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !26
  store i32 %.0.lcssa16.i, ptr %.0.i.i, align 8, !tbaa !27
  %.ptr750.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 10 uses
  %or.cond6 = icmp ult i32 %.0489707, 15
  %or.cond8 = and i1 %i.cy, %or.cond6
  br i1 %or.cond8, label %bb.ag, label %bb.bd

bb.ag:                                            ; preds = %rv_alloc.exit
  %i.dt = load double, ptr %7, align 8, !tbaa !21 ; 6 uses
  %i.du = icmp sgt i32 %.2474, 0
  br i1 %i.du, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dv = and i32 %.2474, 15
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !23 ; 2 uses
  %i.dz = lshr i32 %.2474, 4                      ; 2 uses
  %i.ea = and i32 %.2474, 256
  %.not559 = icmp eq i32 %i.ea, 0                 ; 3 uses
  %i.eb = and i32 %i.dz, 15
  %i.ec = fdiv double %i.dt, 1.000000e+256
  %i.ed = select i1 %.not559, double %i.dt, double %i.ec
  %.0495 = select i1 %.not559, i32 2, i32 3       ; 2 uses
  %.0484 = select i1 %.not559, i32 %i.dz, i32 %i.eb ; 2 uses
  %.not560861 = icmp eq i32 %.0484, 0
  br i1 %.not560861, label %._crit_edge, label %.lr.ph866

.lr.ph866:                                        ; preds = %bb.ah, %bb.aj
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %.0416865 = phi double [ %.1417, %bb.aj ], [ %i.dy, %bb.ah ] ; 2 uses
  %.1485864 = phi i32 [ %i.ej, %bb.aj ], [ %.0484, %bb.ah ] ; 2 uses
  %.1496863 = phi i32 [ %.2497, %bb.aj ], [ %.0495, %bb.ah ] ; 2 uses
  %i.ee = and i32 %.1485864, 1
  %.not587.a = icmp eq i32 %i.ee, 0
  br i1 %.not587.a, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph866
  %i.ef = add nsw i32 %.1496863, 1
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1019
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !23
  %i.ei = fmul double %.0416865, %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph866, %bb.ai
  %.2497 = phi i32 [ %i.ef, %bb.ai ], [ %.1496863, %.lr.ph866 ] ; 2 uses
  %.1417 = phi double [ %i.ei, %bb.ai ], [ %.0416865, %.lr.ph866 ] ; 2 uses
  %i.ej = lshr i32 %.1485864, 1                   ; 2 uses
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1
  %.not560 = icmp eq i32 %i.ej, 0
  br i1 %.not560, label %._crit_edge, label %.lr.ph866, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.aj, %bb.ah
  %.1496.lcssa = phi i32 [ %.0495, %bb.ah ], [ %.2497, %bb.aj ]
  %.0416.lcssa = phi double [ %i.dy, %bb.ah ], [ %.1417, %bb.aj ]
  %i.ek = fdiv double %i.ed, %.0416.lcssa
  br label %.loopexit767.a

bb.ak:                                            ; preds = %bb.ag
  %i.el = sub nsw i32 0, %.2474                   ; 4 uses
  %.not556 = icmp eq i32 %.2474, 0
  br i1 %.not556, label %.loopexit767.a, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = and i32 %i.el, 15
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !23
  %i.eq = fmul double %i.dt, %i.ep                ; 2 uses
  %i.er = lshr i32 %i.el, 4                       ; 2 uses
  %.not557856 = icmp eq i32 %i.er, 0
  br i1 %.not557856, label %.loopexit767.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %bb.al ] ; 2 uses
  %.2486859 = phi i32 [ %i.ez, %bb.an ], [ %i.er, %bb.al ] ; 2 uses
  %.3498858 = phi i32 [ %.4499, %bb.an ], [ 2, %bb.al ] ; 2 uses
  %i.es = phi double [ %i.ey, %bb.an ], [ %i.eq, %bb.al ] ; 2 uses
  %i.et = and i32 %.2486859, 1
  %.not558 = icmp eq i32 %i.et, 0
  br i1 %.not558, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.eu = add nsw i32 %.3498858, 1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !23
  %i.ex = fmul double %i.ew, %i.es
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %bb.am
  %i.ey = phi double [ %i.ex, %bb.am ], [ %i.es, %.lr.ph ] ; 2 uses
  %.4499 = phi i32 [ %i.eu, %bb.am ], [ %.3498858, %.lr.ph ] ; 2 uses
  %i.ez = lshr i32 %.2486859, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not557 = icmp eq i32 %i.ez, 0
  br i1 %.not557, label %.loopexit767.a, label %.lr.ph, !llvm.loop !65

.loopexit767.a:                                   ; preds = %bb.an, %bb.al, %bb.ak, %._crit_edge
  %i.fa = phi double [ %i.ek, %._crit_edge ], [ %i.dt, %bb.ak ], [ %i.eq, %bb.al ], [ %i.ey, %bb.an ] ; 3 uses
  %.5500 = phi i32 [ %.1496.lcssa, %._crit_edge ], [ 2, %bb.ak ], [ 2, %bb.al ], [ %.4499, %bb.an ] ; 2 uses
  %.0483 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.ak ], [ %i.el, %bb.al ], [ %i.el, %bb.an ] ; 3 uses
  %i.fb = fcmp olt double %i.fa, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.fb, i1 false
  %8 = icmp sgt i32 %.0489707, 0
  %or.cond12 = and i1 %8, %or.cond10
  br i1 %or.cond12, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.loopexit767.a
  %i.fc = icmp slt i32 %.0488710, 1
  br i1 %i.fc, label %.loopexit766, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = add nsw i32 %.2474, -1
  %i.fe = fmul nnan double %i.fa, 1.000000e+01
  %i.ff = add nsw i32 %.5500, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit767.a
  %.promoted891 = phi double [ %i.fe, %bb.ap ], [ %i.fa, %.loopexit767.a ] ; 6 uses
  %.6501 = phi i32 [ %i.ff, %bb.ap ], [ %.5500, %.loopexit767.a ]
  %.1490 = phi i32 [ %.0488710, %bb.ap ], [ %.0489707, %.loopexit767.a ] ; 5 uses
  %.3475 = phi i32 [ %i.fd, %bb.ap ], [ %.2474, %.loopexit767.a ] ; 6 uses
  %i.fg = sitofp i32 %.6501 to double
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %.promoted891, double 7.000000e+00)
  %i.fi = bitcast double %i.fh to i64             ; 2 uses
  %i.fj = and i64 %i.fi, -4294967296
  %.sroa.075.4.insert.ext = add i64 %i.fj, -234187180623265792
  %.sroa.075.4.insert.mask = and i64 %i.fi, 4294967295
  %.sroa.075.4.insert.insert = or disjoint i64 %.sroa.075.4.insert.ext, %.sroa.075.4.insert.mask
  %i.fk = bitcast i64 %.sroa.075.4.insert.insert to double ; 4 uses
  %i.fl = icmp eq i32 %.1490, 0
  br i1 %i.fl, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fm = fadd double %.promoted891, -5.000000e+00 ; 2 uses
  %i.fn = fcmp ogt double %i.fm, %i.fk
  br i1 %i.fn, label %cmp.exit641.thread724, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = fneg double %i.fk
  %i.fp = fcmp olt double %i.fm, %i.fo
  br i1 %i.fp, label %cmp.exit641.thread, label %.loopexit766

bb.at:                                            ; preds = %bb.aq
  %.not561 = icmp eq i32 %.2470715, 0
  %i.fq = zext nneg i32 %.1490 to i64
  %i.fr = getelementptr [8 x i8], ptr @tens, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !23 ; 2 uses
  br i1 %.not561, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fu = fdiv double 5.000000e-01, %i.ft
  %i.fv = fsub double %i.fu, %i.fk                ; 3 uses
  %i.fw = icmp slt i32 %.2474, 0
  %i.fx = icmp sgt i32 %.0483, 306
  %or.cond14 = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond14, label %.lr.ph874.preheader, label %bb.ay

.lr.ph874.preheader:                              ; preds = %bb.au
  %i.fy = add nsw i32 %.0483, -256
  %i.fz = lshr i32 %i.fy, 4
  %i.ga = and i32 %.0483, 15
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !23
  %i.ge = fmul double %i.gd, f0x31E5866C8349626D
  br label %.lr.ph874

.lr.ph874:                                        ; preds = %.lr.ph874.preheader, %bb.aw
  %indvars.iv1022 = phi i64 [ 0, %.lr.ph874.preheader ], [ %indvars.iv.next1023, %bb.aw ] ; 2 uses
  %.sroa.0.0872 = phi double [ %i.ge, %.lr.ph874.preheader ], [ %.sroa.0.1, %bb.aw ] ; 2 uses
  %.3487871 = phi i32 [ %i.fz, %.lr.ph874.preheader ], [ %i.gj, %bb.aw ] ; 2 uses
  %i.gf = and i32 %.3487871, 1
  %.not564 = icmp eq i32 %i.gf, 0
  br i1 %.not564, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph874
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1022
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !23
  %i.gi = fmul double %.sroa.0.0872, %i.gh
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph874, %bb.av
  %.sroa.0.1 = phi double [ %i.gi, %bb.av ], [ %.sroa.0.0872, %.lr.ph874 ] ; 3 uses
  %i.gj = lshr i32 %.3487871, 1                   ; 2 uses
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1
  %.not562 = icmp eq i32 %i.gj, 0
  br i1 %.not562, label %._crit_edge875, label %.lr.ph874, !llvm.loop !66

._crit_edge875:                                   ; preds = %bb.aw
  %i.gk = fcmp olt double %i.fv, %.sroa.0.1
  br i1 %i.gk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge875
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge875, %bb.ax, %bb.au
  %.sroa.075.0 = phi double [ %.sroa.0.1, %bb.ax ], [ %i.fv, %._crit_edge875 ], [ %i.fv, %bb.au ] ; 2 uses
  %i.gl = fptosi double %.promoted891 to i32      ; 2 uses
  %i.gm = sitofp i32 %i.gl to double
  %i.gn = fsub double %.promoted891, %i.gm        ; 2 uses
  %i.go = trunc i32 %i.gl to i8
  %i.gp = add i8 %i.go, 48
  store i8 %i.gp, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.gq = fsub double 1.000000e+00, %i.gn
  %i.gr = fcmp olt double %i.gq, %.sroa.075.0
  br i1 %i.gr, label %.loopexit764, label %.lr.ph887.preheader

.lr.ph887.preheader:                              ; preds = %bb.ay
  %i.gs = add nuw i32 %.1490, 4
  %wide.trip.count = zext i32 %i.gs to i64
  br label %.lr.ph887

.lr.ph887:                                        ; preds = %.lr.ph887.preheader, %bb.ba
  %.0.add885 = phi i64 [ %.0.add, %bb.ba ], [ 5, %.lr.ph887.preheader ] ; 4 uses
  %i.gt = phi double [ %i.gz, %bb.ba ], [ %i.gn, %.lr.ph887.preheader ] ; 2 uses
  %.sroa.075.1884 = phi double [ %i.gv, %bb.ba ], [ %.sroa.075.0, %.lr.ph887.preheader ] ; 2 uses
  %i.gu = fcmp olt double %i.gt, %.sroa.075.1884
  br i1 %i.gu, label %Bfree.exit695.loopexit765, label %bb.az

bb.az:                                            ; preds = %.lr.ph887
  %exitcond.not = icmp eq i64 %.0.add885, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit766, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = fmul double %.sroa.075.1884, 1.000000e+01 ; 2 uses
  %i.gw = fmul double %i.gt, 1.000000e+01         ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.0.add885
  %i.gx = fptosi double %i.gw to i32              ; 2 uses
  %i.gy = sitofp i32 %i.gx to double
  %i.gz = fsub double %i.gw, %i.gy                ; 2 uses
  %i.ha = trunc i32 %i.gx to i8
  %i.hb = add i8 %i.ha, 48
  %.0.add = add nuw nsw i64 %.0.add885, 1         ; 2 uses
  store i8 %i.hb, ptr %.0.ptr, align 1, !tbaa !21
  %i.hc = fsub double 1.000000e+00, %i.gz
  %i.hd = fcmp olt double %i.hc, %i.gv
  br i1 %i.hd, label %.loopexit764, label %.lr.ph887

bb.bb:                                            ; preds = %bb.at
  %i.he = fmul double %i.ft, %i.fk                ; 2 uses
  %i.hf = fptosi double %.promoted891 to i32      ; 2 uses
  %i.hg = sitofp i32 %i.hf to double
  %i.hh = fsub double %.promoted891, %i.hg        ; 3 uses
  %i.hi = fcmp oeq double %i.hh, 0.000000e+00
  %i.hj = trunc i32 %i.hf to i8
  %i.hk = add i8 %i.hj, 48
  store i8 %i.hk, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.hl = icmp eq i32 %.1490, 1
  %i.hm = or i1 %i.hi, %i.hl
  br i1 %i.hm, label %._crit_edge900, label %.lr.ph899

._crit_edge900:                                   ; preds = %.lr.ph899, %bb.bb
  %.lcssa892 = phi double [ %i.hh, %bb.bb ], [ %i.hz, %.lr.ph899 ] ; 2 uses
  %.1.add.lcssa890 = phi i64 [ 5, %bb.bb ], [ %.1.add, %.lr.ph899 ] ; 2 uses
  %i.hn = fadd double %i.he, 5.000000e-01
  %i.ho = fcmp ogt double %.lcssa892, %i.hn
  br i1 %i.ho, label %.loopexit764, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge900
  %i.hp = fsub double 5.000000e-01, %i.he
  %i.hq = fcmp olt double %.lcssa892, %i.hp
  br i1 %i.hq, label %.preheader762.preheader, label %.loopexit766

.preheader762.preheader:                          ; preds = %bb.bc
  %.ptr753.le.a = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add.lcssa890
  br label %.preheader762

.preheader762:                                    ; preds = %.preheader762.preheader, %.preheader762
  %.2 = phi ptr [ %i.hr, %.preheader762 ], [ %.ptr753.le.a, %.preheader762.preheader ] ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !21
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %.preheader762, label %Bfree.exit695, !llvm.loop !67

.lr.ph899:                                        ; preds = %bb.bb, %.lr.ph899
  %.1.add897 = phi i64 [ %.1.add, %.lr.ph899 ], [ 5, %bb.bb ] ; 2 uses
  %spec.select593896 = phi i32 [ %spec.select593, %.lr.ph899 ], [ %.1490, %bb.bb ]
  %i.hu = phi double [ %i.hz, %.lr.ph899 ], [ %i.hh, %bb.bb ]
  %.6508895 = phi i32 [ %i.hv, %.lr.ph899 ], [ 1, %bb.bb ]
  %i.hv = add nuw nsw i32 %.6508895, 1            ; 3 uses
  %i.hw = fmul double %i.hu, 1.000000e+01         ; 2 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add897
  %i.hx = fptosi double %i.hw to i32              ; 2 uses
  %i.hy = sitofp i32 %i.hx to double
  %i.hz = fsub double %i.hw, %i.hy                ; 3 uses
  %i.ia = fcmp une double %i.hz, 0.000000e+00
  %spec.select593 = select i1 %i.ia, i32 %spec.select593896, i32 %i.hv ; 2 uses
  %i.ib = trunc i32 %i.hx to i8
  %i.ic = add i8 %i.ib, 48
  %.1.add = add nuw nsw i64 %.1.add897, 1         ; 2 uses
  store i8 %i.ic, ptr %.1.ptr, align 1, !tbaa !21
  %i.id = icmp eq i32 %i.hv, %spec.select593
  br i1 %i.id, label %._crit_edge900, label %.lr.ph899

.loopexit766:                                     ; preds = %bb.az, %bb.bc, %bb.as, %bb.ao
  store double %i.dt, ptr %7, align 8, !tbaa !21
  %i.ie = bitcast double %i.dt to i64             ; 2 uses
  %i.if = trunc i64 %i.ie to i32
  %i.ig = lshr i64 %i.ie, 32
  %i.ih = trunc nuw i64 %i.ig to i32
  br label %bb.bd

end_hunk_1
begin_hunk_2_@jvp_dtoa:bb.a
  %i.jc = load double, ptr %7, align 8, !tbaa !21
  %i.jd = fmul double %i.ip, 5.000000e+00
  %i.je = fcmp ugt double %i.jc, %i.jd
  br i1 %i.je, label %cmp.exit641.thread724, label %cmp.exit641.thread

.lr.ph917:                                        ; preds = %.lr.ph1279
  %i.jf = add nuw nsw i32 %.75099151278, 1        ; 2 uses
  %i.jg = icmp eq i32 %i.jf, %.0489707
  br i1 %i.jg, label %.lr.ph917._crit_edge, label %.lr.ph1279

.lr.ph917._crit_edge:                             ; preds = %.lr.ph917, %.lr.ph917.preheader
  %.4.add916.lcssa = phi i64 [ 5, %.lr.ph917.preheader ], [ %.4.add, %.lr.ph917 ] ; 3 uses
  %.lcssa1199 = phi double [ %i.iw, %.lr.ph917.preheader ], [ %i.jx, %.lr.ph917 ]
  %.lcssa1197 = phi i32 [ %i.it, %.lr.ph917.preheader ], [ %i.ju, %.lr.ph917 ]
  %i.jh = fmul double %.lcssa1199, 2.000000e+00   ; 2 uses
  %i.ji = fcmp ogt double %i.jh, %i.ip
  br i1 %i.ji, label %.loopexit764, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph917._crit_edge
  %.ptr755.le.a = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add916.lcssa
  %i.jj = fcmp une double %i.jh, %i.ip
  %i.jk = and i32 %.lcssa1197, 1
  %.not582.a = icmp eq i32 %i.jk, 0
  %or.cond594 = select i1 %i.jj, i1 true, i1 %.not582.a
  br i1 %or.cond594, label %Bfree.exit695, label %.loopexit764

.loopexit764:                                     ; preds = %bb.ba, %bb.ay, %bb.bh, %.lr.ph917._crit_edge, %._crit_edge900
  %.5477 = phi i32 [ %.2474, %.lr.ph917._crit_edge ], [ %.2474, %bb.bh ], [ %.3475, %._crit_edge900 ], [ %.3475, %bb.ay ], [ %.3475, %bb.ba ] ; 2 uses
  %.5.idx = phi i64 [ %.4.add916.lcssa, %.lr.ph917._crit_edge ], [ %.4.add916.lcssa, %bb.bh ], [ %.1.add.lcssa890, %._crit_edge900 ], [ 5, %bb.ay ], [ %.0.add, %bb.ba ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %.loopexit764
  %.6.idx = phi i64 [ %.5.idx, %.loopexit764 ], [ %.6.add, %bb.bj ] ; 2 uses
  %.6.add = add nsw i64 %.6.idx, -1               ; 4 uses
  %.ptr752 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jl = load i8, ptr %.ptr752, align 1, !tbaa !21 ; 2 uses
  %i.jm = icmp eq i8 %i.jl, 57
  br i1 %i.jm, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.jn = icmp eq i64 %.6.add, 4
  br i1 %i.jn, label %bb.bk, label %bb.bi, !llvm.loop !68

bb.bk:                                            ; preds = %bb.bj
  %i.jo = add nsw i32 %.5477, 1
  store i8 48, ptr %.ptr750.ptr, align 4, !tbaa !21
  br label %bb.bl

.loopexit:                                        ; preds = %bb.bi
  %.ptr752.le.a = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jp = add i8 %i.jl, 1
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bk
  %i.jq = phi i8 [ 49, %bb.bk ], [ %i.jp, %.loopexit ]
  %.ptr752770 = phi ptr [ %.ptr750.ptr, %bb.bk ], [ %.ptr752.le.a, %.loopexit ]
  %.6478 = phi i32 [ %i.jo, %bb.bk ], [ %.5477, %.loopexit ]
  %.6.ptr772 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.idx
  store i8 %i.jq, ptr %.ptr752770, align 1, !tbaa !21
  br label %Bfree.exit695

.lr.ph1279:                                       ; preds = %.lr.ph917.preheader, %.lr.ph917
  %.75099151278 = phi i32 [ %i.jf, %.lr.ph917 ], [ 1, %.lr.ph917.preheader ]
  %i.jr = phi double [ %i.jx, %.lr.ph917 ], [ %i.iw, %.lr.ph917.preheader ]
  %.4.add9161277 = phi i64 [ %.4.add, %.lr.ph917 ], [ 5, %.lr.ph917.preheader ] ; 2 uses
  %i.js = fmul double %i.jr, 1.000000e+01         ; 2 uses
  %.4.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add9161277
  %i.jt = fdiv double %i.js, %i.ip
  %i.ju = fptosi double %i.jt to i32              ; 3 uses
  %i.jv = sitofp i32 %i.ju to double
  %i.jw = fneg double %i.jv
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.ip, double %i.js) ; 3 uses
  %i.jy = trunc i32 %i.ju to i8
  %i.jz = add i8 %i.jy, 48
  %.4.add = add nuw nsw i64 %.4.add9161277, 1     ; 3 uses
  store i8 %i.jz, ptr %.4.ptr, align 1, !tbaa !21
  %i.ka = fcmp une double %i.jx, 0.000000e+00
  br i1 %i.ka, label %.lr.ph917, label %Bfree.exit695.loopexit

bb.bm:                                            ; preds = %bb.bd
  %i.kb = icmp eq i32 %.2470715, 0                ; 5 uses
  br i1 %i.kb, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kc = add nsw i32 %i.ik, 1075
  %i.kd = sub nsw i32 54, %i.cp
  %i.ke = select i1 %.not555.not, i32 %i.kc, i32 %i.kd ; 2 uses
  %i.kf = add nsw i32 %i.ke, %.1517
  %i.kg = add nsw i32 %i.ke, %.1463
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !16 ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i623, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !18
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !16
  br label %i2b.exit

bb.bp:                                            ; preds = %bb.bn
  %i.kk = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i32 1, ptr %i.kl, align 8, !tbaa !19
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store i32 2, ptr %i.km, align 4, !tbaa !25
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.bo, %bb.bp
  %.0.i.i624 = phi ptr [ %i.ki, %bb.bo ], [ %i.kk, %bb.bp ] ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 20
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 16
  store i32 0, ptr %i.ko, align 8, !tbaa !26
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 24
  store i32 1, ptr %i.kp, align 8, !tbaa !27
  store i32 1, ptr %i.kn, align 4, !tbaa !28
  br label %bb.bq

bb.bq:                                            ; preds = %i2b.exit, %bb.bm
  %.2518 = phi i32 [ %i.kf, %i2b.exit ], [ %.1517, %bb.bm ] ; 2 uses
  %.2464 = phi i32 [ %i.kg, %i2b.exit ], [ %.1463, %bb.bm ] ; 4 uses
  %.0423 = phi ptr [ %.0.i.i624, %i2b.exit ], [ null, %bb.bm ] ; 3 uses
  %i.kq = icmp sgt i32 %.1517, 0
  %i.kr = icmp sgt i32 %.2464, 0
  %or.cond20 = select i1 %i.kq, i1 %i.kr, i1 false
  br i1 %or.cond20, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ks = tail call i32 @llvm.umin.i32(i32 %.1517, i32 %.2464) ; 3 uses
  %i.kt = sub nsw i32 %.2518, %i.ks
  %i.ku = sub nsw i32 %.1517, %i.ks
  %i.kv = sub nsw i32 %.2464, %i.ks
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3519 = phi i32 [ %i.kt, %bb.br ], [ %.2518, %bb.bq ] ; 3 uses
  %.0467 = phi i32 [ %i.ku, %bb.br ], [ %.1517, %bb.bq ]
  %.3465 = phi i32 [ %i.kv, %bb.br ], [ %.2464, %bb.bq ] ; 3 uses
  %.not566 = icmp eq i32 %.0515, 0
  br i1 %.not566, label %Bfree.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.kb, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kw = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %.0423, i32 noundef %.0515) ; 4 uses
  %i.kx = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %i.kw, ptr noundef %i.ap) ; 3 uses
  %.not.i625 = icmp eq ptr %i.ap, null
  br i1 %.not.i625, label %Bfree.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !19 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 7
  br i1 %i.la, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void @jv_mem_free(ptr noundef nonnull %i.ap) #10
  br label %Bfree.exit

bb.bx:                                            ; preds = %bb.bv
  %i.lb = sext i32 %i.kz to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lb ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !16
  store ptr %i.ld, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.ap, ptr %i.lc, align 8, !tbaa !16
  br label %Bfree.exit

bb.by:                                            ; preds = %bb.bt
  %i.le = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %i.ap, i32 noundef %.0515)
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.by, %bb.bs
  %.1445 = phi ptr [ %i.ap, %bb.bs ], [ %i.le, %bb.by ], [ %i.kx, %bb.bu ], [ %i.kx, %bb.bw ], [ %i.kx, %bb.bx ] ; 2 uses
  %.2425 = phi ptr [ %.0423, %bb.bs ], [ %.0423, %bb.by ], [ %i.kw, %bb.bu ], [ %i.kw, %bb.bw ], [ %i.kw, %bb.bx ] ; 6 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !16 ; 3 uses
  %.not.i.i626 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i626, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %Bfree.exit
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !18
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !16
  br label %i2b.exit628

bb.ca:                                            ; preds = %Bfree.exit
  %i.li = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 1, ptr %i.lj, align 8, !tbaa !19
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i32 2, ptr %i.lk, align 4, !tbaa !25
  br label %i2b.exit628

i2b.exit628:                                      ; preds = %bb.bz, %bb.ca
  %.0.i.i627 = phi ptr [ %i.lg, %bb.bz ], [ %i.li, %bb.ca ] ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 20
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 16
  store i32 0, ptr %i.lm, align 8, !tbaa !26
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i.i627, i64 24
  store i32 1, ptr %i.ln, align 8, !tbaa !27
  store i32 1, ptr %i.ll, align 4, !tbaa !28
  %9 = icmp sgt i32 %.0461, 0
  br i1 %9, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %i2b.exit628
  %i.lo = tail call fastcc ptr @pow5mult(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i627, i32 noundef %.0461)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %i2b.exit628
  %.0418 = phi ptr [ %i.lo, %bb.cb ], [ %.0.i.i627, %i2b.exit628 ] ; 4 uses
  %i.lp = icmp sgt i32 %spec.select592, 1
  %or.cond22.not569 = and i1 %i.lp, %i.kb
  %i.lq = icmp ne i32 %i.ii, 0
  %or.cond32 = select i1 %or.cond22.not569, i1 true, i1 %i.lq
  br i1 %or.cond32, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lr = and i32 %i.ij, 1048575
  %.not570 = icmp ne i32 %i.lr, 0
  %i.ls = and i32 %i.ij, 2145386496
  %.not571 = icmp eq i32 %i.ls, 0
  %or.cond595 = or i1 %.not570, %.not571
  br i1 %or.cond595, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lt = add nsw i32 %.3519, 1
  %i.lu = add nsw i32 %.3465, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %bb.cc
  %.4520 = phi i32 [ %.3519, %bb.cc ], [ %.3519, %bb.cd ], [ %i.lt, %bb.ce ]
  %.4466 = phi i32 [ %.3465, %bb.cc ], [ %.3465, %bb.cd ], [ %i.lu, %bb.ce ] ; 2 uses
  %.not575 = phi i1 [ true, %bb.cc ], [ true, %bb.cd ], [ false, %bb.ce ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.0418, i64 20
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !28
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr [4 x i8], ptr %.0418, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 20
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !27 ; 3 uses
  %.not.i.i629 = icmp ult i32 %i.ma, 65536        ; 2 uses
  %i.mb = shl nuw i32 %i.ma, 16
  %spec.select.i.i = select i1 %.not.i.i629, i32 %i.mb, i32 %i.ma ; 3 uses
  %spec.select26.i.i = select i1 %.not.i.i629, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i.i, 16777216 ; 2 uses
  %i.mc = or disjoint i32 %spec.select26.i.i, 8
  %i.md = shl nuw i32 %spec.select.i.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.md, i32 %spec.select.i.i ; 3 uses
  %.1.i.i = select i1 %.not21.i.i, i32 %i.mc, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.me = or disjoint i32 %.1.i.i, 4
  %i.mf = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.mf, i32 %.117.i.i ; 3 uses
  %.2.i.i = select i1 %.not22.i.i, i32 %i.me, i32 %.1.i.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.mg = or disjoint i32 %.2.i.i, 2
  %i.mh = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.mh, i32 %.218.i.i ; 2 uses
  %.3.i.i = select i1 %.not23.i.i, i32 %i.mg, i32 %.2.i.i ; 2 uses
  %i.mi = add nuw nsw i32 %.3.i.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 1073741824, i32 %i.mi
  %.not241.i.i = icmp slt i32 %.319.i.i, 0
  %.020.i.i = select i1 %.not241.i.i, i32 %.3.i.i, i32 %spec.select27.i.i
  %i.mj = tail call i32 @llvm.smax.i32(i32 range(i32 -2147483646, -2147483648) %.4466, i32 0)
  %reass.sub = sub nsw i32 %.020.i.i, %i.mj
  %spec.select.i = add nsw i32 %reass.sub, 28
  %i.mk = and i32 %spec.select.i, 31              ; 3 uses
  %i.ml = add nsw i32 %i.mk, %.4520               ; 2 uses
  %i.mm = add nsw i32 %i.mk, %.0467               ; 2 uses
  %i.mn = add nsw i32 %i.mk, %.4466               ; 2 uses
  %i.mo = icmp sgt i32 %i.ml, 0
  br i1 %i.mo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.mp = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef %.1445, i32 noundef %i.ml)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2446 = phi ptr [ %i.mp, %bb.cg ], [ %.1445, %bb.cf ] ; 7 uses
  %i.mq = icmp sgt i32 %i.mn, 0
  br i1 %i.mq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.mr = tail call fastcc ptr @lshift(ptr noundef nonnull %0, ptr noundef nonnull %.0418, i32 noundef %i.mn)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.1419 = phi ptr [ %i.mr, %bb.ci ], [ %.0418, %bb.ch ] ; 18 uses
  br i1 %or.cond, label %bb.ck, label %cmp.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ms = getelementptr inbounds nuw i8, ptr %.2446, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !28 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1419, i64 20
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !28 ; 2 uses
  %.not.i630 = icmp eq i32 %i.mt, %i.mv
  br i1 %.not.i630, label %bb.cl, label %cmp.exit

bb.cl:                                            ; preds = %bb.ck
  %i.mw = sext i32 %i.mt to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.mw, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.mx = getelementptr inbounds nuw i8, ptr %.1419, i64 24
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.mw
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %bb.cl
  %.017.idx.i = phi i64 [ %.add.i, %bb.cl ], [ %.017.add.i, %bb.co ] ; 2 uses
  %.0.i = phi ptr [ %i.my, %bb.cl ], [ %i.na, %bb.co ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %.2446, i64 %.017.add.i
  %i.mz = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq i32 %i.mz, %i.nb
  br i1 %.not23.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nc = icmp ult i32 %i.mz, %i.nb
  br i1 %i.nc, label %cmp.exit.thread720, label %cmp.exit.thread

bb.co:                                            ; preds = %bb.cm
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.cm, label %cmp.exit.thread

cmp.exit:                                         ; preds = %bb.ck
  %i.nd = icmp slt i32 %i.mt, %i.mv
  br i1 %i.nd, label %cmp.exit.thread720, label %cmp.exit.thread

cmp.exit.thread720:                               ; preds = %bb.cn, %cmp.exit
  %i.ne = add nsw i32 %.2474, -1                  ; 2 uses
  %i.nf = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef nonnull %.2446, i32 noundef 10, i32 noundef 0) ; 2 uses
  br i1 %i.kb, label %cmp.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %cmp.exit.thread720
  %i.ng = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef %.2425, i32 noundef 10, i32 noundef 0)
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %bb.co, %bb.cn, %cmp.exit.thread720, %bb.cp, %cmp.exit, %bb.cj
  %.5494 = phi i32 [ %.0489707, %bb.cj ], [ %.0489707, %cmp.exit ], [ %.0488710, %bb.cp ], [ %.0488710, %cmp.exit.thread720 ], [ %.0489707, %bb.cn ], [ %.0489707, %bb.co ] ; 4 uses
  %.7479 = phi i32 [ %.2474, %bb.cj ], [ %.2474, %cmp.exit ], [ %i.ne, %bb.cp ], [ %i.ne, %cmp.exit.thread720 ], [ %.2474, %bb.cn ], [ %.2474, %bb.co ] ; 9 uses
  %.3447 = phi ptr [ %.2446, %bb.cj ], [ %.2446, %cmp.exit ], [ %i.nf, %bb.cp ], [ %i.nf, %cmp.exit.thread720 ], [ %.2446, %bb.cn ], [ %.2446, %bb.co ] ; 10 uses
  %.4427 = phi ptr [ %.2425, %bb.cj ], [ %.2425, %cmp.exit ], [ %i.ng, %bb.cp ], [ %.2425, %cmp.exit.thread720 ], [ %.2425, %bb.cn ], [ %.2425, %bb.co ] ; 10 uses
  %i.nh = icmp slt i32 %.5494, 1
  br i1 %i.nh, label %bb.cq, label %bb.cx

bb.cq:                                            ; preds = %cmp.exit.thread
  switch i32 %spec.select592, label %bb.cx [
    i32 5, label %bb.cr
    i32 3, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq
  %i.ni = icmp slt i32 %.5494, 0
  br i1 %i.ni, label %cmp.exit641.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nj = tail call fastcc ptr @multadd(ptr noundef %0, ptr noundef %.1419, i32 noundef 5, i32 noundef 0) ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.3447, i64 20
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !28 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !28 ; 2 uses
  %.not.i631 = icmp eq i32 %i.nl, %i.nn
  br i1 %.not.i631, label %bb.ct, label %cmp.exit641

bb.ct:                                            ; preds = %bb.cs
  %i.no = sext i32 %i.nl to i64                   ; 2 uses
  %.idx.i633 = shl nsw i64 %i.no, 2
  %.add.i634 = add nsw i64 %.idx.i633, 24
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.no
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.017.idx.i635 = phi i64 [ %.add.i634, %bb.ct ], [ %.017.add.i637, %bb.cw ] ; 2 uses
  %.0.i636 = phi ptr [ %i.nq, %bb.ct ], [ %i.ns, %bb.cw ]
  %.017.add.i637 = add nsw i64 %.017.idx.i635, -4 ; 2 uses
  %.ptr.i638 = getelementptr inbounds i8, ptr %.3447, i64 %.017.add.i637
  %i.nr = load i32, ptr %.ptr.i638, align 4, !tbaa !27 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %.0.i636, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !27 ; 2 uses
  %.not23.i639 = icmp eq i32 %i.nr, %i.nt
  br i1 %.not23.i639, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nu = icmp ult i32 %i.nr, %i.nt
  br i1 %i.nu, label %cmp.exit641.thread, label %cmp.exit641.thread724

bb.cw:                                            ; preds = %bb.cu
  %.not24.i640 = icmp sgt i64 %.017.idx.i635, 28
  br i1 %.not24.i640, label %bb.cu, label %cmp.exit641.thread

cmp.exit641:                                      ; preds = %bb.cs
  %.not746 = icmp sgt i32 %i.nl, %i.nn
  br i1 %.not746, label %cmp.exit641.thread724, label %cmp.exit641.thread

cmp.exit641.thread:                               ; preds = %bb.cw, %bb.cv, %bb.cr, %cmp.exit641, %bb.bf, %bb.bg, %bb.as
  %.4448 = phi ptr [ %i.ap, %bb.bf ], [ %i.ap, %bb.bg ], [ %.3447, %bb.cr ], [ %.3447, %cmp.exit641 ], [ %i.ap, %bb.as ], [ %.3447, %bb.cv ], [ %.3447, %bb.cw ]
  %.5428 = phi ptr [ null, %bb.bf ], [ null, %bb.bg ], [ %.4427, %bb.cr ], [ %.4427, %cmp.exit641 ], [ null, %bb.as ], [ %.4427, %bb.cv ], [ %.4427, %bb.cw ]
  %.2420 = phi ptr [ null, %bb.bf ], [ null, %bb.bg ], [ %.1419, %bb.cr ], [ %i.nj, %cmp.exit641 ], [ null, %bb.as ], [ %i.nj, %bb.cv ], [ %i.nj, %bb.cw ]
  %i.nv = xor i32 %.0523704, -1
  br label %.loopexit757

end_hunk_2
