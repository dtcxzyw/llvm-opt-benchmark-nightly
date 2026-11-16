Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_mcompand?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@config_output:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %storemerge = phi double [ %i.em, %bb.k ], [ 1.000000e+00, %.lr.ph ]
  store double %storemerge, ptr %i.ed, align 8, !tbaa !48
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !118
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !48 ; 2 uses
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
  store double %storemerge234, ptr %i.ep, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ew = load i32, ptr %i.x, align 4, !tbaa !37  ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.ew)
  %i.ex = sext i32 %. to i64
  %i.ey = icmp slt i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph, label %.preheader.loopexit.loopexit, !llvm.loop !105

.lr.ph314.new:                                    ; preds = %.prol.loopexit, %.lr.ph314.new
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.1, %.lr.ph314.new ], [ %indvars.iv342.unr, %.prol.loopexit ] ; 4 uses
  %i.ez = load double, ptr %i.cz, align 8, !tbaa !48
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv342
  store double %i.ez, ptr %i.fa, align 8, !tbaa !48
  %i.fb = load double, ptr %i.dc, align 8, !tbaa !48
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv342
  store double %i.fb, ptr %i.fc, align 8, !tbaa !48
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.fd = load double, ptr %i.cz, align 8, !tbaa !48
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next343
  store double %i.fd, ptr %i.fe, align 8, !tbaa !48
  %i.ff = load double, ptr %i.dc, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next343
  store double %i.ff, ptr %i.fg, align 8, !tbaa !48
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next343.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph314.new, !llvm.loop !106

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph314.new, %.preheader
  %i.fh = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not227 = icmp eq ptr %i.fh, null
  br i1 %.not227, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  br label %.thread

bb.p:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw [256 x i8], ptr %i.fi, i64 %indvars.iv351
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fh, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.fk) #9 ; 0 uses
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw [256 x i8], ptr %i.fm, i64 %indvars.iv351
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !120
  %i.fq = fmul nsz double %i.fp, f0x40026BB1BBB55516
  %i.fr = fdiv nsz double %i.fq, 2.000000e+01     ; 4 uses
  %i.fs = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c) #9 ; 4 uses
  %.not228 = icmp eq ptr %i.fs, null
  br i1 %.not228, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !116 ; 2 uses
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
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !116 ; 2 uses
  %.not.i249 = icmp eq i8 %i.fz, 0
  br i1 %.not.i249, label %count_items.exit250, label %.lr.ph.i247, !llvm.loop !104

count_items.exit250:                              ; preds = %.lr.ph.i247, %bb.r
  %.2262 = phi i32 [ 1, %bb.r ], [ %spec.select282, %.lr.ph.i247 ] ; 6 uses
  %i.ga = shl i32 %.2262, 1                       ; 2 uses
  %i.gb = add i32 %i.ga, 8                        ; 2 uses
  %i.gc = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.gd = getelementptr inbounds nuw [256 x i8], ptr %i.gc, i64 %indvars.iv351
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %i.gb, ptr %i.ge, align 8, !tbaa !121
  %i.gf = sext i32 %i.gb to i64
  %i.gg = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 32) #9 ; 2 uses
  %i.gh = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.gi = getelementptr inbounds nuw [256 x i8], ptr %i.gh, i64 %indvars.iv351 ; 17 uses
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !122
  %.not229 = icmp eq ptr %i.gg, null
  br i1 %.not229, label %.thread, label %bb.s

bb.s:                                             ; preds = %count_items.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.gj = icmp sgt i32 %.2262, 0
  br i1 %i.gj, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.s
  %.pre287.pre298.i = load ptr, ptr %i.gi, align 8, !tbaa !54
  br label %bb.x

.lr.ph.preheader.i:                               ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %.2262 to i64
  %i.gk = call ptr @av_strtok(ptr noundef nonnull %i.fs, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.gk, null
  br i1 %.not.peel.i, label %.loopexit266.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.preheader.i
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.go = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.gk, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gn) #9
  %.not239.peel.i = icmp eq i32 %i.go, 2
  br i1 %.not239.peel.i, label %bb.u, label %.loopexit266.i

bb.u:                                             ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 64
  %.pre281.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !56 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !57
  %i.gr = fsub nsz double %i.gq, %.pre281.i       ; 2 uses
  store double %i.gr, ptr %i.gp, align 8, !tbaa !57
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 48, ptr noundef nonnull @.str.17, i32 noundef 0, double noundef %.pre281.i, double noundef %i.gr) #9
  %exitcond.peel.not.i = icmp eq i32 %.2262, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.thread302.i, label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %bb.u, %._crit_edge284.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge284.i ], [ 1, %bb.u ] ; 4 uses
  %i.gs = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.i252 = icmp eq ptr %i.gs, null
  br i1 %.not.i252, label %.loopexit266.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i251
  %i.gt = load ptr, ptr %i.gi, align 8, !tbaa !54
  %i.gu = shl nuw i64 %indvars.iv.i, 33
  %sext.i = add nuw i64 %i.gu, 8589934592
  %i.gv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.gw = getelementptr inbounds [32 x i8], ptr %i.gt, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx) #9
  %.not239.i = icmp eq i32 %i.gy, 2
  br i1 %.not239.i, label %bb.w, label %.loopexit266.i

bb.w:                                             ; preds = %bb.v
  %i.gz = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !56
  %i.hc = getelementptr inbounds [32 x i8], ptr %i.gz, i64 %i.gv ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !56 ; 3 uses
  %i.he = fcmp nsz ogt double %i.hb, %i.hd
  br i1 %i.he, label %.loopexit266.i, label %._crit_edge284.i

._crit_edge284.i:                                 ; preds = %bb.w
  %.phi.trans.insert285.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.pre286.i = load double, ptr %.phi.trans.insert285.i, align 8, !tbaa !57
  %i.hf = fsub nsz double %.pre286.i, %i.hd       ; 2 uses
  store double %i.hf, ptr %.phi.trans.insert285.i, align 8, !tbaa !57
  %i.hg = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 48, ptr noundef nonnull @.str.17, i32 noundef %i.hg, double noundef %i.hd, double noundef %i.hf) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread302.i, label %.lr.ph.i251, !llvm.loop !107

._crit_edge.thread302.i:                          ; preds = %._crit_edge284.i, %bb.u
  %.pre287.pre306.i = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 3 uses
  %i.hh = zext nneg i32 %i.ga to i64
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %.pre287.pre306.i, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !56
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
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !123
  %1 = load <2 x double>, ptr %i.hm, align 8, !tbaa !48
  %2 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ho, i64 0
  %3 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double -2.000000e+00, double 0.000000e+00>, <2 x double> %1)
  store <2 x double> %3, ptr %.pre287.pre300.i, align 8, !tbaa !48
  %i.hp = icmp sgt i32 %.0225.i, 1
  br i1 %i.hp, label %.lr.ph253.preheader.i, label %.preheader241.i

.lr.ph253.preheader.i:                            ; preds = %bb.y
  %i.hq = add nuw nsw i32 %.0225.i, 1
  br label %.lr.ph253.i

.preheader241.loopexit.i:                         ; preds = %.loopexit.i
  %.pre288.pre.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !54
  br label %.preheader241.i

.preheader241.i:                                  ; preds = %.preheader241.loopexit.i, %bb.y
  %.pre288.pre.i = phi ptr [ %.pre288.pre.pre.i, %.preheader241.loopexit.i ], [ %.pre287.pre300.i, %bb.y ] ; 7 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !53 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph255.i, label %.loopexit284

.lr.ph255.i:                                      ; preds = %.preheader241.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !124 ; 3 uses
  %i.hw = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hx = add nsw i64 %i.hw, -1                   ; 2 uses
  %i.hy = lshr i64 %i.hx, 1                       ; 2 uses
  %i.hz = add nuw i64 %i.hy, 1                    ; 2 uses
  %i.ia = icmp eq i64 %i.hy, 0
  br i1 %i.ia, label %.epil.preheader, label %.lr.ph255.i.new

.lr.ph255.i.new:                                  ; preds = %.lr.ph255.i
  %unroll_iter = and i64 %i.hz, -2
  br label %bb.ab

.lr.ph253.i:                                      ; preds = %.loopexit.i, %.lr.ph253.preheader.i
  %.1226251.i = phi i32 [ %.2227.i, %.loopexit.i ], [ %i.hq, %.lr.ph253.preheader.i ] ; 5 uses
  %.1230250.i = phi i32 [ %.2231.i, %.loopexit.i ], [ 2, %.lr.ph253.preheader.i ] ; 9 uses
  %i.ib = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 3 uses
  %i.ic = shl i32 %.1230250.i, 1                  ; 3 uses
  %i.id = add i32 %i.ic, -2
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [32 x i8], ptr %i.ib, i64 %i.ie
  %i.ig = add i32 %i.ic, -4
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.ib, i64 %i.ih
  %i.ij = sext i32 %i.ic to i64
  %i.ik = getelementptr inbounds [32 x i8], ptr %i.ib, i64 %i.ij
  %i.il = load <2 x double>, ptr %i.if, align 8, !tbaa !48 ; 2 uses
  %i.im = load <2 x double>, ptr %i.ik, align 8, !tbaa !48
  %i.in = fsub nsz <2 x double> %i.im, %i.il
  %i.io = load <2 x double>, ptr %i.ii, align 8, !tbaa !48
  %i.ip = fsub nsz <2 x double> %i.il, %i.io
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = fmul nsz <2 x double> %i.in, %i.iq      ; 2 uses
  %shift = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.ir, %shift
  %i.is = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.it = fcmp nsz une double %i.is, 0.000000e+00
  br i1 %i.it, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph253.i
  %i.iu = add nsw i32 %.1230250.i, 1
  br label %.loopexit.i

bb.aa:                                            ; preds = %.lr.ph253.i
  %i.iv = add nsw i32 %.1226251.i, -1             ; 4 uses
  %i.iw = icmp slt i32 %.1230250.i, %.1226251.i
  br i1 %i.iw, label %.lr.ph249.preheader.i, label %.loopexit.i

.lr.ph249.preheader.i:                            ; preds = %bb.aa
  %i.ix = add i32 %.1230250.i, -1
  %i.iy = sext i32 %i.ix to i64                   ; 3 uses
  %i.iz = sub i32 %.1226251.i, %.1230250.i
  %.neg = add i32 %.1230250.i, 1
  %xtraiter428 = and i32 %i.iz, 1
  %lcmp.mod429.not = icmp eq i32 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph249.i.prol.loopexit, label %.lr.ph249.i.prol

.lr.ph249.i.prol:                                 ; preds = %.lr.ph249.preheader.i
  %i.ja = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i.prol = shl nsw i64 %i.iy, 6
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 %.idx295.i.prol
  %indvars.iv.next269.i.prol = add nsw i64 %i.iy, 1 ; 2 uses
  %.idx296.i.prol = shl nsw i64 %indvars.iv.next269.i.prol, 6
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 %.idx296.i.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %i.jc, i64 32, i1 false), !tbaa.struct !125
  br label %.lr.ph249.i.prol.loopexit

.lr.ph249.i.prol.loopexit:                        ; preds = %.lr.ph249.i.prol, %.lr.ph249.preheader.i
  %indvars.iv268.i.unr = phi i64 [ %i.iy, %.lr.ph249.preheader.i ], [ %indvars.iv.next269.i.prol, %.lr.ph249.i.prol ]
  %i.jd = icmp eq i32 %.1226251.i, %.neg
  br i1 %i.jd, label %.loopexit.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i.1, %.lr.ph249.i ], [ %indvars.iv268.i.unr, %.lr.ph249.i.prol.loopexit ] ; 3 uses
  %i.je = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i = shl nsw i64 %indvars.iv268.i, 6
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 %.idx295.i
  %indvars.iv.next269.i = add nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %.idx296.i = shl nsw i64 %indvars.iv.next269.i, 6
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 %.idx296.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false), !tbaa.struct !125
  %i.jh = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i.1 = shl nsw i64 %indvars.iv.next269.i, 6
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %.idx295.i.1
  %indvars.iv.next269.i.1 = add nsw i64 %indvars.iv268.i, 2 ; 3 uses
  %.idx296.i.1 = shl nsw i64 %indvars.iv.next269.i.1, 6
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 %.idx296.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !tbaa.struct !125
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next269.i.1 to i32
  %exitcond345.1 = icmp eq i32 %i.iv, %lftr.wideiv.1
  br i1 %exitcond345.1, label %.loopexit.i, label %.lr.ph249.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i, %bb.aa, %bb.z
  %.2231.i = phi i32 [ %i.iu, %bb.z ], [ %.1230250.i, %bb.aa ], [ %.1230250.i, %.lr.ph249.i ], [ %.1230250.i, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %.2227.i = phi i32 [ %.1226251.i, %bb.z ], [ %i.iv, %bb.aa ], [ %i.iv, %.lr.ph249.i ], [ %i.iv, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %i.jk = icmp slt i32 %.2231.i, %.2227.i
  br i1 %i.jk, label %.lr.ph253.i, label %.preheader241.loopexit.i, !llvm.loop !109

.preheader.i.unr-lcssa:                           ; preds = %bb.ab
  %i.jl = and i64 %i.hx, 2
  %lcmp.mod431.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod431.not.not, label %.epil.preheader, label %.preheader.i

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph255.i
  %indvars.iv272.i.epil.init = phi i64 [ 0, %.lr.ph255.i ], [ %indvars.iv.next273.i.1, %.preheader.i.unr-lcssa ]
  %lcmp.mod432 = trunc i64 %i.hz to i1
  call void @llvm.assume(i1 %lcmp.mod432)
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i.epil.init ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !57
  %i.jp = fadd nsz double %i.hv, %i.jo
  %i.jq = load double, ptr %i.jm, align 8, !tbaa !56
  %i.jr = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.jp, i64 1
  %i.jt = fmul nsz <2 x double> %i.js, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.jt, ptr %i.jm, align 8, !tbaa !48
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %i.ju = icmp samesign ugt i32 %i.hs, 4
  br i1 %i.ju, label %.lr.ph258.i, label %.loopexit284

bb.ab:                                            ; preds = %bb.ab, %.lr.ph255.i.new
  %indvars.iv272.i = phi i64 [ 0, %.lr.ph255.i.new ], [ %indvars.iv.next273.i.1, %bb.ab ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph255.i.new ], [ %niter.next.1, %bb.ab ]
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !57
  %i.jy = fadd nsz double %i.hv, %i.jx
  %i.jz = load double, ptr %i.jv, align 8, !tbaa !56
  %i.ka = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jy, i64 1
  %i.kc = fmul nsz <2 x double> %i.kb, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.kc, ptr %i.jv, align 8, !tbaa !48
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 64 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 72
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !57
  %i.kh = fadd nsz double %i.hv, %i.kg
  %i.ki = load double, ptr %i.ke, align 8, !tbaa !56
  %i.kj = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kk = insertelement <2 x double> %i.kj, double %i.kh, i64 1
  %i.kl = fmul nsz <2 x double> %i.kk, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.kl, ptr %i.ke, align 8, !tbaa !48
  %indvars.iv.next273.i.1 = add nuw nsw i64 %indvars.iv272.i, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i.unr-lcssa, label %bb.ab, !llvm.loop !110

.lr.ph258.i:                                      ; preds = %.preheader.i, %.lr.ph258.i
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %.lr.ph258.i ], [ 4, %.preheader.i ] ; 2 uses
  %i.km = getelementptr [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv275.i ; 8 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -128
  %i.ko = getelementptr i8, ptr %i.km, i64 -112
  %i.kp = getelementptr i8, ptr %i.km, i64 -64    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.km, i64 -56
  %i.kr = getelementptr i8, ptr %i.km, i64 -48
  %i.ks = load <2 x double>, ptr %i.kp, align 8, !tbaa !48 ; 5 uses
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !57
  %i.ku = load <2 x double>, ptr %i.kn, align 8, !tbaa !48 ; 2 uses
  %i.kv = load <2 x double>, ptr %i.km, align 8, !tbaa !48 ; 2 uses
  %i.kw = shufflevector <2 x double> %i.ks, <2 x double> %i.kv, <2 x i32> <i32 1, i32 3>
  %i.kx = shufflevector <2 x double> %i.ku, <2 x double> %i.ks, <2 x i32> <i32 1, i32 3>
  %i.ky = fsub nsz <2 x double> %i.kw, %i.kx      ; 3 uses
  %i.kz = shufflevector <2 x double> %i.ks, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.la = shufflevector <2 x double> %i.ku, <2 x double> %i.ks, <2 x i32> <i32 0, i32 2>
  %i.lb = fsub nsz <2 x double> %i.kz, %i.la      ; 3 uses
  %i.lc = fdiv nsz <2 x double> %i.ky, %i.lb      ; 2 uses
  %i.ld = insertelement <2 x double> %i.lc, double 0.000000e+00, i64 0
  store <2 x double> %i.ld, ptr %i.kr, align 8, !tbaa !48
  %i.le = extractelement <2 x double> %i.ky, i64 0 ; 2 uses
  %i.lf = extractelement <2 x double> %i.lb, i64 0 ; 2 uses
  %i.lg = call nsz double @llvm.atan2.f64(double %i.le, double %i.lf)
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.lg) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.lh = call nsz double @hypot(double noundef %i.lf, double noundef %i.le) #10 ; 2 uses
  %i.li = fcmp nsz ogt double %i.fr, %i.lh
  %i.lj = select nsz i1 %i.li, double %i.lh, double %i.fr
  %i.lk = fneg nsz double %i.lj
  %i.ll = extractelement <2 x double> %i.ky, i64 1 ; 2 uses
end_hunk_0
