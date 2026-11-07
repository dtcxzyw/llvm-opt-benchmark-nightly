Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/print?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@print_aligned_text:bb.a
.lr.ph636.prol.loopexit:                          ; preds = %.lr.ph636.prol, %.lr.ph636.preheader885
  %indvars.iv718.unr = phi i64 [ %indvars.iv718.ph, %.lr.ph636.preheader885 ], [ %indvars.iv.next719.prol, %.lr.ph636.prol ]
  %i.ed = sub nsw i64 %indvars.iv718.ph, %wide.trip.count711
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %._crit_edge637, label %.lr.ph636

.lr.ph634:                                        ; preds = %.lr.ph634.preheader, %.lr.ph634
  %indvars.iv713 = phi i64 [ 0, %.lr.ph634.preheader ], [ %indvars.iv.next714, %.lr.ph634 ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0464809, i64 %indvars.iv713
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = add i32 %i.eg, 1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = call ptr @pg_malloc0_mul(i64 noundef 16, i64 noundef %i.ei) #20
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0454816, i64 %indvars.iv713 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0462813, i64 %indvars.iv713
  %i.em = load i32, ptr %i.el, align 4
  %i.en = add i32 %i.em, 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = call ptr @pg_malloc_mul(i64 noundef 1, i64 noundef %i.eo) #20 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0461814, i64 %indvars.iv713
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = load ptr, ptr %i.ek, align 8
  store ptr %i.ep, ptr %i.er, align 8
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.lr.ph636.preheader, label %.lr.ph634, !llvm.loop !40

.lr.ph636:                                        ; preds = %.lr.ph636.prol.loopexit, %.lr.ph636
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.lr.ph636 ], [ %indvars.iv718.unr, %.lr.ph636.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0467800, i64 %indvars.iv718
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0466802, i64 %indvars.iv718
  store i32 %i.et, ptr %i.eu, align 4
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0467800, i64 %indvars.iv.next719
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0466802, i64 %indvars.iv.next719
  store i32 %i.ew, ptr %i.ex, align 4
  %indvars.iv.next719.1 = add nuw nsw i64 %indvars.iv718, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0467800, i64 %indvars.iv.next719.1
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0466802, i64 %indvars.iv.next719.1
  store i32 %i.ez, ptr %i.fa, align 4
  %indvars.iv.next719.2 = add nuw nsw i64 %indvars.iv718, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0467800, i64 %indvars.iv.next719.2
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0466802, i64 %indvars.iv.next719.2
  store i32 %i.fc, ptr %i.fd, align 4
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %exitcond722.not.3 = icmp eq i64 %indvars.iv.next719.3, %wide.trip.count721
  br i1 %exitcond722.not.3, label %._crit_edge637, label %.lr.ph636, !llvm.loop !41

._crit_edge637:                                   ; preds = %.lr.ph636.prol.loopexit, %.lr.ph636, %middle.block881, %bb.u
  %.1459.lcssa833841 = phi i32 [ %.0458, %bb.u ], [ %.lcssa858, %middle.block881 ], [ %.lcssa858, %.lr.ph636 ], [ %.lcssa858, %.lr.ph636.prol.loopexit ] ; 3 uses
  %.0457.lcssa835839 = phi i32 [ %.0458, %bb.u ], [ %.lcssa, %middle.block881 ], [ %.lcssa, %.lr.ph636 ], [ %.lcssa, %.lr.ph636.prol.loopexit ]
  %i.fe = load ptr, ptr %0, align 8               ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 104
  %i.fg = load i32, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %bb.z, label %bb.v

bb.v:                                             ; preds = %._crit_edge637
  %i.fi = load ptr, ptr @stdout, align 8          ; 2 uses
  %i.fj = icmp eq ptr %1, %i.fi
  br i1 %i.fj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fk = call i32 @fileno(ptr noundef %i.fi) #20
  %i.fl = call i32 @isatty(i32 noundef %i.fk) #20
  %i.fm = icmp ne i32 %i.fl, 0
  %or.cond4 = or i1 %2, %i.fm
  %.pre753 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %or.cond4, label %._crit_edge751, label %bb.z

bb.x:                                             ; preds = %bb.v
  br i1 %2, label %._crit_edge751, label %bb.z

._crit_edge751:                                   ; preds = %bb.w, %bb.x
  %i.fn = phi ptr [ %i.fe, %bb.x ], [ %.pre753, %bb.w ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 100
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge751
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fr = load ptr, ptr @stdout, align 8
  %i.fs = call i32 @fileno(ptr noundef %i.fr) #20
  %i.ft = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.fs, i64 noundef 21523, ptr noundef nonnull %3) #20
  %.not503 = icmp eq i32 %i.ft, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = zext i16 %i.fv to i32
  %.0449 = select i1 %.not503, i32 0, i32 %i.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre752 = load ptr, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge751, %._crit_edge637, %bb.x, %bb.w, %bb.y
  %i.fx = phi ptr [ %i.fe, %bb.x ], [ %i.fe, %._crit_edge637 ], [ %.pre752, %bb.y ], [ %.pre753, %bb.w ], [ %i.fn, %._crit_edge751 ] ; 2 uses
  %.1450 = phi i32 [ 0, %bb.x ], [ %i.fg, %._crit_edge637 ], [ %.0449, %bb.y ], [ 0, %bb.w ], [ %i.fp, %._crit_edge751 ] ; 7 uses
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp eq i32 %i.fy, 9
  %i.ga = icmp ne i32 %.1450, 0                   ; 3 uses
  %or.cond28 = select i1 %i.fz, i1 %i.ga, i1 false
  %.not504 = icmp ult i32 %.1450, %.0457.lcssa835839 ; 3 uses
  %.not504.not = xor i1 %.not504, true
  %or.cond524.not = select i1 %or.cond28, i1 %.not504.not, i1 false
  %i.gb = icmp ugt i32 %.1459.lcssa833841, %.1450
  %or.cond688 = select i1 %or.cond524.not, i1 %i.gb, i1 false
  br i1 %or.cond688, label %.preheader612.lr.ph, label %.thread

.preheader612.lr.ph:                              ; preds = %bb.z
  %wide.trip.count726 = zext nneg i32 %.0477793 to i64
  br label %.preheader612

.preheader612:                                    ; preds = %.preheader612.lr.ph, %bb.ad
  %.2460644 = phi i32 [ %.1459.lcssa833841, %.preheader612.lr.ph ], [ %i.gx, %bb.ad ] ; 3 uses
  br i1 %i.w, label %.lr.ph641, label %.thread.loopexit

.lr.ph641:                                        ; preds = %.preheader612, %bb.ac
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %bb.ac ], [ 0, %.preheader612 ] ; 6 uses
  %.0438640 = phi i32 [ %.2440, %bb.ac ], [ -1, %.preheader612 ] ; 3 uses
  %.0441639 = phi double [ %.2443, %bb.ac ], [ 0.000000e+00, %.preheader612 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0465805, i64 %indvars.iv723
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %.not522 = icmp eq i32 %i.gd, 0
  br i1 %.not522, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph641
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0466802, i64 %indvars.iv723
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0468797, i64 %indvars.iv723
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = icmp ugt i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = uitofp i32 %i.gf to double
  %i.gk = uitofp i32 %i.gd to double
  %i.gl = fdiv double %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0467800, i64 %indvars.iv723
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = uitofp i32 %i.gn to double
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double 1.000000e-02, double %i.gl) ; 2 uses
  %i.gq = fcmp ogt double %i.gp, %.0441639        ; 2 uses
  %.1442 = select i1 %i.gq, double %i.gp, double %.0441639
  %i.gr = trunc nuw nsw i64 %indvars.iv723 to i32
  %.1439 = select i1 %i.gq, i32 %i.gr, i32 %.0438640
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph641, %bb.aa, %bb.ab
  %.2443 = phi double [ %.1442, %bb.ab ], [ %.0441639, %bb.aa ], [ %.0441639, %.lr.ph641 ]
  %.2440 = phi i32 [ %.1439, %bb.ab ], [ %.0438640, %bb.aa ], [ %.0438640, %.lr.ph641 ] ; 3 uses
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge642, label %.lr.ph641, !llvm.loop !42

._crit_edge642:                                   ; preds = %bb.ac
  %i.gs = icmp eq i32 %.2440, -1
  br i1 %i.gs, label %.thread.loopexit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge642
  %i.gt = sext i32 %.2440 to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.0466802, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = add i32 %i.gv, -1
  store i32 %i.gw, ptr %i.gu, align 4
  %i.gx = add i32 %.2460644, -1                   ; 2 uses
  %i.gy = icmp ugt i32 %i.gx, %.1450
  br i1 %i.gy, label %.preheader612, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %.preheader612, %._crit_edge642, %bb.ad
  %.4.ph = phi i32 [ %.1450, %bb.ad ], [ %.2460644, %._crit_edge642 ], [ %.2460644, %.preheader612 ]
  %.pre = load ptr, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.z
  %i.gz = phi ptr [ %i.fx, %bb.z ], [ %.pre, %.thread.loopexit ] ; 3 uses
  %.4 = phi i32 [ %.1459.lcssa833841, %bb.z ], [ %.4.ph, %.thread.loopexit ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i16, ptr %i.ha, align 4
  %i.hc = icmp eq i16 %i.hb, 2
  %or.cond7 = select i1 %i.hc, i1 %i.ga, i1 false
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread
  %i.hd = load i32, ptr %i.t, align 8
  %i.he = icmp sgt i32 %i.hd, 1
  %i.hf = icmp ult i32 %.1450, %.4
  %or.cond526 = select i1 %.not504, i1 true, i1 %i.hf
  %or.cond608 = select i1 %i.he, i1 %or.cond526, i1 false
  br i1 %or.cond608, label %.split845, label %bb.af

.split845:                                        ; preds = %bb.ae
  call fastcc void @print_aligned_vertical(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2)
  br i1 %i.w, label %.lr.ph686.preheader, label %._crit_edge687

bb.af:                                            ; preds = %bb.ae, %.thread
  br i1 %2, label %IsPagerNeeded.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %4 = load ptr, ptr @stdout, align 8
  %i.hg = icmp eq ptr %1, %4                      ; 2 uses
  %or.cond10 = select i1 %i.hg, i1 %i.ga, i1 false
  %i.hh = icmp ult i32 %.1450, %.4
  %or.cond528 = select i1 %.not504, i1 true, i1 %i.hh
  %or.cond609 = select i1 %or.cond10, i1 %or.cond528, i1 false
  br i1 %or.cond609, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hi = call fastcc ptr @PageOutputInternal(i32 noundef 2147483647, ptr noundef nonnull readonly %i.gz, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  br label %IsPagerNeeded.exit

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.hg, label %bb.aj, label %IsPagerNeeded.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hj = call fastcc ptr @PageOutputInternal(i32 noundef 0, ptr noundef nonnull %i.gz, ptr noundef nonnull readonly %0, ptr noundef readonly %.0466802, i1 noundef zeroext false) ; 2 uses
  %i.hk = load ptr, ptr @stdout, align 8
  %i.hl = icmp ne ptr %i.hj, %i.hk
  br label %IsPagerNeeded.exit

IsPagerNeeded.exit:                               ; preds = %bb.ah, %bb.af, %bb.aj, %bb.ai
  %.1591 = phi ptr [ %1, %bb.ai ], [ %i.hj, %bb.aj ], [ %i.hi, %bb.ah ], [ %1, %bb.af ] ; 41 uses
  %.1447 = phi i1 [ false, %bb.ai ], [ %i.hl, %bb.aj ], [ true, %bb.ah ], [ false, %bb.af ] ; 4 uses
  %i.hm = load ptr, ptr %0, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 25
  %i.ho = load i8, ptr %i.hn, align 1, !range !7, !noundef !8
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ak, label %bb.bz

bb.ak:                                            ; preds = %IsPagerNeeded.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8            ; 3 uses
  %i.hs = icmp eq ptr %i.hr, null
  %or.cond13 = or i1 %i.hs, %i.l
  br i1 %or.cond13, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.ht = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hr) #21
  call void @pg_wcssize(ptr noundef nonnull %i.hr, i64 noundef %i.ht, i32 noundef %i.n, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null) #20
  %i.hu = load i32, ptr %i.g, align 4             ; 2 uses
  %.not505 = icmp ult i32 %i.hu, %.4
  br i1 %.not505, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = load ptr, ptr %i.hq, align 8
  %i.hw = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1591, ptr noundef nonnull @.str.32, ptr noundef %i.hv) #20 ; 0 uses
  br label %.thread600

bb.an:                                            ; preds = %bb.al
  %i.hx = sub nuw i32 %.4, %i.hu
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = load ptr, ptr %i.hq, align 8
  %i.ia = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1591, ptr noundef nonnull @.str.41, i32 noundef %i.hy, ptr noundef nonnull @.str.3, ptr noundef %i.hz) #20 ; 0 uses
  br label %.thread600

.thread600:                                       ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  br i1 %i.l, label %bb.bz, label %bb.ap

bb.ap:                                            ; preds = %.thread600, %bb.ao
  %i.ib = icmp ugt i16 %i.p, 1                    ; 3 uses
  br i1 %i.ib, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @_print_horizontal_line(i32 noundef %.0477793, ptr noundef %.0466802, i16 noundef zeroext %spec.store.select, i32 noundef 0, ptr noundef nonnull %pg_asciiformat..i, ptr noundef %.1591)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.w, label %.lr.ph650, label %._crit_edge663

.lr.ph650:                                        ; preds = %bb.ar
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count731 = zext nneg i32 %.0477793 to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph650, %bb.as
  %indvars.iv728 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next729, %bb.as ] ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv728
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #21
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0454816, i64 %indvars.iv728
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.0464809, i64 %indvars.iv728
  %i.ik = load i32, ptr %i.ij, align 4
  call void @pg_wcsformat(ptr noundef nonnull %i.if, i64 noundef %i.ig, i32 noundef %i.n, ptr noundef %i.ii, i32 noundef %i.ik) #20
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond732.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count731
  br i1 %exitcond732.not, label %.lr.ph662, label %bb.as, !llvm.loop !43

.lr.ph662:                                        ; preds = %bb.as
  %i.il = zext nneg i32 %.0477793 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.0453818, i8 0, i64 %i.il, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 112
  %i.in = icmp ne i16 %i.p, 0                     ; 6 uses
  %i.io = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 208 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 160 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 168 ; 2 uses
  %i.ir = add nsw i32 %.0477793, -1               ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 120 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %pg_asciiformat..i, i64 128
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = icmp ne i32 %i.ir, 0
  %or.cond531.peel = select i1 %i.in, i1 %i.iv, i1 false
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph662, %bb.by
  %.0434660 = phi i32 [ 0, %.lr.ph662 ], [ %i.lr, %bb.by ] ; 3 uses
  %.0435659 = phi i32 [ %.0477793, %.lr.ph662 ], [ %.1436.lcssa, %bb.by ] ; 4 uses
  br i1 %i.ib, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iw = load ptr, ptr %i.im, align 8
  %i.ix = call i32 @fputs(ptr noundef %i.iw, ptr noundef %.1591) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.iy = load i32, ptr %i.t, align 8
  %.not696 = icmp eq i32 %i.iy, 0
  br i1 %.not696, label %._crit_edge656, label %.lr.ph655

.lr.ph655:                                        ; preds = %bb.av
  %i.iz = sext i32 %.0434660 to i64               ; 2 uses
  %.not = icmp eq i32 %.0434660, 0                ; 2 uses
  %i.ja = load ptr, ptr %.0454816, align 8
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.ja, i64 %i.iz ; 3 uses
  br i1 %i.in, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.lr.ph655
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jc = load ptr, ptr %i.ip, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jd = phi ptr [ %i.jc, %bb.ax ], [ @.str.5, %bb.aw ]
  %i.je = call i32 @fputs(ptr noundef %i.jd, ptr noundef %.1591) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph655, %bb.ay
  %i.jf = load i8, ptr %.0453818, align 1, !range !7, !noundef !8
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = load i32, ptr %.0466802, align 4        ; 2 uses
  br i1 %i.jg, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = sub i32 %i.jh, %i.jj                    ; 2 uses
  %i.jl = lshr i32 %i.jk, 1
  %i.jm = load ptr, ptr %i.jb, align 8
  %i.jn = add i32 %i.jk, 1
  %i.jo = lshr i32 %i.jn, 1
  %i.jp = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1591, ptr noundef nonnull @.str.42, i32 noundef %i.jl, ptr noundef nonnull @.str.3, ptr noundef %i.jm, i32 noundef %i.jo, ptr noundef nonnull @.str.3) #20 ; 0 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  %.not508.peel = icmp eq ptr %i.jr, null
  br i1 %.not508.peel, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.js = add i32 %.0435659, -1
  store i8 1, ptr %.0453818, align 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.jt = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1591, ptr noundef nonnull @.str.35, i32 noundef %i.jh, ptr noundef nonnull @.str.3) #20 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.2437.peel = phi i32 [ %.0435659, %bb.bc ], [ %.0435659, %bb.ba ], [ %i.js, %bb.bb ] ; 2 uses
  br i1 %i.in, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ju = load i8, ptr %i.io, align 8, !range !7, !noundef !8
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bf, label %.thread601.peel

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jw = load i8, ptr %.0453818, align 1, !range !7, !noundef !8
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jy = load ptr, ptr %i.iq, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.jz = phi ptr [ %i.jy, %bb.bg ], [ @.str.5, %bb.bf ]
  %i.ka = call i32 @fputs(ptr noundef %i.jz, ptr noundef %.1591) ; 0 uses
  br i1 %or.cond531.peel, label %bb.bi, label %.thread601.peel

bb.bi:                                            ; preds = %bb.bh
  %i.kb = load ptr, ptr %i.is, align 8
  %i.kc = call i32 @fputs(ptr noundef %i.kb, ptr noundef %.1591) ; 0 uses
  br label %.thread601.peel

.thread601.peel:                                  ; preds = %bb.bi, %bb.bh, %bb.be
  %i.kd = load i32, ptr %i.t, align 8
  %i.ke = icmp ugt i32 %i.kd, 1
  br i1 %i.ke, label %.peel.next, label %._crit_edge656

.peel.next:                                       ; preds = %.thread601.peel, %.thread601
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %.thread601 ], [ 1, %.thread601.peel ] ; 5 uses
  %.1436653 = phi i32 [ %.2437, %.thread601 ], [ %.2437.peel, %.thread601.peel ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.0454816, i64 %indvars.iv733
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds [16 x i8], ptr %i.kg, i64 %i.iz ; 3 uses
  br i1 %i.in, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.peel.next
  %i.ki = load i8, ptr %i.io, align 8, !range !7, !noundef !8
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.peel.next
  br i1 %.not, label %bb.bm, label %bb.bl
end_hunk_0
