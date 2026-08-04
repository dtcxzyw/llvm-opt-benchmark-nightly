begin_hunk_0_@cmd__path_utils:bb.a
  %i.oe = load ptr, ptr %i.ne, align 8, !tbaa !12
  %i.of = add i64 %.098.i, -2                     ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.of
  store i8 %i.od, ptr %i.og, align 1, !tbaa !25
  %.not67.i.1 = icmp eq i64 %i.of, 0
  br i1 %.not67.i.1, label %._crit_edge.i, label %.lr.ph.i304, !llvm.loop !58

._crit_edge.i:                                    ; preds = %.lr.ph.i304, %.lr.ph.i304.prol.loopexit
  %.lcssa467 = phi i64 [ %.lcssa467.unr, %.lr.ph.i304.prol.loopexit ], [ %i.oa, %.lr.ph.i304 ] ; 2 uses
  store i64 %.lcssa467, ptr @my_random_value, align 8, !tbaa !52
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.i, %bb.dd
  %i.oh = phi i64 [ %.lcssa467, %._crit_edge.i ], [ %my_random_value.promoted.i, %bb.dd ]
  %i.oi = add nuw i64 %.053100.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.oi, %.fr115145.i
  br i1 %exitcond.not.i, label %.preheader96.i, label %bb.dd, !llvm.loop !59

.preheader95.i:                                   ; preds = %.split112.i, %.preheader96.thread.i
  store i32 0, ptr @protect_hfs, align 4, !tbaa !51
  br label %.preheader94.i

.preheader93.i:                                   ; preds = %.split112.i, %.split112.us.us.i
  %i.oj = load double, ptr %i.b, align 16, !tbaa !55 ; 2 uses
  store i32 0, ptr @protect_ntfs, align 4, !tbaa !51
  br label %.preheader.i

.preheader94.i:                                   ; preds = %my_sqrt.exit.i, %.preheader95.i
  %i.ok = tail call i64 @getnanotime() #15
  %i.ol = tail call i64 @getnanotime() #15
  %i.om = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.on = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.oo = sub i64 %i.ol, %i.ok                    ; 4 uses
  %i.op = uitofp i64 %i.oo to double
  %i.oq = fdiv double %i.op, 1.000000e+06
  %i.or = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.om, i32 noundef %i.on, double noundef %i.oq) ; 0 uses
  %i.os = mul i64 %i.oo, %i.oo
  %i.ot = uitofp i64 %i.os to double
  %i.ou = tail call i64 @getnanotime() #15
  %i.ov = tail call i64 @getnanotime() #15
  %i.ow = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ox = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.oy = sub i64 %i.ov, %i.ou                    ; 4 uses
  %i.oz = uitofp i64 %i.oy to double
  %i.pa = fdiv double %i.oz, 1.000000e+06
  %i.pb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ow, i32 noundef %i.ox, double noundef %i.pa) ; 0 uses
  %i.pc = add i64 %i.oy, %i.oo
  %i.pd = mul i64 %i.oy, %i.oy
  %i.pe = uitofp i64 %i.pd to double
  %i.pf = fadd double %i.ot, %i.pe
  %i.pg = tail call i64 @getnanotime() #15
  %i.ph = tail call i64 @getnanotime() #15
  %i.pi = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.pj = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.pk = sub i64 %i.ph, %i.pg                    ; 4 uses
  %i.pl = uitofp i64 %i.pk to double
  %i.pm = fdiv double %i.pl, 1.000000e+06
  %i.pn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.pi, i32 noundef %i.pj, double noundef %i.pm) ; 0 uses
  %i.po = add i64 %i.pc, %i.pk
  %i.pp = mul i64 %i.pk, %i.pk
  %i.pq = uitofp i64 %i.pp to double
  %i.pr = fadd double %i.pf, %i.pq
  %i.ps = tail call i64 @getnanotime() #15
  %i.pt = tail call i64 @getnanotime() #15
  %i.pu = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.pv = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.pw = sub i64 %i.pt, %i.ps                    ; 4 uses
  %i.px = uitofp i64 %i.pw to double
  %i.py = fdiv double %i.px, 1.000000e+06
  %i.pz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.pu, i32 noundef %i.pv, double noundef %i.py) ; 0 uses
  %i.qa = add i64 %i.po, %i.pw
  %i.qb = mul i64 %i.pw, %i.pw
  %i.qc = uitofp i64 %i.qb to double
  %i.qd = fadd double %i.pr, %i.qc
  %i.qe = tail call i64 @getnanotime() #15
  %i.qf = tail call i64 @getnanotime() #15
  %i.qg = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.qh = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.qi = sub i64 %i.qf, %i.qe                    ; 4 uses
  %i.qj = uitofp i64 %i.qi to double
  %i.qk = fdiv double %i.qj, 1.000000e+06
  %i.ql = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.qg, i32 noundef %i.qh, double noundef %i.qk) ; 0 uses
  %i.qm = add i64 %i.qa, %i.qi
  %i.qn = mul i64 %i.qi, %i.qi
  %i.qo = uitofp i64 %i.qn to double
  %i.qp = fadd double %i.qd, %i.qo
  %i.qq = tail call i64 @getnanotime() #15
  %i.qr = tail call i64 @getnanotime() #15
  %i.qs = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.qt = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.qu = sub i64 %i.qr, %i.qq                    ; 4 uses
  %i.qv = uitofp i64 %i.qu to double
  %i.qw = fdiv double %i.qv, 1.000000e+06
  %i.qx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.qs, i32 noundef %i.qt, double noundef %i.qw) ; 0 uses
  %i.qy = add i64 %i.qm, %i.qu
  %i.qz = mul i64 %i.qu, %i.qu
  %i.ra = uitofp i64 %i.qz to double
  %i.rb = fadd double %i.qp, %i.ra
  %i.rc = tail call i64 @getnanotime() #15
  %i.rd = tail call i64 @getnanotime() #15
  %i.re = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.rf = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.rg = sub i64 %i.rd, %i.rc                    ; 4 uses
  %i.rh = uitofp i64 %i.rg to double
  %i.ri = fdiv double %i.rh, 1.000000e+06
  %i.rj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.re, i32 noundef %i.rf, double noundef %i.ri) ; 0 uses
  %i.rk = add i64 %i.qy, %i.rg
  %i.rl = mul i64 %i.rg, %i.rg
  %i.rm = uitofp i64 %i.rl to double
  %i.rn = fadd double %i.rb, %i.rm
  %i.ro = tail call i64 @getnanotime() #15
  %i.rp = tail call i64 @getnanotime() #15
  %i.rq = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.rr = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.rs = sub i64 %i.rp, %i.ro                    ; 4 uses
  %i.rt = uitofp i64 %i.rs to double
  %i.ru = fdiv double %i.rt, 1.000000e+06
  %i.rv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.rq, i32 noundef %i.rr, double noundef %i.ru) ; 0 uses
  %i.rw = add i64 %i.rk, %i.rs
  %i.rx = mul i64 %i.rs, %i.rs
  %i.ry = uitofp i64 %i.rx to double
  %i.rz = fadd double %i.rn, %i.ry
  %i.sa = tail call i64 @getnanotime() #15
  %i.sb = tail call i64 @getnanotime() #15
  %i.sc = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.sd = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.se = sub i64 %i.sb, %i.sa                    ; 4 uses
  %i.sf = uitofp i64 %i.se to double
  %i.sg = fdiv double %i.sf, 1.000000e+06
  %i.sh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.sc, i32 noundef %i.sd, double noundef %i.sg) ; 0 uses
  %i.si = add i64 %i.rw, %i.se
  %i.sj = mul i64 %i.se, %i.se
  %i.sk = uitofp i64 %i.sj to double
  %i.sl = fadd double %i.rz, %i.sk
  %i.sm = tail call i64 @getnanotime() #15
  %i.sn = tail call i64 @getnanotime() #15
  %i.so = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.sp = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.sq = sub i64 %i.sn, %i.sm                    ; 4 uses
  %i.sr = uitofp i64 %i.sq to double
  %i.ss = fdiv double %i.sr, 1.000000e+06
  %i.st = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.so, i32 noundef %i.sp, double noundef %i.ss) ; 0 uses
  %i.su = add i64 %i.si, %i.sq
  %i.sv = mul i64 %i.sq, %i.sq
  %i.sw = uitofp i64 %i.sv to double
  %i.sx = fadd double %i.sl, %i.sw
  %i.sy = tail call i64 @getnanotime() #15
  %i.sz = tail call i64 @getnanotime() #15
  %i.ta = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.tb = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.tc = sub i64 %i.sz, %i.sy                    ; 4 uses
  %i.td = uitofp i64 %i.tc to double
  %i.te = fdiv double %i.td, 1.000000e+06
  %i.tf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ta, i32 noundef %i.tb, double noundef %i.te) ; 0 uses
  %i.tg = add i64 %i.su, %i.tc
  %i.th = mul i64 %i.tc, %i.tc
  %i.ti = uitofp i64 %i.th to double
  %i.tj = fadd double %i.sx, %i.ti
  %i.tk = tail call i64 @getnanotime() #15
  %i.tl = tail call i64 @getnanotime() #15
  %i.tm = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.tn = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.to = sub i64 %i.tl, %i.tk                    ; 4 uses
  %i.tp = uitofp i64 %i.to to double
  %i.tq = fdiv double %i.tp, 1.000000e+06
  %i.tr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tm, i32 noundef %i.tn, double noundef %i.tq) ; 0 uses
  %i.ts = add i64 %i.tg, %i.to
  %i.tt = mul i64 %i.to, %i.to
  %i.tu = uitofp i64 %i.tt to double
  %i.tv = fadd double %i.tj, %i.tu
  %i.tw = tail call i64 @getnanotime() #15
  %i.tx = tail call i64 @getnanotime() #15
  %i.ty = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.tz = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.ua = sub i64 %i.tx, %i.tw                    ; 4 uses
  %i.ub = uitofp i64 %i.ua to double
  %i.uc = fdiv double %i.ub, 1.000000e+06
  %i.ud = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ty, i32 noundef %i.tz, double noundef %i.uc) ; 0 uses
  %i.ue = add i64 %i.ts, %i.ua
  %i.uf = mul i64 %i.ua, %i.ua
  %i.ug = uitofp i64 %i.uf to double
  %i.uh = fadd double %i.tv, %i.ug
  %i.ui = tail call i64 @getnanotime() #15
  %i.uj = tail call i64 @getnanotime() #15
  %i.uk = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ul = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.um = sub i64 %i.uj, %i.ui                    ; 4 uses
  %i.un = uitofp i64 %i.um to double
  %i.uo = fdiv double %i.un, 1.000000e+06
  %i.up = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.uk, i32 noundef %i.ul, double noundef %i.uo) ; 0 uses
  %i.uq = add i64 %i.ue, %i.um
  %i.ur = mul i64 %i.um, %i.um
  %i.us = uitofp i64 %i.ur to double
  %i.ut = fadd double %i.uh, %i.us
  %i.uu = tail call i64 @getnanotime() #15
  %i.uv = tail call i64 @getnanotime() #15
  %i.uw = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ux = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.uy = sub i64 %i.uv, %i.uu                    ; 4 uses
  %i.uz = add i64 %i.uq, %i.uy
  %11 = insertelement <2 x i64> poison, i64 %i.uy, i64 0
  %12 = insertelement <2 x i64> %11, i64 %i.uz, i64 1
  %13 = uitofp <2 x i64> %12 to <2 x double>
  %14 = fdiv <2 x double> %13, <double 1.000000e+06, double 1.500000e+01> ; 3 uses
  %15 = extractelement <2 x double> %14, i64 0
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.uw, i32 noundef %i.ux, double noundef %15) ; 0 uses
  %17 = mul i64 %i.uy, %i.uy
  %18 = uitofp i64 %17 to double
  %19 = fadd double %i.ut, %18
  %i.va = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.vb
  %i.vd = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.ve
  %i.vg = extractelement <2 x double> %14, i64 1  ; 3 uses
  store double %i.vg, ptr %i.vf, align 8, !tbaa !55
  %i.vh = fdiv double %19, 1.500000e+01
  %i.vi = fneg double %i.vg
  %i.vj = tail call double @llvm.fmuladd.f64(double %i.vi, double %i.vg, double %i.vh) ; 3 uses
  %i.vk = fcmp oeq double %i.vj, 0.000000e+00
  br i1 %i.vk, label %my_sqrt.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader94.i, %.preheader.i.i
  %.014.i.i = phi double [ %i.vp, %.preheader.i.i ], [ %i.vj, %.preheader94.i ] ; 3 uses
  %i.vl = fdiv double %i.vj, %.014.i.i
  %i.vm = fsub double %i.vl, %.014.i.i
  %i.vn = fmul double %i.vm, 5.000000e-01         ; 2 uses
  %i.vo = tail call double @llvm.fabs.f64(double %i.vn)
  %or.cond.i.i = fcmp uge double %i.vo, f0x3EB0C6F7A0B5ED8D
  %i.vp = fadd double %.014.i.i, %i.vn            ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %my_sqrt.exit.i

my_sqrt.exit.i:                                   ; preds = %.preheader.i.i, %.preheader94.i
  %.2.i.i = phi double [ 0.000000e+00, %.preheader94.i ], [ %i.vp, %.preheader.i.i ]
  %i.vq = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vr = insertelement <2 x double> %i.vq, double %.2.i.i, i64 1
  %i.vs = fdiv <2 x double> %i.vr, splat (double 1.000000e+06) ; 2 uses
  %i.vt = extractelement <2 x double> %i.vs, i64 0
  %i.vu = extractelement <2 x double> %i.vs, i64 1
  %i.vv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, double noundef %i.vt, double noundef %i.vu) ; 0 uses
  %i.vw = load i32, ptr @protect_hfs, align 4, !tbaa !51 ; 2 uses
  %i.vx = add nsw i32 %i.vw, 1
  store i32 %i.vx, ptr @protect_hfs, align 4, !tbaa !51
  %i.vy = icmp slt i32 %i.vw, 1
  br i1 %i.vy, label %.preheader94.i, label %.split112.i, !llvm.loop !54

.split112.i:                                      ; preds = %my_sqrt.exit.i
  %i.vz = load i32, ptr @protect_ntfs, align 4, !tbaa !51 ; 2 uses
  %i.wa = add nsw i32 %i.vz, 1
  store i32 %i.wa, ptr @protect_ntfs, align 4, !tbaa !51
  %i.wb = icmp slt i32 %i.vz, 1
  br i1 %i.wb, label %.preheader95.i, label %.preheader93.i, !llvm.loop !57

.preheader.i:                                     ; preds = %bb.dg, %.preheader93.i
  store i32 0, ptr @protect_hfs, align 4, !tbaa !51
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.preheader.i
  %storemerge65113.i = phi i32 [ 0, %.preheader.i ], [ %i.wn, %bb.df ] ; 2 uses
  %i.wc = load i32, ptr @protect_ntfs, align 4, !tbaa !51 ; 2 uses
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.wd
  %i.wf = sext i32 %storemerge65113.i to i64
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.we, i64 %i.wf
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !55
  %i.wi = fsub double %i.wh, %i.oj
  %i.wj = fmul double %i.wi, 1.000000e+02
  %i.wk = fdiv double %i.wj, %i.oj
  %i.wl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %i.wc, i32 noundef %storemerge65113.i, double noundef %i.wk) ; 0 uses
  %i.wm = load i32, ptr @protect_hfs, align 4, !tbaa !51 ; 2 uses
  %i.wn = add nsw i32 %i.wm, 1                    ; 2 uses
  store i32 %i.wn, ptr @protect_hfs, align 4, !tbaa !51
  %i.wo = icmp slt i32 %i.wm, 1
  br i1 %i.wo, label %bb.df, label %bb.dg, !llvm.loop !60

bb.dg:                                            ; preds = %bb.df
  %i.wp = load i32, ptr @protect_ntfs, align 4, !tbaa !51 ; 2 uses
  %i.wq = add nsw i32 %i.wp, 1
  store i32 %i.wq, ptr @protect_ntfs, align 4, !tbaa !51
  %i.wr = icmp slt i32 %i.wp, 1
  br i1 %i.wr, label %.preheader.i, label %protect_ntfs_hfs_benchmark.exit, !llvm.loop !61

protect_ntfs_hfs_benchmark.exit:                  ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %check_dotfile.exit

bb.dh:                                            ; preds = %.thread338
  %i.ws = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(14) @.str.38) #14
  %.not228 = icmp eq i32 %i.ws, 0
  br i1 %.not228, label %.preheader352, label %.critedge243

.preheader352:                                    ; preds = %bb.dh
  %i.wt = icmp samesign ugt i32 %0, 2
  br i1 %i.wt, label %.lr.ph365.preheader, label %check_dotfile.exit

.lr.ph365.preheader:                              ; preds = %.preheader352
  %wide.trip.count410 = zext nneg i32 %0 to i64
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.dl
  %indvars.iv407 = phi i64 [ 2, %.lr.ph365.preheader ], [ %indvars.iv.next408, %bb.dl ] ; 2 uses
  %.0172363 = phi i32 [ 1, %.lr.ph365.preheader ], [ %.1173, %bb.dl ]
  %.0174362 = phi i32 [ 0, %.lr.ph365.preheader ], [ %.1175, %bb.dl ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv407
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !12 ; 3 uses
  %i.ww = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef nonnull dereferenceable(1) %i.wv) #14
  %.not229 = icmp eq i32 %i.ww, 0
  br i1 %.not229, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %.lr.ph365
  %.not230 = icmp eq i32 %.0172363, 1
  br i1 %.not230, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wx = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.wv, ptr noundef nonnull @.str.42) #15 ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.wy = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.wz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wy, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.wv, ptr noundef nonnull @.str.42) #17 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph365, %bb.dk, %bb.dj
  %.1175 = phi i32 [ -1, %bb.dj ], [ %.0174362, %bb.dk ], [ %.0174362, %.lr.ph365 ] ; 2 uses
  %.1173 = phi i32 [ 0, %bb.dj ], [ 1, %bb.dk ], [ 0, %.lr.ph365 ]
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %._crit_edge.loopexit, label %.lr.ph365, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %bb.dl
  %i.xa = icmp ne i32 %.1175, 0
  %i.xb = zext i1 %i.xa to i32
  br label %check_dotfile.exit

.critedge243:                                     ; preds = %bb.dh
  %i.xc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(30) @.str.44) #14
  %.not231 = icmp eq i32 %i.xc, 0
  br i1 %.not231, label %.preheader353, label %.critedge244

.preheader353:                                    ; preds = %.critedge243
  %i.xd = icmp samesign ugt i32 %0, 2
  br i1 %i.xd, label %.lr.ph, label %check_dotfile.exit

.lr.ph:                                           ; preds = %.preheader353
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.xf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph, %bb.dw
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.dw ] ; 2 uses
  %.0170360 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd__path_utils.buf, i64 24, i1 false)
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.xi = call i32 @lstat64(ptr noundef readonly %i.xh, ptr noundef nonnull %2) #15
  %.not.i306 = icmp eq i32 %i.xi, 0
  br i1 %.not.i306, label %bb.dn, label %.sink.split

bb.dn:                                            ; preds = %bb.dm
  %i.xj = call i32 @geteuid() #15                 ; 2 uses
  %i.xk = icmp eq i32 %i.xj, 0
  %i.xl = load i32, ptr %i.xe, align 4, !tbaa !63 ; 2 uses
  br i1 %i.xk, label %bb.do, label %is_path_owned_by_current_uid.exit

bb.do:                                            ; preds = %bb.dn
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %is_path_owned_by_current_uid.exit.thread341, label %bb.dp

is_path_owned_by_current_uid.exit.thread341:      ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.xn = call ptr @getenv(ptr noundef nonnull @.str.80) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.xn, null
  br i1 %.not.i.i, label %.sink.split, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !25
  %.not5.i.i = icmp eq i8 %i.xo, 0
  br i1 %.not5.i.i, label %.sink.split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %i.xp = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.xp, align 4, !tbaa !51
  %i.xq = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.xn, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.xr = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !25
  %.not6.i.i = icmp eq i8 %i.xs, 0
  br i1 %.not6.i.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xt = load i32, ptr %i.xp, align 4, !tbaa !51
  %.not7.i.i = icmp eq i32 %i.xt, 0
  %i.xu = trunc i64 %i.xq to i32
  %spec.select.i = select i1 %.not7.i.i, i32 %i.xu, i32 0
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.01.i = phi i32 [ 0, %bb.dr ], [ %spec.select.i, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %is_path_owned_by_current_uid.exit

is_path_owned_by_current_uid.exit:                ; preds = %bb.dn, %bb.dt
  %.2.i = phi i32 [ %.01.i, %bb.dt ], [ %i.xj, %bb.dn ]
  %.not348 = icmp eq i32 %i.xl, %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not348, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %is_path_owned_by_current_uid.exit.thread341, %is_path_owned_by_current_uid.exit
  %i.xv = load ptr, ptr %i.xg, align 8, !tbaa !12
  %i.xw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef %i.xv) ; 0 uses
  br label %bb.dw

.sink.split:                                      ; preds = %bb.dq, %bb.dp, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split, %is_path_owned_by_current_uid.exit
  %i.xx = load ptr, ptr %i.xg, align 8, !tbaa !12
  %i.xy = load ptr, ptr %i.xf, align 8, !tbaa !15
  %i.xz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef %i.xx, ptr noundef %i.xy) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.1 = phi i32 [ %.0170360, %bb.du ], [ 1, %bb.dv ] ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
