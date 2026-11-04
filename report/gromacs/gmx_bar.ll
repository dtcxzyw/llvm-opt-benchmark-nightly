Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bar?download=true
inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZL14calc_dg_stddevP13sample_coll_tS0_ddPd:bb.a
  %indvars.iv.next161.prol = add nsw i64 %indvars.iv160.prol, 1 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.prol.loopexit193, label %.prol.preheader192, !llvm.loop !332

.prol.loopexit193:                                ; preds = %.prol.preheader192, %.lr.ph137
  %.lcssa188.unr = phi double [ poison, %.lr.ph137 ], [ %i.ev, %.prol.preheader192 ]
  %indvars.iv160.unr = phi i64 [ %i.em, %.lr.ph137 ], [ %indvars.iv.next161.prol, %.prol.preheader192 ]
  %.5135.unr = phi double [ %.4139, %.lr.ph137 ], [ %i.ev, %.prol.preheader192 ]
  %i.ew = sub nsw i64 %i.em, %wide.trip.count163
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %.loopexit, label %.lr.ph137.new

.lr.ph137.new:                                    ; preds = %.prol.loopexit193, %.lr.ph137.new
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.3, %.lr.ph137.new ], [ %indvars.iv160.unr, %.prol.loopexit193 ] ; 5 uses
  %.5135 = phi double [ %i.gg, %.lr.ph137.new ], [ %.5135.unr, %.prol.loopexit193 ]
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.el, i64 %indvars.iv160
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !56
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ez, double %i.u)
  %i.fb = fsub double %i.fa, %3
  %i.fc = tail call double @cosh(double noundef %i.fb) #23
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double 2.000000e+00, double 2.000000e+00)
  %i.fe = fdiv double 1.000000e+00, %i.fd
  %i.ff = fadd double %.5135, %i.fe
  %i.fg = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv160
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !56
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.al, double %i.fi, double %i.u)
  %i.fk = fsub double %i.fj, %3
  %i.fl = tail call double @cosh(double noundef %i.fk) #23
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double 2.000000e+00, double 2.000000e+00)
  %i.fn = fdiv double 1.000000e+00, %i.fm
  %i.fo = fadd double %i.ff, %i.fn
  %i.fp = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv160
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !56
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.al, double %i.fr, double %i.u)
  %i.ft = fsub double %i.fs, %3
  %i.fu = tail call double @cosh(double noundef %i.ft) #23
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fu, double 2.000000e+00, double 2.000000e+00)
  %i.fw = fdiv double 1.000000e+00, %i.fv
  %i.fx = fadd double %i.fo, %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv160
  %i.fz = getelementptr i8, ptr %i.fy, i64 24
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !56
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ga, double %i.u)
  %i.gc = fsub double %i.gb, %3
  %i.gd = tail call double @cosh(double noundef %i.gc) #23
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gd, double 2.000000e+00, double 2.000000e+00)
  %i.gf = fdiv double 1.000000e+00, %i.ge
  %i.gg = fadd double %i.fx, %i.gf                ; 2 uses
  %indvars.iv.next161.3 = add nsw i64 %indvars.iv160, 4 ; 2 uses
  %exitcond164.not.3 = icmp eq i64 %indvars.iv.next161.3, %wide.trip.count163
  br i1 %exitcond164.not.3, label %.loopexit, label %.lr.ph137.new, !llvm.loop !333

bb.l:                                             ; preds = %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !89
  %i.gj = icmp sgt i32 %i.gi, 1
  %or.cond3 = and i1 %i.ak, %i.gj
  %spec.select117 = zext i1 %or.cond3 to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %spec.select117
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !56
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !15
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph133, label %.loopexit

.lr.ph133:                                        ; preds = %bb.l
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !88
  %i.gs = load ptr, ptr %i.ef, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph133, %bb.m
  %indvars.iv157 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next158, %bb.m ] ; 3 uses
  %.6131 = phi double [ %.4139, %.lr.ph133 ], [ %i.hg, %bb.m ]
  %i.gt = add nsw i64 %i.gr, %indvars.iv157
  %i.gu = sitofp i64 %i.gt to double
  %i.gv = fadd nnan double %i.gu, 5.000000e-01
  %i.gw = fmul double %.0112, %i.gv
  %i.gx = fmul double %i.gm, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv157
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !15
  %i.ha = uitofp i32 %i.gz to double
  %i.hb = fsub double %i.u, %i.gx
  %i.hc = fsub double %i.hb, %3
  %i.hd = tail call double @cosh(double noundef %i.hc) #23
  %i.he = tail call double @llvm.fmuladd.f64(double %i.hd, double 2.000000e+00, double 2.000000e+00)
  %i.hf = fdiv double %i.ha, %i.he
  %i.hg = fadd double %.6131, %i.hf               ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.hh = load i32, ptr %i.gn, align 8, !tbaa !15
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next158, %i.hi
  br i1 %i.hj, label %bb.m, label %.loopexit, !llvm.loop !334

.loopexit:                                        ; preds = %bb.m, %.prol.loopexit193, %.lr.ph137.new, %bb.l, %bb.k, %bb.i
  %.7 = phi double [ %.4139, %bb.i ], [ %i.gg, %.lr.ph137.new ], [ %.4139, %bb.k ], [ %.4139, %bb.l ], [ %.lcssa188.unr, %.prol.loopexit193 ], [ %i.hg, %bb.m ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge, label %bb.i, !llvm.loop !335

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.4.lcssa = phi double [ %.0107.lcssa, %.preheader ], [ %.7, %.loopexit ]
  %i.hk = fadd double %i.e, %i.h                  ; 3 uses
  %i.hl = fdiv double %.4.lcssa, %i.hk
  %i.hm = fdiv double 1.000000e+00, %i.hl
  %i.hn = fdiv double %i.hk, %i.e
  %i.ho = fdiv double %i.hk, %i.h
  %i.hp = fadd double %i.hn, %i.ho
  %i.hq = fsub double %i.hm, %i.hp
  %i.hr = tail call double @sqrt(double noundef %i.hq) #23
  store double %i.hr, ptr %4, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL28sample_coll_create_subsampleP13sample_coll_tS0_ii(ptr nofree noundef nonnull captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !339
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.116, i32 noundef 1412, i64 noundef range(i64 -2147483648, 2147483648) %i.d, i64 noundef 8)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !70
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.116, i32 noundef 1413, i64 noundef range(i64 -2147483648, 2147483648) %i.h, i64 noundef 24)
  store ptr %i.i, ptr %i.f, align 8, !tbaa !100
  %i.j = load i32, ptr %i.b, align 8, !tbaa !70
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.p, ptr %i.r, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !340
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.b, align 8, !tbaa !70
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !336

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = sitofp i32 %3 to double
  %i.ad = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = add nsw <2 x i32> %i.ae, <i32 1, i32 0>
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul nnan <2 x double> %i.ai, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.aj, %i.al
  %i.an = fptosi <2 x double> %i.am to <2 x i64>  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !70 ; 4 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %._crit_edge146.thread, label %.lr.ph145

._crit_edge146.thread:                            ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ar, align 8, !tbaa !77
  br label %.critedge

.lr.ph145:                                        ; preds = %._crit_edge
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !78
  %wide.trip.count = zext nneg i32 %i.ap to i64   ; 3 uses
  %i.at = extractelement <2 x i64> %i.an, i64 0
  %i.au = extractelement <2 x i64> %i.an, i64 1   ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph145, %.thread134
  %indvars.iv151 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next152, %.thread134 ] ; 3 uses
  %.093.neg143 = phi i64 [ 0, %.lr.ph145 ], [ %.093.neg, %.thread134 ] ; 2 uses
  %.093142 = phi i64 [ 0, %.lr.ph145 ], [ %i.cu, %.thread134 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv151 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !82, !range !83, !noundef !84
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv151
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %i.bd, null                 ; 2 uses
  br i1 %i.az, label %bb.d, label %.thread127

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.thread157, label %bb.e

.thread157:                                       ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !81
  %i.bg = load i32, ptr %i.aw, align 8, !tbaa !80
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  br label %.thread

.thread127:                                       ; preds = %bb.c
  br i1 %.not, label %.thread, label %.thread134

.thread:                                          ; preds = %.thread157, %.thread127
  %.092133 = phi i64 [ 0, %.thread127 ], [ %i.bi, %.thread157 ]
  %i.bj = icmp slt i64 %.093142, %i.au
  %i.bk = load i32, ptr %i.aw, align 8, !tbaa !80
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = add i64 %.093.neg143, %i.au
  %i.bn = select i1 %i.bj, i64 %i.bm, i64 0
  %.090 = add nsw i64 %i.bn, %i.bl                ; 3 uses
  %i.bo = add i64 %.093.neg143, %i.at
  %i.bp = add nsw i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !81
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bs) ; 2 uses
  %i.bt = icmp slt i64 %spec.select, %.090
  %i.bu = icmp sgt i64 %.090, %i.bs
  %or.cond = or i1 %i.bu, %i.bt                   ; 2 uses
  %i.bv = trunc i64 %.090 to i32
  %i.bw = select i1 %or.cond, i32 0, i32 %i.bv
  store i32 %i.bw, ptr %i.aw, align 8, !tbaa !80
  %i.bx = trunc i64 %spec.select to i32
  %i.by = select i1 %or.cond, i32 0, i32 %i.bx
  store i32 %i.by, ptr %i.bq, align 4, !tbaa !81
  br label %.thread134

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !76 ; 3 uses
  %i.cb = insertelement <2 x i64> poison, i64 %.093142, i64 0
  %i.cc = shufflevector <2 x i64> %i.cb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cd = sub nsw <2 x i64> %i.an, %i.cc
  %i.ce = sitofp i64 %i.ca to double
  %i.cf = sitofp <2 x i64> %i.cd to <2 x double>
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x double> %i.cf, %i.ch          ; 3 uses
  %i.cj = insertelement <2 x double> %i.ci, double 0.000000e+00, i64 1
  %i.ck = insertelement <2 x double> %i.ci, double 1.000000e+00, i64 0
  %i.cl = fcmp olt <2 x double> %i.cj, %i.ck
  %i.cm = select <2 x i1> %i.cl, <2 x double> %i.ci, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 3 uses
  %i.cn = insertelement <2 x double> %i.cm, double 1.000000e+00, i64 1
  %i.co = insertelement <2 x double> %i.cm, double 0.000000e+00, i64 0
  %i.cp = fcmp ogt <2 x double> %i.cn, %i.co
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.cm, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %shift = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.cq, %shift
  %i.cr = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cs = fcmp ogt double %i.cr, f0x3FEE666666666666
  br i1 %i.cs, label %.thread134, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = fcmp olt double %i.cr, 5.000000e-02
  br i1 %i.ct, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ax, align 8, !tbaa !82
  br label %.thread134

.thread134:                                       ; preds = %bb.e, %.thread127, %bb.g, %.thread
  %.092131 = phi i64 [ %i.ca, %bb.g ], [ 0, %.thread127 ], [ %.092133, %.thread ], [ %i.ca, %bb.e ]
  %i.cu = add nsw i64 %.092131, %.093142          ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %.093.neg = sub i64 0, %i.cu
  %exitcond.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge146, label %bb.c, !llvm.loop !337

._crit_edge146:                                   ; preds = %.thread134
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !77
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !78  ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cx = icmp eq i32 %i.ap, 1
  br i1 %i.cx, label %.epil.preheader, label %._crit_edge146.new

._crit_edge146.new:                               ; preds = %._crit_edge146
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %._crit_edge146.new
  %i.cy = phi i64 [ 0, %._crit_edge146.new ], [ %i.ei, %bb.p ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %._crit_edge146.new ], [ %indvars.iv.next.i.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %._crit_edge146.new ], [ %niter.next.1, %bb.p ]
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i8, ptr %i.da, align 8, !tbaa !82, !range !83, !noundef !84
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !73 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !85
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !81
  %i.dm = load i32, ptr %i.cz, align 8, !tbaa !80
  %i.dn = sub nsw i32 %i.dl, %i.dm
  %i.do = sext i32 %i.dn to i64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink17.i = phi i64 [ %i.do, %bb.k ], [ %i.dj, %bb.j ]
  %i.dp = add nsw i64 %.sink17.i, %i.cy           ; 2 uses
  store i64 %i.dp, ptr %i.cv, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.h
  %i.dq = phi i64 [ %i.cy, %bb.h ], [ %i.dp, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv.next.i ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !82, !range !83, !noundef !84
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !74
  %.not.i.1 = icmp eq ptr %i.dz, null
  br i1 %.not.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !85
  br label %.sink.split.i.1

bb.o:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !81
  %i.ee = load i32, ptr %i.dr, align 8, !tbaa !80
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %i.eg = sext i32 %i.ef to i64
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.o, %bb.n
  %.sink17.i.1 = phi i64 [ %i.eg, %bb.o ], [ %i.eb, %bb.n ]
  %i.eh = add nsw i64 %.sink17.i.1, %i.dq         ; 2 uses
  store i64 %i.eh, ptr %i.cv, align 8, !tbaa !77
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.1, %bb.l
  %i.ei = phi i64 [ %i.dq, %bb.l ], [ %i.eh, %.sink.split.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %._crit_edge146
  %.epil.init = phi i64 [ 0, %._crit_edge146 ], [ %i.ei, %.critedge.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %._crit_edge146 ], [ %indvars.iv.next.i.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i32 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !82, !range !83, !noundef !84
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.epil.preheader
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.epil.init
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !73 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !74
  %.not.i.epil = icmp eq ptr %i.er, null
  br i1 %.not.i.epil, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 88
  %i.et = load i64, ptr %i.es, align 8, !tbaa !85
  br label %.sink.split.i.epil

bb.s:                                             ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !81
  %i.ew = load i32, ptr %i.ej, align 8, !tbaa !80
  %i.ex = sub nsw i32 %i.ev, %i.ew
  %i.ey = sext i32 %i.ex to i64
  br label %.sink.split.i.epil

.sink.split.i.epil:                               ; preds = %bb.s, %bb.r
  %.sink17.i.epil = phi i64 [ %i.ey, %bb.s ], [ %i.et, %bb.r ]
  %i.ez = add nsw i64 %.sink17.i.epil, %.epil.init
  store i64 %i.ez, ptr %i.cv, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit.unr-lcssa, %.sink.split.i.epil, %.epil.preheader, %._crit_edge146.thread
  %i.fa = phi i1 [ true, %._crit_edge146.thread ], [ true, %.critedge.loopexit.unr-lcssa ], [ true, %.epil.preheader ], [ true, %.sink.split.i.epil ], [ false, %bb.f ]
  ret i1 %i.fa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL19sample_coll_min_maxP13sample_coll_tdPdS1_(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #18 {
bb.a:
  store double f0x47EFFFFFE0000000, ptr %2, align 8, !tbaa !56
  store double f0xC7EFFFFFE0000000, ptr %3, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph95, label %._crit_edge

.lr.ph95:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = fcmp olt double %1, 0.000000e+00
  %wide.trip.count106 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv103 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next104, %.loopexit ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv103 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !82, !range !83, !noundef !84
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 6 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81   ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = sext i32 %i.q to i64                     ; 5 uses
  %wide.trip.count = sext i32 %i.s to i64         ; 3 uses
  %i.x = sub nsw i64 %wide.trip.count, %i.w
  %xtraiter = and i64 %i.x, 1
end_hunk_0
