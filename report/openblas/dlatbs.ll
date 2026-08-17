loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlatbs_:bb.a
  %.0518 = phi double [ %i.ag, %bb.an ], [ %i.bx, %bb.am ] ; 2 uses
  %i.gf = icmp slt i32 %i.fz, 0                   ; 3 uses
  %i.gg = icmp sge i32 %.2, %i.ga
  %i.gh = icmp sle i32 %.2, %i.ga
  %.in585687 = select i1 %i.gf, i1 %i.gg, i1 %i.gh ; 2 uses
  br i1 %.not566, label %bb.bo, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.in585687, label %.lr.ph669, label %.loopexit619

.lr.ph669:                                        ; preds = %bb.ap
  %i.gi = sext i32 %.2 to i64
  %i.gj = sext i32 %i.fz to i64
  %i.gk = sext i32 %i.g to i64                    ; 2 uses
  %i.gl = sext i32 %.2501 to i64
  %invariant.gep791 = getelementptr [8 x i8], ptr %i.i, i64 %i.gl
  %i.gm = sext i32 %i.ga to i64                   ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph669, %bb.bn
  %indvars.iv724 = phi i64 [ %i.gi, %.lr.ph669 ], [ %indvars.iv.next725, %bb.bn ] ; 14 uses
  %.1519666 = phi double [ %.0518, %.lr.ph669 ], [ %.5523, %bb.bn ] ; 4 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv724 ; 8 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !9 ; 6 uses
  store double %i.go, ptr %i.c, align 8, !tbaa !9
  %i.gp = fcmp oge double %i.go, 0.000000e+00
  %i.gq = fneg double %i.go
  %i.gr = select i1 %i.gp, double %i.go, double %i.gq ; 5 uses
  br i1 %.not569, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gs = mul nsw i64 %indvars.iv724, %i.gk
  %gep792 = getelementptr [8 x i8], ptr %invariant.gep791, i64 %i.gs
  %i.gt = load double, ptr %gep792, align 8, !tbaa !9
  %i.gu = load double, ptr %i.e, align 8, !tbaa !9
  %i.gv = fmul double %i.gt, %i.gu
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.gw = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  %i.gx = fcmp oeq double %i.gw, 1.000000e+00
  br i1 %i.gx, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0526 = phi double [ %i.gv, %bb.ar ], [ %i.gw, %bb.as ] ; 4 uses
  %i.gy = fcmp oge double %.0526, 0.000000e+00
  %i.gz = fneg double %.0526
  %i.ha = select i1 %i.gy, double %.0526, double %i.gz ; 5 uses
  %i.hb = fcmp ogt double %i.ha, %i.af
  br i1 %i.hb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hc = fcmp olt double %i.ha, 1.000000e+00
  %i.hd = fmul double %i.ag, %i.ha
  %i.he = fcmp ogt double %i.gr, %i.hd
  %or.cond602 = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %or.cond602, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %bb.au
  %i.hf = fdiv double 1.000000e+00, %i.gr
  br label %.sink.split.sink.split.sink.split

bb.aw:                                            ; preds = %bb.at
  %i.hg = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.hg, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hh = fmul double %i.ag, %i.ha                ; 2 uses
  %i.hi = fcmp ogt double %i.gr, %i.hh
  br i1 %i.hi, label %bb.ay, label %.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.hj = fdiv double %i.hh, %i.gr                ; 2 uses
  store double %i.hj, ptr %i.f, align 8, !tbaa !9
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9 ; 2 uses
  %i.hm = fcmp ogt double %i.hl, 1.000000e+00
  br i1 %i.hm, label %bb.az, label %.sink.split.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.hn = fdiv double %i.hj, %i.hl
  br label %.sink.split.sink.split.sink.split

bb.ba:                                            ; preds = %bb.aw
  %i.ho = load i32, ptr %4, align 4, !tbaa !8     ; 3 uses
  store i32 %i.ho, ptr %i.b, align 4, !tbaa !8
  %.not596661 = icmp slt i32 %i.ho, 1
  br i1 %.not596661, label %.thread606, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %bb.ba
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %8, i8 0, i64 %i.hq, i1 false), !tbaa !9
  br label %.thread606

.thread606:                                       ; preds = %.lr.ph664.preheader, %bb.ba
  store double 1.000000e+00, ptr %i.gn, align 8, !tbaa !9
  store double 0.000000e+00, ptr %9, align 8, !tbaa !9
  br label %bb.be

.sink.split.sink.split.sink.split:                ; preds = %bb.av, %bb.az
  %.sink821 = phi double [ %i.hn, %bb.az ], [ %i.hf, %bb.av ]
  store double %.sink821, ptr %i.f, align 8, !tbaa !9
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.ay
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.hr = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.hs = load double, ptr %9, align 8, !tbaa !9
  %i.ht = fmul double %i.hr, %i.hs
  store double %i.ht, ptr %9, align 8, !tbaa !9
  %i.hu = fmul double %.1519666, %i.hr
  %.pre = load double, ptr %i.gn, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.ax, %bb.au
  %.sink807 = phi double [ %i.go, %bb.au ], [ %i.go, %bb.ax ], [ %.pre, %.sink.split.sink.split ]
  %.4522.ph = phi double [ %.1519666, %bb.au ], [ %.1519666, %bb.ax ], [ %i.hu, %.sink.split.sink.split ]
  %i.hv = fdiv double %.sink807, %.0526           ; 5 uses
  store double %i.hv, ptr %i.gn, align 8, !tbaa !9
  store double %i.hv, ptr %i.c, align 8, !tbaa !9
  %i.hw = fcmp oge double %i.hv, 0.000000e+00
  %i.hx = fneg double %i.hv
  %i.hy = select i1 %i.hw, double %i.hv, double %i.hx
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.as
  %.4522 = phi double [ %.1519666, %bb.as ], [ %.4522.ph, %.sink.split ] ; 4 uses
  %.0493 = phi double [ %i.gr, %bb.as ], [ %i.hy, %.sink.split ] ; 3 uses
  %i.hz = fcmp ogt double %.0493, 1.000000e+00
  br i1 %i.hz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ia = fdiv double 1.000000e+00, %.0493        ; 3 uses
  store double %i.ia, ptr %i.f, align 8, !tbaa !9
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !9
  %i.id = fsub double %i.ag, %.4522
  %i.ie = fmul double %i.id, %i.ia
  %i.if = fcmp ogt double %i.ic, %i.ie
  br i1 %i.if, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ig = fmul nnan double %i.ia, 5.000000e-01
  store double %i.ig, ptr %i.f, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.ih = load double, ptr %i.f, align 8, !tbaa !9
  %i.ii = load double, ptr %9, align 8, !tbaa !9
  %i.ij = fmul double %i.ih, %i.ii
  br label %.sink.split808

bb.be:                                            ; preds = %.thread606, %bb.bb
  %.0493611 = phi double [ 1.000000e+00, %.thread606 ], [ %.0493, %bb.bb ]
  %.4522610 = phi double [ 0.000000e+00, %.thread606 ], [ %.4522, %bb.bb ] ; 3 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9
  %i.im = fmul double %.0493611, %i.il
  %i.in = fsub double %i.ag, %.4522610
  %i.io = fcmp ogt double %i.im, %i.in
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull @c_b36, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.ip = load double, ptr %9, align 8, !tbaa !9
  %i.iq = fmul double %i.ip, 5.000000e-01
  br label %.sink.split808

.sink.split808:                                   ; preds = %bb.bd, %bb.bf
  %.sink809 = phi double [ %i.iq, %bb.bf ], [ %i.ij, %bb.bd ]
  %.4522609.ph = phi double [ %.4522610, %bb.bf ], [ %.4522, %bb.bd ]
  store double %.sink809, ptr %9, align 8, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split808, %bb.be, %bb.bc
  %.4522609 = phi double [ %.4522610, %bb.be ], [ %.4522, %bb.bc ], [ %.4522609.ph, %.sink.split808 ] ; 2 uses
  br i1 %.not.not.not, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ir = icmp sgt i64 %indvars.iv724, 1
  br i1 %i.ir, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.is = load i32, ptr %5, align 4, !tbaa !8     ; 3 uses
  store i32 %i.is, ptr %i.b, align 4, !tbaa !8
  %i.it = trunc i64 %indvars.iv724 to i32
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  %i.iv = call i32 @llvm.smin.i32(i32 %i.is, i32 %i.iu) ; 3 uses
  store i32 %i.iv, ptr %i.d, align 4, !tbaa !8
  %i.iw = load double, ptr %i.gn, align 8, !tbaa !9
  %i.ix = fneg double %i.iw
  %i.iy = load double, ptr %i.e, align 8, !tbaa !9
  %i.iz = fmul double %i.iy, %i.ix
  store double %i.iz, ptr %i.c, align 8, !tbaa !9
  %i.ja = trunc i64 %indvars.iv724 to i32
  %i.jb = mul i32 %i.g, %i.ja
  %i.jc = add i32 %i.jb, 1
  %i.jd = add i32 %i.jc, %i.is
  %i.je = sub i32 %i.jd, %i.iv
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jf
  %12 = trunc nsw i64 %indvars.iv724 to i32
  %13 = sub nsw i32 %12, %i.iv
  %14 = zext nneg i32 %13 to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %14
  call void @daxpy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %i.jg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jh, ptr noundef nonnull @c__1) #6
  store i32 %i.iu, ptr %i.b, align 4, !tbaa !8
  %i.ji = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jj
  br label %.sink.split810

bb.bj:                                            ; preds = %bb.bg
  %i.jl = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv724, %i.jm
  br i1 %i.jn, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.jo = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  store i32 %i.jo, ptr %i.b, align 4, !tbaa !8
  %i.jp = trunc nsw i64 %indvars.iv724 to i32     ; 2 uses
  %i.jq = sub nsw i32 %i.jl, %i.jp                ; 2 uses
  %i.jr = call i32 @llvm.smin.i32(i32 %i.jo, i32 %i.jq) ; 2 uses
  store i32 %i.jr, ptr %i.d, align 4, !tbaa !8
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jt = load double, ptr %i.gn, align 8, !tbaa !9
  %i.ju = fneg double %i.jt
  %i.jv = load double, ptr %i.e, align 8, !tbaa !9
  %i.jw = fmul double %i.jv, %i.ju
  store double %i.jw, ptr %i.c, align 8, !tbaa !9
  %i.jx = mul nsw i64 %indvars.iv724, %i.gk
  %i.jy = getelementptr [8 x i8], ptr %i.i, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 16
  %i.ka = getelementptr i8, ptr %i.gn, i64 8
  call void @daxpy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %i.jz, ptr noundef nonnull @c__1, ptr noundef %i.ka, ptr noundef nonnull @c__1) #6
  %.pre739 = load i32, ptr %4, align 4, !tbaa !8
  %.pre743 = sub nsw i32 %.pre739, %i.jp
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pre-phi = phi i32 [ %.pre743, %bb.bl ], [ %i.jq, %bb.bk ]
  store i32 %.pre-phi, ptr %i.b, align 4, !tbaa !8
  %i.kb = getelementptr i8, ptr %i.gn, i64 8
  %i.kc = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef %i.kb, ptr noundef nonnull @c__1) #6
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv724
  %i.kf = getelementptr [8 x i8], ptr %i.ke, i64 %i.kd
  br label %.sink.split810

.sink.split810:                                   ; preds = %bb.bm, %bb.bi
  %.sink816.in = phi ptr [ %i.jk, %bb.bi ], [ %i.kf, %bb.bm ]
  %.sink816 = load double, ptr %.sink816.in, align 8, !tbaa !9 ; 4 uses
  store double %.sink816, ptr %i.c, align 8, !tbaa !9
  %i.kg = fcmp oge double %.sink816, 0.000000e+00
  %i.kh = fneg double %.sink816
  %i.ki = select i1 %i.kg, double %.sink816, double %i.kh
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split810, %bb.bh, %bb.bj
  %.5523 = phi double [ %.4522609, %bb.bj ], [ %.4522609, %bb.bh ], [ %i.ki, %.sink.split810 ]
  %indvars.iv.next725 = add nsw i64 %indvars.iv724, %i.gj ; 3 uses
  %i.kj = icmp sge i64 %indvars.iv.next725, %i.gm
  %i.kk = icmp sle i64 %indvars.iv.next725, %i.gm
  %.in594 = select i1 %i.gf, i1 %i.kj, i1 %i.kk
  br i1 %.in594, label %bb.aq, label %.loopexit619, !llvm.loop !18

bb.bo:                                            ; preds = %bb.ao
  br i1 %.in585687, label %.lr.ph693, label %.loopexit619

.lr.ph693:                                        ; preds = %bb.bo, %bb.ct
  %.7690 = phi i32 [ %i.se, %bb.ct ], [ %.2, %bb.bo ] ; 14 uses
  %.6524689 = phi double [ %i.sd, %bb.ct ], [ %.0518, %bb.bo ] ; 5 uses
  %.1527688 = phi double [ %.5531, %bb.ct ], [ undef, %bb.bo ]
  %i.kl = sext i32 %.7690 to i64                  ; 3 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.kl ; 11 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !9 ; 4 uses
  store double %i.kn, ptr %i.c, align 8, !tbaa !9
  %i.ko = fcmp oge double %i.kn, 0.000000e+00
  %i.kp = fneg double %i.kn
  %i.kq = select i1 %i.ko, double %i.kn, double %i.kp
  %i.kr = load double, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  %i.ks = fcmp oge double %.6524689, 1.000000e+00
  %i.kt = select i1 %i.ks, double %.6524689, double 1.000000e+00
  %i.ku = fdiv double 1.000000e+00, %i.kt         ; 3 uses
  store double %i.ku, ptr %i.f, align 8, !tbaa !9
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kl
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !9
  %i.kx = fsub double %i.ag, %i.kq
  %i.ky = fmul double %i.ku, %i.kx
  %i.kz = fcmp ogt double %i.kw, %i.ky
  br i1 %i.kz, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %.lr.ph693
  %i.la = fmul double %i.ku, 5.000000e-01         ; 3 uses
  store double %i.la, ptr %i.f, align 8, !tbaa !9
  br i1 %.not569, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lb = mul nsw i32 %.7690, %i.g
  %i.lc = add nsw i32 %i.lb, %.2501
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !9
  %i.lg = fmul double %i.kr, %i.lf
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.2528 = phi double [ %i.lg, %bb.bq ], [ %i.kr, %bb.bp ] ; 6 uses
  %i.lh = fcmp oge double %.2528, 0.000000e+00
  %i.li = fneg double %.2528
  %i.lj = select i1 %i.lh, double %.2528, double %i.li ; 2 uses
  %i.lk = fcmp ogt double %i.lj, 1.000000e+00
  br i1 %i.lk, label %bb.bs, label %thread-pre-split612

bb.bs:                                            ; preds = %bb.br
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.ll = fmul double %i.la, %i.lj                ; 2 uses
  %i.lm = fcmp oge double %i.ll, 1.000000e+00
  %i.ln = select i1 %i.lm, double 1.000000e+00, double %i.ll ; 2 uses
  store double %i.ln, ptr %i.f, align 8, !tbaa !9
  %i.lo = fdiv double %i.kr, %.2528
  br label %thread-pre-split612

thread-pre-split612:                              ; preds = %bb.br, %bb.bs
  %i.lp = phi double [ %i.ln, %bb.bs ], [ %i.la, %bb.br ]
  %.0497 = phi double [ %i.lo, %bb.bs ], [ %i.kr, %bb.br ] ; 2 uses
  %i.lq = fcmp olt double %i.lp, 1.000000e+00
  br i1 %i.lq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %thread-pre-split612
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.lr = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.ls = load double, ptr %9, align 8, !tbaa !9
  %i.lt = fmul double %i.lr, %i.ls
  store double %i.lt, ptr %9, align 8, !tbaa !9
  %i.lu = fmul double %.6524689, %i.lr
  br label %bb.bu

bb.bu:                                            ; preds = %thread-pre-split612, %bb.bt, %.lr.ph693
  %.3529 = phi double [ %.2528, %bb.bt ], [ %.2528, %thread-pre-split612 ], [ %.1527688, %.lr.ph693 ] ; 2 uses
  %.7525 = phi double [ %i.lu, %bb.bt ], [ %.6524689, %thread-pre-split612 ], [ %.6524689, %.lr.ph693 ] ; 6 uses
  %.1498 = phi double [ %.0497, %bb.bt ], [ %.0497, %thread-pre-split612 ], [ %i.kr, %.lr.ph693 ] ; 16 uses
  %i.lv = fcmp oeq double %.1498, 1.000000e+00
  %i.lw = load i32, ptr %5, align 4, !tbaa !8     ; 7 uses
  br i1 %i.lv, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.lw, ptr %i.b, align 4, !tbaa !8
  br i1 %.not.not.not, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lx = add nsw i32 %.7690, -1
  %i.ly = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.lx) ; 3 uses
  store i32 %i.ly, ptr %i.d, align 4, !tbaa !8
  %i.lz = mul nsw i32 %.7690, %i.g
  %i.ma = add i32 %i.lz, 1
  %i.mb = add i32 %i.ma, %i.lw
  %i.mc = sub i32 %i.mb, %i.ly
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.md
  %i.mf = sub nsw i32 %.7690, %i.ly
  %15 = zext nneg i32 %i.mf to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %15
  %i.mh = call double @ddot_(ptr noundef nonnull %i.d, ptr noundef %i.me, ptr noundef nonnull @c__1, ptr noundef nonnull %i.mg, ptr noundef nonnull @c__1) #6
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.mi = load i32, ptr %4, align 4, !tbaa !8
  %i.mj = sub nsw i32 %i.mi, %.7690
  %i.mk = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.mj) ; 2 uses
  store i32 %i.mk, ptr %i.d, align 4, !tbaa !8
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %bb.by, label %.loopexit

bb.by:                                            ; preds = %bb.bx
  %i.mm = mul nsw i32 %.7690, %i.g
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr [8 x i8], ptr %i.i, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 16
  %i.mq = getelementptr i8, ptr %i.km, i64 8
  %i.mr = call double @ddot_(ptr noundef nonnull %i.d, ptr noundef %i.mp, ptr noundef nonnull @c__1, ptr noundef %i.mq, ptr noundef nonnull @c__1) #6
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bu
  br i1 %.not.not.not, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ms = add nsw i32 %.7690, -1
  %i.mt = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.ms) ; 7 uses
  store i32 %i.mt, ptr %i.d, align 4, !tbaa !8
  store i32 %i.mt, ptr %i.b, align 4, !tbaa !8
  %.not589670 = icmp slt i32 %i.mt, 1
  br i1 %.not589670, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.ca
  %i.mu = mul nsw i32 %.7690, %i.g
  %i.mv = add i32 %i.lw, %i.mu
  %i.mw = sub i32 %i.mv, %i.mt                    ; 5 uses
  %i.mx = xor i32 %i.mt, -1
  %i.my = add i32 %.7690, %i.mx
  %i.mz = sext i32 %i.my to i64
  %invariant.gep793 = getelementptr [8 x i8], ptr %i.j, i64 %i.mz ; 5 uses
  %i.na = zext nneg i32 %i.mt to i64              ; 2 uses
  %xtraiter = and i64 %i.na, 3                    ; 3 uses
  %i.nb = icmp ult i32 %i.mt, 4
  br i1 %i.nb, label %.epil.preheader, label %.lr.ph674.new

.lr.ph674.new:                                    ; preds = %.lr.ph674
  %unroll_iter = and i64 %i.na, 2147483644
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph674.new
  %indvars.iv727 = phi i64 [ 1, %.lr.ph674.new ], [ %indvars.iv.next728.3, %bb.cb ] ; 6 uses
  %.0509671 = phi double [ 0.000000e+00, %.lr.ph674.new ], [ %i.oh, %bb.cb ]
  %niter = phi i64 [ 0, %.lr.ph674.new ], [ %niter.next.3, %bb.cb ]
  %i.nc = trunc nuw nsw i64 %indvars.iv727 to i32
  %i.nd = add i32 %i.mw, %i.nc
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !9
  %i.nh = fmul double %.1498, %i.ng
  %gep794 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv727
  %i.ni = load double, ptr %gep794, align 8, !tbaa !9
  %i.nj = call double @llvm.fmuladd.f64(double %i.nh, double %i.ni, double %.0509671)
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %i.nk = trunc nuw nsw i64 %indvars.iv.next728 to i32
  %i.nl = add i32 %i.mw, %i.nk
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !9
  %i.np = fmul double %.1498, %i.no
  %gep794.1 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728
  %i.nq = load double, ptr %gep794.1, align 8, !tbaa !9
  %i.nr = call double @llvm.fmuladd.f64(double %i.np, double %i.nq, double %i.nj)
  %indvars.iv.next728.1 = add nuw nsw i64 %indvars.iv727, 2 ; 2 uses
  %i.ns = trunc nuw nsw i64 %indvars.iv.next728.1 to i32
  %i.nt = add i32 %i.mw, %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !9
  %i.nx = fmul double %.1498, %i.nw
  %gep794.2 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728.1
  %i.ny = load double, ptr %gep794.2, align 8, !tbaa !9
  %i.nz = call double @llvm.fmuladd.f64(double %i.nx, double %i.ny, double %i.nr)
  %indvars.iv.next728.2 = add nuw nsw i64 %indvars.iv727, 3 ; 2 uses
  %i.oa = trunc nuw nsw i64 %indvars.iv.next728.2 to i32
  %i.ob = add i32 %i.mw, %i.oa
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !9
  %i.of = fmul double %.1498, %i.oe
  %gep794.3 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728.2
  %i.og = load double, ptr %gep794.3, align 8, !tbaa !9
  %i.oh = call double @llvm.fmuladd.f64(double %i.of, double %i.og, double %i.nz) ; 3 uses
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit833.unr-lcssa, label %bb.cb, !llvm.loop !19

bb.cc:                                            ; preds = %bb.bz
  %i.oi = load i32, ptr %4, align 4, !tbaa !8
  %i.oj = sub nsw i32 %i.oi, %.7690
  %i.ok = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.oj) ; 5 uses
  store i32 %i.ok, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !8
  %.not587676 = icmp slt i32 %i.ok, 1
  br i1 %.not587676, label %.loopexit, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.cc
  %i.ol = mul nsw i32 %.7690, %i.g
  %i.om = sext i32 %i.ol to i64
  %invariant.gep795 = getelementptr [8 x i8], ptr %i.i, i64 %i.om ; 9 uses
  %invariant.gep797 = getelementptr [8 x i8], ptr %i.j, i64 %i.kl ; 9 uses
  %i.on = zext nneg i32 %i.ok to i64              ; 2 uses
  %xtraiter847 = and i64 %i.on, 7                 ; 3 uses
  %i.oo = icmp ult i32 %i.ok, 8
  br i1 %i.oo, label %.epil.preheader846, label %.lr.ph680.new

.lr.ph680.new:                                    ; preds = %.lr.ph680
  %unroll_iter852 = and i64 %i.on, 2147483640
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph680.new
  %indvars.iv730 = phi i64 [ 1, %.lr.ph680.new ], [ %indvars.iv.next731.7, %bb.cd ] ; 9 uses
  %.1510677 = phi double [ 0.000000e+00, %.lr.ph680.new ], [ %i.pu, %bb.cd ]
  %niter853 = phi i64 [ 0, %.lr.ph680.new ], [ %niter853.next.7, %bb.cd ]
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %gep796 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731
  %i.op = load double, ptr %gep796, align 8, !tbaa !9
  %i.oq = fmul double %.1498, %i.op
  %gep798 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv730
  %i.or = load double, ptr %gep798, align 8, !tbaa !9
  %i.os = call double @llvm.fmuladd.f64(double %i.oq, double %i.or, double %.1510677)
  %indvars.iv.next731.1 = add nuw nsw i64 %indvars.iv730, 2 ; 2 uses
  %gep796.1 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.1
  %i.ot = load double, ptr %gep796.1, align 8, !tbaa !9
  %i.ou = fmul double %.1498, %i.ot
  %gep798.1 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731
  %i.ov = load double, ptr %gep798.1, align 8, !tbaa !9
  %i.ow = call double @llvm.fmuladd.f64(double %i.ou, double %i.ov, double %i.os)
  %indvars.iv.next731.2 = add nuw nsw i64 %indvars.iv730, 3 ; 2 uses
  %gep796.2 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.2
  %i.ox = load double, ptr %gep796.2, align 8, !tbaa !9
  %i.oy = fmul double %.1498, %i.ox
  %gep798.2 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.1
  %i.oz = load double, ptr %gep798.2, align 8, !tbaa !9
  %i.pa = call double @llvm.fmuladd.f64(double %i.oy, double %i.oz, double %i.ow)
  %indvars.iv.next731.3 = add nuw nsw i64 %indvars.iv730, 4 ; 2 uses
  %gep796.3 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.3
  %i.pb = load double, ptr %gep796.3, align 8, !tbaa !9
  %i.pc = fmul double %.1498, %i.pb
  %gep798.3 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.2
  %i.pd = load double, ptr %gep798.3, align 8, !tbaa !9
  %i.pe = call double @llvm.fmuladd.f64(double %i.pc, double %i.pd, double %i.pa)
  %indvars.iv.next731.4 = add nuw nsw i64 %indvars.iv730, 5 ; 2 uses
  %gep796.4 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.4
  %i.pf = load double, ptr %gep796.4, align 8, !tbaa !9
  %i.pg = fmul double %.1498, %i.pf
  %gep798.4 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.3
  %i.ph = load double, ptr %gep798.4, align 8, !tbaa !9
  %i.pi = call double @llvm.fmuladd.f64(double %i.pg, double %i.ph, double %i.pe)
  %indvars.iv.next731.5 = add nuw nsw i64 %indvars.iv730, 6 ; 2 uses
  %gep796.5 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.5
  %i.pj = load double, ptr %gep796.5, align 8, !tbaa !9
  %i.pk = fmul double %.1498, %i.pj
  %gep798.5 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.4
  %i.pl = load double, ptr %gep798.5, align 8, !tbaa !9
  %i.pm = call double @llvm.fmuladd.f64(double %i.pk, double %i.pl, double %i.pi)
  %indvars.iv.next731.6 = add nuw nsw i64 %indvars.iv730, 7 ; 2 uses
  %gep796.6 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.6
  %i.pn = load double, ptr %gep796.6, align 8, !tbaa !9
  %i.po = fmul double %.1498, %i.pn
  %gep798.6 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.5
  %i.pp = load double, ptr %gep798.6, align 8, !tbaa !9
  %i.pq = call double @llvm.fmuladd.f64(double %i.po, double %i.pp, double %i.pm)
  %indvars.iv.next731.7 = add nuw nsw i64 %indvars.iv730, 8 ; 3 uses
  %gep796.7 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.7
  %i.pr = load double, ptr %gep796.7, align 8, !tbaa !9
  %i.ps = fmul double %.1498, %i.pr
  %gep798.7 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.6
  %i.pt = load double, ptr %gep798.7, align 8, !tbaa !9
  %i.pu = call double @llvm.fmuladd.f64(double %i.ps, double %i.pt, double %i.pq) ; 3 uses
  %niter853.next.7 = add i64 %niter853, 8         ; 2 uses
  %niter853.ncmp.7 = icmp eq i64 %niter853.next.7, %unroll_iter852
  br i1 %niter853.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.cd, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cd
  %lcmp.mod849.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod849.not, label %.loopexit, label %.epil.preheader846

.epil.preheader846:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph680
  %indvars.iv730.epil.init = phi i64 [ 1, %.lr.ph680 ], [ %indvars.iv.next731.7, %.loopexit.loopexit.unr-lcssa ]
  %.1510677.epil.init = phi double [ 0.000000e+00, %.lr.ph680 ], [ %i.pu, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod851 = icmp ne i64 %xtraiter847, 0
  call void @llvm.assume(i1 %lcmp.mod851)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader846
  %indvars.iv730.epil = phi i64 [ %indvars.iv730.epil.init, %.epil.preheader846 ], [ %indvars.iv.next731.epil, %bb.ce ] ; 2 uses
  %.1510677.epil = phi double [ %.1510677.epil.init, %.epil.preheader846 ], [ %i.py, %bb.ce ]
  %epil.iter848 = phi i64 [ 0, %.epil.preheader846 ], [ %epil.iter848.next, %bb.ce ]
  %indvars.iv.next731.epil = add nuw nsw i64 %indvars.iv730.epil, 1 ; 2 uses
  %gep796.epil = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.epil
end_hunk_0
