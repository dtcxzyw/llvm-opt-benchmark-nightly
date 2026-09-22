Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/quad_prog_solve?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@constrained_majorization_new_with_gaps:bb.a
  %i.jq = fcmp ogt float %i.jn, %i.ct             ; 2 uses
  br i1 %i.jp, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.jq, label %bb.ao, label %.thread.us

bb.ao:                                            ; preds = %bb.an
  br label %.thread.us

bb.ap:                                            ; preds = %bb.am
  %.0363.us = select i1 %i.jq, float %i.ct, float %i.jn ; 2 uses
  br label %.thread.us

.thread.us:                                       ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  %.1364.us = phi float [ %.0363.us, %bb.ap ], [ %i.jk, %bb.ao ], [ %i.jn, %bb.an ], [ %i.jn, %bb.al ]
  %.0361.us = phi float [ %.0363.us, %bb.ap ], [ %i.jk, %bb.ao ], [ %i.jk, %bb.an ], [ %i.jk, %bb.al ]
  %i.jr = sub nuw i64 %.val436.us, %.0348525.us
  %i.js = uitofp i64 %i.jr to float
  %i.jt = fpext float %i.js to double
  %i.ju = fsub float %.0361.us, %i.ct
  %i.jv = call float @llvm.fabs.f32(float %i.ju)
  %i.jw = fpext float %i.jv to double
  %i.jx = uitofp i64 %.0348525.us to float
  %i.jy = fpext nnan ninf float %i.jx to double
  %i.jz = fsub float %.1364.us, %i.ct
  %i.ka = call float @llvm.fabs.f32(float %i.jz)
  %i.kb = fpext float %i.ka to double
  %i.kc = fmul double %i.jy, %i.kb
  %i.kd = call double @llvm.fmuladd.f64(double %i.jt, double %i.jw, double %i.kc) ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.0365523.us     ; 2 uses
  %.1366.us = select i1 %i.ke, double %i.kd, double %.0365523.us
  %.1.us = select i1 %i.ke, i64 %.0348525.us, i64 %.0349524.us ; 2 uses
  %i.kf = add nuw i64 %.0348525.us, 1             ; 2 uses
  %exitcond597.not = icmp eq i64 %i.kf, %.val436.us
  br i1 %exitcond597.not, label %._crit_edge528.us, label %bb.al, !llvm.loop !45

._crit_edge528.us:                                ; preds = %.thread.us, %.thread.us.peel
  %.0349.lcssa.us = phi i64 [ %.1.us.peel, %.thread.us.peel ], [ %.1.us, %.thread.us ] ; 7 uses
  %.not418.us = icmp eq i64 %.0349.lcssa.us, -1
  br i1 %.not418.us, label %._crit_edge528.us.thread, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge528.us
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0349.lcssa.us
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !15 ; 2 uses
  %.not419.us = icmp eq i64 %.0349.lcssa.us, 0    ; 2 uses
  br i1 %.not419.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ki = getelementptr [4 x i8], ptr %i.br, i64 %.0349.lcssa.us
  %i.kj = getelementptr i8, ptr %i.ki, i64 -4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kl = phi float [ %i.kk, %bb.ar ], [ %i.kh, %bb.aq ]
  br i1 %.lcssa.us, label %.sink.split, label %bb.at

.sink.split:                                      ; preds = %bb.as
  %i.km = sext i32 %.0382.lcssa.us to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !55
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !55
  %i.ks = sext i32 %.0382.in.lcssa.us to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !55
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !55
  %i.ky = icmp sgt i32 %i.kr, %i.kx
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.kp
  %i.la = load float, ptr %i.kz, align 4, !tbaa !15 ; 2 uses
  %i.lb = fsub float %i.la, %5
  %.sink = select i1 %i.ky, float %i.lb, float %i.la
  %i.lc = load ptr, ptr %6, align 8, !tbaa !59
  %i.ld = add i64 %.val436.us, -1
  %i.le = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.ld) #17
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !55
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !15
  %i.lk = fsub float %.sink, %i.lj
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.as
  %.0387.us = phi float [ 1.000000e+09, %bb.as ], [ %i.lk, %.sink.split ]
  %i.ll = call nsz float @llvm.minnum.f32(float %i.kh, float %.0387.us) ; 6 uses
  %i.lm = call nsz float @llvm.maxnum.f32(float %i.kl, float %.0384545.us) ; 5 uses
  %i.ln = fcmp olt float %i.ll, %i.lm
  br i1 %i.ln, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.lo = fcmp olt float %i.ll, %i.ct
  %i.lp = fcmp ogt float %i.lm, %i.ct             ; 2 uses
  br i1 %i.lo, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.lp, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %.2.us = select i1 %i.lp, float %i.ct, float %i.lm ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  %.3.us = phi float [ %.2.us, %bb.ax ], [ %i.ll, %bb.aw ], [ %i.lm, %bb.av ], [ %i.lm, %bb.at ] ; 2 uses
  %.1362.us = phi float [ %.2.us, %bb.ax ], [ %i.ll, %bb.aw ], [ %i.ll, %bb.av ], [ %i.ll, %bb.at ] ; 2 uses
  br i1 %.not419.us, label %.preheader446.us, label %.lr.ph533.us

.lr.ph533.us:                                     ; preds = %bb.ay, %.lr.ph533.us
  %.0347531.us = phi i64 [ %i.me, %.lr.ph533.us ], [ 0, %bb.ay ] ; 3 uses
  %i.lq = load ptr, ptr %6, align 8, !tbaa !59
  %i.lr = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0347531.us) #17
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !55
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.lu
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !15
  %i.lx = fadd float %.3.us, %i.lw
  %i.ly = load ptr, ptr %6, align 8, !tbaa !59
  %i.lz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0347531.us) #17
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !55
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.mc
  store float %i.lx, ptr %i.md, align 4, !tbaa !15
  %i.me = add nuw i64 %.0347531.us, 1             ; 2 uses
  %exitcond599.not = icmp eq i64 %i.me, %.0349.lcssa.us
  br i1 %exitcond599.not, label %.preheader446.us, label %.lr.ph533.us, !llvm.loop !46

.lr.ph536.us:                                     ; preds = %.preheader446.us, %.lr.ph536.us
  %.0346535.us = phi i64 [ %i.mt, %.lr.ph536.us ], [ %.0349.lcssa.us, %.preheader446.us ] ; 3 uses
  %i.mf = load ptr, ptr %6, align 8, !tbaa !59
  %i.mg = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0346535.us) #17
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !55
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.mj
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !15
  %i.mm = fadd float %.1362.us, %i.ml
  %i.mn = load ptr, ptr %6, align 8, !tbaa !59
  %i.mo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0346535.us) #17
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !55
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.mr
  store float %i.mm, ptr %i.ms, align 4, !tbaa !15
  %i.mt = add nuw i64 %.0346535.us, 1             ; 2 uses
  %.val431.us = load i64, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %.val431.us
  br i1 %i.mu, label %.lr.ph536.us, label %._crit_edge537.us, !llvm.loop !47

._crit_edge537.us:                                ; preds = %.lr.ph536.us, %.preheader446.us
  %.val431.lcssa.us = phi i64 [ %.val431534.us, %.preheader446.us ], [ %.val431.us, %.lr.ph536.us ] ; 2 uses
  br i1 %.lcssa.us, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge537.us
  %i.mv = sext i32 %.0382.lcssa.us to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !55
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !55
  %i.nb = sext i32 %.0382.in.lcssa.us to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !55
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !55
  %i.nh = icmp sgt i32 %i.na, %i.ng
  br i1 %i.nh, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge537.us
  %i.ni = load ptr, ptr %6, align 8, !tbaa !59
  %i.nj = add i64 %.val431.lcssa.us, -1
  %i.nk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.nj) #17
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !55
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !15
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.nq = load ptr, ptr %6, align 8, !tbaa !59
  %i.nr = add i64 %.val431.lcssa.us, -1
  %i.ns = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.nr) #17
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !55
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !15
  %i.ny = fadd float %5, %i.nx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1385.us = phi float [ %i.ny, %bb.bb ], [ %i.np, %bb.ba ] ; 2 uses
  br i1 %.not415475.us, label %._crit_edge543.us, label %.lr.ph542.us.preheader

.lr.ph542.us.preheader:                           ; preds = %bb.bc
  %i.nz = add i32 %.0382.in.lcssa.us, 1
  br label %.lr.ph542.us

.lr.ph542.us:                                     ; preds = %.lr.ph542.us.preheader, %.lr.ph542.us
  %indvars.iv600 = phi i64 [ %i.co, %.lr.ph542.us.preheader ], [ %indvars.iv.next601, %.lr.ph542.us ] ; 3 uses
  %i.oa = load ptr, ptr %6, align 8, !tbaa !59
  %i.ob = sub nsw i64 %indvars.iv600, %i.co
  %i.oc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.ob) #17
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !55
  %i.of = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv600
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !55
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1 ; 2 uses
  %lftr.wideiv603 = trunc i64 %indvars.iv.next601 to i32
  %exitcond604.not = icmp eq i32 %i.nz, %lftr.wideiv603
  br i1 %exitcond604.not, label %._crit_edge543.us, label %.lr.ph542.us, !llvm.loop !48

._crit_edge543.us:                                ; preds = %.lr.ph542.us, %bb.bc
  %7 = fsub float %.3.us, %i.ct
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = fcmp olt float %8, f0x3C23D70A
  br i1 %9, label %._crit_edge543.us.a, label %bb.bg

._crit_edge543.us.a:                              ; preds = %._crit_edge543.us
  %i.og = fsub float %.1362.us, %i.ct
  %i.oh = call float @llvm.fabs.f32(float %i.og)
  %i.oi = fcmp olt float %i.oh, f0x3C23D70A
  %i.oj = select i1 %i.oi, i1 %.1389544.us, i1 false
  br label %bb.bg

._crit_edge528.us.thread:                         ; preds = %bb.ak, %._crit_edge528.us
  br i1 %.lcssa.us, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge528.us.thread
  %i.ok = sext i32 %.0382.lcssa.us to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !55
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !55
  %i.oq = sext i32 %.0382.in.lcssa.us to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !55
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !55
  %i.ow = icmp sgt i32 %i.op, %i.ov
  br i1 %i.ow, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge528.us.thread
  %i.ox = load ptr, ptr %6, align 8, !tbaa !59
  %i.oy = add i64 %.val436.us, -1
  %i.oz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.oy) #17
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !55
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !15
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pf = load ptr, ptr %6, align 8, !tbaa !59
  %i.pg = add i64 %.val436.us, -1
  %i.ph = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.pg) #17
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !55
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.pk
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !15
  %i.pn = fadd float %5, %i.pm
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge543.us.a, %._crit_edge543.us
  %.2390.us = phi i1 [ %.1389544.us, %bb.be ], [ %.1389544.us, %bb.bf ], [ false, %._crit_edge543.us ], [ %i.oj, %._crit_edge543.us.a ] ; 2 uses
  %.2386.us = phi float [ %i.pe, %bb.be ], [ %i.pn, %bb.bf ], [ %.1385.us, %._crit_edge543.us ], [ %.1385.us, %._crit_edge543.us.a ]
  %i.po = icmp slt i32 %.0382.lcssa.us, %i.e
  br i1 %i.po, label %bb.r, label %._crit_edge548.us, !llvm.loop !49

.loopexit.us:                                     ; preds = %bb.ag, %bb.aa
  %.not416.us = icmp sgt i32 %.0375.us, %.0382.in.lcssa.us
  br i1 %.not416.us, label %.preheader447.us, label %.lr.ph493.us, !llvm.loop !50

.preheader446.us:                                 ; preds = %.lr.ph533.us, %bb.ay
  %.val431534.us = load i64, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.pp = icmp ult i64 %.0349.lcssa.us, %.val431534.us
  br i1 %i.pp, label %.lr.ph536.us, label %._crit_edge537.us

.preheader447.us:                                 ; preds = %.loopexit.us, %._crit_edge482.us
  %.val440500.us = load i64, ptr %i.cf, align 8, !tbaa !62
  %.not557 = icmp eq i64 %.val440500.us, 0
  br i1 %.not557, label %._crit_edge505.us, label %.lr.ph504.us

.preheader448.us:                                 ; preds = %._crit_edge473.us, %._crit_edge462.us
  %.val441479.us = load i64, ptr %i.cf, align 8, !tbaa !62
  %.not = icmp eq i64 %.val441479.us, 0
  br i1 %.not, label %._crit_edge482.us, label %.lr.ph481.us

._crit_edge473.us.unr-lcssa:                      ; preds = %bb.w
  br i1 %lcmp.mod663.not, label %._crit_edge473.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge473.us.unr-lcssa, %.lr.ph472.us
  %indvars.iv572.epil.init = phi i64 [ 0, %.lr.ph472.us ], [ %indvars.iv.next573.1, %._crit_edge473.us.unr-lcssa ] ; 3 uses
  %.0391469.us.epil.init = phi float [ %i.dw, %.lr.ph472.us ], [ %.1392.us.1, %._crit_edge473.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod665)
  %i.pq = icmp eq i64 %indvars.iv572.epil.init, %i.dz
  br i1 %i.pq, label %._crit_edge473.us, label %bb.bh

bb.bh:                                            ; preds = %.epil.preheader
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv572.epil.init
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !15
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv572.epil.init
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !15
  %i.pv = call float @llvm.fmuladd.f32(float %i.ps, float %i.pu, float %.0391469.us.epil.init)
  br label %._crit_edge473.us

._crit_edge473.us:                                ; preds = %.epil.preheader, %bb.bh, %._crit_edge473.us.unr-lcssa
  %.1392.us.lcssa = phi float [ %.1392.us.1, %._crit_edge473.us.unr-lcssa ], [ %.0391469.us.epil.init, %.epil.preheader ], [ %i.pv, %bb.bh ]
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dt
  %i.px = load float, ptr %i.pw, align 4, !tbaa !15
  %i.py = fneg float %i.px
  %i.pz = fdiv float %.1392.us.lcssa, %i.py
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dt
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !15
  %i.qc = fsub float %i.pz, %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.dt
  store float %i.qc, ptr %i.qd, align 4, !tbaa !15
  %indvars.iv.next578 = add nsw i64 %indvars.iv577, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next578 to i32
  %exitcond580.not = icmp eq i32 %i.dq, %lftr.wideiv
  br i1 %exitcond580.not, label %.preheader448.us, label %.lr.ph472.us, !llvm.loop !51

._crit_edge548.us:                                ; preds = %bb.bg
  call void @orthog1f(i32 noundef %i.e, ptr noundef nonnull %i.c) #17
  %i.qe = add nuw nsw i32 %.0367550.us, 1         ; 2 uses
  %i.qf = icmp sge i32 %i.qe, %4
  %.not414.us = select i1 %i.qf, i1 true, i1 %.2390.us
  br i1 %.not414.us, label %._crit_edge551, label %.preheader449.us, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.bm, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.bm ] ; 4 uses
  %.0371454 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1372.1, %bb.bm ] ; 2 uses
  %.0373453 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.1374.1, %bb.bm ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.bm ]
  %i.qg = sext i32 %.0371454 to i64
  %.not425 = icmp slt i64 %indvars.iv, %i.qg
  br i1 %.not425, label %.lr.ph.1, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph
  %i.qh = add nsw i32 %.0373453, 1                ; 3 uses
  %i.qi = icmp eq i32 %i.qh, %i.l
  br i1 %i.qi, label %.lr.ph.1, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qj = sext i32 %i.qh to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !55
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.bi, %bb.bj, %.lr.ph
  %.1374 = phi i32 [ %.0373453, %.lr.ph ], [ %i.qh, %bb.bj ], [ %i.l, %bb.bi ] ; 3 uses
  %.1372 = phi i32 [ %.0371454, %.lr.ph ], [ %i.ql, %bb.bj ], [ %i.e, %bb.bi ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !55
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.qo
  store i32 %.1374, ptr %i.qp, align 4, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.qq = sext i32 %.1372 to i64
  %.not425.1 = icmp slt i64 %indvars.iv.next, %i.qq
  br i1 %.not425.1, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.1
  %i.qr = add nsw i32 %.1374, 1                   ; 3 uses
  %i.qs = icmp eq i32 %i.qr, %i.l
  br i1 %i.qs, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qt = sext i32 %i.qr to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !55
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.lr.ph.1
  %.1374.1 = phi i32 [ %.1374, %.lr.ph.1 ], [ %i.qr, %bb.bl ], [ %i.l, %bb.bk ] ; 3 uses
  %.1372.1 = phi i32 [ %.1372, %.lr.ph.1 ], [ %i.qv, %bb.bl ], [ %i.e, %bb.bk ] ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !55
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.qy
  store i32 %.1374.1, ptr %i.qz, align 4, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader449.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !53

.preheader449:                                    ; preds = %gv_calloc.exit.thread, %gv_calloc.exit, %.preheader449.lr.ph
  %i.ra = phi ptr [ %i.bp, %.preheader449.lr.ph ], [ %i.bb, %gv_calloc.exit ], [ %i.ay, %gv_calloc.exit.thread ]
  tail call void @orthog1f(i32 noundef %i.e, ptr noundef %i.c) #17
  br label %._crit_edge551

._crit_edge551:                                   ; preds = %._crit_edge548.us, %.preheader449
  %i.rb = phi ptr [ %i.ra, %.preheader449 ], [ %i.bp, %._crit_edge548.us ]
  call void @free(ptr noundef %i.rb) #17
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.val552 = load i64, ptr %i.rc, align 8, !tbaa !62
  %.not561 = icmp eq i64 %.val552, 0
  br i1 %.not561, label %._crit_edge556, label %.lr.ph555

.lr.ph555:                                        ; preds = %._crit_edge551
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.bn

.split.us:                                        ; preds = %.lr.ph481.us
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite424 = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.re) #18 ; 0 uses
  call void @abort() #19
  unreachable

._crit_edge556:                                   ; preds = %bb.bq, %._crit_edge551
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 4) #17
  call void @gv_list_free_(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.br

bb.bn:                                            ; preds = %.lr.ph555, %bb.bq
  %.0553 = phi i64 [ 0, %.lr.ph555 ], [ %i.rl, %bb.bq ] ; 2 uses
  %i.rf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0553) #17
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !58 ; 2 uses
  %magicptr426 = ptrtoint ptr %i.rg to i64
  switch i64 %magicptr426, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.rh) #18 ; 0 uses
  call void @abort() #19
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ri = load ptr, ptr %6, align 8, !tbaa !59
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.rf
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !55
  call void %i.rg(i32 noundef %i.rk) #17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %bb.bp
  %i.rl = add nuw i64 %.0553, 1                   ; 2 uses
  %.val = load i64, ptr %i.rc, align 8, !tbaa !62
  %i.rm = icmp ult i64 %i.rl, %.val
  br i1 %i.rm, label %bb.bn, label %._crit_edge556, !llvm.loop !54

bb.br:                                            ; preds = %bb.a, %._crit_edge556
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
