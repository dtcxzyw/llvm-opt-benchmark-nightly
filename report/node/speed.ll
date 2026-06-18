inline.NumInlined: 230
inline.NumDeleted: 21
begin_hunk_0_@speed_main:bb.a
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !26
  %.not1830 = icmp eq i8 %i.dot, 0
  br i1 %.not1830, label %bb.yb, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.dou = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dov = icmp eq i32 %i.dou, 0
  %.b1601 = load i1, ptr @mr, align 4             ; 2 uses
  %or.cond64 = select i1 %i.dov, i1 true, i1 %.b1601
  br i1 %or.cond64, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.dow = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.315, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1612.pr = load i1, ptr @mr, align 4
  br i1 %.b1612.pr, label %bb.xz, label %bb.ya

bb.xy:                                            ; preds = %bb.xw
  br i1 %.b1601, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xx, %bb.xy
  %i.dox = getelementptr inbounds nuw [24 x i8], ptr @speed_main.ec_curves, i64 %indvars.iv3872
  %i.doy = getelementptr inbounds nuw i8, ptr %i.dox, i64 12
  %i.doz = load i32, ptr %i.doy, align 4, !tbaa !131
  %i.dpa = getelementptr inbounds nuw [16 x i8], ptr @ecdsa_results, i64 %indvars.iv3872 ; 2 uses
  %i.dpb = load double, ptr %i.dpa, align 16, !tbaa !91
  %i.dpc = getelementptr inbounds nuw i8, ptr %i.dpa, i64 8
  %i.dpd = load double, ptr %i.dpc, align 8, !tbaa !91
  %i.dpe = trunc nuw nsw i64 %indvars.iv3872 to i32
  %i.dpf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.316, i32 noundef %i.dpe, i32 noundef %i.doz, double noundef %i.dpb, double noundef %i.dpd) ; 0 uses
  br label %bb.yb

bb.ya:                                            ; preds = %bb.xx, %bb.xy
  %i.dpg = getelementptr inbounds nuw [24 x i8], ptr @speed_main.ec_curves, i64 %indvars.iv3872 ; 2 uses
  %i.dph = getelementptr inbounds nuw i8, ptr %i.dpg, i64 12
  %i.dpi = load i32, ptr %i.dph, align 4, !tbaa !131
  %i.dpj = load ptr, ptr %i.dpg, align 8, !tbaa !143
  %i.dpk = getelementptr inbounds nuw [16 x i8], ptr @ecdsa_results, i64 %indvars.iv3872 ; 2 uses
  %i.dpl = load double, ptr %i.dpk, align 16, !tbaa !91 ; 2 uses
  %i.dpm = fdiv double 1.000000e+00, %i.dpl
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.dpk, i64 8
  %i.dpo = load double, ptr %i.dpn, align 8, !tbaa !91 ; 2 uses
  %i.dpp = fdiv double 1.000000e+00, %i.dpo
  %i.dpq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.317, i32 noundef %i.dpi, ptr noundef %i.dpj, double noundef %i.dpm, double noundef %i.dpp, double noundef %i.dpl, double noundef %i.dpo) ; 0 uses
  br label %bb.yb

bb.yb:                                            ; preds = %bb.xz, %bb.ya, %bb.xv
  %indvars.iv.next3873 = add nuw nsw i64 %indvars.iv3872, 1 ; 2 uses
  %exitcond3875.not = icmp eq i64 %indvars.iv.next3873, 22
  br i1 %exitcond3875.not, label %bb.yc, label %bb.xv, !llvm.loop !163

bb.yc:                                            ; preds = %bb.yb
  store i32 1, ptr @testnum, align 4, !tbaa !5
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yj
  %indvars.iv3876 = phi i64 [ 0, %bb.yc ], [ %indvars.iv.next3877, %bb.yj ] ; 7 uses
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv3876
  %i.dps = load i8, ptr %i.dpr, align 1, !tbaa !26
  %.not1829 = icmp eq i8 %i.dps, 0
  br i1 %.not1829, label %bb.yj, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.dpt = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dpu = icmp eq i32 %i.dpt, 0
  %.b1600 = load i1, ptr @mr, align 4             ; 2 uses
  %or.cond66 = select i1 %i.dpu, i1 true, i1 %.b1600
  br i1 %or.cond66, label %bb.yg, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.dpv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.318, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1611.pr = load i1, ptr @mr, align 4
  br i1 %.b1611.pr, label %bb.yh, label %bb.yi

bb.yg:                                            ; preds = %bb.ye
  br i1 %.b1600, label %bb.yh, label %bb.yi

bb.yh:                                            ; preds = %bb.yf, %bb.yg
  %i.dpw = getelementptr inbounds nuw [24 x i8], ptr @speed_main.ec_curves, i64 %indvars.iv3876
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpw, i64 12
  %i.dpy = load i32, ptr %i.dpx, align 4, !tbaa !131
  %i.dpz = getelementptr inbounds nuw [8 x i8], ptr @ecdh_results, i64 %indvars.iv3876
  %i.dqa = load double, ptr %i.dpz, align 8, !tbaa !91 ; 2 uses
  %i.dqb = fdiv double 1.000000e+00, %i.dqa
  %i.dqc = trunc nuw nsw i64 %indvars.iv3876 to i32
  %i.dqd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.319, i32 noundef %i.dqc, i32 noundef %i.dpy, double noundef %i.dqa, double noundef %i.dqb) ; 0 uses
  br label %bb.yj

bb.yi:                                            ; preds = %bb.yf, %bb.yg
  %i.dqe = getelementptr inbounds nuw [24 x i8], ptr @speed_main.ec_curves, i64 %indvars.iv3876 ; 2 uses
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dqe, i64 12
  %i.dqg = load i32, ptr %i.dqf, align 4, !tbaa !131
  %i.dqh = load ptr, ptr %i.dqe, align 8, !tbaa !143
  %i.dqi = getelementptr inbounds nuw [8 x i8], ptr @ecdh_results, i64 %indvars.iv3876
  %i.dqj = load double, ptr %i.dqi, align 8, !tbaa !91 ; 2 uses
  %i.dqk = fdiv double 1.000000e+00, %i.dqj
  %i.dql = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, i32 noundef %i.dqg, ptr noundef %i.dqh, double noundef %i.dqk, double noundef %i.dqj) ; 0 uses
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yh, %bb.yi, %bb.yd
  %indvars.iv.next3877 = add nuw nsw i64 %indvars.iv3876, 1 ; 2 uses
  %exitcond3879.not = icmp eq i64 %indvars.iv.next3877, 24
  br i1 %exitcond3879.not, label %bb.yk, label %bb.yd, !llvm.loop !164

bb.yk:                                            ; preds = %bb.yj
  store i32 1, ptr @testnum, align 4, !tbaa !5
  %i.dqm = load i8, ptr %i.o, align 2, !tbaa !26
  %.not1828 = icmp eq i8 %i.dqm, 0
  br i1 %.not1828, label %bb.yp, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %.b1599 = load i1, ptr @mr, align 4
  br i1 %.b1599, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.dqn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.315, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1610.pr = load i1, ptr @mr, align 4
  br i1 %.b1610.pr, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %i.dqo = load double, ptr @eddsa_results, align 16, !tbaa !91
  %i.dqp = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 8), align 8, !tbaa !91
  %i.dqq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.321, i32 noundef 0, i32 noundef 253, ptr noundef nonnull @.str.98, double noundef %i.dqo, double noundef %i.dqp) ; 0 uses
  br label %bb.yp

bb.yo:                                            ; preds = %bb.ym
  %i.dqr = load double, ptr @eddsa_results, align 16, !tbaa !91 ; 2 uses
  %i.dqs = fdiv double 1.000000e+00, %i.dqr
  %i.dqt = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 8), align 8, !tbaa !91 ; 2 uses
  %i.dqu = fdiv double 1.000000e+00, %i.dqt
  %i.dqv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, i32 noundef 253, ptr noundef nonnull @.str.98, double noundef %i.dqs, double noundef %i.dqu, double noundef %i.dqr, double noundef %i.dqt) ; 0 uses
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yn, %bb.yo, %bb.yk
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.dqx = load i8, ptr %i.dqw, align 1, !tbaa !26
  %.not1828.1 = icmp eq i8 %i.dqx, 0
  br i1 %.not1828.1, label %bb.yv, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.dqy = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dqz = icmp eq i32 %i.dqy, 0
  %.b1599.1 = load i1, ptr @mr, align 4           ; 2 uses
  %or.cond68.1 = select i1 %i.dqz, i1 true, i1 %.b1599.1
  br i1 %or.cond68.1, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.dra = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.315, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1610.pr.1 = load i1, ptr @mr, align 4
  br i1 %.b1610.pr.1, label %bb.yu, label %bb.yt

bb.ys:                                            ; preds = %bb.yq
  br i1 %.b1599.1, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yr
  %i.drb = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 16), align 16, !tbaa !91 ; 2 uses
  %i.drc = fdiv double 1.000000e+00, %i.drb
  %i.drd = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 24), align 8, !tbaa !91 ; 2 uses
  %i.dre = fdiv double 1.000000e+00, %i.drd
  %i.drf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, i32 noundef 456, ptr noundef nonnull @.str.99, double noundef %i.drc, double noundef %i.dre, double noundef %i.drb, double noundef %i.drd) ; 0 uses
  br label %bb.yv

bb.yu:                                            ; preds = %bb.ys, %bb.yr
  %i.drg = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 16), align 16, !tbaa !91
  %i.drh = load double, ptr getelementptr inbounds nuw (i8, ptr @eddsa_results, i64 24), align 8, !tbaa !91
  %i.dri = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.321, i32 noundef 1, i32 noundef 456, ptr noundef nonnull @.str.99, double noundef %i.drg, double noundef %i.drh) ; 0 uses
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yt, %bb.yp
  store i32 1, ptr @testnum, align 4, !tbaa !5
  %.not1827 = icmp eq i8 %.sroa.0.8, 0
  br i1 %.not1827, label %.split3181, label %.split

.split:                                           ; preds = %bb.yv
  %.b1598 = load i1, ptr @mr, align 4
  br i1 %.b1598, label %bb.yx, label %bb.yw

bb.yw:                                            ; preds = %.split
  %i.drj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.315, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1609.pr = load i1, ptr @mr, align 4
  br i1 %.b1609.pr, label %bb.yx, label %bb.yy

bb.yx:                                            ; preds = %.split, %bb.yw
  %i.drk = load double, ptr @sm2_results, align 16, !tbaa !91
  %i.drl = load double, ptr getelementptr inbounds nuw (i8, ptr @sm2_results, i64 8), align 8, !tbaa !91
  %i.drm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.323, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.100, double noundef %i.drk, double noundef %i.drl) ; 0 uses
  br label %.split3181

bb.yy:                                            ; preds = %bb.yw
  %i.drn = load double, ptr @sm2_results, align 16, !tbaa !91 ; 2 uses
  %i.dro = fdiv double 1.000000e+00, %i.drn
  %i.drp = load double, ptr getelementptr inbounds nuw (i8, ptr @sm2_results, i64 8), align 8, !tbaa !91 ; 2 uses
  %i.drq = fdiv double 1.000000e+00, %i.drp
  %i.drr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.324, i32 noundef 256, ptr noundef nonnull @.str.100, double noundef %i.dro, double noundef %i.drq, double noundef %i.drn, double noundef %i.drp) ; 0 uses
  br label %.split3181

.split3181:                                       ; preds = %bb.yv, %bb.yy, %bb.yx
  store i32 1, ptr @testnum, align 4, !tbaa !5
  %i.drs = load i8, ptr %i.k, align 1, !tbaa !26
  %.not1826 = icmp eq i8 %i.drs, 0
  br i1 %.not1826, label %bb.zd, label %bb.yz

bb.yz:                                            ; preds = %.split3181
  %.b1597 = load i1, ptr @mr, align 4
  br i1 %.b1597, label %bb.zb, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.drt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1608.pr = load i1, ptr @mr, align 4
  br i1 %.b1608.pr, label %bb.zb, label %bb.zc

bb.zb:                                            ; preds = %bb.yz, %bb.za
  %i.dru = load double, ptr @ffdh_results, align 16, !tbaa !91 ; 2 uses
  %i.drv = fdiv double 1.000000e+00, %i.dru
  %i.drw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.326, i32 noundef 0, i32 noundef 2048, double noundef %i.dru, double noundef %i.drv) ; 0 uses
  br label %bb.zd

bb.zc:                                            ; preds = %bb.za
  %i.drx = load double, ptr @ffdh_results, align 16, !tbaa !91 ; 2 uses
  %i.dry = fdiv double 1.000000e+00, %i.drx
  %i.drz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.327, i32 noundef 2048, double noundef %i.dry, double noundef %i.drx) ; 0 uses
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zb, %bb.zc, %.split3181
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dsb = load i8, ptr %i.dsa, align 1, !tbaa !26
  %.not1826.1 = icmp eq i8 %i.dsb, 0
  br i1 %.not1826.1, label %bb.zj, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.dsc = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dsd = icmp eq i32 %i.dsc, 0
  %.b1597.1 = load i1, ptr @mr, align 4           ; 2 uses
  %or.cond72.1 = select i1 %i.dsd, i1 true, i1 %.b1597.1
  br i1 %or.cond72.1, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.dse = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1608.pr.1 = load i1, ptr @mr, align 4
  br i1 %.b1608.pr.1, label %bb.zi, label %bb.zh

bb.zg:                                            ; preds = %bb.ze
  br i1 %.b1597.1, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.dsf = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 8), align 8, !tbaa !91 ; 2 uses
  %i.dsg = fdiv double 1.000000e+00, %i.dsf
  %i.dsh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.327, i32 noundef 3072, double noundef %i.dsg, double noundef %i.dsf) ; 0 uses
  br label %bb.zj

bb.zi:                                            ; preds = %bb.zg, %bb.zf
  %i.dsi = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 8), align 8, !tbaa !91 ; 2 uses
  %i.dsj = fdiv double 1.000000e+00, %i.dsi
  %i.dsk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.326, i32 noundef 1, i32 noundef 3072, double noundef %i.dsi, double noundef %i.dsj) ; 0 uses
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.zh, %bb.zd
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.dsm = load i8, ptr %i.dsl, align 1, !tbaa !26
  %.not1826.2 = icmp eq i8 %i.dsm, 0
  br i1 %.not1826.2, label %bb.zp, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.dsn = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dso = icmp eq i32 %i.dsn, 0
  %.b1597.2 = load i1, ptr @mr, align 4           ; 2 uses
  %or.cond72.2 = select i1 %i.dso, i1 true, i1 %.b1597.2
  br i1 %or.cond72.2, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.dsp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1608.pr.2 = load i1, ptr @mr, align 4
  br i1 %.b1608.pr.2, label %bb.zo, label %bb.zn

bb.zm:                                            ; preds = %bb.zk
  br i1 %.b1597.2, label %bb.zo, label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zl
  %i.dsq = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 16), align 16, !tbaa !91 ; 2 uses
  %i.dsr = fdiv double 1.000000e+00, %i.dsq
  %i.dss = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.327, i32 noundef 4096, double noundef %i.dsr, double noundef %i.dsq) ; 0 uses
  br label %bb.zp

bb.zo:                                            ; preds = %bb.zm, %bb.zl
  %i.dst = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 16), align 16, !tbaa !91 ; 2 uses
  %i.dsu = fdiv double 1.000000e+00, %i.dst
  %i.dsv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.326, i32 noundef 2, i32 noundef 4096, double noundef %i.dst, double noundef %i.dsu) ; 0 uses
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zo, %bb.zn, %bb.zj
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.dsx = load i8, ptr %i.dsw, align 1, !tbaa !26
  %.not1826.3 = icmp eq i8 %i.dsx, 0
  br i1 %.not1826.3, label %bb.zv, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.dsy = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dsz = icmp eq i32 %i.dsy, 0
  %.b1597.3 = load i1, ptr @mr, align 4           ; 2 uses
  %or.cond72.3 = select i1 %i.dsz, i1 true, i1 %.b1597.3
  br i1 %or.cond72.3, label %bb.zs, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.dta = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1608.pr.3 = load i1, ptr @mr, align 4
  br i1 %.b1608.pr.3, label %bb.zu, label %bb.zt

bb.zs:                                            ; preds = %bb.zq
  br i1 %.b1597.3, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs, %bb.zr
  %i.dtb = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 24), align 8, !tbaa !91 ; 2 uses
  %i.dtc = fdiv double 1.000000e+00, %i.dtb
  %i.dtd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.327, i32 noundef 6144, double noundef %i.dtc, double noundef %i.dtb) ; 0 uses
  br label %bb.zv

bb.zu:                                            ; preds = %bb.zs, %bb.zr
  %i.dte = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 24), align 8, !tbaa !91 ; 2 uses
  %i.dtf = fdiv double 1.000000e+00, %i.dte
  %i.dtg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.326, i32 noundef 3, i32 noundef 6144, double noundef %i.dte, double noundef %i.dtf) ; 0 uses
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt, %bb.zp
  %i.dth = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dti = load i8, ptr %i.dth, align 1, !tbaa !26
  %.not1826.4 = icmp eq i8 %i.dti, 0
  br i1 %.not1826.4, label %bb.aab, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.dtj = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dtk = icmp eq i32 %i.dtj, 0
  %.b1597.4 = load i1, ptr @mr, align 4           ; 2 uses
  %or.cond72.4 = select i1 %i.dtk, i1 true, i1 %.b1597.4
  br i1 %or.cond72.4, label %bb.zy, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.dtl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1608.pr.4 = load i1, ptr @mr, align 4
  br i1 %.b1608.pr.4, label %bb.aaa, label %bb.zz

bb.zy:                                            ; preds = %bb.zw
  br i1 %.b1597.4, label %bb.aaa, label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  %i.dtm = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 32), align 16, !tbaa !91 ; 2 uses
  %i.dtn = fdiv double 1.000000e+00, %i.dtm
  %i.dto = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.327, i32 noundef 8192, double noundef %i.dtn, double noundef %i.dtm) ; 0 uses
  br label %bb.aab

bb.aaa:                                           ; preds = %bb.zy, %bb.zx
  %i.dtp = load double, ptr getelementptr inbounds nuw (i8, ptr @ffdh_results, i64 32), align 16, !tbaa !91 ; 2 uses
  %i.dtq = fdiv double 1.000000e+00, %i.dtp
  %i.dtr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.326, i32 noundef 4, i32 noundef 8192, double noundef %i.dtp, double noundef %i.dtq) ; 0 uses
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aaa, %bb.zz, %bb.zv
  store i32 1, ptr @testnum, align 4, !tbaa !5
  %i.dts = load i64, ptr @kems_algs_len, align 8, !tbaa !29
  %.not3261.a = icmp eq i64 %i.dts, 0
  br i1 %.not3261.a, label %._crit_edge3187, label %.lr.ph3186

.lr.ph3186:                                       ; preds = %bb.aab
  %i.dtt = icmp ne i8 %.51385, 0
  br label %bb.aac

bb.aac:                                           ; preds = %.lr.ph3186, %bb.aai
  %i.dtu = phi i64 [ 0, %.lr.ph3186 ], [ %i.duv, %bb.aai ] ; 4 uses
  %.1214443184 = phi i32 [ 0, %.lr.ph3186 ], [ %i.duu, %bb.aai ] ; 2 uses
  %i.dtv = getelementptr inbounds nuw [8 x i8], ptr @kems_algname, i64 %i.dtu
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !24
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dtu
  %i.dty = load i8, ptr %i.dtx, align 1, !tbaa !26
  %i.dtz = icmp ne i8 %i.dty, 0
  %or.cond74 = select i1 %i.dtz, i1 %i.dtt, i1 false
  br i1 %or.cond74, label %bb.aad, label %bb.aai

bb.aad:                                           ; preds = %bb.aac
  %i.dua = load i32, ptr @testnum, align 4, !tbaa !5
  %i.dub = icmp eq i32 %i.dua, 0
  %.b1596 = load i1, ptr @mr, align 4             ; 2 uses
  %or.cond76 = select i1 %i.dub, i1 true, i1 %.b1596
  br i1 %or.cond76, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.duc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.328, ptr noundef nonnull @.str.309) ; 0 uses
  store i32 0, ptr @testnum, align 4, !tbaa !5
  %.b1607.pr = load i1, ptr @mr, align 4
  br i1 %.b1607.pr, label %bb.aag, label %bb.aah

bb.aaf:                                           ; preds = %bb.aad
  br i1 %.b1596, label %bb.aag, label %bb.aah

end_hunk_0
