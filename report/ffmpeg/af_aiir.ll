Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@decompose_zp2biquads:bb.a
  br i1 %i.eb, label %expand.exit.thread.split.loop.exit401, label %.lr.ph49.i.1

.lr.ph49.i.1:                                     ; preds = %.lr.ph.i
  %i.ec = extractelement <2 x double> %i.df, i64 0
  %i.ed = fmul nsz double %i.ec, 0.000000e+00
  %i.ee = extractelement <2 x double> %i.df, i64 1
  %i.ef = fadd nsz double %i.ee, %i.ed
  %i.eg = fsub nsz double %i.di, %i.ef            ; 2 uses
  %i.eh = tail call nsz double @llvm.fabs.f64(double %i.eg)
  %i.ei = fcmp nsz ogt double %i.eh, f0x3E80000000000000
  br i1 %i.ei, label %expand.exit.thread, label %expand.exit

expand.exit:                                      ; preds = %.lr.ph49.i.1
  %i.ej = fmul nsz <2 x double> %i.co, <double 0.000000e+00, double -0.000000e+00> ; 2 uses
  %shift422 = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fadd nsz <2 x double> %shift422, %i.ej ; 2 uses
  %i.ek = extractelement <2 x double> %foldExtExtBinop423, i64 0
  %i.el = fneg nsz double %i.ek                   ; 2 uses
  %i.em = insertelement <2 x double> %foldExtExtBinop423, double %i.el, i64 1
  %i.en = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = fmul nsz <2 x double> %i.em, %i.en
  %i.ep = shufflevector <2 x double> %i.ej, <2 x double> %i.de, <2 x i32> <i32 1, i32 3>
  %i.eq = fmul <2 x double> %i.ep, <double 1.000000e+00, double -0.000000e+00>
  %i.er = shufflevector <2 x double> %i.co, <2 x double> %i.de, <2 x i32> <i32 0, i32 2>
  %i.es = fadd nsz <2 x double> %i.er, %i.eq      ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = fneg nsz double %i.et                   ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.de, <2 x double> %i.eo) ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.ez = fneg nsz double %i.ey
  %i.fa = extractelement <2 x double> %i.es, i64 1
  %i.fb = fsub nsz double %i.eu, %i.fa            ; 2 uses
  %i.fc = extractelement <2 x double> %i.ex, i64 1 ; 2 uses
  %i.fd = tail call nsz double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp nsz ogt double %i.fd, f0x3E80000000000000
  br i1 %i.fe, label %expand.exit251.thread.split.loop.exit398, label %.lr.ph49.i246.1

expand.exit.thread.split.loop.exit401:            ; preds = %.lr.ph.i
  %i.ff = fneg nsz double %i.dz
  br label %expand.exit.thread

expand.exit.thread:                               ; preds = %.lr.ph49.i.1, %expand.exit.thread.split.loop.exit401
  %indvars.iv58.i.lcssa.ph = phi i32 [ 0, %expand.exit.thread.split.loop.exit401 ], [ 1, %.lr.ph49.i.1 ]
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
  store <2 x double> splat (double +qnan), ptr %i.cn, align 8, !tbaa !67
  %i.fn = shl nuw nsw i32 %.sroa.15.0, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.fo
  store <2 x double> splat (double +qnan), ptr %i.fp, align 8, !tbaa !67
  store <2 x double> splat (double +qnan), ptr %i.cs, align 8, !tbaa !67
  %i.fq = shl nuw nsw i32 %.sroa.13.0, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fr
  store <2 x double> splat (double +qnan), ptr %i.fs, align 8, !tbaa !67
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !74  ; 3 uses
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %i.ft, i64 %indvars.iv330 ; 6 uses
  store double 1.000000e+00, ptr %i.fu, align 8, !tbaa !67
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store double %i.fb, ptr %i.fv, align 8, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store double %i.ez, ptr %i.fw, align 8, !tbaa !67
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store double 1.000000e+00, ptr %i.fx, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store double %i.dy, ptr %i.fy, align 8, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store double %i.dw, ptr %i.fz, align 8, !tbaa !67
  %i.ga = load i32, ptr %i.e, align 8, !tbaa !73
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
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !74  ; 2 uses
  %i.gk = getelementptr inbounds nuw [64 x i8], ptr %i.gj, i64 %indvars.iv330 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !tbaa !67
  %i.gn = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul nsz <2 x double> %i.go, %i.gm      ; 3 uses
  store <2 x double> %i.gp, ptr %i.gl, align 8, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !67
  %i.gs = fmul nsz double %i.gi, %i.gr
  store double %i.gs, ptr %i.gq, align 8, !tbaa !67
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
  %i.gy = load double, ptr %i.r, align 8, !tbaa !70
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !67
  %i.hb = fmul nsz double %i.gy, %i.ha            ; 2 uses
  store double %i.hb, ptr %i.gz, align 8, !tbaa !67
  %i.hc = load double, ptr %i.r, align 8, !tbaa !70
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !67
  %i.hf = fmul nsz double %i.hc, %i.he            ; 2 uses
  store double %i.hf, ptr %i.hd, align 8, !tbaa !67
  %i.hg = load double, ptr %i.r, align 8, !tbaa !70
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hh = phi double [ %i.hb, %bb.ab ], [ %.pre, %bb.aa ]
  %i.hi = phi double [ %i.hf, %bb.ab ], [ %i.gv, %bb.aa ]
  %i.hj = phi ptr [ %i.gw, %bb.ab ], [ %i.gx, %bb.aa ] ; 4 uses
  %i.hk = phi nsz double [ %i.hg, %bb.ab ], [ 1.000000e+00, %bb.aa ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !67
  %i.hn = fmul nsz double %i.hk, %i.hm            ; 2 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !67
  %i.ho = load double, ptr %i.hj, align 8, !tbaa !67
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !67
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !67
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.102, double noundef %i.ho, double noundef %i.hq, double noundef %i.hs, double noundef %i.hh, double noundef %i.hi, double noundef %i.hn) #14
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1
  %.not227 = icmp eq i32 %i.s, 0
  br i1 %.not227, label %._crit_edge294, label %bb.c, !llvm.loop !205

._crit_edge294:                                   ; preds = %bb.ac, %.preheader262
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %.thread257, label %bb.b, !llvm.loop !206

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
  %wide.trip.count48 = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %._crit_edge14
  %indvars.iv45 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next46, %._crit_edge14 ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv45 ; 7 uses
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
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !67
  %i.ac = icmp sgt i32 %., 0
  br i1 %i.ac, label %.lr.ph.preheader.i.preheader, label %solve.exit.thread

.lr.ph.preheader.i.preheader:                     ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1) ; 2 uses
  %wide.trip.count.a = zext nneg i32 %smax to i64 ; 3 uses
  br label %.lr.ph.preheader.i

.lr.ph11:                                         ; preds = %biquad_process.exit.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %wide.trip.count.i118 = zext nneg i32 %i.i to i64 ; 2 uses
  %i.ag = shl nuw nsw i64 %wide.trip.count.i118, 3
  %i.ah = add nsw i32 %i.i, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
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
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !67
  %i.at = fneg nsz <2 x double> %i.as             ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %1 = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 2>
  %shift.a = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.a, %.lr.ph.i ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.bd, %.lr.ph.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !67
  %2 = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0 ; 2 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ba, <2 x double> %2) ; 4 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  store double %i.bc, ptr %i.ay, align 8, !tbaa !67
  %foldExtExtBinop.a = fmul nsz <2 x double> %i.bb, %shift.a
  %3 = shufflevector <2 x double> %foldExtExtBinop.a, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3>
  %4 = shufflevector <2 x double> %i.az, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %4, <2 x double> %3)
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %biquad_process.exit.loopexit, label %.lr.ph.i, !llvm.loop !207

biquad_process.exit.loopexit:                     ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.a
  br i1 %exitcond.not, label %.lr.ph11, label %.lr.ph.preheader.i, !llvm.loop !208

._crit_edge:                                      ; preds = %biquad_process.exit125
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.bg = zext nneg i32 %i.i to i64               ; 34 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1) ; 2 uses
  %i.bh = add nsw i64 %i.bg, -2
  %xtraiter102 = and i64 %umax, 3                 ; 3 uses
  %i.bi = icmp ult i32 %i.i, 4
  %unroll_iter106 = and i64 %umax, 2147483644
  %lcmp.mod104.not = icmp eq i64 %xtraiter102, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter102, 0
  br label %.preheader113.i

.loopexit.i:                                      ; preds = %._crit_edge.us120.i, %.preheader111.i.prol.loopexit, %.preheader111.i, %.split.us.i
  %indvars.iv.next144189.i = phi i64 [ 1, %.preheader111.i.prol.loopexit ], [ %indvars.iv.next144.i, %.split.us.i ], [ 1, %.preheader111.i ], [ %indvars.iv.next144.i, %._crit_edge.us120.i ] ; 2 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next144189.i, %i.bg
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond170.not.i, label %.preheader109.i, label %.preheader113.i, !llvm.loop !209

.preheader113.i:                                  ; preds = %.loopexit.i, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %.loopexit.i ], [ 1, %._crit_edge ] ; 6 uses
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144189.i, %.loopexit.i ], [ 0, %._crit_edge ] ; 13 uses
  %indvars168.i = trunc i64 %indvars.iv143.i to i32 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv143.i, 0
  %i.bj = mul nuw nsw i64 %indvars.iv143.i, %i.bg ; 2 uses
  br i1 %.not.i, label %.preheader112.i.preheader, label %.preheader112.us.preheader.i

.preheader112.i.preheader:                        ; preds = %.preheader113.i
  br i1 %i.bi, label %.preheader112.i.epil.preheader, label %.preheader112.i

.preheader112.us.preheader.i:                     ; preds = %.preheader113.i
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.bj ; 6 uses
  %invariant.gep199.i = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv143.i
  %xtraiter = and i64 %indvars.iv143.i, 3         ; 3 uses
  %i.bk = icmp ult i64 %indvars.iv143.i, 4
  %unroll_iter = and i64 %indvars.iv143.i, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  br label %.preheader112.us.i

.preheader112.us.i:                               ; preds = %._crit_edge.us.i, %.preheader112.us.preheader.i
  %indvars.iv145.i = phi i64 [ %indvars.iv143.i, %.preheader112.us.preheader.i ], [ %indvars.iv.next146.i, %._crit_edge.us.i ] ; 4 uses
  %invariant.gep197.i = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv145.i ; 5 uses
  br i1 %i.bk, label %.epil.preheader, label %.preheader112.us.i.new

.preheader112.us.i.new:                           ; preds = %.preheader112.us.i, %.preheader112.us.i.new
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ] ; 6 uses
  %.0105114.us.i = phi double [ %i.ca, %.preheader112.us.i.new ], [ 0.000000e+00, %.preheader112.us.i ]
  %niter.a = phi i64 [ %niter.next.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112
  %i.bl = load double, ptr %gep.i, align 8, !tbaa !67
  %i.bm = mul nuw nsw i64 %indvars.iv.i112, %i.bg
  %gep198.i = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.bm
  %i.bn = load double, ptr %gep198.i, align 8, !tbaa !67
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %.0105114.us.i)
  %indvars.iv.next.i113 = or disjoint i64 %indvars.iv.i112, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113
  %i.bp = load double, ptr %gep.i.1, align 8, !tbaa !67
  %i.bq = mul nuw nsw i64 %indvars.iv.next.i113, %i.bg
  %gep198.i.1 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.bq
  %i.br = load double, ptr %gep198.i.1, align 8, !tbaa !67
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %i.bo)
  %indvars.iv.next.i113.1 = or disjoint i64 %indvars.iv.i112, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.1
  %i.bt = load double, ptr %gep.i.2, align 8, !tbaa !67
  %i.bu = mul nuw nsw i64 %indvars.iv.next.i113.1, %i.bg
  %gep198.i.2 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.bu
  %i.bv = load double, ptr %gep198.i.2, align 8, !tbaa !67
  %i.bw = tail call nsz double @llvm.fmuladd.f64(double %i.bt, double %i.bv, double %i.bs)
  %indvars.iv.next.i113.2 = or disjoint i64 %indvars.iv.i112, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.2
  %i.bx = load double, ptr %gep.i.3, align 8, !tbaa !67
  %i.by = mul nuw nsw i64 %indvars.iv.next.i113.2, %i.bg
  %gep198.i.3 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.by
  %i.bz = load double, ptr %gep198.i.3, align 8, !tbaa !67
  %i.ca = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.bz, double %i.bw) ; 3 uses
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i112, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter.a, 4         ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader112.us.i.new, !llvm.loop !210

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader112.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader112.us.i
  %indvars.iv.i112.epil.init = phi i64 [ 0, %.preheader112.us.i ], [ %indvars.iv.next.i113.3, %._crit_edge.us.i.unr-lcssa ]
  %.0105114.us.i.epil.init = phi double [ 0.000000e+00, %.preheader112.us.i ], [ %i.ca, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i112.epil = phi i64 [ %indvars.iv.i112.epil.init, %.epil.preheader ], [ %indvars.iv.next.i113.epil, %bb.d ] ; 3 uses
  %.0105114.us.i.epil = phi double [ %.0105114.us.i.epil.init, %.epil.preheader ], [ %i.ce, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112.epil
  %i.cb = load double, ptr %gep.i.epil, align 8, !tbaa !67
  %i.cc = mul nuw nsw i64 %indvars.iv.i112.epil, %i.bg
  %gep198.i.epil = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.cc
  %i.cd = load double, ptr %gep198.i.epil, align 8, !tbaa !67
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %.0105114.us.i.epil) ; 2 uses
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.d, !llvm.loop !211

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.ca, %._crit_edge.us.i.unr-lcssa ], [ %i.ce, %bb.d ]
  %i.cf = mul nuw nsw i64 %indvars.iv145.i, %i.bg
  %gep200.i = getelementptr [8 x i8], ptr %invariant.gep199.i, i64 %i.cf
  %i.cg = load double, ptr %gep200.i, align 8, !tbaa !67
  %i.ch = fsub nsz double %i.cg, %.lcssa
  %gep202.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv145.i
  store double %i.ch, ptr %gep202.i, align 8, !tbaa !67
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next146.i, %i.bg
  br i1 %i.ci, label %.preheader112.us.i, label %.split.us.i, !llvm.loop !212

.preheader112.i:                                  ; preds = %.preheader112.i.preheader, %.preheader112.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ] ; 6 uses
  %niter107 = phi i64 [ %niter107.next.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ]
  %i.cj = mul nuw nsw i64 %indvars.iv148.i, %i.bg
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv148.i
  store double %i.cl, ptr %i.cm, align 8, !tbaa !67
  %indvars.iv.next149.i = or disjoint i64 %indvars.iv148.i, 1 ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv.next149.i, %i.bg
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !67
  %indvars.iv.next149.i.1 = or disjoint i64 %indvars.iv148.i, 2 ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv.next149.i.1, %i.bg
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !67
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i.1
  store double %i.ct, ptr %i.cu, align 8, !tbaa !67
  %indvars.iv.next149.i.2 = or disjoint i64 %indvars.iv148.i, 3 ; 2 uses
  %i.cv = mul nuw nsw i64 %indvars.iv.next149.i.2, %i.bg
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i.2
  store double %i.cx, ptr %i.cy, align 8, !tbaa !67
  %indvars.iv.next149.i.3 = add nuw nsw i64 %indvars.iv148.i, 4 ; 2 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %.split.us.thread.i.unr-lcssa, label %.preheader112.i, !llvm.loop !212

.split.us.i:                                      ; preds = %._crit_edge.us.i
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 3 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next144.i, %i.bg
  br i1 %i.cz, label %.preheader111.us.preheader.i, label %.loopexit.i

.split.us.thread.i.unr-lcssa:                     ; preds = %.preheader112.i
  br i1 %lcmp.mod104.not, label %.split.us.thread.i, label %.preheader112.i.epil.preheader

.preheader112.i.epil.preheader:                   ; preds = %.split.us.thread.i.unr-lcssa, %.preheader112.i.preheader
  %indvars.iv148.i.epil.init = phi i64 [ 0, %.preheader112.i.preheader ], [ %indvars.iv.next149.i.3, %.split.us.thread.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %.preheader112.i.epil

.preheader112.i.epil:                             ; preds = %.preheader112.i.epil, %.preheader112.i.epil.preheader
  %indvars.iv148.i.epil = phi i64 [ %indvars.iv.next149.i.epil, %.preheader112.i.epil ], [ %indvars.iv148.i.epil.init, %.preheader112.i.epil.preheader ] ; 3 uses
  %epil.iter103 = phi i64 [ %epil.iter103.next, %.preheader112.i.epil ], [ 0, %.preheader112.i.epil.preheader ]
  %i.da = mul nuw nsw i64 %indvars.iv148.i.epil, %i.bg
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv148.i.epil
  store double %i.dc, ptr %i.dd, align 8, !tbaa !67
  %indvars.iv.next149.i.epil = add nuw nsw i64 %indvars.iv148.i.epil, 1
  %epil.iter103.next = add i64 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %.split.us.thread.i, label %.preheader112.i.epil, !llvm.loop !213

.split.us.thread.i:                               ; preds = %.preheader112.i.epil, %.split.us.thread.i.unr-lcssa
  %i.de = mul nuw nsw i32 %i.i, %indvars168.i
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.df ; 3 uses
  %i.dh = and i64 %indvar, 1
  %lcmp.mod109.not.not = icmp eq i64 %i.dh, 0
  br i1 %lcmp.mod109.not.not, label %.preheader111.i.prol, label %.preheader111.i.prol.loopexit

.preheader111.i.prol:                             ; preds = %.split.us.thread.i
  %i.di = load double, ptr %i.dg, align 8, !tbaa !67
  %i.dj = fdiv nsz double 1.000000e+00, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv156.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !67
  %i.dm = fmul nsz double %i.dj, %i.dl
  %i.dn = mul nuw nsw i64 %indvars.iv156.i, %i.bg
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dn
  store double %i.dm, ptr %i.do, align 8, !tbaa !67
  %indvars.iv.next164.i.prol = add nuw nsw i64 %indvars.iv156.i, 1
  br label %.preheader111.i.prol.loopexit

.preheader111.i.prol.loopexit:                    ; preds = %.preheader111.i.prol, %.split.us.thread.i
  %indvars.iv163.i.unr = phi i64 [ %indvars.iv156.i, %.split.us.thread.i ], [ %indvars.iv.next164.i.prol, %.preheader111.i.prol ]
end_hunk_0
begin_hunk_1_@convert_serial2parallel:bb.a
  %i.ew = fdiv nsz double 1.000000e+00, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv163.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !67
  %i.ez = fmul nsz double %i.ew, %i.ey
  %i.fa = mul nuw nsw i64 %indvars.iv163.i, %i.bg
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fa
  store double %i.ez, ptr %i.fb, align 8, !tbaa !67
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %i.fc = load double, ptr %i.dg, align 8, !tbaa !67
  %i.fd = fdiv nsz double 1.000000e+00, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next164.i
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !67
  %i.fg = fmul nsz double %i.fd, %i.ff
  %i.fh = mul nuw nsw i64 %indvars.iv.next164.i, %i.bg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fh
  store double %i.fg, ptr %i.fi, align 8, !tbaa !67
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %exitcond167.not.i.1 = icmp eq i64 %indvars.iv.next164.i.1, %i.bg
  br i1 %exitcond167.not.i.1, label %.loopexit.i, label %.preheader111.i, !llvm.loop !216

.preheader109.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 8 uses
  %.not136.i = icmp eq i64 %indvars.iv175.i, 0
  br i1 %.not136.i, label %._crit_edge.i, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.preheader109.i
  %i.fj = mul nuw nsw i64 %indvars.iv175.i, %i.bg
  %invariant.gep211.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fj ; 5 uses
  %xtraiter111 = and i64 %indvars.iv175.i, 3      ; 3 uses
  %i.fk = icmp samesign ult i64 %indvars.iv175.i, 4
  br i1 %i.fk, label %.epil.preheader110, label %.lr.ph.i115.new

.lr.ph.i115.new:                                  ; preds = %.lr.ph.i115
  %unroll_iter116 = and i64 %indvars.iv175.i, 9223372036854775804
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %._crit_edge.i, label %.epil.preheader110

.epil.preheader110:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i115
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next172.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.2123.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i115 ], [ %i.gi, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader110
  %indvars.iv171.i.epil = phi i64 [ %indvars.iv171.i.epil.init, %.epil.preheader110 ], [ %indvars.iv.next172.i.epil, %bb.f ] ; 3 uses
  %.2123.i.epil = phi double [ %.2123.i.epil.init, %.epil.preheader110 ], [ %i.fo, %bb.f ]
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.f ]
  %gep212.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i.epil
  %i.fl = load double, ptr %gep212.i.epil, align 8, !tbaa !67
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv171.i.epil
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !67
  %i.fo = tail call nsz double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %.2123.i.epil) ; 2 uses
  %indvars.iv.next172.i.epil = add nuw nsw i64 %indvars.iv171.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !217

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %.preheader109.i
  %.2.lcssa.i = phi double [ 0.000000e+00, %.preheader109.i ], [ %i.gi, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.fo, %bb.f ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv175.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !67
  %i.fr = fsub nsz double %i.fq, %.2.lcssa.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv175.i
  store double %i.fr, ptr %i.fs, align 8, !tbaa !67
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %i.bg
  br i1 %exitcond179.not.i, label %.preheader.i, label %.preheader109.i, !llvm.loop !218

bb.g:                                             ; preds = %bb.g, %.lr.ph.i115.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph.i115.new ], [ %indvars.iv.next172.i.3, %bb.g ] ; 6 uses
  %.2123.i = phi double [ 0.000000e+00, %.lr.ph.i115.new ], [ %i.gi, %bb.g ]
  %niter117 = phi i64 [ 0, %.lr.ph.i115.new ], [ %niter117.next.3, %bb.g ]
  %gep212.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i
  %i.ft = load double, ptr %gep212.i, align 8, !tbaa !67
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv171.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !67
  %i.fw = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fv, double %.2123.i)
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %gep212.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i
  %i.fx = load double, ptr %gep212.i.1, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next172.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !67
  %i.ga = tail call nsz double @llvm.fmuladd.f64(double %i.fx, double %i.fz, double %i.fw)
  %indvars.iv.next172.i.1 = or disjoint i64 %indvars.iv171.i, 2 ; 2 uses
  %gep212.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.1
  %i.gb = load double, ptr %gep212.i.2, align 8, !tbaa !67
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next172.i.1
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !67
  %i.ge = tail call nsz double @llvm.fmuladd.f64(double %i.gb, double %i.gd, double %i.ga)
  %indvars.iv.next172.i.2 = or disjoint i64 %indvars.iv171.i, 3 ; 2 uses
  %gep212.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.2
  %i.gf = load double, ptr %gep212.i.3, align 8, !tbaa !67
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next172.i.2
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !67
  %i.gi = tail call nsz double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.ge) ; 3 uses
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !219

.preheader.i:                                     ; preds = %._crit_edge.i, %._crit_edge129.i
  %indvar118 = phi i64 [ %indvar.next119, %._crit_edge129.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %._crit_edge129.i ], [ %i.bg, %._crit_edge.i ] ; 6 uses
  %i.gj = add i64 %indvar118, -1
  %indvars.iv.next181.i = add nsw i64 %indvars.iv180.i, -1 ; 4 uses
  %i.gk = icmp slt i64 %indvars.iv180.i, %i.bg
  br i1 %i.gk, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.preheader.i
  %i.gl = mul nuw nsw i64 %indvars.iv.next181.i, %i.bg
  %invariant.gep213.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.gl ; 5 uses
  %xtraiter120 = and i64 %indvar118, 3            ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph128.i, %.prol.preheader
  %indvars.iv182.i.prol = phi i64 [ %indvars.iv.next183.i.prol, %.prol.preheader ], [ %indvars.iv180.i, %.lr.ph128.i ] ; 3 uses
  %.3126.i.prol = phi double [ %i.gp, %.prol.preheader ], [ 0.000000e+00, %.lr.ph128.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph128.i ]
  %gep214.i.prol = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv182.i.prol
  %i.gm = load double, ptr %gep214.i.prol, align 8, !tbaa !67
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv182.i.prol
  %i.go = load double, ptr %i.gn, align 8, !tbaa !67
  %i.gp = tail call nsz double @llvm.fmuladd.f64(double %i.gm, double %i.go, double %.3126.i.prol) ; 3 uses
  %indvars.iv.next183.i.prol = add nuw nsw i64 %indvars.iv182.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !220

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph128.i
  %.lcssa83.unr = phi double [ poison, %.lr.ph128.i ], [ %i.gp, %.prol.preheader ]
  %indvars.iv182.i.unr = phi i64 [ %indvars.iv180.i, %.lr.ph128.i ], [ %indvars.iv.next183.i.prol, %.prol.preheader ]
  %.3126.i.unr = phi double [ 0.000000e+00, %.lr.ph128.i ], [ %i.gp, %.prol.preheader ]
  %i.gq = icmp ult i64 %i.gj, 3
  br i1 %i.gq, label %._crit_edge129.i, label %.lr.ph128.i.new

._crit_edge129.i:                                 ; preds = %.prol.loopexit, %.lr.ph128.i.new, %.preheader.i
  %.3.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %.lcssa83.unr, %.prol.loopexit ], [ %i.hs, %.lr.ph128.i.new ]
  %i.gr = trunc nuw nsw i64 %indvars.iv.next181.i to i32
  %i.gs = mul i32 %i.j, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !67
  %i.gw = fdiv nsz double 1.000000e+00, %i.gv
  %i.gx = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv180.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !67
  %i.gz = fsub nsz double %i.gy, %.3.lcssa.i
  %i.ha = fmul nsz double %i.gw, %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next181.i
  store double %i.ha, ptr %i.hb, align 8, !tbaa !67
  %i.hc = icmp samesign ugt i64 %indvars.iv180.i, 1
  %indvar.next119 = add i64 %indvar118, 1
  br i1 %i.hc, label %.preheader.i, label %solve.exit, !llvm.loop !221

.lr.ph128.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph128.i.new
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i.3, %.lr.ph128.i.new ], [ %indvars.iv182.i.unr, %.prol.loopexit ] ; 6 uses
  %.3126.i = phi double [ %i.hs, %.lr.ph128.i.new ], [ %.3126.i.unr, %.prol.loopexit ]
  %gep214.i = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv182.i
  %i.hd = load double, ptr %gep214.i, align 8, !tbaa !67
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv182.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !67
  %i.hg = tail call nsz double @llvm.fmuladd.f64(double %i.hd, double %i.hf, double %.3126.i)
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %gep214.i.1 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i
  %i.hh = load double, ptr %gep214.i.1, align 8, !tbaa !67
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !67
  %i.hk = tail call nsz double @llvm.fmuladd.f64(double %i.hh, double %i.hj, double %i.hg)
  %indvars.iv.next183.i.1 = add nuw nsw i64 %indvars.iv182.i, 2 ; 2 uses
  %gep214.i.2 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i.1
  %i.hl = load double, ptr %gep214.i.2, align 8, !tbaa !67
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i.1
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !67
  %i.ho = tail call nsz double @llvm.fmuladd.f64(double %i.hl, double %i.hn, double %i.hk)
  %indvars.iv.next183.i.2 = add nuw nsw i64 %indvars.iv182.i, 3 ; 2 uses
  %gep214.i.3 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i.2
  %i.hp = load double, ptr %gep214.i.3, align 8, !tbaa !67
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i.2
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !67
  %i.hs = tail call nsz double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.ho) ; 2 uses
  %indvars.iv.next183.i.3 = add nuw nsw i64 %indvars.iv182.i, 4 ; 2 uses
  %exitcond185.not.i.3 = icmp eq i64 %indvars.iv.next183.i.3, %i.bg
  br i1 %exitcond185.not.i.3, label %._crit_edge129.i, label %.lr.ph128.i.new, !llvm.loop !222

solve.exit.thread:                                ; preds = %bb.c
  %i.ht = load double, ptr %i.m, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.ht, ptr %i.hu, align 8, !tbaa !75
  br label %._crit_edge14

solve.exit:                                       ; preds = %._crit_edge129.i
  %i.hv = load double, ptr %i.m, align 8, !tbaa !67
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.hv, ptr %i.hw, align 8, !tbaa !75
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !74 ; 3 uses
  %xtraiter123 = and i64 %wide.trip.count.a, 1
  %i.hz = icmp slt i32 %., 3
  br i1 %i.hz, label %.epil.preheader122, label %solve.exit.new

solve.exit.new:                                   ; preds = %solve.exit
  %unroll_iter127 = and i64 %wide.trip.count.a, 1073741822
  br label %bb.h

.lr.ph.i119.preheader:                            ; preds = %biquad_process.exit125, %.lr.ph11
  %indvars.iv32 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next33, %biquad_process.exit125 ] ; 3 uses
  %i.ia = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.ib = getelementptr inbounds nuw [64 x i8], ptr %i.ia, i64 %indvars.iv32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load <2 x double>, ptr %i.ic, align 8, !tbaa !67
  %i.ie = fneg nsz <2 x double> %i.id             ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 1
  %i.ig = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i123, %.lr.ph.i119 ], [ 0, %.lr.ph.i119.preheader ] ; 3 uses
  %i.ih = phi <2 x double> [ %i.iu, %.lr.ph.i119 ], [ zeroinitializer, %.lr.ph.i119.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i120
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !67 ; 3 uses
  %i.ik = extractelement <2 x double> %i.ih, i64 1
  %i.il = fadd nsz double %i.ik, %i.ij            ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i120
  store double %i.il, ptr %i.im, align 8, !tbaa !67
  %i.in = extractelement <2 x double> %i.ih, i64 0
  %i.io = tail call nsz double @llvm.fmuladd.f64(double %i.ij, double 0.000000e+00, double %i.in)
  %i.ip = fmul nsz double %i.il, %i.if
  %i.iq = insertelement <2 x double> %i.ig, double %i.ij, i64 0
  %i.ir = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.il, i64 1
  %i.is = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.io, i64 1
  %i.iu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.ir, <2 x double> %i.it)
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i118
  br i1 %exitcond.not.i124, label %biquad_process.exit125, label %.lr.ph.i119, !llvm.loop !207

biquad_process.exit125:                           ; preds = %.lr.ph.i119
  %i.iv = trunc nuw nsw i64 %indvars.iv32 to i32
  %i.iw = mul i32 %i.y, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ix ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.n, i64 %i.ag, i1 false)
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iz, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.aj, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, i8 0, i64 %i.ak, i1 false)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge, label %.lr.ph.i119.preheader, !llvm.loop !223

bb.h:                                             ; preds = %bb.h, %solve.exit.new
  %indvars.iv39 = phi i64 [ 0, %solve.exit.new ], [ %indvars.iv.next40.1, %bb.h ] ; 4 uses
  %niter128 = phi i64 [ 0, %solve.exit.new ], [ %niter128.next.1, %bb.h ]
  %i.ja = getelementptr inbounds nuw [64 x i8], ptr %i.hy, i64 %indvars.iv39 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store double 0.000000e+00, ptr %i.jb, align 8, !tbaa !67
  %.idx = shl nuw nsw i64 %indvars.iv39, 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !67
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store double %i.jd, ptr %i.je, align 8, !tbaa !67
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !67
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store double %i.jg, ptr %i.jh, align 8, !tbaa !67
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [64 x i8], ptr %i.hy, i64 %indvars.iv.next40 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store double 0.000000e+00, ptr %i.jj, align 8, !tbaa !67
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next40, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.1 ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !67
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store double %i.jl, ptr %i.jm, align 8, !tbaa !67
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !67
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  store double %i.jo, ptr %i.jp, align 8, !tbaa !67
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %._crit_edge14.loopexit.unr-lcssa, label %bb.h, !llvm.loop !224

._crit_edge14.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod125.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %._crit_edge14, label %.epil.preheader122

.epil.preheader122:                               ; preds = %._crit_edge14.loopexit.unr-lcssa, %solve.exit
  %indvars.iv39.epil.init = phi i64 [ 0, %solve.exit ], [ %indvars.iv.next40.1, %._crit_edge14.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod126 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.jq = getelementptr inbounds nuw [64 x i8], ptr %i.hy, i64 %indvars.iv39.epil.init ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store double 0.000000e+00, ptr %i.jr, align 8, !tbaa !67
  %.idx.epil = shl nuw nsw i64 %indvars.iv39.epil.init, 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.epil ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !67
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  store double %i.jt, ptr %i.ju, align 8, !tbaa !67
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !67
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  store double %i.jw, ptr %i.jx, align 8, !tbaa !67
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %.epil.preheader122, %._crit_edge14.loopexit.unr-lcssa, %solve.exit.thread
  tail call void @av_free(ptr noundef nonnull %i.l) #14
  tail call void @av_free(ptr noundef nonnull %i.m) #14
  tail call void @av_free(ptr noundef nonnull %i.n) #14
  tail call void @av_free(ptr noundef nonnull %i.q) #14
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.loopexit, label %bb.b, !llvm.loop !225

.loopexit:                                        ; preds = %._crit_edge14, %bb.a, %.thread
  %spec.select = phi i32 [ -12, %.thread ], [ 0, %bb.a ], [ 0, %._crit_edge14 ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_parallel_dblp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !77 ; 5 uses
  %i.g = fsub nsz double 1.000000e+00, %i.f       ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = sext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds [72 x i8], ptr %i.u, i64 %i.m ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !75 ; 4 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %i.aa) ; 2 uses
  %i.ab = icmp sgt i32 %., 0
  br i1 %i.ab, label %.lr.ph93, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %.preheader

.lr.ph93:                                         ; preds = %bb.a
  %i.ac = add nuw nsw i32 %., 1
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !52 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = fmul nsz double %i.ah, %i.af
  %smax106 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count107 = zext nneg i32 %smax106 to i64
  br i1 %i.am, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph93
  %wide.trip.count101 = zext nneg i32 %i.al to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next104, %._crit_edge.us ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.aj, i64 %indvars.iv103 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !67
  %i.ar = fneg nsz <2 x double> %i.aq             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = load double, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.av = load double, ptr %i.au, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !67
  %i.ay = insertelement <2 x double> %i.ar, double %i.av, i64 1
  %shift = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next99, %bb.b ] ; 3 uses
  %i.az = phi <2 x double> [ %i.ax, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv98
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !67
  %i.bc = fmul nsz double %i.d, %i.bb             ; 2 uses
  %i.bd = extractelement <2 x double> %i.az, i64 1
  %i.be = tail call nsz double @llvm.fmuladd.f64(double %i.at, double %i.bc, double %i.bd)
end_hunk_1
