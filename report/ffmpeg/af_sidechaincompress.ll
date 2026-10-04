Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_sidechaincompress?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@compressor:bb.a
  %.in94.v = select i1 %.not, i64 128, i64 144
  %.in94 = getelementptr inbounds nuw i8, ptr %0, i64 %.in94.v
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63   ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = fsub nsz double 1.000000e+00, %i.d
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !63  ; 5 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp sgt i32 %i.ac, 1
  %wide.trip.count = zext i32 %i.ac to i64        ; 2 uses
  %i.af = sitofp nsz i32 %i.ac to double
  %i.ag = icmp sgt i32 %i.ac, 1
  %wide.trip.count128 = zext i32 %i.y to i64      ; 5 uses
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %i.ai = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %xtraiter = and i64 %i.ah, 3                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 3
  %unroll_iter = and i64 %i.ah, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod143 = icmp ne i64 %xtraiter, 0
  %xtraiter144 = and i64 %i.ah, 1
  %i.ak = icmp eq i64 %i.ai, 0
  %unroll_iter149 = and i64 %i.ah, -2
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  %lcmp.mod148 = trunc i64 %i.ah to i1
  %min.iters.check = icmp ult i32 %i.y, 4
  %i.al = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond141 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %wide.trip.count128, 2147483644 ; 3 uses
  %broadcast.splatinsert138 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat139 = shufflevector <2 x double> %broadcast.splatinsert138, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count128
  %xtraiter151 = and i64 %wide.trip.count128, 3   ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph117, %._crit_edge109
  %.084115 = phi i32 [ 0, %.lr.ph117 ], [ %i.gn, %._crit_edge109 ]
  %.085114 = phi ptr [ %1, %.lr.ph117 ], [ %i.gk, %._crit_edge109 ] ; 7 uses
  %.086113 = phi ptr [ %2, %.lr.ph117 ], [ %i.gl, %._crit_edge109 ] ; 7 uses
  %.087111 = phi ptr [ %3, %.lr.ph117 ], [ %i.gm, %._crit_edge109 ] ; 10 uses
  %i.am = load double, ptr %.087111, align 8, !tbaa !42
  %i.an = fmul nsz double %6, %i.am
  %i.ao = tail call nsz double @llvm.fabs.f64(double %i.an) ; 6 uses
  br i1 %i.j, label %.preheader, label %.preheader97

.preheader97:                                     ; preds = %bb.b
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader97
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %i.ag, label %.lr.ph104.preheader, label %.loopexit

.lr.ph104.preheader:                              ; preds = %.preheader
  br i1 %i.ak, label %.lr.ph104.epil.preheader, label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.1, %.lr.ph104 ], [ 1, %.lr.ph104.preheader ] ; 3 uses
  %.080103 = phi double [ %..080.1, %.lr.ph104 ], [ %i.ao, %.lr.ph104.preheader ] ; 2 uses
  %niter150 = phi i64 [ %niter150.next.1, %.lr.ph104 ], [ 0, %.lr.ph104.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv120
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !42
  %i.ar = fmul nsz double %6, %i.aq
  %i.as = tail call nsz double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.at = fcmp nsz ogt double %i.as, %.080103
  %..080 = select nsz i1 %i.at, double %i.as, double %.080103 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv120
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !42
  %i.ax = fmul nsz double %6, %i.aw
  %i.ay = tail call nsz double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.az = fcmp nsz ogt double %i.ay, %..080
  %..080.1 = select nsz i1 %i.az, double %i.ay, double %..080 ; 3 uses
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %niter150.next.1 = add nuw i64 %niter150, 2     ; 2 uses
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph104, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %.1100 = phi double [ %i.bw, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bc = fmul nsz double %6, %i.bb
  %i.bd = tail call nsz double @llvm.fabs.f64(double %i.bc)
  %i.be = fadd nsz double %.1100, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42
  %i.bi = fmul nsz double %6, %i.bh
  %i.bj = tail call nsz double @llvm.fabs.f64(double %i.bi)
  %i.bk = fadd nsz double %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !42
  %i.bo = fmul nsz double %6, %i.bn
  %i.bp = tail call nsz double @llvm.fabs.f64(double %i.bo)
  %i.bq = fadd nsz double %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !42
  %i.bu = fmul nsz double %6, %i.bt
  %i.bv = tail call nsz double @llvm.fabs.f64(double %i.bu)
  %i.bw = fadd nsz double %i.bq, %i.bv            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !75

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1100.epil.init = phi double [ %i.ao, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.1100.epil = phi double [ %i.cb, %.lr.ph.epil ], [ %.1100.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv.epil
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = fmul nsz double %6, %i.by
  %i.ca = tail call nsz double @llvm.fabs.f64(double %i.bz)
  %i.cb = fadd nsz double %.1100.epil, %i.ca      ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !76

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader97
  %.1.lcssa = phi double [ %i.ao, %.preheader97 ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ], [ %i.cb, %.lr.ph.epil ]
  %i.cc = fdiv nsz double %.1.lcssa, %i.af
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph104
  br i1 %lcmp.mod146.not, label %.loopexit, label %.lr.ph104.epil.preheader

.lr.ph104.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph104.preheader
  %indvars.iv120.epil.init = phi i64 [ 1, %.lr.ph104.preheader ], [ %indvars.iv.next121.1, %.loopexit.loopexit.unr-lcssa ]
  %.080103.epil.init = phi double [ %i.ao, %.lr.ph104.preheader ], [ %..080.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.087111, i64 %indvars.iv120.epil.init
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = fmul nsz double %6, %i.ce
  %i.cg = tail call nsz double @llvm.fabs.f64(double %i.cf) ; 2 uses
  %i.ch = fcmp nsz ogt double %i.cg, %.080103.epil.init
  %..080.epil = select nsz i1 %i.ch, double %i.cg, double %.080103.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph104.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %._crit_edge
  %.2 = phi nsz double [ %i.cc, %._crit_edge ], [ %i.ao, %.preheader ], [ %..080.1, %.loopexit.loopexit.unr-lcssa ], [ %..080.epil, %.lr.ph104.epil.preheader ] ; 3 uses
  %i.ci = fmul nsz double %.2, %.2
  %.3 = select nsz i1 %.not, double %.2, double %i.ci ; 2 uses
  %i.cj = load double, ptr %i.n, align 8, !tbaa !87 ; 3 uses
  %i.ck = fsub nsz double %.3, %i.cj
  %i.cl = fcmp nsz ogt double %.3, %i.cj
  %.in.v = select i1 %i.cl, i64 32, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cm = load double, ptr %.in, align 8, !tbaa !42
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %i.ck, double %i.cm, double %i.cj) ; 5 uses
  store double %i.cn, ptr %i.n, align 8, !tbaa !87
  br i1 %.not92, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.co = load double, ptr %.in96, align 8, !tbaa !42
  %i.cp = fcmp nsz olt double %i.cn, %i.co
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.cq = load double, ptr %.in94, align 8, !tbaa !42
  %i.cr = fcmp nsz ogt double %i.cn, %i.cq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi i1 [ %i.cp, %bb.c ], [ %i.cr, %bb.d ]
  %i.cs = fcmp nsz ogt double %i.cn, 0.000000e+00
  %or.cond = select i1 %i.cs, i1 %.0.in, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ct = load double, ptr %i.q, align 8, !tbaa !45 ; 3 uses
  %i.cu = load double, ptr %i.r, align 8, !tbaa !39 ; 3 uses
  %i.cv = load double, ptr %i.s, align 8, !tbaa !37
  %i.cw = load double, ptr %i.t, align 8, !tbaa !43 ; 6 uses
  %i.cx = load double, ptr %i.u, align 8, !tbaa !44 ; 6 uses
  %i.cy = load double, ptr %i.v, align 8, !tbaa !88 ; 2 uses
  %i.cz = load double, ptr %i.w, align 8, !tbaa !89 ; 2 uses
  %i.da = tail call nsz double @llvm.log.f64(double %i.cn) ; 2 uses
  %i.db = fmul nnan nsz double %i.da, 5.000000e-01
  %.031.i = select nsz i1 %.not, double %i.da, double %i.db ; 6 uses
  %i.dc = fadd nsz double %i.ct, f0xC1F0000000000000
  %i.dd = tail call nsz double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp nsz olt double %i.dd, 1.000000e+00 ; 2 uses
  %i.df = fsub nsz double %.031.i, %i.cu
  %i.dg = fdiv nsz double %i.df, %i.ct
  %i.dh = fadd nsz double %i.cu, %i.dg
  %i.di = fdiv nsz double 1.000000e+00, %i.ct
  %.030.i = select nsz i1 %i.de, double %i.cu, double %i.dh ; 2 uses
  %.0.i = select nsz i1 %i.de, double 0.000000e+00, double %i.di ; 2 uses
  %i.dj = fcmp nsz ogt double %i.cv, 1.000000e+00 ; 2 uses
  br i1 %.not92, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = fcmp nsz ogt double %.031.i, %i.cw
  %or.cond.i = and i1 %i.dj, %i.dk
  br i1 %or.cond.i, label %bb.h, label %output_gain.exit

bb.h:                                             ; preds = %bb.g
  %i.dl = fsub nsz double %.031.i, %i.cx
  %i.dm = fsub nsz double %i.cw, %i.cx            ; 4 uses
  %i.dn = fdiv nsz double %i.dl, %i.dm            ; 4 uses
  %i.do = fmul nsz double %.0.i, %i.dm            ; 2 uses
  %i.dp = fmul nsz double %i.dn, %i.dn            ; 2 uses
  %i.dq = fmul nsz double %i.dn, %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul nsz <2 x double> %i.ds, <double -2.000000e+00, double 1.000000e+00>
  %i.du = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> <double -3.000000e+00, double 2.000000e+00>, <2 x double> %i.dt) ; 2 uses
  %9 = extractelement <2 x double> %i.dw, i64 0
  %10 = tail call nsz double @llvm.fmuladd.f64(double %i.cy, double 3.000000e+00, double %9)
  %11 = fsub nsz double %10, %i.do
  %i.dx = extractelement <2 x double> %i.dw, i64 1
  %12 = tail call nsz double @llvm.fmuladd.f64(double %i.cy, double -2.000000e+00, double %i.dx)
  %i.dy = fadd nsz double %i.do, %12
  %i.dz = fmul nsz double %i.dp, %11
  %i.ea = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.dq, double %i.dz)
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.ea)
  %i.ec = fadd nsz double %i.cx, %i.eb
  br label %output_gain.exit

bb.i:                                             ; preds = %bb.f
  %i.ed = fcmp nsz olt double %.031.i, %i.cx
  %or.cond35.i = and i1 %i.dj, %i.ed
  br i1 %or.cond35.i, label %bb.j, label %output_gain.exit

bb.j:                                             ; preds = %bb.i
  %i.ee = fsub nsz double %.031.i, %i.cw
  %i.ef = fsub nsz double %i.cx, %i.cw            ; 4 uses
  %i.eg = fdiv nsz double %i.ee, %i.ef            ; 4 uses
  %i.eh = fmul nsz double %.0.i, %i.ef            ; 2 uses
  %i.ei = fmul nsz double %i.eg, %i.eg            ; 2 uses
  %i.ej = fmul nsz double %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul nsz <2 x double> %i.el, <double -2.000000e+00, double 1.000000e+00>
  %i.en = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> <double -3.000000e+00, double 2.000000e+00>, <2 x double> %i.em) ; 2 uses
  %13 = extractelement <2 x double> %i.ep, i64 0
  %14 = tail call nsz double @llvm.fmuladd.f64(double %i.cz, double 3.000000e+00, double %13)
  %15 = fsub nsz double %14, %i.eh
  %i.eq = extractelement <2 x double> %i.ep, i64 1
  %16 = tail call nsz double @llvm.fmuladd.f64(double %i.cz, double -2.000000e+00, double %i.eq)
  %i.er = fadd nsz double %i.eh, %16
  %i.es = fmul nsz double %i.ei, %15
  %i.et = tail call nsz double @llvm.fmuladd.f64(double %i.er, double %i.ej, double %i.es)
  %i.eu = tail call nsz double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %i.et)
  %i.ev = fadd nsz double %i.cw, %i.eu
  br label %output_gain.exit

output_gain.exit:                                 ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.1.i = phi nsz double [ %i.ec, %bb.h ], [ %.030.i, %bb.i ], [ %.030.i, %bb.g ], [ %i.ev, %bb.j ]
  %i.ew = fsub nsz double %.1.i, %.031.i
  %i.ex = tail call nsz double @llvm.exp.f64(double %i.ew)
  %i.ey = fmul nsz double %i.b, %i.ex
  br label %bb.k

bb.k:                                             ; preds = %output_gain.exit, %bb.e
  %.079 = phi double [ %i.ey, %output_gain.exit ], [ %i.b, %bb.e ]
  br i1 %i.z, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %bb.k
  %i.ez = tail call nsz double @llvm.fmuladd.f64(double %.079, double %i.d, double %i.aa) ; 6 uses
  br i1 %or.cond141, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph108
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !42
  %wide.load140 = load <2 x double>, ptr %i.fb, align 8, !tbaa !42
  %i.fc = fmul nsz <2 x double> %broadcast.splat139, %wide.load
  %i.fd = fmul nsz <2 x double> %broadcast.splat139, %wide.load140
  %i.fe = fmul nsz <2 x double> %broadcast.splat, %i.fc
  %i.ff = fmul nsz <2 x double> %broadcast.splat, %i.fd
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x double> %i.fe, ptr %i.fg, align 8, !tbaa !42
  store <2 x double> %i.ff, ptr %i.fh, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge109, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph108, %middle.block
  %indvars.iv125.ph = phi i64 [ 0, %.lr.ph108 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod152.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %scalar.ph.prol ], [ %indvars.iv125.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %indvars.iv125.prol
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !42
  %i.fl = fmul nsz double %5, %i.fk
  %i.fm = fmul nsz double %i.ez, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %indvars.iv125.prol
  store double %i.fm, ptr %i.fn, align 8, !tbaa !42
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter151
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %scalar.ph.preheader ], [ %indvars.iv.next126.prol, %scalar.ph.prol ]
  %i.fo = sub nsw i64 %indvars.iv125.ph, %wide.trip.count128
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %._crit_edge109, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %scalar.ph ], [ %indvars.iv125.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %indvars.iv125
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !42
  %i.fs = fmul nsz double %5, %i.fr
  %i.ft = fmul nsz double %i.ez, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %indvars.iv125
  store double %i.ft, ptr %i.fu, align 8, !tbaa !42
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %indvars.iv.next126
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !42
  %i.fx = fmul nsz double %5, %i.fw
  %i.fy = fmul nsz double %i.ez, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %indvars.iv.next126
  store double %i.fy, ptr %i.fz, align 8, !tbaa !42
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %indvars.iv.next126.1
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !42
  %i.gc = fmul nsz double %5, %i.gb
  %i.gd = fmul nsz double %i.ez, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %indvars.iv.next126.1
  store double %i.gd, ptr %i.ge, align 8, !tbaa !42
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.085114, i64 %indvars.iv.next126.2
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !42
  %i.gh = fmul nsz double %5, %i.gg
  %i.gi = fmul nsz double %i.ez, %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.086113, i64 %indvars.iv.next126.2
  store double %i.gi, ptr %i.gj, align 8, !tbaa !42
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4 ; 2 uses
  %exitcond129.not.3 = icmp eq i64 %indvars.iv.next126.3, %wide.trip.count128
  br i1 %exitcond129.not.3, label %._crit_edge109, label %scalar.ph, !llvm.loop !79

._crit_edge109:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.k
  %i.gk = getelementptr inbounds [8 x i8], ptr %.085114, i64 %i.ab
  %i.gl = getelementptr inbounds [8 x i8], ptr %.086113, i64 %i.ab
  %i.gm = getelementptr inbounds [8 x i8], ptr %.087111, i64 %i.ad
  %i.gn = add nuw nsw i32 %.084115, 1             ; 2 uses
  %exitcond130.not = icmp eq i32 %i.gn, %4
  br i1 %exitcond130.not, label %._crit_edge118, label %bb.b, !llvm.loop !80

._crit_edge118:                                   ; preds = %._crit_edge109, %bb.a
  ret void
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #5

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @acompressor_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !52
  %i.b = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = tail call i32 @av_frame_is_writable(ptr noundef nonnull %1) #10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call ptr @ff_get_audio_buffer(ptr noundef %i.i, i32 noundef %i.l) #10 ; 3 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  %i.o = load ptr, ptr %.0, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !61 ; 2 uses
  tail call fastcc void @compressor(ptr noundef %i.f, ptr noundef %i.b, ptr noundef %i.o, ptr noundef %i.b, i32 noundef %i.q, double noundef %i.s, double noundef %i.s, ptr noundef nonnull %0, ptr noundef nonnull %0)
  %.not21 = icmp eq ptr %.0, %1
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %.0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.018 = phi i32 [ %i.t, %bb.g ], [ -12, %bb.c ]
  ret i32 %.018
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

end_hunk_0
