Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@decompose_zp2biquads:bb.a
  %.lcssa.ph = phi double [ %i.ff, %expand.exit.thread.split.loop.exit401 ], [ %i.eg, %.lr.ph49.i.1 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.98, double noundef %.lcssa.ph, i32 noundef %indvars.iv58.i.lcssa.ph) #14
  br label %.thread257

.lr.ph49.i246.1:                                  ; preds = %expand.exit
  %i.fg = extractelement <2 x double> %i.de, i64 0
  %i.fh = fmul nsz double %i.fg, 0.000000e+00
  %i.fi = extractelement <2 x double> %i.de, i64 1
  %i.fj = fadd nsz double %i.fi, %i.fh
  %i.fk = fsub nsz double %i.el, %i.fj            ; 2 uses
  %i.fl = tail call nsz double @llvm.fabs.f64(double %i.fk)
  %i.fm = fcmp nsz ogt double %i.fl, f0x3E80000000000000
  br i1 %i.fm, label %expand.exit251.thread, label %expand.exit251

expand.exit251:                                   ; preds = %.lr.ph49.i246.1
  store <2 x double> splat (double +qnan), ptr %i.cn, align 8, !tbaa !77
  %i.fn = shl nuw nsw i32 %.sroa.15.0, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.fo
  store <2 x double> splat (double +qnan), ptr %i.fp, align 8, !tbaa !77
  store <2 x double> splat (double +qnan), ptr %i.cs, align 8, !tbaa !77
  %i.fq = shl nuw nsw i32 %.sroa.13.0, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fr
  store <2 x double> splat (double +qnan), ptr %i.fs, align 8, !tbaa !77
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !187 ; 3 uses
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %i.ft, i64 %indvars.iv330 ; 6 uses
  store double 1.000000e+00, ptr %i.fu, align 8, !tbaa !77
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store double %i.fb, ptr %i.fv, align 8, !tbaa !77
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store double %i.ez, ptr %i.fw, align 8, !tbaa !77
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store double 1.000000e+00, ptr %i.fx, align 8, !tbaa !77
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store double %i.dy, ptr %i.fy, align 8, !tbaa !77
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store double %i.dw, ptr %i.fz, align 8, !tbaa !77
  %i.ga = load i32, ptr %i.e, align 8, !tbaa !161
  %.not228 = icmp eq i32 %i.ga, 0
  br i1 %.not228, label %bb.z, label %bb.x

expand.exit251.thread.split.loop.exit398:         ; preds = %expand.exit
  %i.gb = fneg nsz double %i.fc
  br label %expand.exit251.thread

expand.exit251.thread:                            ; preds = %.lr.ph49.i246.1, %expand.exit251.thread.split.loop.exit398
  %indvars.iv58.i247.lcssa.ph = phi i32 [ 0, %expand.exit251.thread.split.loop.exit398 ], [ 1, %.lr.ph49.i246.1 ]
  %.lcssa303.ph = phi double [ %i.gb, %expand.exit251.thread.split.loop.exit398 ], [ %i.fk, %.lr.ph49.i246.1 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.98, double noundef %.lcssa303.ph, i32 noundef %indvars.iv58.i247.lcssa.ph) #14
  br label %.thread257

bb.x:                                             ; preds = %expand.exit251
  %i.gc = fadd nsz double %i.dy, 1.000000e+00
  %i.gd = fsub nsz double %i.gc, %i.dv            ; 2 uses
  %i.ge = tail call nsz double @llvm.fabs.f64(double %i.gd)
  %i.gf = fcmp nsz ogt double %i.ge, f0x3EB0C6F7A0B5ED8D
  br i1 %i.gf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gg = fadd nsz double %i.fb, 1.000000e+00
  %i.gh = fsub nsz double %i.gg, %i.ey
  %i.gi = fdiv nsz double %i.gh, %i.gd            ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.101, double noundef %i.gi) #14
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !187 ; 2 uses
  %i.gk = getelementptr inbounds nuw [64 x i8], ptr %i.gj, i64 %indvars.iv330 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !tbaa !77
  %i.gn = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul nsz <2 x double> %i.go, %i.gm      ; 3 uses
  store <2 x double> %i.gp, ptr %i.gl, align 8, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !77
  %i.gs = fmul nsz double %i.gi, %i.gr
  store double %i.gs, ptr %i.gq, align 8, !tbaa !77
  %i.gt = extractelement <2 x double> %i.gp, i64 0
  %i.gu = extractelement <2 x double> %i.gp, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %expand.exit251
  %.pre = phi double [ %i.gt, %bb.y ], [ 1.000000e+00, %bb.x ], [ 1.000000e+00, %expand.exit251 ]
  %i.gv = phi double [ %i.gu, %bb.y ], [ %i.dy, %bb.x ], [ %i.dy, %expand.exit251 ]
  %i.gw = phi ptr [ %i.gj, %bb.y ], [ %i.ft, %bb.x ], [ %i.ft, %expand.exit251 ] ; 4 uses
  %.not229 = icmp eq i64 %indvars.iv330, 0
  br i1 %.not229, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw [64 x i8], ptr %i.gw, i64 %indvars.iv330
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gy = load double, ptr %i.r, align 8, !tbaa !108
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !77
  %i.hb = fmul nsz double %i.gy, %i.ha            ; 2 uses
  store double %i.hb, ptr %i.gz, align 8, !tbaa !77
  %i.hc = load double, ptr %i.r, align 8, !tbaa !108
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !77
  %i.hf = fmul nsz double %i.hc, %i.he            ; 2 uses
  store double %i.hf, ptr %i.hd, align 8, !tbaa !77
  %i.hg = load double, ptr %i.r, align 8, !tbaa !108
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hh = phi double [ %i.hb, %bb.ab ], [ %.pre, %bb.aa ]
  %i.hi = phi double [ %i.hf, %bb.ab ], [ %i.gv, %bb.aa ]
  %i.hj = phi ptr [ %i.gw, %bb.ab ], [ %i.gx, %bb.aa ] ; 4 uses
  %i.hk = phi nsz double [ %i.hg, %bb.ab ], [ 1.000000e+00, %bb.aa ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !77
  %i.hn = fmul nsz double %i.hk, %i.hm            ; 2 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !77
  %i.ho = load double, ptr %i.hj, align 8, !tbaa !77
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !77
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !77
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.102, double noundef %i.ho, double noundef %i.hq, double noundef %i.hs, double noundef %i.hh, double noundef %i.hi, double noundef %i.hn) #14
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1
  %.not227 = icmp eq i32 %i.s, 0
  br i1 %.not227, label %._crit_edge294, label %bb.c, !llvm.loop !192

._crit_edge294:                                   ; preds = %bb.ac, %.preheader262
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %.thread257, label %bb.b, !llvm.loop !193

.thread257:                                       ; preds = %._crit_edge294, %bb.b, %._crit_edge287, %._crit_edge, %expand.exit251.thread, %expand.exit.thread, %bb.a
  %.4 = phi i32 [ -22, %expand.exit251.thread ], [ 0, %bb.a ], [ -22, %expand.exit.thread ], [ -22, %._crit_edge287 ], [ -22, %._crit_edge ], [ 0, %._crit_edge294 ], [ -12, %bb.b ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @convert_serial2parallel(ptr nofree readonly captures(none) %.72.val, i32 noundef %0) unnamed_addr #1 {
bb.a:
  %.not15 = icmp sgt i32 %0, 0
  br i1 %.not15, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.72.val, i64 104
  %wide.trip.count47 = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %._crit_edge14
  %indvars.iv44 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next45, %._crit_edge14 ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv44 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.f) ; 3 uses
  %i.g = add nsw i32 %., 1
  %i.h = sdiv i32 %i.g, 2                         ; 6 uses
  %i.i = shl nsw i32 %i.h, 1                      ; 8 uses
  %i.j = or disjoint i32 %i.i, 1                  ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 8 uses
  %i.m = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 8 uses
  %i.n = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 16 uses
  %i.o = mul nsw i32 %i.i, %i.h
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias ptr @av_calloc(i64 noundef %i.p, i64 noundef 32) #14 ; 15 uses
  %i.r = insertelement <4 x ptr> poison, ptr %i.l, i64 0
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.m, i64 1
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.n, i64 2
  %i.u = insertelement <4 x ptr> %i.t, ptr %i.q, i64 3
  %.fr = freeze <4 x ptr> %i.u
  %i.v = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, 0
  br i1 %i.x, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @av_free(ptr noundef %i.l) #14
  tail call void @av_free(ptr noundef %i.m) #14
  tail call void @av_free(ptr noundef %i.n) #14
  tail call void @av_free(ptr noundef %i.q) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.y = shl i32 %i.h, 2                          ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.h
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aa ; 16 uses
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !77
  %i.ac = icmp sgt i32 %., 0
  br i1 %i.ac, label %.lr.ph.preheader.i.preheader, label %solve.exit.thread

.lr.ph.preheader.i.preheader:                     ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !187
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  br label %.lr.ph.preheader.i

.lr.ph11:                                         ; preds = %biquad_process.exit.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %wide.trip.count.i118 = zext nneg i32 %i.i to i64 ; 2 uses
  %i.ag = shl nuw nsw i64 %wide.trip.count.i118, 3
  %i.ah = add nsw i32 %i.i, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = shl nuw nsw i64 %i.k, 3
  %smax35 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %.lr.ph.i119.preheader

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %biquad_process.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %biquad_process.exit.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %indvars.iv ; 3 uses
  %.not111 = icmp eq i64 %indvars.iv, 0
  %i.am = select i1 %.not111, ptr %i.l, ptr %i.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !77
  %i.at = fneg nsz <2 x double> %i.as             ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 2>
  %shift = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.aw = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.bh, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !77
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.bb = insertelement <2 x double> poison, double %i.ay, i64 0 ; 2 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bc, <2 x double> %i.az) ; 4 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  store double %i.be, ptr %i.ba, align 8, !tbaa !77
  %foldExtExtBinop = fmul nsz <2 x double> %i.bd, %shift
  %i.bf = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bg = shufflevector <2 x double> %i.bb, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bg, <2 x double> %i.bf)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %biquad_process.exit.loopexit, label %.lr.ph.i, !llvm.loop !194

biquad_process.exit.loopexit:                     ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph11, label %.lr.ph.preheader.i, !llvm.loop !195

._crit_edge:                                      ; preds = %biquad_process.exit125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.bk = zext nneg i32 %i.i to i64               ; 34 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1) ; 2 uses
  %1 = add nsw i64 %i.bk, -2
  %xtraiter102 = and i64 %umax, 3                 ; 3 uses
  %i.bl = icmp ult i32 %i.i, 4
  %unroll_iter105 = and i64 %umax, 2147483644
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  %lcmp.mod104 = icmp ne i64 %xtraiter102, 0
  br label %.preheader113.i

.loopexit.i:                                      ; preds = %._crit_edge.us120.i, %.preheader111.i.prol.loopexit, %.preheader111.i, %.split.us.i
  %indvars.iv.next144193.i = phi i64 [ 1, %.preheader111.i.prol.loopexit ], [ %indvars.iv.next144.i, %.split.us.i ], [ 1, %.preheader111.i ], [ %indvars.iv.next144.i, %._crit_edge.us120.i ] ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next144193.i, %i.bk
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond174.not.i, label %.preheader109.i, label %.preheader113.i, !llvm.loop !196

.preheader113.i:                                  ; preds = %.loopexit.i, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.loopexit.i ], [ 1, %._crit_edge ] ; 6 uses
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144193.i, %.loopexit.i ], [ 0, %._crit_edge ] ; 13 uses
  %indvars172.i = trunc i64 %indvars.iv143.i to i32 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv143.i, 0
  %i.bm = mul nuw nsw i64 %indvars.iv143.i, %i.bk ; 2 uses
  br i1 %.not.i, label %.preheader112.i.preheader, label %.preheader112.us.preheader.i

.preheader112.i.preheader:                        ; preds = %.preheader113.i
  br i1 %i.bl, label %.preheader112.i.epil.preheader, label %.preheader112.i

.preheader112.us.preheader.i:                     ; preds = %.preheader113.i
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.bm ; 6 uses
  %invariant.gep203.i.a = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv143.i
  %xtraiter = and i64 %indvars.iv143.i, 3         ; 3 uses
  %i.bn = icmp ult i64 %indvars.iv143.i, 4
  %unroll_iter = and i64 %indvars.iv143.i, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  br label %.preheader112.us.i

.preheader112.us.i:                               ; preds = %._crit_edge.us.i, %.preheader112.us.preheader.i
  %indvars.iv145.i = phi i64 [ %indvars.iv143.i, %.preheader112.us.preheader.i ], [ %indvars.iv.next146.i, %._crit_edge.us.i ] ; 4 uses
  %invariant.gep201.i = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv145.i ; 5 uses
  br i1 %i.bn, label %.epil.preheader, label %.preheader112.us.i.new

.preheader112.us.i.new:                           ; preds = %.preheader112.us.i, %.preheader112.us.i.new
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ] ; 6 uses
  %.0105114.us.i = phi double [ %i.cd, %.preheader112.us.i.new ], [ 0.000000e+00, %.preheader112.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112
  %i.bo = load double, ptr %gep.i, align 8, !tbaa !77
  %i.bp = mul nuw nsw i64 %indvars.iv.i112, %i.bk
  %gep202.i.a = getelementptr [8 x i8], ptr %invariant.gep201.i, i64 %i.bp
  %i.bq = load double, ptr %gep202.i.a, align 8, !tbaa !77
  %i.br = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %.0105114.us.i)
  %indvars.iv.next.i113 = or disjoint i64 %indvars.iv.i112, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113
  %i.bs = load double, ptr %gep.i.1, align 8, !tbaa !77
  %i.bt = mul nuw nsw i64 %indvars.iv.next.i113, %i.bk
  %gep202.i.1 = getelementptr [8 x i8], ptr %invariant.gep201.i, i64 %i.bt
  %i.bu = load double, ptr %gep202.i.1, align 8, !tbaa !77
  %i.bv = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.bu, double %i.br)
  %indvars.iv.next.i113.1 = or disjoint i64 %indvars.iv.i112, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.1
  %i.bw = load double, ptr %gep.i.2, align 8, !tbaa !77
  %i.bx = mul nuw nsw i64 %indvars.iv.next.i113.1, %i.bk
  %gep202.i.2 = getelementptr [8 x i8], ptr %invariant.gep201.i, i64 %i.bx
  %i.by = load double, ptr %gep202.i.2, align 8, !tbaa !77
  %i.bz = tail call nsz double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bv)
  %indvars.iv.next.i113.2 = or disjoint i64 %indvars.iv.i112, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.2
  %i.ca = load double, ptr %gep.i.3, align 8, !tbaa !77
  %i.cb = mul nuw nsw i64 %indvars.iv.next.i113.2, %i.bk
  %gep202.i.3 = getelementptr [8 x i8], ptr %invariant.gep201.i, i64 %i.cb
  %i.cc = load double, ptr %gep202.i.3, align 8, !tbaa !77
  %i.cd = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.cc, double %i.bz) ; 3 uses
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i112, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader112.us.i.new, !llvm.loop !197

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader112.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader112.us.i
  %indvars.iv.i112.epil.init = phi i64 [ 0, %.preheader112.us.i ], [ %indvars.iv.next.i113.3, %._crit_edge.us.i.unr-lcssa ]
  %.0105114.us.i.epil.init = phi double [ 0.000000e+00, %.preheader112.us.i ], [ %i.cd, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i112.epil = phi i64 [ %indvars.iv.i112.epil.init, %.epil.preheader ], [ %indvars.iv.next.i113.epil, %bb.d ] ; 3 uses
  %.0105114.us.i.epil = phi double [ %.0105114.us.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112.epil
  %i.ce = load double, ptr %gep.i.epil, align 8, !tbaa !77
  %i.cf = mul nuw nsw i64 %indvars.iv.i112.epil, %i.bk
  %gep202.i.epil = getelementptr [8 x i8], ptr %invariant.gep201.i, i64 %i.cf
  %i.cg = load double, ptr %gep202.i.epil, align 8, !tbaa !77
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double %.0105114.us.i.epil) ; 2 uses
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.d, !llvm.loop !198

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.cd, %._crit_edge.us.i.unr-lcssa ], [ %i.ch, %bb.d ]
  %i.ci = mul nuw nsw i64 %indvars.iv145.i, %i.bk
  %gep204.i.a = getelementptr [8 x i8], ptr %invariant.gep203.i.a, i64 %i.ci
  %i.cj = load double, ptr %gep204.i.a, align 8, !tbaa !77
  %i.ck = fsub nsz double %i.cj, %.lcssa
  %gep206.i.a = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv145.i
  store double %i.ck, ptr %gep206.i.a, align 8, !tbaa !77
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %2 = icmp samesign ult i64 %indvars.iv.next146.i, %i.bk
  br i1 %2, label %.preheader112.us.i, label %.split.us.i, !llvm.loop !199

.preheader112.i:                                  ; preds = %.preheader112.i.preheader, %.preheader112.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ] ; 6 uses
  %niter106 = phi i64 [ %niter106.next.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ]
  %i.cl = mul nuw nsw i64 %indvars.iv150.i, %i.bk
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv150.i
  store double %i.cn, ptr %i.co, align 8, !tbaa !77
  %indvars.iv.next151.i = or disjoint i64 %indvars.iv150.i, 1 ; 2 uses
  %i.cp = mul nuw nsw i64 %indvars.iv.next151.i, %i.bk
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next151.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !77
  %indvars.iv.next151.i.1 = or disjoint i64 %indvars.iv150.i, 2 ; 2 uses
  %i.ct = mul nuw nsw i64 %indvars.iv.next151.i.1, %i.bk
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next151.i.1
  store double %i.cv, ptr %i.cw, align 8, !tbaa !77
  %indvars.iv.next151.i.2 = or disjoint i64 %indvars.iv150.i, 3 ; 2 uses
  %i.cx = mul nuw nsw i64 %indvars.iv.next151.i.2, %i.bk
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !77
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next151.i.2
  store double %i.cz, ptr %i.da, align 8, !tbaa !77
  %indvars.iv.next151.i.3 = add nuw nsw i64 %indvars.iv150.i, 4 ; 2 uses
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.split.us.thread.i.unr-lcssa, label %.preheader112.i, !llvm.loop !199

.split.us.i:                                      ; preds = %._crit_edge.us.i
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 3 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next144.i, %i.bk
  br i1 %i.db, label %.preheader111.us.preheader.i, label %.loopexit.i

.split.us.thread.i.unr-lcssa:                     ; preds = %.preheader112.i
  br i1 %lcmp.mod103.not, label %.split.us.thread.i, label %.preheader112.i.epil.preheader

.preheader112.i.epil.preheader:                   ; preds = %.split.us.thread.i.unr-lcssa, %.preheader112.i.preheader
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.preheader112.i.preheader ], [ %indvars.iv.next151.i.3, %.split.us.thread.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.preheader112.i.epil

.preheader112.i.epil:                             ; preds = %.preheader112.i.epil, %.preheader112.i.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv.next151.i.epil, %.preheader112.i.epil ], [ %indvars.iv150.i.epil.init, %.preheader112.i.epil.preheader ] ; 3 uses
  %epil.iter102 = phi i64 [ %epil.iter102.next, %.preheader112.i.epil ], [ 0, %.preheader112.i.epil.preheader ]
  %i.dc = mul nuw nsw i64 %indvars.iv150.i.epil, %i.bk
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !77
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv150.i.epil
  store double %i.de, ptr %i.df, align 8, !tbaa !77
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter102.next = add i64 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i64 %epil.iter102.next, %xtraiter102
  br i1 %epil.iter102.cmp.not, label %.split.us.thread.i, label %.preheader112.i.epil, !llvm.loop !200

.split.us.thread.i:                               ; preds = %.preheader112.i.epil, %.split.us.thread.i.unr-lcssa
  %i.dg = mul nuw nsw i32 %i.i, %indvars172.i
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dh ; 3 uses
  %i.dj = and i64 %indvar, 1
  %lcmp.mod108.not.not = icmp eq i64 %i.dj, 0
  br i1 %lcmp.mod108.not.not, label %.preheader111.i.prol, label %.preheader111.i.prol.loopexit

.preheader111.i.prol:                             ; preds = %.split.us.thread.i
  %i.dk = load double, ptr %i.di, align 8, !tbaa !77
  %i.dl = fdiv nsz double 1.000000e+00, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv160.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !77
  %i.do = fmul nsz double %i.dl, %i.dn
  %i.dp = mul nuw nsw i64 %indvars.iv160.i, %i.bk
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dp
  store double %i.do, ptr %i.dq, align 8, !tbaa !77
  %indvars.iv.next168.i.prol = add nuw nsw i64 %indvars.iv160.i, 1
  br label %.preheader111.i.prol.loopexit

.preheader111.i.prol.loopexit:                    ; preds = %.preheader111.i.prol, %.split.us.thread.i
  %indvars.iv167.i.unr = phi i64 [ %indvars.iv160.i, %.split.us.thread.i ], [ %indvars.iv.next168.i.prol, %.preheader111.i.prol ]
  %i.dr = icmp eq i64 %1, %indvar
  br i1 %i.dr, label %.loopexit.i, label %.preheader111.i

.preheader111.us.preheader.i:                     ; preds = %.split.us.i
  %i.ds = mul nuw nsw i32 %i.i, %indvars172.i
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv143.i ; 7 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %invariant.gep211.i.a = getelementptr [8 x i8], ptr %i.q, i64 %i.bm
  %xtraiter94 = and i64 %indvars.iv143.i, 3       ; 3 uses
  %i.dw = icmp ult i64 %indvars.iv143.i, 4
  %unroll_iter99 = and i64 %indvars.iv143.i, -4
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  %lcmp.mod98 = icmp ne i64 %xtraiter94, 0
  br label %.preheader111.us.i

.preheader111.us.i:                               ; preds = %._crit_edge.us120.i, %.preheader111.us.preheader.i
  %indvars.iv162.i = phi i64 [ %indvars.iv160.i, %.preheader111.us.preheader.i ], [ %indvars.iv.next163.i, %._crit_edge.us120.i ] ; 3 uses
  %i.dx = mul nuw nsw i64 %indvars.iv162.i, %i.bk ; 2 uses
  %invariant.gep207.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dx ; 5 uses
  br i1 %i.dw, label %.epil.preheader93, label %.preheader111.us.i.new

.preheader111.us.i.new:                           ; preds = %.preheader111.us.i, %.preheader111.us.i.new
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i.3, %.preheader111.us.i.new ], [ 0, %.preheader111.us.i ] ; 6 uses
  %.1117.us.i = phi double [ %i.en, %.preheader111.us.i.new ], [ 0.000000e+00, %.preheader111.us.i ]
  %niter100 = phi i64 [ %niter100.next.3, %.preheader111.us.i.new ], [ 0, %.preheader111.us.i ]
  %gep208.i.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv155.i
  %i.dy = load double, ptr %gep208.i.a, align 8, !tbaa !77
  %i.dz = mul nuw nsw i64 %indvars.iv155.i, %i.bk
  %gep210.i.a = getelementptr [8 x i8], ptr %i.du, i64 %i.dz
  %i.ea = load double, ptr %gep210.i.a, align 8, !tbaa !77
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.ea, double %.1117.us.i)
  %indvars.iv.next156.i = or disjoint i64 %indvars.iv155.i, 1 ; 2 uses
  %gep208.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv.next156.i
  %i.ec = load double, ptr %gep208.i.1, align 8, !tbaa !77
  %i.ed = mul nuw nsw i64 %indvars.iv.next156.i, %i.bk
  %gep210.i.1 = getelementptr [8 x i8], ptr %i.du, i64 %i.ed
  %i.ee = load double, ptr %gep210.i.1, align 8, !tbaa !77
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.ec, double %i.ee, double %i.eb)
  %indvars.iv.next156.i.1 = or disjoint i64 %indvars.iv155.i, 2 ; 2 uses
  %gep208.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv.next156.i.1
  %i.eg = load double, ptr %gep208.i.2, align 8, !tbaa !77
  %i.eh = mul nuw nsw i64 %indvars.iv.next156.i.1, %i.bk
  %gep210.i.2 = getelementptr [8 x i8], ptr %i.du, i64 %i.eh
  %i.ei = load double, ptr %gep210.i.2, align 8, !tbaa !77
  %i.ej = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %i.ei, double %i.ef)
  %indvars.iv.next156.i.2 = or disjoint i64 %indvars.iv155.i, 3 ; 2 uses
  %gep208.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv.next156.i.2
  %i.ek = load double, ptr %gep208.i.3, align 8, !tbaa !77
  %i.el = mul nuw nsw i64 %indvars.iv.next156.i.2, %i.bk
  %gep210.i.3 = getelementptr [8 x i8], ptr %i.du, i64 %i.el
  %i.em = load double, ptr %gep210.i.3, align 8, !tbaa !77
  %i.en = tail call nsz double @llvm.fmuladd.f64(double %i.ek, double %i.em, double %i.ej) ; 3 uses
  %indvars.iv.next156.i.3 = add nuw nsw i64 %indvars.iv155.i, 4 ; 2 uses
  %niter100.next.3 = add nuw i64 %niter100, 4     ; 2 uses
  %niter100.ncmp.3 = icmp eq i64 %niter100.next.3, %unroll_iter99
  br i1 %niter100.ncmp.3, label %._crit_edge.us120.i.unr-lcssa, label %.preheader111.us.i.new, !llvm.loop !201

._crit_edge.us120.i.unr-lcssa:                    ; preds = %.preheader111.us.i.new
  br i1 %lcmp.mod96.not, label %._crit_edge.us120.i, label %.epil.preheader93

.epil.preheader93:                                ; preds = %._crit_edge.us120.i.unr-lcssa, %.preheader111.us.i
  %indvars.iv155.i.epil.init = phi i64 [ 0, %.preheader111.us.i ], [ %indvars.iv.next156.i.3, %._crit_edge.us120.i.unr-lcssa ]
  %.1117.us.i.epil.init = phi double [ 0.000000e+00, %.preheader111.us.i ], [ %i.en, %._crit_edge.us120.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader93
  %indvars.iv155.i.epil = phi i64 [ %indvars.iv155.i.epil.init, %.epil.preheader93 ], [ %indvars.iv.next156.i.epil, %bb.e ] ; 3 uses
  %.1117.us.i.epil = phi double [ %.1117.us.i.epil.init, %.epil.preheader93 ], [ %i.er, %bb.e ]
  %epil.iter95 = phi i64 [ 0, %.epil.preheader93 ], [ %epil.iter95.next, %bb.e ]
  %gep208.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv155.i.epil
  %i.eo = load double, ptr %gep208.i.epil, align 8, !tbaa !77
  %i.ep = mul nuw nsw i64 %indvars.iv155.i.epil, %i.bk
  %gep210.i.epil = getelementptr [8 x i8], ptr %i.du, i64 %i.ep
  %i.eq = load double, ptr %gep210.i.epil, align 8, !tbaa !77
  %i.er = tail call nsz double @llvm.fmuladd.f64(double %i.eo, double %i.eq, double %.1117.us.i.epil) ; 2 uses
  %indvars.iv.next156.i.epil = add nuw nsw i64 %indvars.iv155.i.epil, 1
  %epil.iter95.next = add i64 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i64 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %._crit_edge.us120.i, label %bb.e, !llvm.loop !202

._crit_edge.us120.i:                              ; preds = %bb.e, %._crit_edge.us120.i.unr-lcssa
  %.lcssa80 = phi double [ %i.en, %._crit_edge.us120.i.unr-lcssa ], [ %i.er, %bb.e ]
  %i.es = load double, ptr %i.dv, align 8, !tbaa !77
  %i.et = fdiv nsz double 1.000000e+00, %i.es
  %gep212.i.a = getelementptr [8 x i8], ptr %invariant.gep211.i.a, i64 %indvars.iv162.i
  %i.eu = load double, ptr %gep212.i.a, align 8, !tbaa !77
  %i.ev = fsub nsz double %i.eu, %.lcssa80
  %i.ew = fmul nsz double %i.et, %i.ev
  %gep214.i.a = getelementptr [8 x i8], ptr %i.du, i64 %i.dx
  store double %i.ew, ptr %gep214.i.a, align 8, !tbaa !77
  %indvars.iv.next163.i = add nuw nsw i64 %indvars.iv162.i, 1 ; 2 uses
  %exitcond166.not.i = icmp eq i64 %indvars.iv.next163.i, %i.bk
  br i1 %exitcond166.not.i, label %.loopexit.i, label %.preheader111.us.i, !llvm.loop !203

.preheader111.i:                                  ; preds = %.preheader111.i.prol.loopexit, %.preheader111.i
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i.1, %.preheader111.i ], [ %indvars.iv167.i.unr, %.preheader111.i.prol.loopexit ] ; 4 uses
  %i.ex = load double, ptr %i.di, align 8, !tbaa !77
  %i.ey = fdiv nsz double 1.000000e+00, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv167.i
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !77
  %i.fb = fmul nsz double %i.ey, %i.fa
  %i.fc = mul nuw nsw i64 %indvars.iv167.i, %i.bk
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fc
  store double %i.fb, ptr %i.fd, align 8, !tbaa !77
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.fe = load double, ptr %i.di, align 8, !tbaa !77
  %i.ff = fdiv nsz double 1.000000e+00, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next168.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !77
  %i.fi = fmul nsz double %i.ff, %i.fh
  %i.fj = mul nuw nsw i64 %indvars.iv.next168.i, %i.bk
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fj
  store double %i.fi, ptr %i.fk, align 8, !tbaa !77
  %indvars.iv.next168.i.1 = add nuw nsw i64 %indvars.iv167.i, 2 ; 2 uses
  %exitcond171.not.i.1 = icmp eq i64 %indvars.iv.next168.i.1, %i.bk
  br i1 %exitcond171.not.i.1, label %.loopexit.i, label %.preheader111.i, !llvm.loop !203

.preheader109.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 8 uses
  %.not136.i = icmp eq i64 %indvars.iv179.i, 0
  br i1 %.not136.i, label %._crit_edge.i, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.preheader109.i
  %i.fl = mul nuw nsw i64 %indvars.iv179.i, %i.bk
  %invariant.gep215.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fl ; 5 uses
  %xtraiter110 = and i64 %indvars.iv179.i, 3      ; 3 uses
  %i.fm = icmp samesign ult i64 %indvars.iv179.i, 4
  br i1 %i.fm, label %.epil.preheader109, label %.lr.ph.i115.new

.lr.ph.i115.new:                                  ; preds = %.lr.ph.i115
  %unroll_iter115 = and i64 %indvars.iv179.i, 9223372036854775804
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %._crit_edge.i, label %.epil.preheader109

.epil.preheader109:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i115
  %indvars.iv175.i.epil.init = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next176.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.2123.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i115 ], [ %i.gk, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter110, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader109
  %indvars.iv175.i.epil = phi i64 [ %indvars.iv175.i.epil.init, %.epil.preheader109 ], [ %indvars.iv.next176.i.epil, %bb.f ] ; 3 uses
  %.2123.i.epil = phi double [ %.2123.i.epil.init, %.epil.preheader109 ], [ %i.fq, %bb.f ]
  %epil.iter111 = phi i64 [ 0, %.epil.preheader109 ], [ %epil.iter111.next, %bb.f ]
  %gep216.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep215.i, i64 %indvars.iv175.i.epil
  %i.fn = load double, ptr %gep216.i.epil, align 8, !tbaa !77
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv175.i.epil
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !77
  %i.fq = tail call nsz double @llvm.fmuladd.f64(double %i.fn, double %i.fp, double %.2123.i.epil) ; 2 uses
  %indvars.iv.next176.i.epil = add nuw nsw i64 %indvars.iv175.i.epil, 1
  %epil.iter111.next = add i64 %epil.iter111, 1   ; 2 uses
  %epil.iter111.cmp.not = icmp eq i64 %epil.iter111.next, %xtraiter110
  br i1 %epil.iter111.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !204

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %.preheader109.i
  %.2.lcssa.i = phi double [ 0.000000e+00, %.preheader109.i ], [ %i.gk, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.fq, %bb.f ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv179.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !77
  %i.ft = fsub nsz double %i.fs, %.2.lcssa.i
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv179.i
  store double %i.ft, ptr %i.fu, align 8, !tbaa !77
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %i.bk
  br i1 %exitcond183.not.i, label %.preheader.i, label %.preheader109.i, !llvm.loop !205

bb.g:                                             ; preds = %bb.g, %.lr.ph.i115.new
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph.i115.new ], [ %indvars.iv.next176.i.3, %bb.g ] ; 6 uses
  %.2123.i = phi double [ 0.000000e+00, %.lr.ph.i115.new ], [ %i.gk, %bb.g ]
  %niter116 = phi i64 [ 0, %.lr.ph.i115.new ], [ %niter116.next.3, %bb.g ]
  %gep216.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep215.i, i64 %indvars.iv175.i
end_hunk_0
begin_hunk_1_@drawtext:bb.a
  br i1 %.not27.7.6, label %.preheader.7, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 28
  store i32 -572662307, ptr %i.jq, align 1, !tbaa !119
  br label %.preheader.7

.preheader.7:                                     ; preds = %bb.db, %bb.da
  %i.jr = load i32, ptr %i.c, align 8, !tbaa !31
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr i8, ptr %i.ih, i64 %i.js  ; 8 uses
  %i.ju = load i8, ptr %i.f, align 1, !tbaa !119
  %i.jv = sext i8 %i.ju to i32
  %i.jw = shl nsw i32 %i.jv, 3
  %i.jx = or disjoint i32 %i.jw, 7
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.a, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !119
  %.not27.77 = icmp sgt i8 %i.ka, -1
  br i1 %.not27.77, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.preheader.7
  store i32 -572662307, ptr %i.jt, align 1, !tbaa !119
  %.pre35.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre42.7 = sext i8 %.pre35.7 to i32
  %.pre43.7 = shl nsw i32 %.pre42.7, 3
  %.pre45.7 = or disjoint i32 %.pre43.7, 7
  %.pre47.7 = sext i32 %.pre45.7 to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.preheader.7
  %.pre-phi48.7 = phi i64 [ %.pre47.7, %bb.dc ], [ %i.jy, %.preheader.7 ] ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi48.7
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !119
  %i.kd = and i8 %i.kc, 64
  %.not27.1.7 = icmp eq i8 %i.kd, 0
  br i1 %.not27.1.7, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 -572662307, ptr %i.ke, align 1, !tbaa !119
  %.pre36.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre49.7 = sext i8 %.pre36.7 to i32
  %.pre51.7 = shl nsw i32 %.pre49.7, 3
  %.pre53.7 = or disjoint i32 %.pre51.7, 7
  %.pre55.7 = sext i32 %.pre53.7 to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pre-phi56.7 = phi i64 [ %.pre55.7, %bb.de ], [ %.pre-phi48.7, %bb.dd ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi56.7
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !119
  %i.kh = and i8 %i.kg, 32
  %.not27.2.7 = icmp eq i8 %i.kh, 0
  br i1 %.not27.2.7, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 -572662307, ptr %i.ki, align 1, !tbaa !119
  %.pre37.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre57.7 = sext i8 %.pre37.7 to i32
  %.pre59.7 = shl nsw i32 %.pre57.7, 3
  %.pre61.7 = or disjoint i32 %.pre59.7, 7
  %.pre63.7 = sext i32 %.pre61.7 to i64
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pre-phi64.7 = phi i64 [ %.pre63.7, %bb.dg ], [ %.pre-phi56.7, %bb.df ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi64.7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !119
  %i.kl = and i8 %i.kk, 16
  %.not27.3.7 = icmp eq i8 %i.kl, 0
  br i1 %.not27.3.7, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.km = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 -572662307, ptr %i.km, align 1, !tbaa !119
  %.pre38.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre65.7 = sext i8 %.pre38.7 to i32
  %.pre67.7 = shl nsw i32 %.pre65.7, 3
  %.pre69.7 = or disjoint i32 %.pre67.7, 7
  %.pre71.7 = sext i32 %.pre69.7 to i64
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pre-phi72.7 = phi i64 [ %.pre71.7, %bb.di ], [ %.pre-phi64.7, %bb.dh ] ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi72.7
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !119
  %i.kp = and i8 %i.ko, 8
  %.not27.4.7 = icmp eq i8 %i.kp, 0
  br i1 %.not27.4.7, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i32 -572662307, ptr %i.kq, align 1, !tbaa !119
  %.pre39.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre73.7 = sext i8 %.pre39.7 to i32
  %.pre75.7 = shl nsw i32 %.pre73.7, 3
  %.pre77.7 = or disjoint i32 %.pre75.7, 7
  %.pre79.7 = sext i32 %.pre77.7 to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pre-phi80.7 = phi i64 [ %.pre79.7, %bb.dk ], [ %.pre-phi72.7, %bb.dj ] ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi80.7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.kt = and i8 %i.ks, 4
  %.not27.5.7 = icmp eq i8 %i.kt, 0
  br i1 %.not27.5.7, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jt, i64 20
  store i32 -572662307, ptr %i.ku, align 1, !tbaa !119
  %.pre40.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre81.7 = sext i8 %.pre40.7 to i32
  %.pre83.7 = shl nsw i32 %.pre81.7, 3
  %.pre85.7 = or disjoint i32 %.pre83.7, 7
  %.pre87.7 = sext i32 %.pre85.7 to i64
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pre-phi88.7 = phi i64 [ %.pre87.7, %bb.dm ], [ %.pre-phi80.7, %bb.dl ] ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi88.7
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !119
  %i.kx = and i8 %i.kw, 2
  %.not27.6.7 = icmp eq i8 %i.kx, 0
  br i1 %.not27.6.7, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store i32 -572662307, ptr %i.ky, align 1, !tbaa !119
  %.pre41.7 = load i8, ptr %i.f, align 1, !tbaa !119
  %.pre89.7 = sext i8 %.pre41.7 to i32
  %.pre91.7 = shl nsw i32 %.pre89.7, 3
  %.pre93.7 = or disjoint i32 %.pre91.7, 7
  %.pre95.7 = sext i32 %.pre93.7 to i64
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pre-phi96.7 = phi i64 [ %.pre95.7, %bb.do ], [ %.pre-phi88.7, %bb.dn ]
  %i.kz = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi96.7
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !119
  %i.lb = and i8 %i.la, 1
  %.not27.7.7 = icmp eq i8 %i.lb, 0
  br i1 %.not27.7.7, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  store i32 -572662307, ptr %i.lc, align 1, !tbaa !119
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !119
  %.not = icmp eq i8 %i.le, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.dr, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #12

declare ptr @avpriv_cga_font_get() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !14, i64 8}
!21 = !{!"AudioIIRContext", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !23, i64 88, !24, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !12, i64 120}
!22 = !{!"double", !7, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!25 = !{!"p1 _ZTS10IIRChannel", !12, i64 0}
!26 = !{!21, !14, i64 16}
!27 = !{!21, !14, i64 24}
!28 = !{!21, !6, i64 68}
!29 = !{!21, !6, i64 116}
!30 = !{!14, !14, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!21, !6, i64 72}
!34 = !{!21, !25, i64 104}
!35 = !{!21, !6, i64 112}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS21AVFilterFormatsConfig", !12, i64 0}
!40 = !{!24, !24, i64 0}
!41 = !{!42, !43, i64 16}
!42 = !{!"AVFilterLink", !43, i64 0, !15, i64 8, !43, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !44, i64 72, !23, i64 96, !45, i64 104, !6, i64 112, !6, i64 116, !46, i64 120, !46, i64 168}
!43 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!44 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!45 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!46 = !{!"AVFilterFormatsConfig", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!47 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!48 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!49 = !{!10, !16, i64 56}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!52 = !{!21, !6, i64 64}
!53 = !{!54, !6, i64 112}
!54 = !{!"AVFrame", !7, i64 0, !7, i64 64, !55, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !56, i64 136, !56, i64 144, !23, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !57, i64 248, !6, i64 256, !45, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !56, i64 304, !58, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !56, i64 344, !56, i64 352, !56, i64 360, !56, i64 368, !12, i64 376, !44, i64 384, !56, i64 408, !6, i64 416}
!55 = !{!"p2 omnipotent char", !17, i64 0}
!56 = !{!"long", !7, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!59 = !{!60, !24, i64 0}
!60 = !{!"ThreadData", !24, i64 0, !24, i64 8}
!61 = !{!60, !24, i64 8}
!62 = !{!21, !12, i64 120}
!63 = !{!42, !6, i64 76}
!64 = !{!65, !6, i64 64}
!65 = !{!"IIRChannel", !7, i64 0, !7, i64 8, !22, i64 24, !7, i64 32, !22, i64 48, !66, i64 56, !6, i64 64}
!66 = !{!"p1 _ZTS13BiquadContext", !12, i64 0}
!67 = distinct !{!67, !37}
!68 = !{!21, !24, i64 96}
!69 = !{!54, !56, i64 136}
!70 = !{!10, !16, i64 32}
!71 = !{!42, !43, i64 0}
!72 = distinct !{!72, !37, !73}
!73 = !{!"llvm.loop.peeled.count", i32 1}
!74 = !{!21, !6, i64 60}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 double", !12, i64 0}
!77 = !{!22, !22, i64 0}
!78 = distinct !{!78, !37}
!79 = distinct !{!79, !37}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !37}
!82 = distinct !{!82, !37}
!83 = distinct !{!83, !37, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !37, !84, !85}
!87 = distinct !{!87, !37, !85, !84}
!88 = distinct !{!88, !37, !85, !84}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37, !84, !85}
!91 = distinct !{!91, !37, !84, !85}
!92 = distinct !{!92, !37, !85, !84}
!93 = distinct !{!93, !37, !85, !84}
!94 = distinct !{!94, !37}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = !{!21, !6, i64 76}
!101 = !{!21, !6, i64 80}
!102 = !{!42, !6, i64 64}
!103 = !{!21, !6, i64 84}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !37}
!108 = !{!65, !22, i64 24}
!109 = distinct !{!109, !37}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !37, !84, !85}
!116 = distinct !{!116, !37, !84}
!117 = distinct !{!117, !37}
!118 = distinct !{!118, !37}
!119 = !{!7, !7, i64 0}
!120 = distinct !{!120, !37}
!121 = distinct !{!121, !37}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!126, !123}
!130 = distinct !{!130, !37, !84, !85}
!131 = distinct !{!131, !37}
!132 = distinct !{!132, !37, !84}
!133 = distinct !{!133, !37}
!134 = !{!135}
!135 = distinct !{!135, !136}
!136 = distinct !{!136, !"LVerDomain"}
!137 = !{!138}
!138 = distinct !{!138, !136}
!139 = !{!140}
!140 = distinct !{!140, !136}
!141 = !{!138, !135}
!142 = distinct !{!142, !37, !84, !85}
!143 = distinct !{!143, !37, !84}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !37, !84, !85}
!150 = distinct !{!150, !151}
!151 = !{!"llvm.loop.unroll.disable"}
!152 = distinct !{!152, !37, !84}
!153 = !{!154}
!154 = distinct !{!154, !155}
end_hunk_1
