Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bar?download=true
inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZL14calc_dg_stddevP13sample_coll_tS0_ddPd:bb.a
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
  %.093142 = phi i64 [ 0, %.lr.ph145 ], [ %i.ct, %.thread134 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv151 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
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
  %.090 = add nsw i64 %i.bn, %i.bl                ; 2 uses
  %i.bo = add i64 %.093.neg143, %i.at
  %i.bp = add nsw i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !81
  %i.bs = sext i32 %i.br to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bs) ; 2 uses
  %i.bt = icmp slt i64 %spec.select, %.090        ; 2 uses
  %i.bu = trunc i64 %.090 to i32
  %i.bv = select i1 %i.bt, i32 0, i32 %i.bu
  store i32 %i.bv, ptr %i.aw, align 8, !tbaa !80
  %i.bw = trunc i64 %spec.select to i32
  %i.bx = select i1 %i.bt, i32 0, i32 %i.bw
  store i32 %i.bx, ptr %i.bq, align 4, !tbaa !81
  br label %.thread134

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !76 ; 3 uses
  %i.ca = insertelement <2 x i64> poison, i64 %.093142, i64 0
  %i.cb = shufflevector <2 x i64> %i.ca, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = sub nsw <2 x i64> %i.an, %i.cb
  %i.cd = sitofp i64 %i.bz to double
  %i.ce = sitofp <2 x i64> %i.cc to <2 x double>
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x double> %i.ce, %i.cg          ; 3 uses
  %i.ci = insertelement <2 x double> %i.ch, double 0.000000e+00, i64 1
  %i.cj = insertelement <2 x double> %i.ch, double 1.000000e+00, i64 0
  %i.ck = fcmp olt <2 x double> %i.ci, %i.cj
  %i.cl = select <2 x i1> %i.ck, <2 x double> %i.ch, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 3 uses
  %i.cm = insertelement <2 x double> %i.cl, double 1.000000e+00, i64 1
  %i.cn = insertelement <2 x double> %i.cl, double 0.000000e+00, i64 0
  %i.co = fcmp ogt <2 x double> %i.cm, %i.cn
  %i.cp = select <2 x i1> %i.co, <2 x double> %i.cl, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %shift = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.cp, %shift
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cr = fcmp ogt double %i.cq, f0x3FEE666666666666
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.ax, align 8, !tbaa !82
  br label %.thread134

bb.g:                                             ; preds = %bb.e
  %i.cs = fcmp olt double %i.cq, 5.000000e-02
  br i1 %i.cs, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ax, align 8, !tbaa !82
  br label %.thread134

.thread134:                                       ; preds = %.thread127, %bb.h, %bb.f, %.thread
  %.092131 = phi i64 [ %i.bz, %bb.h ], [ 0, %.thread127 ], [ %.092133, %.thread ], [ %i.bz, %bb.f ]
  %i.ct = add nsw i64 %.092131, %.093142          ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %.093.neg = sub i64 0, %i.ct
  %exitcond.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge146, label %bb.c, !llvm.loop !337

._crit_edge146:                                   ; preds = %.thread134
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.cu, align 8, !tbaa !77
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !78  ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cw = icmp eq i32 %i.ap, 1
  br i1 %i.cw, label %.epil.preheader, label %._crit_edge146.new

._crit_edge146.new:                               ; preds = %._crit_edge146
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %._crit_edge146.new
  %i.cx = phi i64 [ 0, %._crit_edge146.new ], [ %i.eh, %bb.q ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %._crit_edge146.new ], [ %indvars.iv.next.i.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %._crit_edge146.new ], [ %niter.next.1, %bb.q ]
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !82, !range !83, !noundef !84
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !73 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !85
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !81
  %i.dl = load i32, ptr %i.cy, align 8, !tbaa !80
  %i.dm = sub nsw i32 %i.dk, %i.dl
  %i.dn = sext i32 %i.dm to i64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k
  %.sink17.i = phi i64 [ %i.dn, %bb.l ], [ %i.di, %bb.k ]
  %i.do = add nsw i64 %.sink17.i, %i.cx           ; 2 uses
  store i64 %i.do, ptr %i.cu, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %bb.i
  %i.dp = phi i64 [ %i.cx, %bb.i ], [ %i.do, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv.next.i ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !82, !range !83, !noundef !84
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !74
  %.not.i.1 = icmp eq ptr %i.dy, null
  br i1 %.not.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !85
  br label %.sink.split.i.1

bb.p:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !81
  %i.ed = load i32, ptr %i.dq, align 8, !tbaa !80
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %i.ef = sext i32 %i.ee to i64
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.p, %bb.o
  %.sink17.i.1 = phi i64 [ %i.ef, %bb.p ], [ %i.ea, %bb.o ]
  %i.eg = add nsw i64 %.sink17.i.1, %i.dp         ; 2 uses
  store i64 %i.eg, ptr %i.cu, align 8, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.1, %bb.m
  %i.eh = phi i64 [ %i.dp, %bb.m ], [ %i.eg, %.sink.split.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !2

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %._crit_edge146
  %.epil.init = phi i64 [ 0, %._crit_edge146 ], [ %i.eh, %.critedge.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %._crit_edge146 ], [ %indvars.iv.next.i.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i32 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !82, !range !83, !noundef !84
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.epil.preheader
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i.epil.init
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !73 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74
  %.not.i.epil = icmp eq ptr %i.eq, null
  br i1 %.not.i.epil, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.es = load i64, ptr %i.er, align 8, !tbaa !85
  br label %.sink.split.i.epil

bb.t:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !81
  %i.ev = load i32, ptr %i.ei, align 8, !tbaa !80
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = sext i32 %i.ew to i64
  br label %.sink.split.i.epil

.sink.split.i.epil:                               ; preds = %bb.t, %bb.s
  %.sink17.i.epil = phi i64 [ %i.ex, %bb.t ], [ %i.es, %bb.s ]
  %i.ey = add nsw i64 %.sink17.i.epil, %.epil.init
  store i64 %i.ey, ptr %i.cu, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.unr-lcssa, %.sink.split.i.epil, %.epil.preheader, %._crit_edge146.thread
  %i.ez = phi i1 [ true, %._crit_edge146.thread ], [ true, %.critedge.loopexit.unr-lcssa ], [ true, %.epil.preheader ], [ true, %.sink.split.i.epil ], [ false, %bb.g ]
  ret i1 %i.ez
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
end_hunk_0
