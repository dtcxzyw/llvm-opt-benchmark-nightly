Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_mcompand?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@config_output:bb.a
  %i.dh = load double, ptr %i.dc, align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd
  store double %i.dh, ptr %i.di, align 8, !tbaa !63
  %indvars.iv.next343.prol = add nuw nsw i64 %i.dd, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph314
  %indvars.iv342.unr = phi i64 [ %i.dd, %.lr.ph314 ], [ %indvars.iv.next343.prol, %.prol.loopexit.unr-lcssa ]
  %i.dj = add nsw i64 %wide.trip.count, -1
  %i.dk = icmp eq i64 %i.dj, %i.dd
  br i1 %i.dk, label %._crit_edge, label %.lr.ph314.new

.lr.ph:                                           ; preds = %bb.j, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.j ] ; 5 uses
  %i.dl = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.d) #9
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw [256 x i8], ptr %i.dm, i64 %indvars.iv351
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.dl, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.dq) #9 ; 0 uses
  %i.ds = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.d) #9
  %i.dt = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw [256 x i8], ptr %i.dt, i64 %indvars.iv351
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !107
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dy = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ds, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.dx) #9 ; 0 uses
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.ea = getelementptr inbounds nuw [256 x i8], ptr %i.dz, i64 %indvars.iv351 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !106
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !108
  %i.eg = sitofp nsz i32 %i.ef to double          ; 3 uses
  %i.eh = fdiv nsz double 1.000000e+00, %i.eg     ; 2 uses
  %i.ei = fcmp nsz ogt double %i.ee, %i.eh
  br i1 %i.ei, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ej = fmul nsz double %i.ee, %i.eg
  %i.ek = fdiv nsz double -1.000000e+00, %i.ej
  %i.el = call nsz double @llvm.exp.f64(double %i.ek)
  %i.em = fsub nsz double 1.000000e+00, %i.el
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %storemerge = phi double [ %i.em, %bb.k ], [ 1.000000e+00, %.lr.ph ]
  store double %storemerge, ptr %i.ed, align 8, !tbaa !63
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !107
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !63 ; 2 uses
  %i.er = fcmp nsz ogt double %i.eq, %i.eh
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.es = fmul nsz double %i.eq, %i.eg
  %i.et = fdiv nsz double -1.000000e+00, %i.es
  %i.eu = call nsz double @llvm.exp.f64(double %i.et)
  %i.ev = fsub nsz double 1.000000e+00, %i.eu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %storemerge234 = phi double [ %i.ev, %bb.m ], [ 1.000000e+00, %bb.l ]
  store double %storemerge234, ptr %i.ep, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ew = load i32, ptr %i.x, align 4, !tbaa !50  ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.ew)
  %i.ex = sext i32 %. to i64
  %i.ey = icmp slt i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph, label %.preheader.loopexit.loopexit, !llvm.loop !109

.lr.ph314.new:                                    ; preds = %.prol.loopexit, %.lr.ph314.new
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.1, %.lr.ph314.new ], [ %indvars.iv342.unr, %.prol.loopexit ] ; 4 uses
  %i.ez = load double, ptr %i.cz, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv342
  store double %i.ez, ptr %i.fa, align 8, !tbaa !63
  %i.fb = load double, ptr %i.dc, align 8, !tbaa !63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv342
  store double %i.fb, ptr %i.fc, align 8, !tbaa !63
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.fd = load double, ptr %i.cz, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next343
  store double %i.fd, ptr %i.fe, align 8, !tbaa !63
  %i.ff = load double, ptr %i.dc, align 8, !tbaa !63
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next343
  store double %i.ff, ptr %i.fg, align 8, !tbaa !63
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next343.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph314.new, !llvm.loop !111

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph314.new, %.preheader
  %i.fh = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not227 = icmp eq ptr %i.fh, null
  br i1 %.not227, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  br label %.thread

bb.p:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw [256 x i8], ptr %i.fi, i64 %indvars.iv351
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fh, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.fk) #9 ; 0 uses
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw [256 x i8], ptr %i.fm, i64 %indvars.iv351
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !112
  %i.fq = fmul nsz double %i.fp, f0x40026BB1BBB55516
  %i.fr = fdiv nsz double %i.fq, 2.000000e+01     ; 4 uses
  %i.fs = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c) #9 ; 4 uses
  %.not228 = icmp eq ptr %i.fs, null
  br i1 %.not228, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !104 ; 2 uses
  %.not7.i246 = icmp eq i8 %i.ft, 0
  br i1 %.not7.i246, label %count_items.exit250, label %.lr.ph.i247

.lr.ph.i247:                                      ; preds = %bb.r, %.lr.ph.i247
  %.0260 = phi i32 [ %spec.select282, %.lr.ph.i247 ], [ 1, %bb.r ]
  %i.fu = phi i32 [ %spec.select283, %.lr.ph.i247 ], [ 1, %bb.r ] ; 2 uses
  %i.fv = phi i8 [ %i.fz, %.lr.ph.i247 ], [ %i.ft, %bb.r ]
  %.08.i248 = phi ptr [ %i.fy, %.lr.ph.i247 ], [ %i.fs, %bb.r ]
  %i.fw = icmp eq i8 %i.fv, 44                    ; 2 uses
  %i.fx = add nsw i32 %i.fu, 1                    ; 2 uses
  %spec.select282 = select i1 %i.fw, i32 %i.fx, i32 %.0260 ; 2 uses
  %spec.select283 = select i1 %i.fw, i32 %i.fx, i32 %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %.08.i248, i64 1 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !104 ; 2 uses
  %.not.i249 = icmp eq i8 %i.fz, 0
  br i1 %.not.i249, label %count_items.exit250, label %.lr.ph.i247, !llvm.loop !105

count_items.exit250:                              ; preds = %.lr.ph.i247, %bb.r
  %.2262 = phi i32 [ 1, %bb.r ], [ %spec.select282, %.lr.ph.i247 ] ; 6 uses
  %i.ga = shl i32 %.2262, 1                       ; 2 uses
  %i.gb = add i32 %i.ga, 8                        ; 2 uses
  %i.gc = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.gd = getelementptr inbounds nuw [256 x i8], ptr %i.gc, i64 %indvars.iv351
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %i.gb, ptr %i.ge, align 8, !tbaa !113
  %i.gf = sext i32 %i.gb to i64
  %i.gg = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 32) #9 ; 2 uses
  %i.gh = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.gi = getelementptr inbounds nuw [256 x i8], ptr %i.gh, i64 %indvars.iv351 ; 17 uses
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !114
  %.not229 = icmp eq ptr %i.gg, null
  br i1 %.not229, label %.thread, label %bb.s

bb.s:                                             ; preds = %count_items.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !52
  %i.gj = icmp sgt i32 %.2262, 0
  br i1 %i.gj, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.s
  %.pre287.pre298.i = load ptr, ptr %i.gi, align 8, !tbaa !75
  br label %bb.x

.lr.ph.preheader.i:                               ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %.2262 to i64
  %i.gk = call ptr @av_strtok(ptr noundef nonnull %i.fs, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.gk, null
  br i1 %.not.peel.i, label %.loopexit266.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.preheader.i
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.go = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.gk, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gn) #9
  %.not239.peel.i = icmp eq i32 %i.go, 2
  br i1 %.not239.peel.i, label %bb.u, label %.loopexit266.i

bb.u:                                             ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 64
  %.pre281.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !76 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !79
  %i.gr = fsub nsz double %i.gq, %.pre281.i       ; 2 uses
  store double %i.gr, ptr %i.gp, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 48, ptr noundef nonnull @.str.17, i32 noundef 0, double noundef %.pre281.i, double noundef %i.gr) #9
  %exitcond.peel.not.i = icmp eq i32 %.2262, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.thread302.i, label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %bb.u, %._crit_edge284.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge284.i ], [ 1, %bb.u ] ; 4 uses
  %i.gs = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.i252 = icmp eq ptr %i.gs, null
  br i1 %.not.i252, label %.loopexit266.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i251
  %i.gt = load ptr, ptr %i.gi, align 8, !tbaa !75
  %i.gu = shl i64 %indvars.iv.i, 33
  %sext.i = add i64 %i.gu, 8589934592
  %i.gv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.gw = getelementptr inbounds [32 x i8], ptr %i.gt, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.14, ptr noundef %i.gw, ptr noundef nonnull %i.gx) #9
  %.not239.i = icmp eq i32 %i.gy, 2
  br i1 %.not239.i, label %bb.w, label %.loopexit266.i

bb.w:                                             ; preds = %bb.v
  %i.gz = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !76
  %i.hc = getelementptr inbounds [32 x i8], ptr %i.gz, i64 %i.gv ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !76 ; 3 uses
  %i.he = fcmp nsz ogt double %i.hb, %i.hd
  br i1 %i.he, label %.loopexit266.i, label %._crit_edge284.i

._crit_edge284.i:                                 ; preds = %bb.w
  %.phi.trans.insert285.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.pre286.i = load double, ptr %.phi.trans.insert285.i, align 8, !tbaa !79
  %i.hf = fsub nsz double %.pre286.i, %i.hd       ; 2 uses
  store double %i.hf, ptr %.phi.trans.insert285.i, align 8, !tbaa !79
  %i.hg = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 48, ptr noundef nonnull @.str.17, i32 noundef %i.hg, double noundef %i.hd, double noundef %i.hf) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread302.i, label %.lr.ph.i251, !llvm.loop !115

._crit_edge.thread302.i:                          ; preds = %._crit_edge284.i, %bb.u
  %.pre287.pre306.i = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 3 uses
  %i.hh = zext nneg i32 %i.ga to i64
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %.pre287.pre306.i, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !76
  %i.hk = fcmp nsz une double %i.hj, 0.000000e+00
  br i1 %i.hk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.thread302.i, %._crit_edge.thread.i
  %.pre287.pre301.i = phi ptr [ %.pre287.pre298.i, %._crit_edge.thread.i ], [ %.pre287.pre306.i, %._crit_edge.thread302.i ]
  %.0223.lcssa299.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.2262, %._crit_edge.thread302.i ]
  %i.hl = add nuw nsw i32 %.0223.lcssa299.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.thread302.i
  %.pre287.pre300.i = phi ptr [ %.pre287.pre301.i, %bb.x ], [ %.pre287.pre306.i, %._crit_edge.thread302.i ] ; 3 uses
  %.0225.i = phi i32 [ %i.hl, %bb.x ], [ %.2262, %._crit_edge.thread302.i ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre287.pre300.i, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !116
  %i.hp = load <2 x double>, ptr %i.hm, align 8, !tbaa !63
  %i.hq = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ho, i64 0
  %i.hr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> <double -2.000000e+00, double 0.000000e+00>, <2 x double> %i.hp)
  store <2 x double> %i.hr, ptr %.pre287.pre300.i, align 8, !tbaa !63
  %i.hs = icmp sgt i32 %.0225.i, 1
  br i1 %i.hs, label %.lr.ph253.preheader.i, label %.preheader241.i

.lr.ph253.preheader.i:                            ; preds = %bb.y
  %i.ht = add nuw nsw i32 %.0225.i, 1
  br label %.lr.ph253.i

.preheader241.loopexit.i:                         ; preds = %.loopexit.i
  %.pre288.pre.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !75
  br label %.preheader241.i

.preheader241.i:                                  ; preds = %.preheader241.loopexit.i, %bb.y
  %.pre288.pre.i = phi ptr [ %.pre288.pre.pre.i, %.preheader241.loopexit.i ], [ %.pre287.pre300.i, %bb.y ] ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !74 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph255.i, label %.loopexit284

.lr.ph255.i:                                      ; preds = %.preheader241.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !117 ; 3 uses
  %i.hz = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.ia = add nsw i64 %i.hz, -1                   ; 2 uses
  %i.ib = lshr i64 %i.ia, 1                       ; 2 uses
  %i.ic = add nuw i64 %i.ib, 1                    ; 2 uses
  %i.id = icmp eq i64 %i.ib, 0
  br i1 %i.id, label %.epil.preheader, label %.lr.ph255.i.new

.lr.ph255.i.new:                                  ; preds = %.lr.ph255.i
  %unroll_iter = and i64 %i.ic, -2
  br label %bb.ab

.lr.ph253.i:                                      ; preds = %.loopexit.i, %.lr.ph253.preheader.i
  %.1226251.i = phi i32 [ %.2227.i, %.loopexit.i ], [ %i.ht, %.lr.ph253.preheader.i ] ; 5 uses
  %.1230250.i = phi i32 [ %.2231.i, %.loopexit.i ], [ 2, %.lr.ph253.preheader.i ] ; 9 uses
  %i.ie = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 3 uses
  %i.if = shl i32 %.1230250.i, 1                  ; 3 uses
  %i.ig = add i32 %i.if, -2
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.ih
  %i.ij = add i32 %i.if, -4
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.ik
  %i.im = sext i32 %i.if to i64
  %i.in = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.im
  %i.io = load <2 x double>, ptr %i.ii, align 8, !tbaa !63 ; 2 uses
  %i.ip = load <2 x double>, ptr %i.in, align 8, !tbaa !63
  %i.iq = fsub nsz <2 x double> %i.ip, %i.io
  %i.ir = load <2 x double>, ptr %i.il, align 8, !tbaa !63
  %i.is = fsub nsz <2 x double> %i.io, %i.ir
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iu = fmul nsz <2 x double> %i.iq, %i.it      ; 2 uses
  %shift = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.iu, %shift
  %i.iv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.iw = fcmp nsz une double %i.iv, 0.000000e+00
  br i1 %i.iw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph253.i
  %i.ix = add nsw i32 %.1230250.i, 1
  br label %.loopexit.i

bb.aa:                                            ; preds = %.lr.ph253.i
  %i.iy = add nsw i32 %.1226251.i, -1             ; 4 uses
  %i.iz = icmp slt i32 %.1230250.i, %.1226251.i
  br i1 %i.iz, label %.lr.ph249.preheader.i, label %.loopexit.i

.lr.ph249.preheader.i:                            ; preds = %bb.aa
  %i.ja = add i32 %.1230250.i, -1
  %i.jb = sext i32 %i.ja to i64                   ; 3 uses
  %i.jc = sub i32 %.1226251.i, %.1230250.i
  %.neg = add i32 %.1230250.i, 1
  %xtraiter428 = and i32 %i.jc, 1
  %lcmp.mod429.not = icmp eq i32 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph249.i.prol.loopexit, label %.lr.ph249.i.prol

.lr.ph249.i.prol:                                 ; preds = %.lr.ph249.preheader.i
  %i.jd = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.idx295.i.prol = shl nsw i64 %i.jb, 6
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %.idx295.i.prol
  %indvars.iv.next269.i.prol = add nsw i64 %i.jb, 1 ; 2 uses
  %.idx296.i.prol = shl nsw i64 %indvars.iv.next269.i.prol, 6
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 %.idx296.i.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.jf, i64 32, i1 false), !tbaa.struct !118
  br label %.lr.ph249.i.prol.loopexit

.lr.ph249.i.prol.loopexit:                        ; preds = %.lr.ph249.i.prol, %.lr.ph249.preheader.i
  %indvars.iv268.i.unr = phi i64 [ %i.jb, %.lr.ph249.preheader.i ], [ %indvars.iv.next269.i.prol, %.lr.ph249.i.prol ]
  %i.jg = icmp eq i32 %.1226251.i, %.neg
  br i1 %i.jg, label %.loopexit.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i.1, %.lr.ph249.i ], [ %indvars.iv268.i.unr, %.lr.ph249.i.prol.loopexit ] ; 3 uses
  %i.jh = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.idx295.i = shl nsw i64 %indvars.iv268.i, 6
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %.idx295.i
  %indvars.iv.next269.i = add nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %.idx296.i = shl nsw i64 %indvars.iv.next269.i, 6
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 %.idx296.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !tbaa.struct !118
  %i.jk = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.idx295.i.1 = shl nsw i64 %indvars.iv.next269.i, 6
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %.idx295.i.1
  %indvars.iv.next269.i.1 = add nsw i64 %indvars.iv268.i, 2 ; 3 uses
  %.idx296.i.1 = shl nsw i64 %indvars.iv.next269.i.1, 6
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 %.idx296.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %i.jm, i64 32, i1 false), !tbaa.struct !118
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next269.i.1 to i32
  %exitcond345.1 = icmp eq i32 %i.iy, %lftr.wideiv.1
  br i1 %exitcond345.1, label %.loopexit.i, label %.lr.ph249.i, !llvm.loop !119

.loopexit.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i, %bb.aa, %bb.z
  %.2231.i = phi i32 [ %i.ix, %bb.z ], [ %.1230250.i, %bb.aa ], [ %.1230250.i, %.lr.ph249.i ], [ %.1230250.i, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %.2227.i = phi i32 [ %.1226251.i, %bb.z ], [ %i.iy, %bb.aa ], [ %i.iy, %.lr.ph249.i ], [ %i.iy, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %i.jn = icmp slt i32 %.2231.i, %.2227.i
  br i1 %i.jn, label %.lr.ph253.i, label %.preheader241.loopexit.i, !llvm.loop !120

.preheader.i.unr-lcssa:                           ; preds = %bb.ab
  %i.jo = and i64 %i.ia, 2
  %lcmp.mod431.not.not = icmp eq i64 %i.jo, 0
  br i1 %lcmp.mod431.not.not, label %.epil.preheader, label %.preheader.i

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph255.i
  %indvars.iv272.i.epil.init = phi i64 [ 0, %.lr.ph255.i ], [ %indvars.iv.next273.i.1, %.preheader.i.unr-lcssa ]
  %lcmp.mod432 = trunc i64 %i.ic to i1
  call void @llvm.assume(i1 %lcmp.mod432)
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i.epil.init ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !79
  %i.js = fadd nsz double %i.hy, %i.jr
  %i.jt = load double, ptr %i.jp, align 8, !tbaa !76
  %i.ju = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %i.js, i64 1
  %i.jw = fmul nsz <2 x double> %i.jv, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.jw, ptr %i.jp, align 8, !tbaa !63
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %i.jx = icmp samesign ugt i32 %i.hv, 4
  br i1 %i.jx, label %.lr.ph258.i, label %.loopexit284

bb.ab:                                            ; preds = %bb.ab, %.lr.ph255.i.new
  %indvars.iv272.i = phi i64 [ 0, %.lr.ph255.i.new ], [ %indvars.iv.next273.i.1, %bb.ab ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph255.i.new ], [ %niter.next.1, %bb.ab ]
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !79
  %i.kb = fadd nsz double %i.hy, %i.ka
  %i.kc = load double, ptr %i.jy, align 8, !tbaa !76
  %i.kd = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.kb, i64 1
  %i.kf = fmul nsz <2 x double> %i.ke, splat (double f0x3FBD791C5F888823)
end_hunk_0
