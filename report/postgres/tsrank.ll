inline.NumInlined: 68
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@calc_rank_cd:bb.a
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = load i16, ptr %i.ge, align 8            ; 2 uses
  %i.hj = xor i16 %i.hi, %i.hh
  %i.hk = and i16 %i.hj, 16383
  %.not29.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not29.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hl = sub i32 16383, %i.gs
  %spec.select.i.i = select i1 %i.gw, i32 %i.hl, i32 %i.gs
  %i.hm = sext i32 %spec.select.i.i to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hm
  store i16 %i.hi, ptr %i.hn, align 2
  %i.ho = load i32, ptr %i.gr, align 4
  %i.hp = add i32 %i.ho, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.z
  %.sink.i.i = phi i32 [ %i.hp, %bb.ab ], [ 1, %bb.z ]
  store i32 %.sink.i.i, ptr %i.gr, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.aa, %bb.x
  %indvars.iv.next.i58.i = add nuw nsw i64 %indvars.iv.i57.i, 1 ; 2 uses
  %i.hq = load i16, ptr %i.gb, align 8
  %i.hr = sext i16 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next.i58.i, %i.hr
  br i1 %i.hs, label %bb.x, label %fillQueryRepresentationData.exit.i, !llvm.loop !20

fillQueryRepresentationData.exit.i:               ; preds = %bb.ac, %.lr.ph.i106
  %i.ht = load ptr, ptr %4, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = call zeroext i1 @TS_execute(ptr noundef nonnull %i.hu, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #9, !inline_history !16
  br i1 %i.hv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16
  %i.hx = load i16, ptr %i.hw, align 8
  %i.hy = and i16 %i.hx, 16383                    ; 3 uses
  %.not = icmp eq i16 %i.hy, 0
  br i1 %.not, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load ptr, ptr %4, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i

.lr.ph.i59.i:                                     ; preds = %bb.ae, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i61.i, %.lr.ph.i59.i ], [ 0, %bb.ae ] ; 4 uses
  %i.id = load ptr, ptr %i.at, align 8
  %i.ie = getelementptr inbounds nuw [32776 x i8], ptr %i.id, i64 %indvars.iv.i60.i
  store i8 0, ptr %i.ie, align 4
  %i.if = load ptr, ptr %i.at, align 8
  %i.ig = getelementptr inbounds nuw [32776 x i8], ptr %i.if, i64 %indvars.iv.i60.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store i8 1, ptr %i.ih, align 1
  %i.ii = load ptr, ptr %i.at, align 8
  %i.ij = getelementptr inbounds nuw [32776 x i8], ptr %i.ii, i64 %indvars.iv.i60.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 0, ptr %i.ik, align 4
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.il = load ptr, ptr %4, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next.i61.i, %i.io
  br i1 %i.ip, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i, !llvm.loop !17

resetQueryRepresentation.exit62.i:                ; preds = %.lr.ph.i59.i, %bb.ae
  %sext.i = shl i64 %i.ga, 32
  %i.iq = ashr exact i64 %sext.i, 32              ; 2 uses
  %.not84.i = icmp slt i64 %i.iq, %indvars.iv
  br i1 %.not84.i, label %.loopexit.i108.thread, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %resetQueryRepresentation.exit62.i
  %i.ir = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %i.iq
  br label %.lr.ph86.i

bb.af:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05183.i, i64 24 ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.dz
  %i.iv = sdiv exact i64 %i.iu, 24                ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %i.ff
  br i1 %i.iw, label %.lr.ph.i106, label %.loopexit, !llvm.loop !21

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %bb.am
  %.185.i = phi ptr [ %i.ks, %bb.am ], [ %i.ir, %.lr.ph86.i.preheader ] ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.185.i, i64 8 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 8
  %i.iz = icmp sgt i16 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i63.i, label %fillQueryRepresentationData.exit71.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph86.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.185.i, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ 0, %.lr.ph.i63.i ], [ %indvars.iv.next.i66.i, %bb.al ] ; 2 uses
  %i.jb = load ptr, ptr %.185.i, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i64.i
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = load i8, ptr %i.jd, align 4
  %.not.i65.i = icmp eq i8 %i.je, 1
  br i1 %.not.i65.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.jf = load ptr, ptr %i.at, align 8
  %i.jg = load ptr, ptr %4, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = ptrtoint ptr %i.jd to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = sdiv exact i64 %i.jk, 12
  %i.jm = getelementptr inbounds [32776 x i8], ptr %i.jf, i64 %i.jl ; 5 uses
  store i8 1, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4            ; 5 uses
  %i.jp = icmp eq i32 %i.jo, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !range !18, !noundef !19
  %i.js = trunc nuw i8 %i.jr to i1                ; 3 uses
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jt = load i16, ptr %i.ja, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jv = select i1 %i.js, i64 16383, i64 0
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.jv
  store i16 %i.jt, ptr %i.jw, align 2
  br label %.sink.split.i69.i

bb.aj:                                            ; preds = %bb.ah
  %i.jx = sub i32 16384, %i.jo
  %i.jy = add i32 %i.jo, -1
  %i.jz = select i1 %i.js, i32 %i.jx, i32 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = load i16, ptr %i.ja, align 8            ; 2 uses
  %i.kf = xor i16 %i.ke, %i.kd
  %i.kg = and i16 %i.kf, 16383
  %.not29.i67.i = icmp eq i16 %i.kg, 0
  br i1 %.not29.i67.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kh = sub i32 16383, %i.jo
  %spec.select.i68.i = select i1 %i.js, i32 %i.kh, i32 %i.jo
  %i.ki = sext i32 %spec.select.i68.i to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ki
  store i16 %i.ke, ptr %i.kj, align 2
  %i.kk = load i32, ptr %i.jn, align 4
  %i.kl = add i32 %i.kk, 1
  br label %.sink.split.i69.i

.sink.split.i69.i:                                ; preds = %bb.ak, %bb.ai
  %.sink.i70.i = phi i32 [ %i.kl, %bb.ak ], [ 1, %bb.ai ]
  store i32 %.sink.i70.i, ptr %i.jn, align 4
  br label %bb.al

bb.al:                                            ; preds = %.sink.split.i69.i, %bb.aj, %bb.ag
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %i.km = load i16, ptr %i.ix, align 8
  %i.kn = sext i16 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next.i66.i, %i.kn
  br i1 %i.ko, label %bb.ag, label %fillQueryRepresentationData.exit71.i, !llvm.loop !20

fillQueryRepresentationData.exit71.i:             ; preds = %bb.al, %.lr.ph86.i
  %i.kp = load ptr, ptr %4, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = call zeroext i1 @TS_execute(ptr noundef nonnull %i.kq, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #9, !inline_history !16
  br i1 %i.kr, label %.loopexit.i108, label %bb.am

bb.am:                                            ; preds = %fillQueryRepresentationData.exit71.i
  %i.ks = getelementptr inbounds i8, ptr %.185.i, i64 -24 ; 2 uses
  %.not.i107 = icmp ult ptr %i.ks, %i.fz
  br i1 %.not.i107, label %.loopexit.i108.thread, label %.lr.ph86.i, !llvm.loop !22

.loopexit.i108:                                   ; preds = %fillQueryRepresentationData.exit71.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.185.i, i64 16
  %i.ku = load i16, ptr %i.kt, align 8
  %i.kv = and i16 %i.ku, 16383                    ; 2 uses
  %.not55.i = icmp samesign ugt i16 %i.kv, %i.hy
  br i1 %.not55.i, label %.loopexit.i108.thread, label %bb.an

.loopexit.i108.thread:                            ; preds = %bb.am, %resetQueryRepresentation.exit62.i, %.loopexit.i108
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse.i

bb.an:                                            ; preds = %.loopexit.i108
  %i.kw = zext nneg i16 %i.hy to i32              ; 2 uses
  %i.kx = zext nneg i16 %i.kv to i32              ; 2 uses
  %i.ky = ptrtoint ptr %.185.i to i64
  %i.kz = sub i64 %i.ky, %i.dz
  %i.la = sdiv exact i64 %i.kz, 24
  %i.lb = add nsw i64 %i.la, 1
  %.not105158 = icmp ugt ptr %.185.i, %.05183.i
  br i1 %.not105158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.0160 = phi ptr [ %i.lj, %.lr.ph ], [ %.185.i, %bb.an ] ; 2 uses
  %.083159 = phi double [ %i.li, %.lr.ph ], [ 0.000000e+00, %bb.an ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.0160, i64 16
  %i.ld = load i16, ptr %i.lc, align 8
  %i.le = lshr i16 %i.ld, 14
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8
  %i.li = fadd double %.083159, %i.lh             ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0160, i64 24 ; 2 uses
  %.not105 = icmp ugt ptr %i.lj, %.05183.i
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.083.lcssa = phi double [ 0.000000e+00, %bb.an ], [ %i.li, %.lr.ph ]
  %5 = ptrtoint ptr %.05183.i to i64
  %6 = ptrtoint ptr %.185.i to i64
  %7 = sub i64 %5, %6                             ; 2 uses
  %8 = sdiv exact i64 %7, 24                      ; 2 uses
  %9 = add nsw i64 %8, 1
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, %.083.lcssa
  %12 = trunc i64 %8 to i32
  %13 = add i32 %i.kx, %12
  %14 = sub i32 %i.kw, %13                        ; 2 uses
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %._crit_edge.a

16:                                               ; preds = %._crit_edge
  %17 = sdiv i64 %7, 48
  %18 = trunc i64 %17 to i32
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %16, %._crit_edge
  %.081 = phi i32 [ %18, %16 ], [ %14, %._crit_edge ]
  %i.lk = add i32 %.081, 1
  %i.ll = sitofp i32 %i.lk to double
  %i.lm = add nuw nsw i32 %i.kx, %i.kw
  %i.ln = uitofp nneg i32 %i.lm to double
  %i.lo = fmul nnan double %i.ln, 5.000000e-01    ; 3 uses
  %i.lp = icmp sgt i32 %.090, 0
  %i.lq = fcmp ogt double %i.lo, %.089
  %or.cond = select i1 %i.lp, i1 %i.lq, i1 false
  %i.lr = fsub double %i.lo, %.089
  %i.ls = insertelement <2 x double> <double poison, double 1.000000e+00>, double %11, i64 0
  %i.lt = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lr, i64 1
  %i.lv = fdiv <2 x double> %i.ls, %i.lu
  %i.lw = fadd <2 x double> %i.fg, %i.lv          ; 2 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 1
  %.188 = select i1 %or.cond, double %i.lx, double %.087 ; 2 uses
  %i.ly = add i32 %.090, 1
  %i.lz = insertelement <2 x double> %i.lw, double %.188, i64 1
  br label %bb.w, !llvm.loop !24

.loopexit:                                        ; preds = %resetQueryRepresentation.exit.i, %bb.ad, %bb.af
  %i.ma = and i32 %3, 1
  %.not100 = icmp eq i32 %i.ma, 0
  %i.mb = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  br i1 %.not100, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.mc = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.me = zext nneg i32 %i.mc to i64
  %.idx.i = shl nuw nsw i64 %i.me, 2
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.ap, %.thread.i
  %.020.i = phi ptr [ %i.mr, %.thread.i ], [ %i.bb, %bb.ap ] ; 2 uses
  %.01519.i = phi i32 [ %i.mq, %.thread.i ], [ 0, %bb.ap ]
  %i.mg = load i32, ptr %.020.i, align 4          ; 3 uses
  %i.mh = and i32 %i.mg, 1
  %.not.i110 = icmp eq i32 %i.mh, 0
  br i1 %.not.i110, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i109
  %i.mi = lshr i32 %i.mg, 12
  %i.mj = lshr i32 %i.mg, 1
  %i.mk = and i32 %i.mj, 2047
  %i.ml = add nuw nsw i32 %i.mi, 1
  %narrow.i111 = add nuw nsw i32 %i.ml, %i.mk
  %i.mm = and i32 %narrow.i111, 4194302
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 1
  %.fr.i = freeze i16 %i.mp
  %narrow18.i = call i16 @llvm.umax.i16(i16 %.fr.i, i16 1)
  %spec.select.v.i = zext i16 %narrow18.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aq, %.lr.ph.i109
  %spec.select.v.pn.i = phi i32 [ %spec.select.v.i, %bb.aq ], [ 1, %.lr.ph.i109 ]
  %i.mq = add i32 %spec.select.v.pn.i, %.01519.i  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  %i.ms = icmp ult ptr %i.mr, %i.mf
  br i1 %i.ms, label %.lr.ph.i109, label %cnt_length.exit, !llvm.loop !10

cnt_length.exit:                                  ; preds = %.thread.i
  %i.mt = add i32 %i.mq, 1
  %i.mu = sitofp i32 %i.mt to double
  %i.mv = call double @log(double noundef %i.mu) #9
  %i.mw = fdiv double %i.mb, %i.mv
  br label %bb.ar

bb.ar:                                            ; preds = %cnt_length.exit, %bb.ao, %.loopexit
  %.1 = phi double [ %i.mw, %cnt_length.exit ], [ %i.mb, %bb.ao ], [ %i.mb, %.loopexit ] ; 4 uses
  %i.mx = and i32 %3, 2
  %.not101 = icmp eq i32 %i.mx, 0
  br i1 %.not101, label %cnt_length.exit124.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.my = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %.idx.i112 = shl nsw i64 %i.mz, 2
  %i.na = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i112 ; 2 uses
  %i.nb = icmp sgt i32 %i.my, 0
  br i1 %i.nb, label %.lr.ph.i114, label %cnt_length.exit124.thread

.lr.ph.i114:                                      ; preds = %bb.as, %.thread.i122
  %.020.i115 = phi ptr [ %i.nn, %.thread.i122 ], [ %i.bb, %bb.as ] ; 2 uses
  %.01519.i116 = phi i32 [ %i.nm, %.thread.i122 ], [ 0, %bb.as ]
  %i.nc = load i32, ptr %.020.i115, align 4       ; 3 uses
  %i.nd = and i32 %i.nc, 1
  %.not.i117 = icmp eq i32 %i.nd, 0
  br i1 %.not.i117, label %.thread.i122, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i114
  %i.ne = lshr i32 %i.nc, 12
  %i.nf = lshr i32 %i.nc, 1
  %i.ng = and i32 %i.nf, 2047
  %i.nh = add nuw nsw i32 %i.ne, 1
  %narrow.i118 = add nuw nsw i32 %i.nh, %i.ng
  %i.ni = and i32 %narrow.i118, 4194302
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 1
  %.fr.i119 = freeze i16 %i.nl
  %narrow18.i120 = call i16 @llvm.umax.i16(i16 %.fr.i119, i16 1)
  %spec.select.v.i121 = zext i16 %narrow18.i120 to i32
  br label %.thread.i122

.thread.i122:                                     ; preds = %bb.at, %.lr.ph.i114
  %spec.select.v.pn.i123 = phi i32 [ %spec.select.v.i121, %bb.at ], [ 1, %.lr.ph.i114 ]
  %i.nm = add i32 %spec.select.v.pn.i123, %.01519.i116 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.020.i115, i64 4 ; 2 uses
  %i.no = icmp ult ptr %i.nn, %i.na
  br i1 %i.no, label %.lr.ph.i114, label %cnt_length.exit124, !llvm.loop !10

cnt_length.exit124:                               ; preds = %.thread.i122
  %i.np = icmp sgt i32 %i.nm, 0
  br i1 %i.np, label %bb.au, label %cnt_length.exit124.thread

bb.au:                                            ; preds = %cnt_length.exit124
  %i.nq = uitofp nneg i32 %i.nm to double
  %i.nr = fdiv double %.1, %i.nq
  br label %cnt_length.exit124.thread

cnt_length.exit124.thread:                        ; preds = %bb.as, %cnt_length.exit124, %bb.au, %bb.ar
  %.2 = phi double [ %i.nr, %bb.au ], [ %.1, %cnt_length.exit124 ], [ %.1, %bb.ar ], [ %.1, %bb.as ] ; 2 uses
  %i.ns = and i32 %3, 4
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = icmp sgt i32 %.090, 0
  %or.cond5 = select i1 %i.nt, i1 %i.nu, i1 false
  %i.nv = fcmp ogt double %.087, 0.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %i.nv, i1 false
  %i.nw = uitofp nneg i32 %.090 to double
  %i.nx = fdiv double %i.nw, %.087
  %i.ny = fdiv double %.2, %i.nx
  %.3 = select i1 %or.cond7, double %i.ny, double %.2 ; 3 uses
  %i.nz = and i32 %3, 8
  %.not102 = icmp eq i32 %i.nz, 0
  br i1 %.not102, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %cnt_length.exit124.thread
  %i.oa = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.oc = uitofp nneg i32 %i.oa to double
  %i.od = fdiv double %.3, %i.oc
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %cnt_length.exit124.thread
  %.4 = phi double [ %i.od, %bb.aw ], [ %.3, %bb.av ], [ %.3, %cnt_length.exit124.thread ] ; 3 uses
  %i.oe = and i32 %3, 16
  %.not103 = icmp eq i32 %i.oe, 0
  br i1 %.not103, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.of = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.oh = add nuw i32 %i.of, 1
  %i.oi = sitofp i32 %i.oh to double
  %i.oj = call double @log(double noundef %i.oi) #9
  %i.ok = fdiv double %i.oj, f0x3FE62E42FEFA39EF
  %i.ol = fdiv double %.4, %i.ok
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.5 = phi double [ %i.ol, %bb.az ], [ %.4, %bb.ay ], [ %.4, %bb.ax ] ; 3 uses
  %i.om = and i32 %3, 32
  %.not104 = icmp eq i32 %i.om, 0
  %i.on = fadd double %.5, 1.000000e+00
  %i.oo = fdiv double %.5, %i.on
  %.6 = select i1 %.not104, double %.5, double %i.oo
  call void @pfree(ptr noundef nonnull %.3.i) #9
  %i.op = load ptr, ptr %i.at, align 8
  call void @pfree(ptr noundef %i.op) #9
  %i.oq = fptrunc double %.6 to float
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %get_docrep.exit.thread
  %.082 = phi float [ %i.oq, %bb.ba ], [ 0.000000e+00, %get_docrep.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret float %.082
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rankcd_wtt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #9 ; 3 uses
end_hunk_0
