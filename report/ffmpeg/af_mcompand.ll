Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_mcompand?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@config_output:bb.a
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
  %i.hp = load <2 x double>, ptr %i.hm, align 8, !tbaa !48
  %i.hq = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ho, i64 0
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> <double -2.000000e+00, double 0.000000e+00>, <2 x double> %i.hp)
  store <2 x double> %i.hr, ptr %.pre287.pre300.i, align 8, !tbaa !48
  %i.hs = icmp sgt i32 %.0225.i, 1
  br i1 %i.hs, label %.lr.ph253.preheader.i, label %.preheader241.i

.lr.ph253.preheader.i:                            ; preds = %bb.y
  %i.ht = add nuw nsw i32 %.0225.i, 1
  br label %.lr.ph253.i

.preheader241.loopexit.i:                         ; preds = %.loopexit.i
  %.pre288.pre.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !54
  br label %.preheader241.i

.preheader241.i:                                  ; preds = %.preheader241.loopexit.i, %bb.y
  %.pre288.pre.i = phi ptr [ %.pre288.pre.pre.i, %.preheader241.loopexit.i ], [ %.pre287.pre300.i, %bb.y ] ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !53 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph255.i, label %.loopexit284

.lr.ph255.i:                                      ; preds = %.preheader241.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !124 ; 3 uses
  %i.hz = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.ia = add nsw i64 %i.hz, -1                   ; 2 uses
  %i.ib = lshr i64 %i.ia, 1                       ; 2 uses
  %i.ic = add nuw i64 %i.ib, 1                    ; 2 uses
  %i.id = icmp eq i64 %i.ib, 0
  br i1 %i.id, label %.epil.preheader, label %.lr.ph255.i.new

.lr.ph255.i.new:                                  ; preds = %.lr.ph255.i
  %unroll_iter = and i64 %i.ic, -2
  br label %bb.aa

.lr.ph253.i:                                      ; preds = %.loopexit.i, %.lr.ph253.preheader.i
  %.1226251.i = phi i32 [ %.2227.i, %.loopexit.i ], [ %i.ht, %.lr.ph253.preheader.i ] ; 4 uses
  %.1230250.i = phi i32 [ %.2231.i, %.loopexit.i ], [ 2, %.lr.ph253.preheader.i ] ; 7 uses
  %i.ie = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 3 uses
  %i.if = shl i32 %.1230250.i, 1                  ; 3 uses
  %i.ig = add i32 %i.if, -2
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.ih
  %i.ij = add i32 %i.if, -4
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.ik
  %i.im = sext i32 %i.if to i64
  %i.in = getelementptr inbounds [32 x i8], ptr %i.ie, i64 %i.im
  %i.io = load <2 x double>, ptr %i.ii, align 8, !tbaa !48 ; 2 uses
  %i.ip = load <2 x double>, ptr %i.in, align 8, !tbaa !48
  %i.iq = fsub nsz <2 x double> %i.ip, %i.io
  %i.ir = load <2 x double>, ptr %i.il, align 8, !tbaa !48
  %i.is = fsub nsz <2 x double> %i.io, %i.ir
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iu = fmul nsz <2 x double> %i.iq, %i.it      ; 2 uses
  %shift = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.iu, %shift
  %i.iv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.iw = fcmp nsz une double %i.iv, 0.000000e+00
  br i1 %i.iw, label %bb.z, label %.lr.ph249.preheader.i

bb.z:                                             ; preds = %.lr.ph253.i
  %i.ix = add nsw i32 %.1230250.i, 1
  br label %.loopexit.i

.lr.ph249.preheader.i:                            ; preds = %.lr.ph253.i
  %1 = add nsw i32 %.1226251.i, -1                ; 3 uses
  %i.iy = add i32 %.1230250.i, -1
  %i.iz = sext i32 %i.iy to i64                   ; 3 uses
  %i.ja = sub i32 %.1226251.i, %.1230250.i
  %.neg = add i32 %.1230250.i, 1
  %xtraiter428 = and i32 %i.ja, 1
  %lcmp.mod429.not = icmp eq i32 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph249.i.prol.loopexit, label %.lr.ph249.i.prol

.lr.ph249.i.prol:                                 ; preds = %.lr.ph249.preheader.i
  %i.jb = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i.prol = shl nsw i64 %i.iz, 6
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %.idx295.i.prol
  %indvars.iv.next269.i.prol = add nsw i64 %i.iz, 1 ; 2 uses
  %.idx296.i.prol = shl nsw i64 %indvars.iv.next269.i.prol, 6
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 %.idx296.i.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, i64 32, i1 false), !tbaa.struct !125
  br label %.lr.ph249.i.prol.loopexit

.lr.ph249.i.prol.loopexit:                        ; preds = %.lr.ph249.i.prol, %.lr.ph249.preheader.i
  %indvars.iv268.i.unr = phi i64 [ %i.iz, %.lr.ph249.preheader.i ], [ %indvars.iv.next269.i.prol, %.lr.ph249.i.prol ]
  %i.je = icmp eq i32 %.1226251.i, %.neg
  br i1 %i.je, label %.loopexit.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i.1, %.lr.ph249.i ], [ %indvars.iv268.i.unr, %.lr.ph249.i.prol.loopexit ] ; 3 uses
  %i.jf = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i = shl nsw i64 %indvars.iv268.i, 6
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.idx295.i
  %indvars.iv.next269.i = add nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %.idx296.i = shl nsw i64 %indvars.iv.next269.i, 6
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %.idx296.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, i64 32, i1 false), !tbaa.struct !125
  %i.ji = load ptr, ptr %i.gi, align 8, !tbaa !54 ; 2 uses
  %.idx295.i.1 = shl nsw i64 %indvars.iv.next269.i, 6
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %.idx295.i.1
  %indvars.iv.next269.i.1 = add nsw i64 %indvars.iv268.i, 2 ; 3 uses
  %.idx296.i.1 = shl nsw i64 %indvars.iv.next269.i.1, 6
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 %.idx296.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, i64 32, i1 false), !tbaa.struct !125
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next269.i.1 to i32
  %exitcond345.1 = icmp eq i32 %1, %lftr.wideiv.1
  br i1 %exitcond345.1, label %.loopexit.i, label %.lr.ph249.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %.lr.ph249.i.prol.loopexit, %.lr.ph249.i, %bb.z
  %.2231.i = phi i32 [ %i.ix, %bb.z ], [ %.1230250.i, %.lr.ph249.i ], [ %.1230250.i, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %.2227.i = phi i32 [ %.1226251.i, %bb.z ], [ %1, %.lr.ph249.i ], [ %1, %.lr.ph249.i.prol.loopexit ] ; 2 uses
  %i.jl = icmp slt i32 %.2231.i, %.2227.i
  br i1 %i.jl, label %.lr.ph253.i, label %.preheader241.loopexit.i, !llvm.loop !109

.preheader.i.unr-lcssa:                           ; preds = %bb.aa
  %i.jm = and i64 %i.ia, 2
  %lcmp.mod431.not.not = icmp eq i64 %i.jm, 0
  br i1 %lcmp.mod431.not.not, label %.epil.preheader, label %.preheader.i

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph255.i
  %indvars.iv272.i.epil.init = phi i64 [ 0, %.lr.ph255.i ], [ %indvars.iv.next273.i.1, %.preheader.i.unr-lcssa ]
  %lcmp.mod432 = trunc i64 %i.ic to i1
  call void @llvm.assume(i1 %lcmp.mod432)
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i.epil.init ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !57
  %i.jq = fadd nsz double %i.hy, %i.jp
  %i.jr = load double, ptr %i.jn, align 8, !tbaa !56
  %i.js = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jt = insertelement <2 x double> %i.js, double %i.jq, i64 1
  %i.ju = fmul nsz <2 x double> %i.jt, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.ju, ptr %i.jn, align 8, !tbaa !48
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %i.jv = icmp samesign ugt i32 %i.hv, 4
  br i1 %i.jv, label %.lr.ph258.i, label %.loopexit284

bb.aa:                                            ; preds = %bb.aa, %.lr.ph255.i.new
  %indvars.iv272.i = phi i64 [ 0, %.lr.ph255.i.new ], [ %indvars.iv.next273.i.1, %bb.aa ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph255.i.new ], [ %niter.next.1, %bb.aa ]
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !57
  %i.jz = fadd nsz double %i.hy, %i.jy
  %i.ka = load double, ptr %i.jw, align 8, !tbaa !56
  %i.kb = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.jz, i64 1
  %i.kd = fmul nsz <2 x double> %i.kc, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.kd, ptr %i.jw, align 8, !tbaa !48
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv272.i ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !57
  %i.ki = fadd nsz double %i.hy, %i.kh
  %i.kj = load double, ptr %i.kf, align 8, !tbaa !56
  %i.kk = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %i.ki, i64 1
  %i.km = fmul nsz <2 x double> %i.kl, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.km, ptr %i.kf, align 8, !tbaa !48
  %indvars.iv.next273.i.1 = add nuw nsw i64 %indvars.iv272.i, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i.unr-lcssa, label %bb.aa, !llvm.loop !110

.lr.ph258.i:                                      ; preds = %.preheader.i, %.lr.ph258.i
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %.lr.ph258.i ], [ 4, %.preheader.i ] ; 2 uses
  %i.kn = getelementptr [32 x i8], ptr %.pre288.pre.i, i64 %indvars.iv275.i ; 8 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 -128
  %i.kp = getelementptr i8, ptr %i.kn, i64 -112
  %i.kq = getelementptr i8, ptr %i.kn, i64 -64    ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kn, i64 -56
  %i.ks = getelementptr i8, ptr %i.kn, i64 -48
  %i.kt = load <2 x double>, ptr %i.kq, align 8, !tbaa !48 ; 5 uses
  %i.ku = load double, ptr %i.kr, align 8, !tbaa !57
  %i.kv = load <2 x double>, ptr %i.ko, align 8, !tbaa !48 ; 2 uses
  %i.kw = load <2 x double>, ptr %i.kn, align 8, !tbaa !48 ; 2 uses
  %i.kx = shufflevector <2 x double> %i.kt, <2 x double> %i.kw, <2 x i32> <i32 1, i32 3>
  %i.ky = shufflevector <2 x double> %i.kv, <2 x double> %i.kt, <2 x i32> <i32 1, i32 3>
  %i.kz = fsub nsz <2 x double> %i.kx, %i.ky      ; 3 uses
  %i.la = shufflevector <2 x double> %i.kt, <2 x double> %i.kw, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %i.kv, <2 x double> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.lc = fsub nsz <2 x double> %i.la, %i.lb      ; 3 uses
  %i.ld = fdiv nsz <2 x double> %i.kz, %i.lc      ; 2 uses
  %i.le = insertelement <2 x double> %i.ld, double 0.000000e+00, i64 0
  store <2 x double> %i.le, ptr %i.ks, align 8, !tbaa !48
  %i.lf = extractelement <2 x double> %i.kz, i64 0 ; 2 uses
  %i.lg = extractelement <2 x double> %i.lc, i64 0 ; 2 uses
  %i.lh = call nsz double @llvm.atan2.f64(double %i.lf, double %i.lg)
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.lh) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.li = call nsz double @hypot(double noundef %i.lg, double noundef %i.lf) #10 ; 2 uses
  %i.lj = fcmp nsz ogt double %i.fr, %i.li
  %i.lk = select nsz i1 %i.lj, double %i.li, double %i.fr
  %i.ll = fneg nsz double %i.lk
  %i.lm = extractelement <2 x double> %i.kz, i64 1 ; 2 uses
  %i.ln = extractelement <2 x double> %i.lc, i64 1 ; 2 uses
  %i.lo = call nsz double @llvm.atan2.f64(double %i.lm, double %i.ln)
  %sincos236.i = call nsz { double, double } @llvm.sincos.f64(double %i.lo) ; 2 uses
  %sin237.i = extractvalue { double, double } %sincos236.i, 0
  %cos238.i = extractvalue { double, double } %sincos236.i, 1
  %i.lp = call nsz double @hypot(double noundef %i.ln, double noundef %i.lm) #10
  %i.lq = fmul nsz double %i.lp, 5.000000e-01     ; 2 uses
  %i.lr = fcmp nsz ogt double %i.fr, %i.lq
  %i.ls = select nsz i1 %i.lr, double %i.lq, double %i.fr
  %i.lt = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %sin.i, i64 1
  %i.lx = insertelement <2 x double> %i.kt, double %i.ku, i64 1 ; 3 uses
  %i.ly = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lw, <2 x double> %i.lx) ; 4 uses
  %i.lz = shufflevector <2 x double> %i.ld, <2 x double> %i.ly, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.ma = insertelement <4 x double> %i.lz, double 0.000000e+00, i64 0
  store <4 x double> %i.ma, ptr %i.kp, align 8, !tbaa !48
  %i.mb = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = insertelement <2 x double> poison, double %cos238.i, i64 0
  %i.me = insertelement <2 x double> %i.md, double %sin237.i, i64 1
  %i.mf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.me, <2 x double> %i.lx) ; 4 uses
  %i.mg = fadd nsz <2 x double> %i.lx, %i.ly
  %i.mh = fadd nsz <2 x double> %i.mg, %i.mf
  %i.mi = fdiv nsz <2 x double> %i.mh, splat (double 3.000000e+00) ; 2 uses
  store <2 x double> %i.mf, ptr %i.kq, align 8, !tbaa !48
  %i.mj = shufflevector <2 x double> %i.mf, <2 x double> %i.mi, <2 x i32> <i32 0, i32 2>
  %i.mk = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = fsub nsz <2 x double> %i.mj, %i.mk      ; 3 uses
  %i.mm = shufflevector <2 x double> %i.mf, <2 x double> %i.mi, <2 x i32> <i32 1, i32 3>
  %i.mn = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mo = fsub nsz <2 x double> %i.mm, %i.mn
  %i.mp = fdiv nsz <2 x double> %i.mo, %i.ml      ; 2 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 0
  %i.mr = extractelement <2 x double> %i.mp, i64 1 ; 2 uses
  %i.ms = fsub nsz double %i.mq, %i.mr
  %i.mt = extractelement <2 x double> %i.ml, i64 0
  %i.mu = extractelement <2 x double> %i.ml, i64 1 ; 2 uses
  %i.mv = fsub nsz double %i.mt, %i.mu
  %i.mw = fdiv nsz double %i.ms, %i.mv            ; 2 uses
  %i.mx = getelementptr i8, ptr %i.kn, i64 -80
  store double %i.mw, ptr %i.mx, align 8, !tbaa !58
  %i.my = fneg nsz double %i.mw
  %i.mz = call nsz double @llvm.fmuladd.f64(double %i.my, double %i.mu, double %i.mr)
  %i.na = getelementptr i8, ptr %i.kn, i64 -72
  store double %i.mz, ptr %i.na, align 8, !tbaa !59
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 2 ; 3 uses
  %i.nb = icmp samesign ult i64 %indvars.iv.next276.i, %i.hz
  br i1 %i.nb, label %.lr.ph258.i, label %.loopexit284, !llvm.loop !111

.loopexit266.i:                                   ; preds = %.lr.ph.preheader.i, %bb.t, %bb.w, %.lr.ph.i251, %bb.v
  %.str.16.sink = phi ptr [ @.str.15, %.lr.ph.i251 ], [ @.str.15, %bb.v ], [ @.str.16, %bb.w ], [ @.str.15, %bb.t ], [ @.str.15, %.lr.ph.preheader.i ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull %.str.16.sink) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %.thread

.loopexit284:                                     ; preds = %.lr.ph258.i, %.preheader.i, %.preheader241.i
  %.4.lcssa.i = phi i64 [ 4, %.preheader.i ], [ 4, %.preheader241.i ], [ %indvars.iv.next276.i, %.lr.ph258.i ]
  %i.nc = getelementptr [32 x i8], ptr %.pre288.pre.i, i64 %.4.lcssa.i ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 -96
  %i.ne = getelementptr i8, ptr %i.nc, i64 -56
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !57
  %i.ng = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.nf, i64 1
  store <2 x double> %i.ng, ptr %i.nd, align 8, !tbaa !48
  %i.nh = getelementptr inbounds nuw i8, ptr %.pre288.pre.i, i64 32
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !56
  %i.nj = call nsz double @llvm.exp.f64(double %i.ni)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store double %i.nj, ptr %i.nk, align 8, !tbaa !51
  %i.nl = getelementptr inbounds nuw i8, ptr %.pre288.pre.i, i64 40
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !57
  %i.nn = call nsz double @llvm.exp.f64(double %i.nm)
  %i.no = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store double %i.nn, ptr %i.no, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.np = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not230 = icmp eq ptr %i.np, null
  br i1 %.not230, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit284
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %.thread

bb.ac:                                            ; preds = %.loopexit284
  %i.nq = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.nr = getelementptr inbounds nuw [256 x i8], ptr %i.nq, i64 %indvars.iv351
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 80
  %i.nt = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.np, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ns) #9
  %i.nu = icmp eq i32 %i.nt, 1
  %i.nv = zext i1 %i.nu to i32
  %i.nw = add nuw nsw i32 %.0191320, %i.nv        ; 3 uses
  %i.nx = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.ny = getelementptr inbounds nuw [256 x i8], ptr %i.nx, i64 %indvars.iv351 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 80
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !46 ; 5 uses
  %i.ob = fcmp nsz uge double %i.oa, 0.000000e+00
  %.pre = load i32, ptr %i.y, align 8, !tbaa !64
  %.pre360 = sitofp nsz i32 %.pre to double
  %.pre361 = fmul nnan nsz double %.pre360, 5.000000e-01 ; 2 uses
  %i.oc = fcmp nsz ult double %i.oa, %.pre361
  %or.cond417 = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %or.cond417, label %bb.ad, label %split

split:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.13, double noundef %i.oa, double noundef %.pre361) #9
  br label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.od = fcmp nsz une double %i.oa, 0.000000e+00
  br i1 %i.od, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
