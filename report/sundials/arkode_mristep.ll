Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_TakeStepMERK:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1080
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph319, %._crit_edge314
  %indvars.iv341 = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next342, %._crit_edge314 ] ; 6 uses
  %i.dd = phi ptr [ %i.cg, %.lr.ph319 ], [ %i.jf, %._crit_edge314 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !160
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv341
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !35 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !76 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.dk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.0164306 = phi i32 [ %i.di, %.lr.ph.preheader ], [ %.0164., %bb.p ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !35 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %.0164. = tail call i32 @llvm.smin.i32(i32 %.0164306, i32 %i.dn) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.lr.ph, %bb.o
  %.0164.lcssa = phi i32 [ %i.di, %bb.o ], [ %.0164306, %.lr.ph ], [ %.0164., %bb.p ]
  %i.dp = load double, ptr %i.f, align 8, !tbaa !131 ; 2 uses
  %i.dq = load double, ptr %i.ck, align 8, !tbaa !133
  %i.dr = fadd double %i.dp, %i.dq
  %i.ds = tail call i32 @mriStep_ComputeInnerForcing(ptr noundef %0, ptr noundef %i.b, i32 noundef %.0164.lcssa, double noundef %i.dp, double noundef %i.dr) ; 2 uses
  %.not194 = icmp eq i32 %i.ds, 0
  br i1 %.not194, label %bb.q, label %.thread292

bb.q:                                             ; preds = %._crit_edge
  %.not195 = icmp eq i64 %indvars.iv341, 0
  br i1 %.not195, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !163
  %i.du = load ptr, ptr %i.cm, align 8, !tbaa !120
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dt, ptr noundef %i.du) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dv = load i32, ptr %i.cn, align 8, !tbaa !77 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph313.preheader, label %._crit_edge314

.lr.ph313.preheader:                              ; preds = %bb.s
  %i.dx = load double, ptr %i.f, align 8, !tbaa !131
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %bb.aw
  %indvars.iv338 = phi i64 [ 0, %.lr.ph313.preheader ], [ %indvars.iv.next339, %bb.aw ] ; 3 uses
  %i.dy = phi i32 [ %i.dv, %.lr.ph313.preheader ], [ %i.jc, %bb.aw ]
  %.0169311 = phi double [ %i.dx, %.lr.ph313.preheader ], [ %i.fh, %bb.aw ] ; 2 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !160
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv341
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !66
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv338 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !35 ; 7 uses
  store i32 %i.ef, ptr %i.g, align 4, !tbaa !113
  store i32 %i.ef, ptr %i.h, align 8, !tbaa !114
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %._crit_edge314, label %bb.t

bb.t:                                             ; preds = %.lr.ph313
  %i.eh = icmp slt i32 %i.ef, %i.dy               ; 2 uses
  br i1 %i.eh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !35
  %i.ek = icmp slt i32 %i.ej, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0170 = phi i1 [ %i.ek, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.em = load i32, ptr %i.el, align 8, !tbaa !159 ; 2 uses
  %i.en = add nsw i32 %i.em, -2
  %i.eo = zext i32 %i.en to i64
  %i.ep = icmp eq i64 %indvars.iv341, %i.eo
  %i.eq = select i1 %i.ep, i1 %.0170, i1 false    ; 4 uses
  %i.er = add nsw i32 %i.em, -1
  %i.es = zext i32 %i.er to i64
  %i.et = icmp eq i64 %indvars.iv341, %i.es
  %i.eu = select i1 %i.et, i1 %.0170, i1 false    ; 2 uses
  %i.ev = load i32, ptr %i.au, align 8, !tbaa !68
  %i.ew = icmp ne i32 %i.ev, 0
  %or.cond7 = and i1 %i.ew, %i.eq
  br i1 %or.cond7, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = load i32, ptr %i.co, align 8, !tbaa !69
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %._crit_edge314, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !132
  %i.fb = zext nneg i32 %i.ef to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.fe = phi double [ %i.fd, %bb.y ], [ 1.000000e+00, %bb.x ]
  %i.ff = load double, ptr %i.f, align 8, !tbaa !131
  %i.fg = load double, ptr %i.ck, align 8, !tbaa !133
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fg, double %i.ff) ; 6 uses
  %i.fi = icmp samesign ugt i32 %i.ef, 1
  %i.fj = icmp eq i64 %indvars.iv338, 0
  %or.cond9 = and i1 %i.fj, %i.fi
  %.pre345 = load ptr, ptr %i.cm, align 8, !tbaa !120 ; 3 uses
  br i1 %or.cond9, label %bb.aa, label %mriStepInnerStepper_Reset.exit219.thread273

bb.aa:                                            ; preds = %bb.z
  %i.fk = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 4 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %mriStepInnerStepper_Reset.exit219.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %mriStepInnerStepper_Reset.exit219.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !121 ; 2 uses
  %.not.i217 = icmp eq ptr %i.fq, null
  br i1 %.not.i217, label %mriStepInnerStepper_Reset.exit219.thread273, label %mriStepInnerStepper_Reset.exit219

mriStepInnerStepper_Reset.exit219:                ; preds = %bb.ac
  %i.fr = tail call i32 %i.fq(ptr noundef nonnull %i.fk, double noundef %.0169311, ptr noundef %.pre345) #14, !inline_history !122 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !106
  %.not197 = icmp eq i32 %i.fr, 0
  br i1 %.not197, label %mriStepInnerStepper_Reset.exit219.mriStepInnerStepper_Reset.exit219.thread273_crit_edge, label %mriStepInnerStepper_Reset.exit219.thread

mriStepInnerStepper_Reset.exit219.mriStepInnerStepper_Reset.exit219.thread273_crit_edge: ; preds = %mriStepInnerStepper_Reset.exit219
  %.pre344 = load ptr, ptr %i.cm, align 8, !tbaa !120
  br label %mriStepInnerStepper_Reset.exit219.thread273

mriStepInnerStepper_Reset.exit219.thread:         ; preds = %bb.aa, %bb.ab, %mriStepInnerStepper_Reset.exit219
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 3092, ptr noundef nonnull @__func__.mriStep_TakeStepMERK, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.thread292

mriStepInnerStepper_Reset.exit219.thread273:      ; preds = %mriStepInnerStepper_Reset.exit219.mriStepInnerStepper_Reset.exit219.thread273_crit_edge, %bb.ac, %bb.z
  %i.ft = phi ptr [ %.pre344, %mriStepInnerStepper_Reset.exit219.mriStepInnerStepper_Reset.exit219.thread273_crit_edge ], [ %.pre345, %bb.ac ], [ %.pre345, %bb.z ]
  %i.fu = xor i1 %i.eq, true
  %narrow = and i1 %.not199, %i.fu
  %i.fv = zext i1 %narrow to i32
  %i.fw = tail call i32 @mriStep_StageERKFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %.0169311, double noundef %i.fh, ptr noundef %i.ft, ptr poison, i32 noundef %i.fv) ; 2 uses
  %.not200 = icmp eq i32 %i.fw, 0
  br i1 %.not200, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %mriStepInnerStepper_Reset.exit219.thread273
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %.thread292

bb.ae:                                            ; preds = %mriStepInnerStepper_Reset.exit219.thread273
  store double %i.fh, ptr %i.cq, align 8, !tbaa !119
  %or.cond11 = or i1 %i.eu, %i.eq
  br i1 %or.cond11, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fx = load ptr, ptr %i.cr, align 8, !tbaa !134 ; 2 uses
  %.not201 = icmp eq ptr %i.fx, null
  br i1 %.not201, label %.thread290, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %3 = load ptr, ptr %i.cm, align 8, !tbaa !120
  %i.fy = load ptr, ptr %i.cs, align 8, !tbaa !109
  %i.fz = tail call i32 %i.fx(double noundef %i.fh, ptr noundef %3, ptr noundef %i.fy) #14
  %.not202 = icmp eq i32 %i.fz, 0
  br i1 %.not202, label %bb.ah, label %.thread292

bb.ah:                                            ; preds = %bb.ag
  %i.ga = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 4 uses
  %i.gb = load double, ptr %i.cq, align 8, !tbaa !119 ; 2 uses
  %i.gc = load ptr, ptr %i.cm, align 8, !tbaa !120
  %i.gd = icmp eq ptr %i.ga, null
  br i1 %i.gd, label %mriStepInnerStepper_Reset.exit222.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !55 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %mriStepInnerStepper_Reset.exit222.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !121 ; 2 uses
  %.not.i220 = icmp eq ptr %i.gi, null
  br i1 %.not.i220, label %.thread290, label %mriStepInnerStepper_Reset.exit222

mriStepInnerStepper_Reset.exit222:                ; preds = %bb.aj
  %i.gj = tail call i32 %i.gi(ptr noundef nonnull %i.ga, double noundef %i.gb, ptr noundef %i.gc) #14, !inline_history !122 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !106
  %.not203 = icmp eq i32 %i.gj, 0
  br i1 %.not203, label %mriStepInnerStepper_Reset.exit222..thread290_crit_edge, label %mriStepInnerStepper_Reset.exit222.thread

mriStepInnerStepper_Reset.exit222..thread290_crit_edge: ; preds = %mriStepInnerStepper_Reset.exit222
  %.pre348.pre = load double, ptr %i.cq, align 8, !tbaa !119
  br label %.thread290

mriStepInnerStepper_Reset.exit222.thread:         ; preds = %bb.ah, %bb.ai, %mriStepInnerStepper_Reset.exit222
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 3144, ptr noundef nonnull @__func__.mriStep_TakeStepMERK, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.thread292

bb.ak:                                            ; preds = %bb.ae
  br i1 %i.eu, label %bb.al, label %.thread286

bb.al:                                            ; preds = %bb.ak
  %i.gl = load ptr, ptr %i.dc, align 8, !tbaa !140 ; 2 uses
  %.not204 = icmp eq ptr %i.gl, null
  br i1 %.not204, label %.thread286, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gm = load ptr, ptr %i.cm, align 8, !tbaa !120
  %i.gn = load ptr, ptr %i.cs, align 8, !tbaa !109
  %i.go = tail call i32 %i.gl(double noundef %i.fh, ptr noundef %i.gm, ptr noundef %i.gn) #14
  %.not205 = icmp eq i32 %i.go, 0
  br i1 %.not205, label %bb.an, label %.thread292

bb.an:                                            ; preds = %bb.am
  %i.gp = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 4 uses
  %i.gq = load double, ptr %i.cq, align 8, !tbaa !119
  %i.gr = load ptr, ptr %i.cm, align 8, !tbaa !120
  %i.gs = icmp eq ptr %i.gp, null
  br i1 %i.gs, label %mriStepInnerStepper_Reset.exit225.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !55 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %mriStepInnerStepper_Reset.exit225.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !121 ; 2 uses
  %.not.i223 = icmp eq ptr %i.gx, null
  br i1 %.not.i223, label %.thread286, label %mriStepInnerStepper_Reset.exit225

mriStepInnerStepper_Reset.exit225:                ; preds = %bb.ap
  %i.gy = tail call i32 %i.gx(ptr noundef nonnull %i.gp, double noundef %i.gq, ptr noundef %i.gr) #14, !inline_history !122 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !106
  %.not206 = icmp eq i32 %i.gy, 0
  br i1 %.not206, label %.thread286, label %mriStepInnerStepper_Reset.exit225.thread

mriStepInnerStepper_Reset.exit225.thread:         ; preds = %bb.an, %bb.ao, %mriStepInnerStepper_Reset.exit225
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 3170, ptr noundef nonnull @__func__.mriStep_TakeStepMERK, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.thread292

.thread290:                                       ; preds = %bb.af, %mriStepInnerStepper_Reset.exit222..thread290_crit_edge, %bb.aj
  %.pre348.a = phi double [ %.pre348.pre, %mriStepInnerStepper_Reset.exit222..thread290_crit_edge ], [ %i.gb, %bb.aj ], [ %i.fh, %bb.af ] ; 2 uses
  %i.ha = load ptr, ptr %i.ct, align 8, !tbaa !108 ; 2 uses
  %.not207 = icmp eq ptr %i.ha, null
  %.pre350 = load ptr, ptr %i.cm, align 8, !tbaa !120 ; 2 uses
  br i1 %.not207, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread290
  %i.hb = load ptr, ptr %i.cs, align 8, !tbaa !109
  %i.hc = tail call i32 %i.ha(double noundef %.pre348.a, ptr noundef %.pre350, ptr noundef %i.hb) #14
  %.not208 = icmp eq i32 %i.hc, 0
  br i1 %.not208, label %._crit_edge346, label %.thread292

._crit_edge346:                                   ; preds = %bb.aq
  %.pre347 = load double, ptr %i.cq, align 8, !tbaa !119
  %.pre349.a = load ptr, ptr %i.cm, align 8, !tbaa !120
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge346, %.thread290
  %i.hd = phi ptr [ %.pre349.a, %._crit_edge346 ], [ %.pre350, %.thread290 ]
  %i.he = phi double [ %.pre347, %._crit_edge346 ], [ %.pre348.a, %.thread290 ]
  %i.hf = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.hg = load ptr, ptr %i.cu, align 8, !tbaa !96
  %i.hh = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !107
  %i.hk = load ptr, ptr %i.cs, align 8, !tbaa !109
  %i.hl = tail call i32 %i.hf(double noundef %i.he, ptr noundef %i.hd, ptr noundef %i.hj, ptr noundef %i.hk) #14 ; 2 uses
  %i.hm = load i64, ptr %i.cv, align 8, !tbaa !112
  %i.hn = add nsw i64 %i.hm, 1
  store i64 %i.hn, ptr %i.cv, align 8, !tbaa !112
  %i.ho = icmp slt i32 %i.hl, 0
  br i1 %i.ho, label %.thread292, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not209 = icmp eq i32 %i.hl, 0
  br i1 %.not209, label %bb.at, label %.thread292

bb.at:                                            ; preds = %bb.as
  %i.hp = load i32, ptr %i.bk, align 4, !tbaa !48
  %.not210 = icmp eq i32 %i.hp, 0
  br i1 %.not210, label %.thread286, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hq = load ptr, ptr %i.cw, align 8, !tbaa !43 ; 6 uses
  store double 1.000000e+00, ptr %i.hq, align 8, !tbaa !47
  %i.hr = load ptr, ptr %i.cu, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hh ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !107
  %i.hu = load ptr, ptr %i.cx, align 8, !tbaa !45 ; 6 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !107
  %i.hv = load double, ptr %i.cq, align 8, !tbaa !119
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store double 1.000000e+00, ptr %i.hw, align 8, !tbaa !47
  %i.hx = load ptr, ptr %i.cy, align 8, !tbaa !50 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !107
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !107
  %i.ia = load double, ptr %i.cz, align 8, !tbaa !136
  %i.ib = fsub double %i.hv, %i.ia
  %i.ic = load double, ptr %i.da, align 8, !tbaa !137
  %i.id = fdiv double %i.ib, %i.ic                ; 4 uses
  %i.ie = load i32, ptr %i.db, align 8, !tbaa !51 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %.lr.ph.i.preheader, label %mriStep_ApplyForcing.exit

.lr.ph.i.preheader:                               ; preds = %bb.au
  %narrow382 = add nuw i32 %i.ie, 1               ; 5 uses
  %i.ig = zext i32 %narrow382 to i64              ; 2 uses
  %xtraiter = and i64 %i.ig, 1
  %i.ih = icmp eq i32 %narrow382, 3
  br i1 %i.ih, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.ii = and i64 %i.ig, 4294967294
  %i.ij = add nsw i64 %i.ii, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv334 = phi i64 [ 2, %.lr.ph.i.preheader.new ], [ %indvars.iv.next335.1, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02425.i = phi double [ %i.id, %.lr.ph.i.preheader.new ], [ %i.iu, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv334
  store double %.02425.i, ptr %i.ik, align 8, !tbaa !47
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !107
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv334
  store ptr %i.im, ptr %i.in, align 8, !tbaa !107
  %i.io = fmul double %i.id, %.02425.i            ; 2 uses
  %indvars.iv.next335 = or disjoint i64 %indvars.iv334, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next335
  store double %i.io, ptr %i.ip, align 8, !tbaa !47
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !107
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next335
  store ptr %i.is, ptr %i.it, align 8, !tbaa !107
  %i.iu = fmul double %i.id, %i.io                ; 2 uses
  %indvars.iv.next335.1 = add nuw nsw i64 %indvars.iv334, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ij
  br i1 %niter.ncmp.1, label %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, label %.lr.ph.i

mriStep_ApplyForcing.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mriStep_ApplyForcing.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv334.epil.init = phi i64 [ 2, %.lr.ph.i.preheader ], [ %indvars.iv.next335.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %.02425.i.epil.init = phi double [ %i.id, %.lr.ph.i.preheader ], [ %i.iu, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %lcmp.mod416 = trunc i32 %narrow382 to i1
  tail call void @llvm.assume(i1 %lcmp.mod416)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv334.epil.init
  store double %.02425.i.epil.init, ptr %i.iv, align 8, !tbaa !47
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i.epil.init
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !107
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv334.epil.init
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !107
  br label %mriStep_ApplyForcing.exit

mriStep_ApplyForcing.exit:                        ; preds = %.lr.ph.i.epil.preheader, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %bb.au
  %.0251 = phi i32 [ 2, %bb.au ], [ %narrow382, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ], [ %narrow382, %.lr.ph.i.epil.preheader ]
  %i.iz = load ptr, ptr %i.hs, align 8, !tbaa !107
  %i.ja = tail call i32 @N_VLinearCombination(i32 noundef %.0251, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hu, ptr noundef %i.iz) #14 ; 0 uses
  br label %.thread286

.thread286:                                       ; preds = %bb.ap, %mriStepInnerStepper_Reset.exit225, %bb.al, %bb.ak, %bb.at, %mriStep_ApplyForcing.exit
  br i1 %i.eq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread286
  %i.jb = load ptr, ptr %i.cm, align 8, !tbaa !120
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.jb, ptr noundef %i.e) #14
  br label %bb.aw

bb.aw:                                            ; preds = %.thread286, %bb.av
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.jc = load i32, ptr %i.cn, align 8, !tbaa !77 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next339, %i.jd
  br i1 %i.je, label %.lr.ph313, label %._crit_edge314

._crit_edge314:                                   ; preds = %bb.aw, %.lr.ph313, %bb.w, %bb.s
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.jf = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !159
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next342, %i.ji
  br i1 %i.jj, label %bb.o, label %._crit_edge320

._crit_edge320:                                   ; preds = %._crit_edge314, %bb.n
  %i.jk = load i32, ptr %i.au, align 8, !tbaa !68
  %.not192 = icmp eq i32 %i.jk, 0
  br i1 %.not192, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge320
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !69
  %.not193 = icmp eq i32 %i.jm, 0
  br i1 %.not193, label %.thread292, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge320
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !120
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !141
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef -1.000000e+00, ptr noundef %i.jo, ptr noundef %i.jq) #14
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !141
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !97
  %i.ju = tail call double @N_VWrmsNorm(ptr noundef %i.jr, ptr noundef %i.jt) #14
  store double %i.ju, ptr %1, align 8, !tbaa !47
  br label %.thread292

.thread292:                                       ; preds = %._crit_edge, %bb.ar, %bb.aq, %bb.am, %bb.ag, %bb.as, %mriStepInnerStepper_Reset.exit225.thread, %bb.ad, %mriStepInnerStepper_Reset.exit219.thread, %mriStepInnerStepper_Reset.exit222.thread, %mriStep_AccessStepMem.exit, %bb.ax, %bb.ay, %bb.m, %.thread, %mriStepInnerStepper_Reset.exit.thread, %mriStepInnerStepper_SetRTol.exit.thread, %mriStepInnerStepper_ResetAccumulatedError.exit.thread
  %.2 = phi i32 [ -34, %mriStepInnerStepper_Reset.exit.thread ], [ -34, %mriStepInnerStepper_ResetAccumulatedError.exit.thread ], [ -34, %mriStepInnerStepper_SetRTol.exit.thread ], [ -21, %mriStep_AccessStepMem.exit ], [ 0, %bb.ax ], [ -8, %bb.m ], [ -8, %.thread ], [ 0, %bb.ay ], [ -8, %bb.ar ], [ -34, %mriStepInnerStepper_Reset.exit222.thread ], [ %i.fw, %bb.ad ], [ -34, %mriStepInnerStepper_Reset.exit219.thread ], [ -34, %mriStepInnerStepper_Reset.exit225.thread ], [ -11, %bb.as ], [ -38, %bb.ag ], [ -37, %bb.am ], [ -41, %bb.aq ], [ %i.ds, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @mriStep_TakeStepMRISR(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 49 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !35
  store double 0.000000e+00, ptr %1, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 324 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.l = tail call i32 @SUNAdaptController_GetType(ptr noundef %i.k) #14
  %.not245 = icmp eq i32 %i.l, 2                  ; 2 uses
  br i1 %.not245, label %bb.c, label %mriStepInnerStepper_SetRTol.exit.thread356

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %mriStepInnerStepper_ResetAccumulatedError.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mriStepInnerStepper_ResetAccumulatedError.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %mriStepInnerStepper_ResetAccumulatedError.exit.thread351.thread, label %mriStepInnerStepper_ResetAccumulatedError.exit

mriStepInnerStepper_ResetAccumulatedError.exit.thread351.thread: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.w = load double, ptr %i.v, align 8, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !116
  %i.z = fmul double %i.w, %i.y
  br label %bb.f

mriStepInnerStepper_ResetAccumulatedError.exit:   ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %i.o) #14, !inline_history !117 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !106
  %.not223 = icmp eq i32 %i.ac, 0
  br i1 %.not223, label %mriStepInnerStepper_ResetAccumulatedError.exit.thread351, label %mriStepInnerStepper_ResetAccumulatedError.exit.thread

mriStepInnerStepper_ResetAccumulatedError.exit.thread: ; preds = %bb.c, %bb.d, %mriStepInnerStepper_ResetAccumulatedError.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2417, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #14
  br label %.loopexit

mriStepInnerStepper_ResetAccumulatedError.exit.thread351: ; preds = %mriStepInnerStepper_ResetAccumulatedError.exit
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.af = load double, ptr %i.ae, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !116
  %i.ai = fmul double %i.af, %i.ah
  %i.aj = icmp eq ptr %.pre, null
  br i1 %i.aj, label %mriStepInnerStepper_SetRTol.exit.thread, label %bb.f

bb.f:                                             ; preds = %mriStepInnerStepper_ResetAccumulatedError.exit.thread351.thread, %mriStepInnerStepper_ResetAccumulatedError.exit.thread351
  %i.ak = phi double [ %i.z, %mriStepInnerStepper_ResetAccumulatedError.exit.thread351.thread ], [ %i.ai, %mriStepInnerStepper_ResetAccumulatedError.exit.thread351 ]
  %i.al = phi ptr [ %i.o, %mriStepInnerStepper_ResetAccumulatedError.exit.thread351.thread ], [ %.pre, %mriStepInnerStepper_ResetAccumulatedError.exit.thread351 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %mriStepInnerStepper_SetRTol.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 2 uses
  %.not.i275 = icmp eq ptr %i.aq, null
  br i1 %.not.i275, label %mriStepInnerStepper_SetRTol.exit.thread356, label %mriStepInnerStepper_SetRTol.exit

mriStepInnerStepper_SetRTol.exit:                 ; preds = %bb.g
  %i.ar = tail call i32 %i.aq(ptr noundef nonnull %i.al, double noundef %i.ak) #14, !inline_history !118 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !106
  %.not224 = icmp eq i32 %i.ar, 0
  br i1 %.not224, label %mriStepInnerStepper_SetRTol.exit.thread356, label %mriStepInnerStepper_SetRTol.exit.thread

mriStepInnerStepper_SetRTol.exit.thread:          ; preds = %mriStepInnerStepper_ResetAccumulatedError.exit.thread351, %bb.f, %mriStepInnerStepper_SetRTol.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2426, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #14
  br label %.loopexit

mriStepInnerStepper_SetRTol.exit.thread356:       ; preds = %bb.g, %mriStepInnerStepper_SetRTol.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68
  %.not225 = icmp eq i32 %i.au, 0
  br i1 %.not225, label %bb.h, label %mriStepInnerStepper_Reset.exit.thread361

bb.h:                                             ; preds = %mriStepInnerStepper_SetRTol.exit.thread356
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !119
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !120
  %i.bb = icmp eq ptr %i.aw, null
  br i1 %i.bb, label %mriStepInnerStepper_Reset.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %mriStepInnerStepper_Reset.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121 ; 2 uses
  %.not.i277 = icmp eq ptr %i.bg, null
  br i1 %.not.i277, label %mriStepInnerStepper_Reset.exit.thread361, label %mriStepInnerStepper_Reset.exit

mriStepInnerStepper_Reset.exit:                   ; preds = %bb.j
  %i.bh = tail call i32 %i.bg(ptr noundef nonnull %i.aw, double noundef %i.ay, ptr noundef %i.ba) #14, !inline_history !122 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !106
  %.not226 = icmp eq i32 %i.bh, 0
  br i1 %.not226, label %mriStepInnerStepper_Reset.exit.thread361, label %mriStepInnerStepper_Reset.exit.thread

mriStepInnerStepper_Reset.exit.thread:            ; preds = %bb.h, %bb.i, %mriStepInnerStepper_Reset.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2439, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

mriStepInnerStepper_Reset.exit.thread361:         ; preds = %bb.j, %mriStepInnerStepper_Reset.exit, %mriStepInnerStepper_SetRTol.exit.thread356
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %.not227 = icmp eq ptr %i.bk, null
  br i1 %.not227, label %bb.n, label %bb.k

bb.k:                                             ; preds = %mriStepInnerStepper_Reset.exit.thread361
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !127
  %.not228 = icmp eq ptr %i.bo, null
end_hunk_0
begin_hunk_1_@mriStep_TakeStepMRISR:bb.a
  br i1 %.not253, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store double %i.kj, ptr %i.et, align 8, !tbaa !150
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.kl = load double, ptr %i.et, align 8, !tbaa !150
  %i.km = fdiv double %i.kj, %i.kl
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.kn = phi double [ %i.km, %bb.ba ], [ 1.000000e+00, %bb.az ]
  store double %i.kn, ptr %i.eu, align 8, !tbaa !65
  %i.ko = load i32, ptr %2, align 4, !tbaa !35
  %i.kp = tail call i32 @mriStep_Nls(ptr noundef nonnull %0, i32 noundef %i.ko) #14 ; 2 uses
  store i32 %i.kp, ptr %2, align 4, !tbaa !35
  %.not255 = icmp eq i32 %i.kp, 0
  br i1 %.not255, label %bb.bd, label %.loopexit

bb.bc:                                            ; preds = %bb.aq
  %i.kq = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 8 uses
  store double 1.000000e+00, ptr %i.kq, align 8, !tbaa !47
  %i.kr = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.ks = load ptr, ptr %i.el, align 8, !tbaa !45 ; 8 uses
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !107
  %i.kt = load ptr, ptr %i.em, align 8, !tbaa !95 ; 6 uses
  %min.iters.check521 = icmp samesign ult i64 %indvars.iv422, 6
  br i1 %min.iters.check521, label %scalar.ph520.preheader, label %vector.memcheck502

vector.memcheck502:                               ; preds = %bb.bc
  %scevgep503.a = getelementptr nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %scevgep504.a = getelementptr i8, ptr %i.kq, i64 %i.fl ; 2 uses
  %scevgep505.a = getelementptr i8, ptr %i.hf, i64 %i.fm
  %scevgep506.a = getelementptr nuw i8, ptr %i.ks, i64 8
  %scevgep507.a = getelementptr i8, ptr %i.ks, i64 %i.fl
  %scevgep508 = getelementptr i8, ptr %i.kt, i64 %i.fm
  %bound0509 = icmp ult ptr %scevgep503.a, %scevgep487.a
  %bound1510 = icmp ult ptr %i.eh, %scevgep504.a
  %found.conflict511 = and i1 %bound0509, %bound1510
  %bound0512 = icmp ult ptr %scevgep503.a, %scevgep505.a
  %bound1513 = icmp ult ptr %i.hf, %scevgep504.a
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %found.conflict511, %found.conflict514
  %bound0516 = icmp ult ptr %scevgep506.a, %scevgep508
  %bound1517 = icmp ult ptr %i.kt, %scevgep507.a
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  br i1 %conflict.rdx519, label %scalar.ph520.preheader, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck502
  %n.vec523 = and i64 %indvars.iv422, 9223372036854775804 ; 3 uses
  %i.ku = load double, ptr %i.eh, align 8, !tbaa !133, !alias.scope !280
  %broadcast.splatinsert528 = insertelement <2 x double> poison, double %i.ku, i64 0
  %broadcast.splat529 = shufflevector <2 x double> %broadcast.splatinsert528, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next532, %vector.body524 ] ; 4 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index525 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load526.a = load <2 x double>, ptr %i.kv, align 8, !tbaa !47, !alias.scope !281
  %wide.load527 = load <2 x double>, ptr %i.kw, align 8, !tbaa !47, !alias.scope !281
  %i.kx = fmul <2 x double> %broadcast.splat529, %wide.load526.a
  %i.ky = fmul <2 x double> %broadcast.splat529, %wide.load527
  %i.kz = or disjoint i64 %index525, 1            ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <2 x double> %i.kx, ptr %i.la, align 8, !tbaa !47, !alias.scope !282, !noalias !283
  store <2 x double> %i.ky, ptr %i.lb, align 8, !tbaa !47, !alias.scope !282, !noalias !283
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index525 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load530.a = load <2 x ptr>, ptr %i.lc, align 8, !tbaa !107, !alias.scope !284
  %wide.load531 = load <2 x ptr>, ptr %i.ld, align 8, !tbaa !107, !alias.scope !284
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kz ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x ptr> %wide.load530.a, ptr %i.le, align 8, !tbaa !107, !alias.scope !285, !noalias !284
  store <2 x ptr> %wide.load531, ptr %i.lf, align 8, !tbaa !107, !alias.scope !285, !noalias !284
  %index.next532 = add nuw i64 %index525, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next532, %n.vec523
  br i1 %i.lg, label %middle.block533, label %vector.body524, !llvm.loop !272

middle.block533:                                  ; preds = %vector.body524
  %cmp.n534 = icmp eq i64 %indvars.iv422, %n.vec523
  br i1 %cmp.n534, label %.loopexit537, label %scalar.ph520.preheader

scalar.ph520.preheader:                           ; preds = %vector.memcheck502, %bb.bc, %middle.block533
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck502 ], [ 0, %bb.bc ], [ %n.vec523, %middle.block533 ] ; 5 uses
  %xtraiter = and i64 %indvars.iv422, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph520.prol.loopexit, label %scalar.ph520.prol

scalar.ph520.prol:                                ; preds = %scalar.ph520.preheader
  %i.lh = load double, ptr %i.eh, align 8, !tbaa !133
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.ph
  %i.lj = load double, ptr %i.li, align 8, !tbaa !47
  %i.lk = fmul double %i.lh, %i.lj
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 3 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.next.prol
  store double %i.lk, ptr %i.ll, align 8, !tbaa !47
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.ph
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !107
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next.prol
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !107
  br label %scalar.ph520.prol.loopexit

scalar.ph520.prol.loopexit:                       ; preds = %scalar.ph520.prol, %scalar.ph520.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph520.preheader ], [ %indvars.iv.next.prol, %scalar.ph520.prol ]
  %i.lp = icmp eq i64 %indvar, %indvars.iv.ph
  br i1 %i.lp, label %.loopexit537, label %scalar.ph520

scalar.ph520:                                     ; preds = %scalar.ph520.prol.loopexit, %scalar.ph520
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph520 ], [ %indvars.iv.unr, %scalar.ph520.prol.loopexit ] ; 4 uses
  %i.lq = load double, ptr %i.eh, align 8, !tbaa !133
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !47
  %i.lt = fmul double %i.lq, %i.ls
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.next
  store double %i.lt, ptr %i.lu, align 8, !tbaa !47
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !107
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !107
  %i.ly = load double, ptr %i.eh, align 8, !tbaa !133
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !47
  %i.mb = fmul double %i.ly, %i.ma
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.next.1
  store double %i.mb, ptr %i.mc, align 8, !tbaa !47
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !107
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next.1
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !107
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv422
  br i1 %exitcond.not.1, label %.loopexit537, label %scalar.ph520, !llvm.loop !273

.loopexit537:                                     ; preds = %scalar.ph520.prol.loopexit, %scalar.ph520, %middle.block533
  %i.mg = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.mh = trunc i64 %indvars.iv422 to i32
  %i.mi = add i32 %i.mh, 1
  %i.mj = tail call i32 @N_VLinearCombination(i32 noundef %i.mi, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.ks, ptr noundef %i.mg) #14
  %.not248 = icmp eq i32 %i.mj, 0
  br i1 %.not248, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bb, %.loopexit537, %bb.ap
  %.0205.shrunk = phi i1 [ true, %bb.bb ], [ false, %.loopexit537 ], [ false, %bb.ap ] ; 2 uses
  %or.cond5 = or i1 %i.fv, %i.ft
  br i1 %or.cond5, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mk = load ptr, ptr %i.ev, align 8, !tbaa !134 ; 2 uses
  %.not256 = icmp eq ptr %i.mk, null
  br i1 %.not256, label %.thread387.a, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ml = load double, ptr %i.ei, align 8, !tbaa !119
  %i.mm = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.mn = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.mo = tail call i32 %i.mk(double noundef %i.ml, ptr noundef %i.mm, ptr noundef %i.mn) #14
  %.not257 = icmp eq i32 %i.mo, 0
  br i1 %.not257, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.mp = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.mq = load double, ptr %i.ei, align 8, !tbaa !119
  %i.mr = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.ms = icmp eq ptr %i.mp, null
  br i1 %i.ms, label %mriStepInnerStepper_Reset.exit284.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !55 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %mriStepInnerStepper_Reset.exit284.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !121 ; 2 uses
  %.not.i282 = icmp eq ptr %i.mx, null
  br i1 %.not.i282, label %.thread387.a, label %mriStepInnerStepper_Reset.exit284

mriStepInnerStepper_Reset.exit284:                ; preds = %bb.bi
  %i.my = tail call i32 %i.mx(ptr noundef nonnull %i.mp, double noundef %i.mq, ptr noundef %i.mr) #14, !inline_history !122 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 48
  store i32 %i.my, ptr %i.mz, align 8, !tbaa !106
  %.not258 = icmp eq i32 %i.my, 0
  br i1 %.not258, label %.thread387.a, label %mriStepInnerStepper_Reset.exit284.thread

mriStepInnerStepper_Reset.exit284.thread:         ; preds = %bb.bg, %bb.bh, %mriStepInnerStepper_Reset.exit284
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2706, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bd
  br i1 %i.ft, label %bb.bk, label %.thread393

bb.bk:                                            ; preds = %bb.bj
  %i.na = load ptr, ptr %i.fj, align 8, !tbaa !140 ; 2 uses
  %.not259 = icmp eq ptr %i.na, null
  br i1 %.not259, label %.thread392, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nb = load double, ptr %i.ei, align 8, !tbaa !119
  %3 = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.nc = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.nd = tail call i32 %i.na(double noundef %i.nb, ptr noundef %3, ptr noundef %i.nc) #14
  %.not260 = icmp eq i32 %i.nd, 0
  br i1 %.not260, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.ne = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.nf = load double, ptr %i.ei, align 8, !tbaa !119
  %i.ng = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.nh = icmp eq ptr %i.ne, null
  br i1 %i.nh, label %mriStepInnerStepper_Reset.exit287.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !55 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %mriStepInnerStepper_Reset.exit287.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !121 ; 2 uses
  %.not.i285 = icmp eq ptr %i.nm, null
  br i1 %.not.i285, label %.thread392, label %mriStepInnerStepper_Reset.exit287

mriStepInnerStepper_Reset.exit287:                ; preds = %bb.bo
  %i.nn = tail call i32 %i.nm(ptr noundef nonnull %i.ne, double noundef %i.nf, ptr noundef %i.ng) #14, !inline_history !122 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  store i32 %i.nn, ptr %i.no, align 8, !tbaa !106
  %.not261 = icmp eq i32 %i.nn, 0
  br i1 %.not261, label %.thread392, label %mriStepInnerStepper_Reset.exit287.thread

mriStepInnerStepper_Reset.exit287.thread:         ; preds = %bb.bm, %bb.bn, %mriStepInnerStepper_Reset.exit287
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2727, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

.thread387.a:                                     ; preds = %bb.bi, %mriStepInnerStepper_Reset.exit284, %bb.be
  %i.np = load ptr, ptr %i.ew, align 8, !tbaa !108 ; 2 uses
  %.not262 = icmp eq ptr %i.np, null
  br i1 %.not262, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %.thread387.a
  %i.nq = load i32, ptr %i.ex, align 8, !tbaa !90
  %.not263 = icmp eq i32 %i.nq, 0
  br i1 %.not263, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.nr = load i32, ptr %i.dh, align 4, !tbaa !63
  %.not264 = icmp eq i32 %i.nr, 0
  br i1 %.not264, label %.thread393, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ns = load i32, ptr %i.ey, align 8, !tbaa !135
  %i.nt = icmp ne i32 %i.ns, 0
  %or.cond9 = and i1 %.0205.shrunk, %i.nt
  br i1 %or.cond9, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.nu = load double, ptr %i.ei, align 8, !tbaa !119
  %i.nv = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.nw = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.nx = tail call i32 %i.np(double noundef %i.nu, ptr noundef %i.nv, ptr noundef %i.nw) #14
  %.not265 = icmp eq i32 %i.nx, 0
  br i1 %.not265, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.br, %bb.bs, %.thread387.a
  %.pr389 = load i32, ptr %i.dh, align 4, !tbaa !63
  %.not266 = icmp eq i32 %.pr389, 0
  br i1 %.not266, label %.thread390.a, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ny = load i32, ptr %i.ey, align 8, !tbaa !135
  %i.nz = icmp ne i32 %i.ny, 0
  %or.cond11 = and i1 %.0205.shrunk, %i.nz
  br i1 %or.cond11, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oa = load ptr, ptr %i.ez, align 8, !tbaa !32
  %i.ob = load double, ptr %i.ei, align 8, !tbaa !119
  %i.oc = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.od = load ptr, ptr %i.em, align 8, !tbaa !95
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv422
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !107
  %i.og = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.oh = tail call i32 %i.oa(double noundef %i.ob, ptr noundef %i.oc, ptr noundef %i.of, ptr noundef %i.og) #14 ; 2 uses
  %i.oi = load i64, ptr %i.fa, align 8, !tbaa !111
  %i.oj = add nsw i64 %i.oi, 1
  store i64 %i.oj, ptr %i.fa, align 8, !tbaa !111
  %i.ok = icmp slt i32 %i.oh, 0
  br i1 %i.ok, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not267 = icmp eq i32 %i.oh, 0
  br i1 %.not267, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.ol = load i32, ptr %i.fb, align 8, !tbaa !49
  %.not268 = icmp eq i32 %i.ol, 0
  br i1 %.not268, label %.thread390.a, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.om = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 6 uses
  store double 1.000000e+00, ptr %i.om, align 8, !tbaa !47
  %i.on = load ptr, ptr %i.em, align 8, !tbaa !95
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv422 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !107
  %i.oq = load ptr, ptr %i.el, align 8, !tbaa !45 ; 6 uses
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !107
  %i.or = load double, ptr %i.ei, align 8, !tbaa !119
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store double 1.000000e+00, ptr %i.os, align 8, !tbaa !47
  %i.ot = load ptr, ptr %i.fc, align 8, !tbaa !50 ; 4 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !107
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !107
  %i.ow = load double, ptr %i.fd, align 8, !tbaa !136
  %i.ox = fsub double %i.or, %i.ow
  %i.oy = load double, ptr %i.fe, align 8, !tbaa !137
  %i.oz = fdiv double %i.ox, %i.oy                ; 4 uses
  %i.pa = load i32, ptr %i.ff, align 8, !tbaa !51 ; 2 uses
  %i.pb = icmp sgt i32 %i.pa, 1
  br i1 %i.pb, label %.lr.ph.i.preheader, label %mriStep_ApplyForcing.exit

.lr.ph.i.preheader:                               ; preds = %bb.by
  %narrow472.a = add nuw i32 %i.pa, 1             ; 5 uses
  %i.pc = zext i32 %narrow472.a to i64            ; 2 uses
  %xtraiter543 = and i64 %i.pc, 1
  %i.pd = icmp eq i32 %narrow472.a, 3
  br i1 %i.pd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.pe = and i64 %i.pc, 4294967294
  %i.pf = add nsw i64 %i.pe, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv414 = phi i64 [ 2, %.lr.ph.i.preheader.new ], [ %indvars.iv.next415.1, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02425.i = phi double [ %i.oz, %.lr.ph.i.preheader.new ], [ %i.pq, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv414
  store double %.02425.i, ptr %i.pg, align 8, !tbaa !47
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.i
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !107
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv414
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !107
  %i.pk = fmul double %i.oz, %.02425.i            ; 2 uses
  %indvars.iv.next415 = or disjoint i64 %indvars.iv414, 1 ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv.next415
  store double %i.pk, ptr %i.pl, align 8, !tbaa !47
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !107
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv.next415
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !107
  %i.pq = fmul double %i.oz, %i.pk                ; 2 uses
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.pf
  br i1 %niter.ncmp.1, label %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, label %.lr.ph.i

mriStep_ApplyForcing.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %mriStep_ApplyForcing.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv414.epil.init = phi i64 [ 2, %.lr.ph.i.preheader ], [ %indvars.iv.next415.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %.02425.i.epil.init = phi double [ %i.oz, %.lr.ph.i.preheader ], [ %i.pq, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %lcmp.mod545 = trunc i32 %narrow472.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv414.epil.init
  store double %.02425.i.epil.init, ptr %i.pr, align 8, !tbaa !47
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.i.epil.init
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !107
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv414.epil.init
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !107
  br label %mriStep_ApplyForcing.exit

mriStep_ApplyForcing.exit:                        ; preds = %.lr.ph.i.epil.preheader, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %bb.by
  %.0 = phi i32 [ 2, %bb.by ], [ %narrow472.a, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ], [ %narrow472.a, %.lr.ph.i.epil.preheader ]
  %i.pv = load ptr, ptr %i.oo, align 8, !tbaa !107
  %i.pw = tail call i32 @N_VLinearCombination(i32 noundef %.0, ptr noundef nonnull %i.om, ptr noundef nonnull %i.oq, ptr noundef %i.pv) #14 ; 0 uses
  br label %.thread390.a

bb.bz:                                            ; preds = %bb.bu
  %i.px = load double, ptr %i.er, align 8, !tbaa !64
  %i.py = load ptr, ptr %i.fg, align 8, !tbaa !138
  %i.pz = insertelement <2 x double> poison, double %i.px, i64 0
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.qa ; 2 uses
  %i.qc = load ptr, ptr %i.eq, align 8, !tbaa !110
  %i.qd = load ptr, ptr %i.em, align 8, !tbaa !95
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv422
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !107
  %i.qg = extractelement <2 x double> %i.qb, i64 0
  %i.qh = extractelement <2 x double> %i.qb, i64 1
  tail call void @N_VLinearSum(double noundef %i.qg, ptr noundef %i.py, double noundef %i.qh, ptr noundef %i.qc, ptr noundef %i.qf) #14
  br label %.thread390.a

.thread390.a:                                     ; preds = %bb.bz, %mriStep_ApplyForcing.exit, %bb.bx, %bb.bt
  %.pr474 = load i32, ptr %i.ex, align 8, !tbaa !90
  %.not269 = icmp eq i32 %.pr474, 0
  br i1 %.not269, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %.thread390.a
  %i.qi = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.qj = load double, ptr %i.ei, align 8, !tbaa !119
  %i.qk = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.ql = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv422
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !107
  %i.qo = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.qp = tail call i32 %i.qi(double noundef %i.qj, ptr noundef %i.qk, ptr noundef %i.qn, ptr noundef %i.qo) #14 ; 2 uses
  %i.qq = load i64, ptr %i.fi, align 8, !tbaa !112
  %i.qr = add nsw i64 %i.qq, 1
  store i64 %i.qr, ptr %i.fi, align 8, !tbaa !112
  %i.qs = icmp slt i32 %i.qp, 0
  br i1 %i.qs, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not270 = icmp eq i32 %i.qp, 0
  br i1 %.not270, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.qt = load i32, ptr %i.bv, align 4, !tbaa !48
  %.not271 = icmp eq i32 %i.qt, 0
  br i1 %.not271, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qu = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 6 uses
  store double 1.000000e+00, ptr %i.qu, align 8, !tbaa !47
  %i.qv = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv422 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !107
  %i.qy = load ptr, ptr %i.el, align 8, !tbaa !45 ; 6 uses
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !107
  %i.qz = load double, ptr %i.ei, align 8, !tbaa !119
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store double 1.000000e+00, ptr %i.ra, align 8, !tbaa !47
  %i.rb = load ptr, ptr %i.fc, align 8, !tbaa !50 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !107
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !107
  %i.re = load double, ptr %i.fd, align 8, !tbaa !136
  %i.rf = fsub double %i.qz, %i.re
  %i.rg = load double, ptr %i.fe, align 8, !tbaa !137
  %i.rh = fdiv double %i.rf, %i.rg                ; 4 uses
  %i.ri = load i32, ptr %i.ff, align 8, !tbaa !51 ; 2 uses
  %i.rj = icmp sgt i32 %i.ri, 1
  br i1 %i.rj, label %.lr.ph.i288.preheader, label %mriStep_ApplyForcing.exit292

.lr.ph.i288.preheader:                            ; preds = %bb.cd
  %narrow473 = add nuw i32 %i.ri, 1               ; 5 uses
  %i.rk = zext i32 %narrow473 to i64              ; 2 uses
  %xtraiter546 = and i64 %i.rk, 1
  %i.rl = icmp eq i32 %narrow473, 3
  br i1 %i.rl, label %.lr.ph.i288.epil.preheader, label %.lr.ph.i288.preheader.new

.lr.ph.i288.preheader.new:                        ; preds = %.lr.ph.i288.preheader
  %i.rm = and i64 %i.rk, 4294967294
  %i.rn = add nsw i64 %i.rm, -4
  br label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %.lr.ph.i288, %.lr.ph.i288.preheader.new
  %indvars.iv418 = phi i64 [ 2, %.lr.ph.i288.preheader.new ], [ %indvars.iv.next419.1, %.lr.ph.i288 ] ; 4 uses
  %indvars.iv.i289 = phi i64 [ 1, %.lr.ph.i288.preheader.new ], [ %indvars.iv.next.i291.1, %.lr.ph.i288 ] ; 3 uses
  %.02425.i290 = phi double [ %i.rh, %.lr.ph.i288.preheader.new ], [ %i.ry, %.lr.ph.i288 ] ; 2 uses
  %niter550 = phi i64 [ 0, %.lr.ph.i288.preheader.new ], [ %niter550.next.1, %.lr.ph.i288 ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv418
  store double %.02425.i290, ptr %i.ro, align 8, !tbaa !47
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i289
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !107
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv418
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !107
  %i.rs = fmul double %i.rh, %.02425.i290         ; 2 uses
  %indvars.iv.next419 = or disjoint i64 %indvars.iv418, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.next419
  store double %i.rs, ptr %i.rt, align 8, !tbaa !47
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i289
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !107
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv.next419
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !107
  %i.ry = fmul double %i.rh, %i.rs                ; 2 uses
  %indvars.iv.next419.1 = add nuw nsw i64 %indvars.iv418, 2 ; 2 uses
  %indvars.iv.next.i291.1 = add nuw nsw i64 %indvars.iv.i289, 2 ; 2 uses
  %niter550.next.1 = add nuw i64 %niter550, 2
  %niter550.ncmp.1 = icmp eq i64 %niter550, %i.rn
  br i1 %niter550.ncmp.1, label %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa, label %.lr.ph.i288

mriStep_ApplyForcing.exit292.loopexit.unr-lcssa:  ; preds = %.lr.ph.i288
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %mriStep_ApplyForcing.exit292, label %.lr.ph.i288.epil.preheader

.lr.ph.i288.epil.preheader:                       ; preds = %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa, %.lr.ph.i288.preheader
  %indvars.iv418.epil.init = phi i64 [ 2, %.lr.ph.i288.preheader ], [ %indvars.iv.next419.1, %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i289.epil.init = phi i64 [ 1, %.lr.ph.i288.preheader ], [ %indvars.iv.next.i291.1, %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa ]
  %.02425.i290.epil.init = phi double [ %i.rh, %.lr.ph.i288.preheader ], [ %i.ry, %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa ]
  %lcmp.mod548 = trunc i32 %narrow473 to i1
  tail call void @llvm.assume(i1 %lcmp.mod548)
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv418.epil.init
  store double %.02425.i290.epil.init, ptr %i.rz, align 8, !tbaa !47
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i289.epil.init
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !107
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv418.epil.init
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !107
  br label %mriStep_ApplyForcing.exit292

mriStep_ApplyForcing.exit292:                     ; preds = %.lr.ph.i288.epil.preheader, %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa, %bb.cd
  %.1345 = phi i32 [ 2, %bb.cd ], [ %narrow473, %mriStep_ApplyForcing.exit292.loopexit.unr-lcssa ], [ %narrow473, %.lr.ph.i288.epil.preheader ]
  %i.sd = load ptr, ptr %i.qw, align 8, !tbaa !107
  %i.se = tail call i32 @N_VLinearCombination(i32 noundef %.1345, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.qy, ptr noundef %i.sd) #14 ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %mriStep_ApplyForcing.exit292, %.thread390.a
  %.pr477 = load i32, ptr %i.dh, align 4, !tbaa !63
  %.not272 = icmp eq i32 %.pr477, 0
  br i1 %.not272, label %.thread393, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sf = load i32, ptr %i.ex, align 8, !tbaa !90
  %.not273 = icmp eq i32 %i.sf, 0
  br i1 %.not273, label %.thread393, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sg = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %indvars.iv422
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !107 ; 2 uses
  %i.sj = load ptr, ptr %i.em, align 8, !tbaa !95
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv422
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !107
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.si, double noundef 1.000000e+00, ptr noundef %i.sl, ptr noundef %i.si) #14
  br label %.thread393

.thread392:                                       ; preds = %bb.bk, %mriStepInnerStepper_Reset.exit287, %bb.bo
  %4 = load ptr, ptr %i.ee, align 8, !tbaa !120
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %i.e) #14
  br label %.thread393

.thread393:                                       ; preds = %bb.bq, %bb.cg, %bb.cf, %bb.ce, %bb.bj, %.thread392
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond426.not, label %._crit_edge.loopexit, label %bb.af

._crit_edge.loopexit:                             ; preds = %.thread393
  %.pre433 = load i32, ptr %i.at, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %i.sm = phi i32 [ %.pre433, %._crit_edge.loopexit ], [ %i.dr, %bb.ae ]
  %.not240 = icmp eq i32 %i.sm, 0
  br i1 %.not240, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !69
  %.not241 = icmp eq i32 %i.so, 0
  br i1 %.not241, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !120
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !141
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef -1.000000e+00, ptr noundef %i.sq, ptr noundef %i.ss) #14
  %i.st = load ptr, ptr %i.sr, align 8, !tbaa !141
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !97
  %i.sw = tail call double @N_VWrmsNorm(ptr noundef %i.st, ptr noundef %i.sv) #14
  store double %i.sw, ptr %1, align 8, !tbaa !47
  %i.sx = load ptr, ptr %i.sp, align 8, !tbaa !120
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %i.sx) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cb, %bb.ca, %bb.bw, %bb.bv, %bb.bs, %bb.bl, %bb.bf, %.loopexit537, %bb.bb, %.loopexit536.a, %bb.aw, %bb.av, %bb.at, %bb.aj, %mriStep_AccessStepMem.exit, %bb.ch, %bb.ci, %bb.w, %bb.p, %bb.m, %bb.l, %mriStepInnerStepper_Reset.exit287.thread, %mriStepInnerStepper_Reset.exit284.thread, %bb.ao, %mriStepInnerStepper_Reset.exit281.thread, %mriStepInnerStepper_Reset.exit.thread, %mriStepInnerStepper_SetRTol.exit.thread, %mriStepInnerStepper_ResetAccumulatedError.exit.thread
  %.0208 = phi i32 [ -34, %mriStepInnerStepper_Reset.exit.thread ], [ -34, %mriStepInnerStepper_ResetAccumulatedError.exit.thread ], [ -34, %mriStepInnerStepper_SetRTol.exit.thread ], [ -21, %mriStep_AccessStepMem.exit ], [ -30, %bb.l ], [ -31, %bb.m ], [ -8, %bb.w ], [ -34, %mriStepInnerStepper_Reset.exit281.thread ], [ %i.gy, %bb.ao ], [ 0, %bb.ci ], [ -34, %mriStepInnerStepper_Reset.exit287.thread ], [ 0, %bb.ch ], [ -8, %bb.p ], [ -34, %mriStepInnerStepper_Reset.exit284.thread ], [ -11, %bb.cb ], [ 5, %bb.bb ], [ -28, %.loopexit537 ], [ -8, %bb.bv ], [ -41, %bb.bs ], [ -8, %bb.ca ], [ -11, %bb.bw ], [ -37, %bb.bl ], [ -38, %bb.bf ], [ -28, %.loopexit536.a ], [ 5, %bb.aw ], [ -42, %bb.av ], [ %i.ho, %bb.at ], [ %i.gj, %bb.aj ]
  ret i32 %.0208
}

declare i32 @mriStepCoupling_GetStageMap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mriStepCoupling_GetStageType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @arkAllocVecArray(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkAllocVec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @mriStepInnerStepper_AllocVecs(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %mriStepInnerStepper_FreeVecs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @N_VSpace(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %.pre = load i64, ptr %i.a, align 8, !tbaa !36
  %.pre48 = load i64, ptr %i.b, align 8, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !36
  store i64 0, ptr %i.b, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ 0, %bb.d ], [ %.pre48, %bb.c ] ; 3 uses
  %i.i = phi i64 [ 0, %bb.d ], [ %.pre, %bb.c ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store i64 %i.h, ptr %i.k, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 %1, ptr %i.l, align 8, !tbaa !151
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !148  ; 4 uses
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @arkFreeVecArray(i32 noundef %i.n, ptr noundef nonnull %i.p, i64 noundef %i.i, ptr noundef nonnull %i.q, i64 noundef %i.h, ptr noundef nonnull %i.r) #14
  %.pre49 = load i32, ptr %i.l, align 8, !tbaa !151
  %.pre50 = load i64, ptr %i.j, align 8, !tbaa !166
  %.pre51 = load i64, ptr %i.k, align 8, !tbaa !167
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i64 [ %.pre51, %bb.g ], [ %i.h, %bb.f ]
  %i.t = phi i64 [ %.pre50, %bb.g ], [ %i.i, %bb.f ]
  %i.u = phi i32 [ %.pre49, %bb.g ], [ %1, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = call i32 @arkAllocVecArray(i32 noundef %i.u, ptr noundef nonnull %2, ptr noundef nonnull %i.v, i64 noundef %i.t, ptr noundef nonnull %i.w, i64 noundef %i.s, ptr noundef nonnull %i.x) #14
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.m, align 4, !tbaa !148
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !166
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !167
  call void @arkFreeVecArray(i32 noundef %i.z, ptr noundef nonnull %i.v, i64 noundef %i.aa, ptr noundef nonnull %i.w, i64 noundef %i.ab, ptr noundef nonnull %i.x) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ad) #14
  store ptr null, ptr %i.ac, align 8, !tbaa !168
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !169 ; 2 uses
  %.not16.i = icmp eq ptr %i.af, null
  br i1 %.not16.i, label %mriStepInnerStepper_FreeVecs.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.af) #14
  store ptr null, ptr %i.ae, align 8, !tbaa !169
  br label %mriStepInnerStepper_FreeVecs.exit

bb.m:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !151 ; 2 uses
  store i32 %i.ag, ptr %i.m, align 4, !tbaa !148
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.m ], [ %i.n, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !168
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %1, 1
  %i.am = sext i32 %i.al to i64
  %i.an = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 8) #15 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !168
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i64, ptr %i.k, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @arkFreeVecArray(i32 noundef %i.ah, ptr noundef nonnull %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.ar, i64 noundef %i.as, ptr noundef nonnull %i.at) #14
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !168 ; 2 uses
  %.not.i40 = icmp eq ptr %i.au, null
  br i1 %.not.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.au) #14
  store ptr null, ptr %i.ai, align 8, !tbaa !168
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !169 ; 2 uses
  %.not16.i41 = icmp eq ptr %i.aw, null
  br i1 %.not16.i41, label %mriStepInnerStepper_FreeVecs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.aw) #14
  store ptr null, ptr %i.av, align 8, !tbaa !169
  br label %mriStepInnerStepper_FreeVecs.exit

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.u, label %mriStepInnerStepper_FreeVecs.exit

bb.u:                                             ; preds = %bb.t
  %i.ba = add nsw i32 %1, 1
end_hunk_1
