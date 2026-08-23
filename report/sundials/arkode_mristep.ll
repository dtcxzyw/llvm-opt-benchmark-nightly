Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_TakeStepMRISR:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !181
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !184
  %.not228 = icmp eq ptr %i.bo, null
  br i1 %.not228, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !186
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.bq) #14
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !82
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !186
  %i.bt = tail call i32 @SUNNonlinSolSetup(ptr noundef %i.br, ptr noundef %i.bs, ptr noundef nonnull %0) #14 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not229 = icmp eq i32 %i.bt, 0
  br i1 %.not229, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.m, %mriStepInnerStepper_Reset.exit.thread361
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !94
  %.not230 = icmp eq i32 %i.bw, 0
  br i1 %.not230, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !95
  %i.ca = icmp ne i32 %i.bz, 0                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  %or.cond = select i1 %i.cd, i1 true, i1 %i.ca
  br i1 %or.cond, label %bb.p, label %.thread365

bb.p:                                             ; preds = %.thread, %bb.o
  %i.ce = phi ptr [ %i.bx, %.thread ], [ %i.cb, %bb.o ] ; 2 uses
  %i.cf = phi i1 [ true, %.thread ], [ %i.ca, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !177
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !178
  %i.ck = tail call i32 @mriStep_UpdateF0(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.ch, ptr noundef %i.cj, i32 noundef 0)
  %.not231 = icmp eq i32 %i.ck, 0
  br i1 %.not231, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !187 ; 4 uses
  %i.cm = icmp ne ptr %i.cl, null
  %or.cond3 = select i1 %i.cm, i1 %i.cf, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !110
  %.not232 = icmp eq i32 %i.co, 0
  br i1 %.not232, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !143
  %.not233 = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !164 ; 2 uses
  br i1 %.not233, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !164
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ct, double noundef 1.000000e+00, ptr noundef %i.cw, ptr noundef nonnull %i.cl) #14
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ct, ptr noundef nonnull %i.cl) #14
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.u, %bb.r
  %.pr = load ptr, ptr %i.ce, align 8, !tbaa !187
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.q
  %i.cx = phi ptr [ %.pr, %thread-pre-split ], [ %i.cl, %bb.q ] ; 2 uses
  %.not234 = icmp eq ptr %i.cx, null
  br i1 %.not234, label %bb.x, label %.thread365

.thread365:                                       ; preds = %bb.o, %bb.v
  %i.cy = phi ptr [ %i.cx, %bb.v ], [ %i.cc, %bb.o ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !188
  %.not235 = icmp eq i32 %i.da, 0
  br i1 %.not235, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread365
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.dc = load double, ptr %i.db, align 8, !tbaa !177
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !178
  %i.df = tail call i32 @mriStep_FullRHS(ptr noundef nonnull %0, double noundef %i.dc, ptr noundef %i.de, ptr noundef nonnull %i.cy, i32 noundef 0)
  %.not236 = icmp eq i32 %i.df, 0
  br i1 %.not236, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %.thread365, %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 1, ptr %i.dg, align 8, !tbaa !188
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !110
  %.not237 = icmp eq i32 %i.di, 0
  br i1 %.not237, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !143
  %.not238 = icmp eq i32 %i.dk, 0
  br i1 %.not238, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !149
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !164 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !164
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dn, double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.dn) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dr = load i32, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %.not239 = icmp eq i32 %i.dr, 0
  br i1 %.not239, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !117
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !128
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !128
  %i.dz = add nsw i32 %i.dy, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ea = phi i32 [ %i.dw, %bb.ac ], [ %i.dz, %bb.ad ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.eh = getelementptr i8, ptr %0, i64 736       ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %wide.trip.count425 = zext nneg i32 %i.ea to i64
  %scevgep487 = getelementptr i8, ptr %0, i64 744 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.thread393
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.thread393 ] ; 5 uses
  %indvars.iv422 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next423, %.thread393 ] ; 33 uses
  %i.fk = shl nuw nsw i64 %indvar, 3
  %i.fl = add nuw i64 %i.fk, 16                   ; 2 uses
  %3 = shl nuw nsw i64 %indvars.iv422, 3          ; 2 uses
  %i.fm = shl nuw nsw i64 %indvar, 3
  %i.fn = add nuw i64 %i.fm, 24                   ; 2 uses
  %4 = shl nuw nsw i64 %indvars.iv422, 3          ; 2 uses
  %i.fo = load i32, ptr %i.ec, align 8, !tbaa !128 ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp eq i64 %indvars.iv422, %i.fq       ; 2 uses
  %i.fs = zext i32 %i.fo to i64
  %i.ft = icmp eq i64 %indvars.iv422, %i.fs       ; 4 uses
  %i.fu = icmp samesign ugt i64 %indvars.iv422, 1 ; 2 uses
  br i1 %i.fu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fv = load ptr, ptr %i.ed, align 8, !tbaa !241
  %i.fw = load ptr, ptr %i.ee, align 8, !tbaa !178
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fv, ptr noundef %i.fw) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.ft, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fx = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !190
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv422
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !92
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.gc = phi double [ %i.gb, %bb.ai ], [ 1.000000e+00, %bb.ah ]
  %i.gd = load double, ptr %i.eg, align 8, !tbaa !189 ; 2 uses
  %i.ge = load double, ptr %i.eh, align 8, !tbaa !191
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.ge, double %i.gd) ; 2 uses
  store double %i.gf, ptr %i.ei, align 8, !tbaa !177
  %i.gg = trunc nuw nsw i64 %indvars.iv422 to i32 ; 3 uses
  store i32 %i.gg, ptr %i.f, align 4, !tbaa !171
  store i32 %i.gg, ptr %i.g, align 8, !tbaa !172
  %i.gh = tail call i32 @mriStep_ComputeInnerForcing(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.gg, double noundef %i.gd, double noundef %i.gf) ; 2 uses
  %.not242 = icmp eq i32 %i.gh, 0
  br i1 %.not242, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %.pre428 = load double, ptr %i.eg, align 8, !tbaa !189 ; 3 uses
  %.pre430 = load ptr, ptr %i.ee, align 8, !tbaa !178 ; 3 uses
  br i1 %i.fu, label %bb.al, label %mriStepInnerStepper_Reset.exit281.thread369

bb.al:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.ej, align 8, !tbaa !98 ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !99 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !179 ; 2 uses
  %.not.i279 = icmp eq ptr %i.go, null
  br i1 %.not.i279, label %mriStepInnerStepper_Reset.exit281.thread369, label %mriStepInnerStepper_Reset.exit281

mriStepInnerStepper_Reset.exit281:                ; preds = %bb.an
  %i.gp = tail call i32 %i.go(ptr noundef nonnull %i.gi, double noundef %.pre428, ptr noundef %.pre430) #14, !inline_history !180 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !163
  %.not243 = icmp eq i32 %i.gp, 0
  br i1 %.not243, label %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, label %mriStepInnerStepper_Reset.exit281.thread

mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge: ; preds = %mriStepInnerStepper_Reset.exit281
  %.pre427 = load double, ptr %i.eg, align 8, !tbaa !189
  %.pre429 = load ptr, ptr %i.ee, align 8, !tbaa !178
  br label %mriStepInnerStepper_Reset.exit281.thread369

mriStepInnerStepper_Reset.exit281.thread:         ; preds = %bb.al, %bb.am, %mriStepInnerStepper_Reset.exit281
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2568, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

mriStepInnerStepper_Reset.exit281.thread369:      ; preds = %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, %bb.an, %bb.ak
  %i.gr = phi ptr [ %.pre429, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre430, %bb.an ], [ %.pre430, %bb.ak ]
  %i.gs = phi double [ %.pre427, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre428, %bb.an ], [ %.pre428, %bb.ak ]
  %i.gt = load double, ptr %i.ei, align 8, !tbaa !177
  %i.gu = xor i1 %i.ft, true
  %narrow = select i1 %.not245, i1 %i.gu, i1 false
  %i.gv = zext i1 %narrow to i32
  %i.gw = tail call i32 @mriStep_StageERKFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.gs, double noundef %i.gt, ptr noundef %i.gr, ptr poison, i32 noundef %i.gv) ; 2 uses
  %.not246 = icmp eq i32 %i.gw, 0
  br i1 %.not246, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  store i32 4, ptr %2, align 4, !tbaa !80
  br label %.loopexit

bb.ap:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  %i.gx = load i32, ptr %i.dh, align 4, !tbaa !110
  %.not247 = icmp eq i32 %i.gx, 0
  br i1 %.not247, label %bb.bd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gy = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !227
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !228
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv422
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !230 ; 7 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv422
  %i.hf = load double, ptr %i.he, align 8, !tbaa !92
  %i.hg = tail call double @llvm.fabs.f64(double %i.hf)
  %i.hh = fcmp ogt double %i.hg, f0x3D19000000000000
  br i1 %i.hh, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ft, label %bb.as, label %._crit_edge431

._crit_edge431:                                   ; preds = %bb.ar
  %.pre432 = load i32, ptr %i.g, align 8, !tbaa !172
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hi = trunc nuw i64 %indvars.iv422 to i32
  %i.hj = add i32 %i.hi, -1                       ; 2 uses
  store i32 %i.hj, ptr %i.g, align 8, !tbaa !172
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge431, %bb.as
  %i.hk = phi i32 [ %.pre432, %._crit_edge431 ], [ %i.hj, %bb.as ]
  %i.hl = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hm = tail call i32 @mriStep_Predict(ptr noundef nonnull %0, i32 noundef %i.hk, ptr noundef %i.hl) ; 2 uses
  %.not249 = icmp eq i32 %i.hm, 0
  br i1 %.not249, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hn = load ptr, ptr %i.eo, align 8, !tbaa !242 ; 2 uses
  %.not250 = icmp eq ptr %i.hn, null
  br i1 %.not250, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ho = load double, ptr %i.ei, align 8, !tbaa !177
  %i.hp = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hq = load ptr, ptr %i.ep, align 8, !tbaa !166
  %i.hr = tail call i32 %i.hn(double noundef %i.ho, ptr noundef %i.hp, ptr noundef %i.hq) #14 ; 2 uses
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not251 = icmp eq i32 %i.hr, 0
  br i1 %.not251, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.ht = load ptr, ptr %i.ek, align 8, !tbaa !88 ; 8 uses
  %i.hu = load ptr, ptr %i.ee, align 8, !tbaa !178
  %i.hv = load ptr, ptr %i.el, align 8, !tbaa !90 ; 9 uses
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !164
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.ht, align 8, !tbaa !92
  %i.hw = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !164
  %i.hy = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !227
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !228
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv422
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !230 ; 6 uses
  %i.ie = load ptr, ptr %i.em, align 8, !tbaa !148 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv422, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ax
  %scevgep = getelementptr nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %scevgep486 = getelementptr i8, ptr %i.ht, i64 %i.fn ; 2 uses
  %scevgep488 = getelementptr i8, ptr %i.id, i64 %4
  %scevgep489 = getelementptr nuw i8, ptr %i.hv, i64 16
  %scevgep490 = getelementptr i8, ptr %i.hv, i64 %i.fn
  %scevgep491 = getelementptr i8, ptr %i.ie, i64 %4
  %bound0 = icmp ult ptr %scevgep, %scevgep487
  %bound1 = icmp ult ptr %i.eh, %scevgep486
  %found.conflict = and i1 %bound0, %bound1
  %bound0492 = icmp ult ptr %scevgep, %scevgep488
  %bound1493 = icmp ult ptr %i.id, %scevgep486
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx = or i1 %found.conflict, %found.conflict494
  %bound0495 = icmp ult ptr %scevgep489, %scevgep491
  %bound1496 = icmp ult ptr %i.ie, %scevgep490
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx498 = or i1 %conflict.rdx, %found.conflict497
  br i1 %conflict.rdx498, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv422, 9223372036854775804 ; 3 uses
  %i.if = load double, ptr %i.eh, align 8, !tbaa !191, !alias.scope !243
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.if, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <2 x double>, ptr %i.ig, align 8, !tbaa !92, !alias.scope !246
  %wide.load499 = load <2 x double>, ptr %i.ih, align 8, !tbaa !92, !alias.scope !246
  %i.ii = fmul <2 x double> %broadcast.splat, %wide.load
end_hunk_0
