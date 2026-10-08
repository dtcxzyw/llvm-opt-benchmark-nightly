Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK2cv12GetAbInvokerclERKNS_5RangeE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge477.split

.lr.ph.preheader:                                 ; preds = %.lr.ph476
  %i.ag = sext i32 %i.a to i64
  %wide.trip.count503 = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.r to i64
  %.sroa.5.0..sroa.5.4..promoted = load float, ptr %.sroa.5, align 16
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  %.sroa.5.4..sroa.5.8. = load <4 x float>, ptr %.sroa.5.4..sroa_idx, align 4
  %.sroa.5.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 12
  %.sroa.5.12..sroa.5.16. = load <2 x float>, ptr %.sroa.5.12..sroa_idx, align 4
  %i.ah = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.5.0..sroa.5.4..promoted, i64 1
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %.sroa.5.4..sroa.5.8., <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.lr.ph

._crit_edge477.split.loopexit:                    ; preds = %._crit_edge
  %i.aj = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.mb, <4 x float> %i.aj, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x float> %i.ak, ptr %.sroa.5, align 16
  %i.al = extractelement <2 x float> %i.mh, i64 1
  %.sroa.5.16..sroa_idx798 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 16
  store float %i.al, ptr %.sroa.5.16..sroa_idx798, align 16
  %i.am = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aq = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %._crit_edge477.split

._crit_edge477.split:                             ; preds = %._crit_edge477.split.loopexit, %.lr.ph476, %bb.a
  %.sroa.42.128.copyload = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph476 ], [ %i.lz, %._crit_edge477.split.loopexit ]
  %i.ar = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.ma, %._crit_edge477.split.loopexit ]
  %i.as = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.mc, %._crit_edge477.split.loopexit ]
  %i.at = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.md, %._crit_edge477.split.loopexit ]
  %i.au = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.me, %._crit_edge477.split.loopexit ]
  %i.av = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.mf, %._crit_edge477.split.loopexit ]
  %i.aw = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.a ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %.lr.ph476 ], [ %i.am, %._crit_edge477.split.loopexit ]
  %i.ax = phi <4 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph476 ], [ %i.ap, %._crit_edge477.split.loopexit ]
  %i.ay = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.a ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %.lr.ph476 ], [ %i.aq, %._crit_edge477.split.loopexit ]
  %i.az = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.a ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %.lr.ph476 ], [ %i.an, %._crit_edge477.split.loopexit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !329, !nonnull !326, !align !327 ; 2 uses
  %i.bc = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.bd = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.lz, %._crit_edge ]
  %indvars.iv500 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next501, %._crit_edge ] ; 3 uses
  %i.be = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ma, %._crit_edge ]
  %i.bf = phi <4 x float> [ %i.ai, %.lr.ph.preheader ], [ %i.mb, %._crit_edge ]
  %i.bg = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mc, %._crit_edge ]
  %i.bh = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.md, %._crit_edge ]
  %i.bi = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.me, %._crit_edge ]
  %i.bj = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mf, %._crit_edge ]
  %i.bk = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mg, %._crit_edge ]
  %i.bl = phi <2 x float> [ %.sroa.5.12..sroa.5.16., %.lr.ph.preheader ], [ %i.mh, %._crit_edge ]
  %i.bm = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mi, %._crit_edge ]
  %i.bn = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mj, %._crit_edge ]
  %i.bo = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.mk, %._crit_edge ]
  %i.bp = mul i64 %i.j, %indvars.iv500
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bp
  %i.br = mul i64 %i.p, %indvars.iv500
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.br
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next501 = add nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count503
  br i1 %exitcond504.not, label %._crit_edge477.split.loopexit, label %.lr.ph, !llvm.loop !303

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.bt = phi float [ %i.bd, %.lr.ph ], [ %i.lz, %bb.k ] ; 10 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bu = phi <4 x float> [ %i.be, %.lr.ph ], [ %i.ma, %bb.k ] ; 9 uses
  %i.bv = phi <4 x float> [ %i.bf, %.lr.ph ], [ %i.mb, %bb.k ] ; 10 uses
  %i.bw = phi <4 x float> [ %i.bg, %.lr.ph ], [ %i.mc, %bb.k ] ; 10 uses
  %i.bx = phi <4 x float> [ %i.bh, %.lr.ph ], [ %i.md, %bb.k ] ; 10 uses
  %i.by = phi <4 x float> [ %i.bi, %.lr.ph ], [ %i.me, %bb.k ] ; 10 uses
  %i.bz = phi <2 x float> [ %i.bj, %.lr.ph ], [ %i.mf, %bb.k ] ; 10 uses
  %i.ca = phi <2 x float> [ %i.bk, %.lr.ph ], [ %i.mg, %bb.k ] ; 9 uses
  %i.cb = phi <2 x float> [ %i.bl, %.lr.ph ], [ %i.mh, %bb.k ] ; 10 uses
  %i.cc = phi <2 x float> [ %i.bm, %.lr.ph ], [ %i.mi, %bb.k ] ; 10 uses
  %i.cd = phi <2 x float> [ %i.bn, %.lr.ph ], [ %i.mj, %bb.k ] ; 10 uses
  %i.ce = phi <2 x float> [ %i.bo, %.lr.ph ], [ %i.mk, %bb.k ] ; 10 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv ; 3 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !23, !noalias !330 ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %indvars.iv ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23, !noalias !331
  %.fr = freeze float %i.ci                       ; 4 uses
  %or.cond456 = fcmp ord float %i.cg, %.fr
  br i1 %or.cond456, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !23, !noalias !331 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !23, !noalias !331 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !23, !noalias !330
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23, !noalias !330
  %i.cr = load <12 x float>, ptr %i.t, align 8, !tbaa !23 ; 11 uses
  %i.cs = load float, ptr %i.z, align 8, !tbaa !23
  %i.ct = load float, ptr %i.y, align 4, !tbaa !23
  %i.cu = load float, ptr %i.x, align 8, !tbaa !23
  %i.cv = load float, ptr %i.w, align 4, !tbaa !23
  %i.cw = load float, ptr %i.v, align 8, !tbaa !23
  %i.cx = load float, ptr %i.u, align 4, !tbaa !23
  %i.cy = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 5, i32 9>
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 9, i32 1>
  %i.dd = fmul <2 x float> %i.cz, %i.dc
  %i.de = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 4, i32 8>
  %i.df = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dg, <2 x float> %i.db)
  %i.di = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 8, i32 0>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dg, <2 x float> %i.dd)
  %i.dk = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 6, i32 10>
  %i.dl = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dm, <2 x float> %i.dh)
  %i.do = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 10, i32 2>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dm, <2 x float> %i.dj)
  %i.dq = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 7, i32 11>
  %i.dr = fadd <2 x float> %i.dq, %i.dn           ; 5 uses
  %i.ds = shufflevector <12 x float> %i.cr, <12 x float> poison, <2 x i32> <i32 11, i32 3>
  %i.dt = fadd <2 x float> %i.ds, %i.dp           ; 4 uses
  %i.du = extractelement <12 x float> %i.cr, i64 0
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %.fr, float 0.000000e+00)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cm, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ck, float %i.dw)
  %i.dy = extractelement <12 x float> %i.cr, i64 4
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %.fr, float 0.000000e+00)
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cm, float %i.dz)
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.ck, float %i.ea)
  %i.ec = extractelement <12 x float> %i.cr, i64 8
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %.fr, float 0.000000e+00)
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cm, float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ck, float %i.ee)
  %i.eg = extractelement <2 x float> %i.dr, i64 1
  %i.eh = fdiv float 1.000000e+00, %i.eg
  %i.ei = load <2 x float>, ptr %i.aa, align 8, !tbaa !23
  %i.ej = shufflevector <2 x float> %i.dt, <2 x float> %i.dr, <2 x i32> <i32 1, i32 2>
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = load <2 x float>, ptr %i.ab, align 8, !tbaa !23
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.em, <2 x float> %i.en) ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0 ; 4 uses
  %i.eq = fcmp ult float %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !332, !nonnull !326, !align !327 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !60
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fcmp olt float %i.ep, %i.ev
  %i.ex = extractelement <2 x float> %i.eo, i64 1 ; 4 uses
  %i.ey = fcmp oge float %i.ex, 0.000000e+00
  %or.cond = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !54
  %i.fb = add nsw i32 %i.fa, -1
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = fcmp olt float %i.ex, %i.fc
  br i1 %i.fd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.fe = tail call float @llvm.floor.f32(float %i.ep)
  %i.ff = fptosi float %i.fe to i32               ; 3 uses
  %i.fg = tail call float @llvm.floor.f32(float %i.ex)
  %i.fh = fptosi float %i.fg to i32               ; 3 uses
  %i.fi = sitofp i32 %i.ff to float
  %i.fj = fsub float %i.ep, %i.fi                 ; 5 uses
  %i.fk = sitofp i32 %i.fh to float
  %i.fl = fsub float %i.ex, %i.fk                 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 2 uses
  %2 = zext nneg i32 %i.fh to i64                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !56 ; 2 uses
  %i.fq = mul i64 %i.fp, %2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq ; 2 uses
  %i.fs = add nuw nsw i32 %i.fh, 1
  %3 = zext nneg i32 %i.fs to i64                 ; 2 uses
  %i.ft = mul i64 %i.fp, %3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ft ; 2 uses
  %4 = zext nneg i32 %i.ff to i64                 ; 4 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %4 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !23, !noalias !333 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fy = add nuw nsw i32 %i.ff, 1
  %5 = zext nneg i32 %i.fy to i64                 ; 4 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %5 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !23, !noalias !334
  %.fr464 = freeze float %i.ga                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %4 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !23, !noalias !335 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %5 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !23, !noalias !336 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gi = load <2 x float>, ptr %i.fx, align 4, !tbaa !23, !noalias !333 ; 2 uses
  %i.gj = load <2 x float>, ptr %i.gb, align 4, !tbaa !23, !noalias !334
  %i.gk = load <2 x float>, ptr %i.ge, align 4, !tbaa !23, !noalias !335 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.gh, align 4, !tbaa !23, !noalias !336
  %or.cond457 = fcmp ord float %i.fw, %.fr464
  %i.gm = fcmp ord float %i.gd, 0.000000e+00
  %or.cond458 = select i1 %or.cond457, i1 %i.gm, i1 false
  %i.gn = fcmp ord float %i.gg, 0.000000e+00
  %or.cond459 = select i1 %or.cond458, i1 %i.gn, i1 false
  br i1 %or.cond459, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.go = load ptr, ptr %i.ad, align 8, !tbaa !337, !nonnull !326, !align !327 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !55 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !56 ; 2 uses
  %i.gt = mul i64 %i.gs, %2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gt ; 2 uses
  %i.gv = mul i64 %i.gs, %3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %4 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !23, !noalias !338 ; 3 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %5 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !23, !noalias !339
  %.fr465 = freeze float %i.ha                    ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %4 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !23, !noalias !340 ; 3 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %5 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !23, !noalias !341 ; 2 uses
  %or.cond460 = fcmp ord float %i.gy, %.fr465
  %i.hf = fcmp ord float %i.hc, 0.000000e+00
  %or.cond461 = select i1 %or.cond460, i1 %i.hf, i1 false
  %i.hg = fcmp ord float %i.he, 0.000000e+00
  %or.cond462 = select i1 %or.cond461, i1 %i.hg, i1 false
  br i1 %or.cond462, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hl = fsub float %.fr464, %i.fw
  %i.hm = fmul float %i.fj, %i.hl
  %i.hn = fadd float %i.fw, %i.hm                 ; 2 uses
  %i.ho = fsub float %i.gg, %i.gd
  %i.hp = fmul float %i.fj, %i.ho
  %i.hq = fadd float %i.gd, %i.hp
  %i.hr = fsub float %i.hq, %i.hn
  %i.hs = fmul float %i.fl, %i.hr
  %i.ht = fadd float %i.hn, %i.hs                 ; 2 uses
  %i.hu = fsub float %.fr465, %i.gy
  %i.hv = fmul float %i.fj, %i.hu
  %i.hw = fadd float %i.gy, %i.hv                 ; 2 uses
  %i.hx = fsub float %i.he, %i.hc
  %i.hy = fmul float %i.fj, %i.hx
  %i.hz = fadd float %i.hc, %i.hy
  %i.ia = fsub float %i.hz, %i.hw
  %i.ib = fmul float %i.fl, %i.ia
  %i.ic = load <2 x float>, ptr %i.hh, align 4, !tbaa !23, !noalias !341
  %i.id = load <2 x float>, ptr %i.hi, align 4, !tbaa !23, !noalias !340 ; 2 uses
  %i.ie = load <2 x float>, ptr %i.hj, align 4, !tbaa !23, !noalias !339
  %i.if = load <2 x float>, ptr %i.hk, align 4, !tbaa !23, !noalias !338 ; 2 uses
  %i.ig = fsub <2 x float> %i.ie, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  %i.ik = fadd <2 x float> %i.if, %i.ij           ; 2 uses
  %i.il = fsub <2 x float> %i.ic, %i.id
  %i.im = fmul <2 x float> %i.ii, %i.il
  %i.in = fadd <2 x float> %i.id, %i.im
  %i.io = fsub <2 x float> %i.in, %i.ik
  %i.ip = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ir = fmul <2 x float> %i.iq, %i.io
  %i.is = fadd float %i.hw, %i.ib
  %.fr466 = freeze float %i.is                    ; 10 uses
  %i.it = fadd <2 x float> %i.ik, %i.ir           ; 10 uses
  %or.cond463 = fcmp ord float %i.ht, %.fr466
  br i1 %or.cond463, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.iu = fsub <2 x float> %i.gj, %i.gi
  %i.iv = fsub <2 x float> %i.gl, %i.gk
  %i.iw = fmul <2 x float> %i.ii, %i.iu
  %i.ix = fadd <2 x float> %i.gi, %i.iw           ; 2 uses
  %i.iy = fmul <2 x float> %i.ii, %i.iv
  %i.iz = fadd <2 x float> %i.gk, %i.iy
  %i.ja = fsub <2 x float> %i.iz, %i.ix
  %i.jb = fmul <2 x float> %i.iq, %i.ja
  %i.jc = fadd <2 x float> %i.ix, %i.jb
  %i.jd = shufflevector <2 x float> %i.dt, <2 x float> %i.dr, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %i.je = insertelement <4 x float> poison, float %.fr466, i64 0
  %i.jf = insertelement <4 x float> %i.jd, float %.fr466, i64 0
  %i.jg = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ht, i64 1
  %i.jh = shufflevector <2 x float> %i.jc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ji = shufflevector <4 x float> %i.jg, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jj = fsub <4 x float> %i.jf, %i.ji           ; 5 uses
  %foldExtExtBinop = fmul <4 x float> %i.jj, %i.jj
  %i.jk = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.jl = extractelement <4 x float> %i.jj, i64 1 ; 2 uses
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jk)
  %i.jn = extractelement <4 x float> %i.jj, i64 3 ; 2 uses
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.jn, float %i.jn, float %i.jm)
  %i.jp = load float, ptr %i.ae, align 8, !tbaa !105
  %i.jq = fcmp ogt float %i.jo, %i.jp
  br i1 %i.jq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jr = extractelement <2 x float> %i.it, i64 0 ; 4 uses
  %i.js = fmul float %i.eb, %i.jr
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.dx, float %.fr466, float %i.js)
  %i.ju = extractelement <2 x float> %i.it, i64 1 ; 2 uses
  %i.jv = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.ju, float %i.jt)
  %i.jw = tail call noundef float @llvm.fabs.f32(float %i.jv)
  %i.jx = load float, ptr %i.af, align 4, !tbaa !106
  %i.jy = fcmp olt float %i.jw, %i.jx
  br i1 %i.jy, label %bb.k, label %.preheader467

.preheader467:                                    ; preds = %bb.j
  %i.jz = fneg <2 x float> %i.it
  %i.ka = fmul <2 x float> %i.dt, %i.jz
  %i.kb = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.kc = insertelement <2 x float> %i.kb, float %.fr466, i64 1
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.kc, <2 x float> %i.ka) ; 7 uses
  %i.ke = fneg <4 x float> %i.jj                  ; 4 uses
  %i.kf = extractelement <2 x float> %i.dr, i64 0
  %i.kg = extractelement <4 x float> %i.ke, i64 0
  %i.kh = fmul float %i.kf, %i.kg
  %i.ki = extractelement <2 x float> %i.dt, i64 1
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.jr, float %i.kh) ; 5 uses
  %i.kk = extractelement <4 x float> %i.ke, i64 2
  %i.kl = fmul float %i.jr, %i.kk
  %i.km = extractelement <4 x float> %i.ke, i64 1
  %i.kn = tail call float @llvm.fmuladd.f32(float %.fr466, float %i.km, float %i.kl)
  %i.ko = extractelement <4 x float> %i.ke, i64 3
  %i.kp = tail call noundef float @llvm.fmuladd.f32(float %i.ju, float %i.ko, float %i.kn) ; 4 uses
  %i.kq = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kr = insertelement <4 x float> poison, float %i.kj, i64 2
  %i.ks = insertelement <4 x float> %i.kr, float %.fr466, i64 3
  %i.kt = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> %i.ks, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kq, <4 x float> %i.ku, <4 x float> %i.bv) ; 2 uses
  %i.kw = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.it, <2 x float> %i.cb) ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kz = shufflevector <2 x float> %i.kd, <2 x float> %i.it, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.la = insertelement <4 x float> %i.kz, float %i.kj, i64 1
  %i.lb = insertelement <4 x float> %i.la, float %.fr466, i64 2
  %i.lc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %i.lb, <4 x float> %i.bw)
  %i.ld = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.le = insertelement <2 x float> %i.kb, float %i.kp, i64 1 ; 2 uses
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.le, <2 x float> %i.cc)
  %i.lg = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.li = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.lj = insertelement <4 x float> %i.li, float %i.kj, i64 0
  %i.lk = insertelement <4 x float> %i.lj, float %.fr466, i64 1
  %i.ll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lh, <4 x float> %i.lk, <4 x float> %i.bx)
  %i.lm = insertelement <2 x float> %i.kd, float %i.kj, i64 1
  %i.ln = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.lo, <2 x float> %i.ce)
  %i.lq = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ls = insertelement <4 x float> %i.lr, float %.fr466, i64 0
  %i.lt = insertelement <4 x float> %i.ls, float %i.kp, i64 3
  %i.lu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.lt, <4 x float> %i.by)
  %i.lv = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.it, <2 x float> %i.cd)
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.kp, float %i.bt)
  %i.ly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.le, <2 x float> %i.bz)
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.j, %bb.i, %.preheader467, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %i.lz = phi float [ %i.bt, %bb.f ], [ %i.bt, %bb.h ], [ %i.bt, %bb.j ], [ %i.bt, %bb.i ], [ %i.lx, %.preheader467 ], [ %i.bt, %bb.g ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ], [ %i.bt, %bb.c ], [ %i.bt, %bb.b ] ; 3 uses
  %i.ma = phi <4 x float> [ %i.bu, %bb.f ], [ %i.bu, %bb.h ], [ %i.bu, %bb.j ], [ %i.bu, %bb.i ], [ %i.kv, %.preheader467 ], [ %i.bu, %bb.g ], [ %i.bu, %bb.e ], [ %i.bu, %bb.d ], [ %i.bu, %bb.c ], [ %i.bu, %bb.b ] ; 3 uses
  %i.mb = phi <4 x float> [ %i.bv, %bb.f ], [ %i.bv, %bb.h ], [ %i.bv, %bb.j ], [ %i.bv, %bb.i ], [ %i.kv, %.preheader467 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.e ], [ %i.bv, %bb.d ], [ %i.bv, %bb.c ], [ %i.bv, %bb.b ] ; 3 uses
  %i.mc = phi <4 x float> [ %i.bw, %bb.f ], [ %i.bw, %bb.h ], [ %i.bw, %bb.j ], [ %i.bw, %bb.i ], [ %i.lc, %.preheader467 ], [ %i.bw, %bb.g ], [ %i.bw, %bb.e ], [ %i.bw, %bb.d ], [ %i.bw, %bb.c ], [ %i.bw, %bb.b ] ; 3 uses
  %i.md = phi <4 x float> [ %i.bx, %bb.f ], [ %i.bx, %bb.h ], [ %i.bx, %bb.j ], [ %i.bx, %bb.i ], [ %i.ll, %.preheader467 ], [ %i.bx, %bb.g ], [ %i.bx, %bb.e ], [ %i.bx, %bb.d ], [ %i.bx, %bb.c ], [ %i.bx, %bb.b ] ; 3 uses
  %i.me = phi <4 x float> [ %i.by, %bb.f ], [ %i.by, %bb.h ], [ %i.by, %bb.j ], [ %i.by, %bb.i ], [ %i.lu, %.preheader467 ], [ %i.by, %bb.g ], [ %i.by, %bb.e ], [ %i.by, %bb.d ], [ %i.by, %bb.c ], [ %i.by, %bb.b ] ; 3 uses
  %i.mf = phi <2 x float> [ %i.bz, %bb.f ], [ %i.bz, %bb.h ], [ %i.bz, %bb.j ], [ %i.bz, %bb.i ], [ %i.ly, %.preheader467 ], [ %i.bz, %bb.g ], [ %i.bz, %bb.e ], [ %i.bz, %bb.d ], [ %i.bz, %bb.c ], [ %i.bz, %bb.b ] ; 3 uses
  %i.mg = phi <2 x float> [ %i.ca, %bb.f ], [ %i.ca, %bb.h ], [ %i.ca, %bb.j ], [ %i.ca, %bb.i ], [ %i.kx, %.preheader467 ], [ %i.ca, %bb.g ], [ %i.ca, %bb.e ], [ %i.ca, %bb.d ], [ %i.ca, %bb.c ], [ %i.ca, %bb.b ] ; 3 uses
  %i.mh = phi <2 x float> [ %i.cb, %bb.f ], [ %i.cb, %bb.h ], [ %i.cb, %bb.j ], [ %i.cb, %bb.i ], [ %i.kx, %.preheader467 ], [ %i.cb, %bb.g ], [ %i.cb, %bb.e ], [ %i.cb, %bb.d ], [ %i.cb, %bb.c ], [ %i.cb, %bb.b ] ; 4 uses
  %i.mi = phi <2 x float> [ %i.cc, %bb.f ], [ %i.cc, %bb.h ], [ %i.cc, %bb.j ], [ %i.cc, %bb.i ], [ %i.lf, %.preheader467 ], [ %i.cc, %bb.g ], [ %i.cc, %bb.e ], [ %i.cc, %bb.d ], [ %i.cc, %bb.c ], [ %i.cc, %bb.b ] ; 3 uses
  %i.mj = phi <2 x float> [ %i.cd, %bb.f ], [ %i.cd, %bb.h ], [ %i.cd, %bb.j ], [ %i.cd, %bb.i ], [ %i.lw, %.preheader467 ], [ %i.cd, %bb.g ], [ %i.cd, %bb.e ], [ %i.cd, %bb.d ], [ %i.cd, %bb.c ], [ %i.cd, %bb.b ] ; 3 uses
  %i.mk = phi <2 x float> [ %i.ce, %bb.f ], [ %i.ce, %bb.h ], [ %i.ce, %bb.j ], [ %i.ce, %bb.i ], [ %i.lp, %.preheader467 ], [ %i.ce, %bb.g ], [ %i.ce, %bb.e ], [ %i.ce, %bb.d ], [ %i.ce, %bb.c ], [ %i.ce, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !324

bb.l:                                             ; preds = %._crit_edge477.split
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #23
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %._crit_edge477.split
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !342, !nonnull !326, !align !343 ; 12 uses
  %i.mn = load <4 x float>, ptr %i.mm, align 4, !tbaa !23
  %i.mo = fadd <4 x float> %i.mn, %i.ar
  store <4 x float> %i.mo, ptr %i.mm, align 4, !tbaa !23
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  %i.mq = load <4 x float>, ptr %i.mp, align 4, !tbaa !23
  %i.mr = insertelement <4 x float> %i.aw, float 0.000000e+00, i64 3
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.mt = fadd <4 x float> %i.mq, %i.ms
  store <4 x float> %i.mt, ptr %i.mp, align 4, !tbaa !23
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 32 ; 2 uses
  %i.mv = load <4 x float>, ptr %i.mu, align 4, !tbaa !23
  %i.mw = fadd <4 x float> %i.mv, %i.as
  store <4 x float> %i.mw, ptr %i.mu, align 4, !tbaa !23
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 48 ; 2 uses
  %i.my = load <4 x float>, ptr %i.mx, align 4, !tbaa !23
  %i.mz = fadd <4 x float> %i.my, %i.ax
  store <4 x float> %i.mz, ptr %i.mx, align 4, !tbaa !23
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 64 ; 2 uses
  %i.nb = load <4 x float>, ptr %i.na, align 4, !tbaa !23
  %i.nc = fadd <4 x float> %i.nb, %i.at
  store <4 x float> %i.nc, ptr %i.na, align 4, !tbaa !23
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mm, i64 80 ; 2 uses
  %i.ne = load <4 x float>, ptr %i.nd, align 4, !tbaa !23
  %i.nf = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.az, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ng = fadd <4 x float> %i.ne, %i.nf
  store <4 x float> %i.ng, ptr %i.nd, align 4, !tbaa !23
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mm, i64 96 ; 2 uses
  %i.ni = load <4 x float>, ptr %i.nh, align 4, !tbaa !23
  %i.nj = fadd <4 x float> %i.ni, %i.au
  store <4 x float> %i.nj, ptr %i.nh, align 4, !tbaa !23
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mm, i64 112 ; 2 uses
end_hunk_0
