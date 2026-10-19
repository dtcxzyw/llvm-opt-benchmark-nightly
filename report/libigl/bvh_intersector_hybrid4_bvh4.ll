Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_intersector_hybrid4_bvh4?download=true
inline.NumInlined: 1818
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi257ELb0ENS0_24VirtualCurveIntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.bz = fmul float %i.by, 1.500000e+00
  %i.ca = fmul float %i.bw, 5.000000e-01
  %i.cb = fmul float %i.by, %i.ca
  %foldExtExtBinop = fmul <4 x float> %i.bx, %i.bx
  %i.cc = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cd = fmul float %i.cc, %i.cb
  %i.ce = fsub float %i.bz, %i.cd
  %i.cf = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %.v, %i.cg             ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cj = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ck = fmul <4 x float> %i.cj, %i.ch
  %i.cl = fmul <4 x float> %i.av, %i.ci
  %i.cm = fsub <4 x float> %i.cl, %i.ck           ; 3 uses
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.co = fmul <4 x float> %i.cm, %i.cm           ; 3 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cr = fadd <4 x float> %i.cp, %i.cq
  %i.cs = fadd <4 x float> %i.co, %i.cr           ; 2 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cs) ; 3 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0 ; 2 uses
  %i.cw = fmul float %i.cv, 1.500000e+00
  %i.cx = fmul float %i.ct, 5.000000e-01
  %i.cy = fmul float %i.cv, %i.cx
  %foldExtExtBinop756 = fmul <4 x float> %i.cu, %i.cu
  %i.cz = extractelement <4 x float> %foldExtExtBinop756, i64 0
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fsub float %i.cw, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %i.cn, %i.dd           ; 2 uses
  %i.df = fmul <4 x float> %i.au, %i.av           ; 2 uses
  %i.dg = shufflevector <4 x float> %i.ch, <4 x float> %i.df, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.ch, <4 x float> %i.df, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.de, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dg, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dl = shufflevector <4 x float> %i.dg, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dn = getelementptr inbounds nuw [48 x i8], ptr %.ptr13.i, i64 %i.af ; 3 uses
  store <4 x float> %i.dk, ptr %i.dn, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x float> %i.dl, ptr %i.do, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store <4 x float> %i.dm, ptr %i.dp, align 16
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit, label %bb.d, !llvm.loop !35

_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit: ; preds = %bb.d
  %i.dq = load <4 x float>, ptr %2, align 16      ; 11 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 16   ; 11 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = load <4 x float>, ptr %i.dt, align 16   ; 11 uses
  %i.dv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.v)
  %i.dw = fcmp uge <4 x float> %i.dv, splat (float 1.000000e-18)
  %i.dx = select <4 x i1> %i.dw, <4 x float> %i.v, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.dy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.s)
  %i.dz = fcmp uge <4 x float> %i.dy, splat (float 1.000000e-18)
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.s, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.eb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.q)
  %i.ec = fcmp uge <4 x float> %i.eb, splat (float 1.000000e-18)
  %i.ed = select <4 x i1> %i.ec, <4 x float> %i.q, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dx) ; 3 uses
  %i.ef = fmul <4 x float> %i.dx, %i.ee
  %i.eg = fsub <4 x float> splat (float 1.000000e+00), %i.ef
  %i.eh = fmul <4 x float> %i.ee, %i.eg
  %i.ei = fadd <4 x float> %i.ee, %i.eh           ; 8 uses
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ea) ; 3 uses
  %i.ek = fmul <4 x float> %i.ea, %i.ej
  %i.el = fsub <4 x float> splat (float 1.000000e+00), %i.ek
  %i.em = fmul <4 x float> %i.ej, %i.el
  %i.en = fadd <4 x float> %i.ej, %i.em           ; 8 uses
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ed) ; 3 uses
  %i.ep = fmul <4 x float> %i.ed, %i.eo
  %i.eq = fsub <4 x float> splat (float 1.000000e+00), %i.ep
  %i.er = fmul <4 x float> %i.eo, %i.eq
  %i.es = fadd <4 x float> %i.eo, %i.er           ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eu = load <4 x float>, ptr %i.et, align 16, !noalias !3100
  %i.ev = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> zeroinitializer)
  %i.ew = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.h, <4 x float> zeroinitializer)
  %i.ex = xor <4 x i1> %i.j, splat (i1 true)
  %i.ey = sext <4 x i1> %i.ex to <4 x i32>        ; 2 uses
  %i.ez = select <4 x i1> %i.j, <4 x float> %i.ev, <4 x float> splat (float +inf) ; 6 uses
  %i.fa = select <4 x i1> %i.j, <4 x float> %i.ew, <4 x float> splat (float -inf)
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %.not = icmp eq ptr %i.fc, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = and i32 %i.ff, 65536
  %.not617 = icmp eq i32 %i.fg, 0
  %i.fh = select i1 %.not617, i64 3, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit
  %i.fi = phi i64 [ 3, %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit ], [ %i.fh, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i64 -8, ptr %6, align 16
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.c, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x float> %i.ez, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = load <4 x float>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 2 uses
  %i.fn = bitcast <4 x float> %i.fm to <4 x i32>
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq i64 %i.fp, -8
  br i1 %i.fq, label %.thread610, label %.lr.ph750.lr.ph, !prof !73

.lr.ph750.lr.ph:                                  ; preds = %bb.f
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %.lr.ph750

.loopexit.loopexit:                               ; preds = %bb.g, %bb.s, %bb.x
  %.ph = phi <4 x i32> [ %i.vs, %bb.x ], [ %i.fx, %bb.s ], [ %i.fx, %bb.g ] ; 2 uses
  %.sroa.51.5.ph = phi <4 x float> [ %i.wb, %bb.x ], [ %.sroa.51.0752, %bb.s ], [ %.sroa.51.0752, %bb.g ]
  %.1356.ph = phi ptr [ %.245.lcssa, %bb.x ], [ %.245.lcssa, %bb.s ], [ %i.fz, %bb.g ]
  %.13.ph = phi ptr [ %.2.lcssa, %bb.x ], [ %.2.lcssa, %bb.s ], [ %i.ga, %bb.g ]
  %i.fs = getelementptr inbounds i8, ptr %.1356.ph, i64 -8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8            ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -8
  br i1 %i.fu, label %.thread610, label %.lr.ph750, !prof !74

.lr.ph750:                                        ; preds = %.lr.ph750.lr.ph, %.loopexit.loopexit
  %i.fv = phi i64 [ %i.fp, %.lr.ph750.lr.ph ], [ %i.ft, %.loopexit.loopexit ]
  %i.fw = phi ptr [ %i.fo, %.lr.ph750.lr.ph ], [ %i.fs, %.loopexit.loopexit ]
  %.042753 = phi ptr [ %i.fr, %.lr.ph750.lr.ph ], [ %.13.ph, %.loopexit.loopexit ]
  %.sroa.51.0752 = phi <4 x float> [ %i.fa, %.lr.ph750.lr.ph ], [ %.sroa.51.5.ph, %.loopexit.loopexit ] ; 11 uses
  %i.fx = phi <4 x i32> [ %i.ey, %.lr.ph750.lr.ph ], [ %.ph, %.loopexit.loopexit ] ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph750, %.thread604
  %i.fy = phi i64 [ %i.fv, %.lr.ph750 ], [ %i.wd, %.thread604 ] ; 3 uses
  %i.fz = phi ptr [ %i.fw, %.lr.ph750 ], [ %i.wc, %.thread604 ] ; 3 uses
  %.1749 = phi ptr [ %.042753, %.lr.ph750 ], [ %.13, %.thread604 ]
  %i.ga = getelementptr inbounds i8, ptr %.1749, i64 -16 ; 4 uses
  %i.gb = load <4 x float>, ptr %i.ga, align 16   ; 2 uses
  %i.gc = fcmp olt <4 x float> %i.gb, %.sroa.51.0752
  %i.gd = bitcast <4 x i1> %i.gc to i4
  %i.ge = icmp eq i4 %i.gd, 0
  br i1 %i.ge, label %.loopexit.loopexit, label %.preheader, !prof !70, !llvm.loop !3082

.preheader:                                       ; preds = %bb.g
  %i.gf = and i64 %i.fy, 8
  %.not68645 = icmp eq i64 %i.gf, 0
  br i1 %.not68645, label %.lr.ph, label %._crit_edge, !prof !75

bb.h:                                             ; preds = %.split641.us.thread
  %i.gg = and i64 %.us-phi686, 8
  %.not68 = icmp eq i64 %i.gg, 0
  br i1 %.not68, label %.lr.ph, label %._crit_edge, !prof !76, !llvm.loop !3083

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.2648 = phi ptr [ %.us-phi644689, %bb.h ], [ %i.ga, %.preheader ] ; 7 uses
  %.245647 = phi ptr [ %.us-phi643688, %bb.h ], [ %i.fz, %.preheader ] ; 7 uses
  %.sroa.0110.0646 = phi i64 [ %.us-phi686, %bb.h ], [ %i.fy, %.preheader ]
  %.sroa.0110.0646.fr = freeze i64 %.sroa.0110.0646 ; 3 uses
  %i.gh = and i64 %.sroa.0110.0646.fr, -16
  %i.gi = inttoptr i64 %i.gh to ptr               ; 17 uses
  %i.gj = and i64 %.sroa.0110.0646.fr, 7
  %.not618 = icmp eq i64 %i.gj, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 144
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 160
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 176
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 192
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 208
  %i.gw = inttoptr i64 %.sroa.0110.0646.fr to ptr ; 24 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  br i1 %.not618, label %.split.us.preheader, label %.split, !prof !69

.split.us.preheader:                              ; preds = %.lr.ph
  %i.hd = load i64, ptr %i.gi, align 16           ; 2 uses
  %.not71.us = icmp eq i64 %i.hd, 8
  br i1 %.not71.us, label %.thread604, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us: ; preds = %.split.us.preheader
  %i.he = load float, ptr %i.gx, align 4, !noalias !3101
  %i.hf = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fsub <4 x float> %i.hg, %i.dq
  %i.hi = fmul <4 x float> %i.ei, %i.hh           ; 2 uses
  %i.hj = load float, ptr %i.gy, align 4, !noalias !3101
  %i.hk = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hm = fsub <4 x float> %i.hl, %i.ds
  %i.hn = fmul <4 x float> %i.en, %i.hm           ; 2 uses
  %i.ho = load float, ptr %i.gz, align 4, !noalias !3101
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fsub <4 x float> %i.hq, %i.du
  %i.hs = fmul <4 x float> %i.es, %i.hr           ; 2 uses
  %i.ht = load float, ptr %i.ha, align 4, !noalias !3101
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fsub <4 x float> %i.hv, %i.dq
  %i.hx = fmul <4 x float> %i.ei, %i.hw           ; 2 uses
  %i.hy = load float, ptr %i.hb, align 4, !noalias !3101
  %i.hz = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = fsub <4 x float> %i.ia, %i.ds
  %i.ic = fmul <4 x float> %i.en, %i.ib           ; 2 uses
  %i.id = load float, ptr %i.hc, align 4, !noalias !3101
  %i.ie = insertelement <4 x float> poison, float %i.id, i64 0
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fsub <4 x float> %i.if, %i.du
  %i.ih = fmul <4 x float> %i.es, %i.ig           ; 2 uses
  %i.ii = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hi, <4 x float> %i.hx)
  %i.ij = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hn, <4 x float> %i.ic)
  %i.ik = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hs, <4 x float> %i.ih)
  %i.il = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ii, <4 x float> %i.ij)
  %i.im = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.il, <4 x float> %i.ik) ; 2 uses
  %i.in = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hi, <4 x float> %i.hx)
  %i.io = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hn, <4 x float> %i.ic)
  %i.ip = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hs, <4 x float> %i.ih)
  %i.iq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.in, <4 x float> %i.io)
  %i.ir = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iq, <4 x float> %i.ip)
  %i.is = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.im, <4 x float> %i.ez)
  %i.it = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ir, <4 x float> %.sroa.51.0752)
  %i.iu = fcmp ole <4 x float> %i.is, %i.it       ; 2 uses
  %i.iv = bitcast <4 x i1> %i.iu to i4
  %.not619.us = icmp eq i4 %i.iv, 0               ; 3 uses
  %i.iw = select <4 x i1> %i.iu, <4 x float> %i.im, <4 x float> splat (float +inf)
  %.sroa.0110.3.ph.us = select i1 %.not619.us, i64 8, i64 %i.hd, !prof !70 ; 3 uses
  %.sroa.0104.3.ph.us = select i1 %.not619.us, <4 x float> splat (float +inf), <4 x float> %i.iw, !prof !70 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.iy = load i64, ptr %i.ix, align 8            ; 3 uses
  %.not71.us.1 = icmp eq i64 %i.iy, 8
  br i1 %.not71.us.1, label %.split641.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1: ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  %i.ja = load float, ptr %i.iz, align 4, !noalias !3101
  %i.jb = insertelement <4 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jd = fsub <4 x float> %i.jc, %i.dq
  %i.je = fmul <4 x float> %i.ei, %i.jd           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gw, i64 68
  %i.jg = load float, ptr %i.jf, align 4, !noalias !3101
  %i.jh = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = fsub <4 x float> %i.ji, %i.ds
  %i.jk = fmul <4 x float> %i.en, %i.jj           ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gw, i64 100
  %i.jm = load float, ptr %i.jl, align 4, !noalias !3101
  %i.jn = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fsub <4 x float> %i.jo, %i.du
  %i.jq = fmul <4 x float> %i.es, %i.jp           ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gw, i64 52
  %i.js = load float, ptr %i.jr, align 4, !noalias !3101
  %i.jt = insertelement <4 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = fsub <4 x float> %i.ju, %i.dq
  %i.jw = fmul <4 x float> %i.ei, %i.jv           ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gw, i64 84
  %i.jy = load float, ptr %i.jx, align 4, !noalias !3101
  %i.jz = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kb = fsub <4 x float> %i.ka, %i.ds
  %i.kc = fmul <4 x float> %i.en, %i.kb           ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gw, i64 116
  %i.ke = load float, ptr %i.kd, align 4, !noalias !3101
  %i.kf = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kh = fsub <4 x float> %i.kg, %i.du
  %i.ki = fmul <4 x float> %i.es, %i.kh           ; 2 uses
  %i.kj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.je, <4 x float> %i.jw)
  %i.kk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jk, <4 x float> %i.kc)
  %i.kl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jq, <4 x float> %i.ki)
  %i.km = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.kk)
  %i.kn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.km, <4 x float> %i.kl) ; 2 uses
  %i.ko = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.je, <4 x float> %i.jw)
  %i.kp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jk, <4 x float> %i.kc)
  %i.kq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jq, <4 x float> %i.ki)
  %i.kr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ko, <4 x float> %i.kp)
  %i.ks = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kr, <4 x float> %i.kq)
  %i.kt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kn, <4 x float> %i.ez)
  %i.ku = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ks, <4 x float> %.sroa.51.0752)
  %i.kv = fcmp ole <4 x float> %i.kt, %i.ku       ; 2 uses
  %i.kw = bitcast <4 x i1> %i.kv to i4
  %.not619.us.1 = icmp eq i4 %i.kw, 0
  br i1 %.not619.us.1, label %.split.us.2, label %bb.i, !prof !70

bb.i:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1
  %i.kx = select <4 x i1> %i.kv, <4 x float> %i.kn, <4 x float> splat (float +inf) ; 2 uses
  br i1 %.not619.us, label %.split.us.2, label %bb.j, !prof !70

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.0110.3.ph.us, ptr %.245647, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %.245647, i64 8
  store <4 x float> %.sroa.0104.3.ph.us, ptr %.2648, align 16
  %i.kz = getelementptr inbounds nuw i8, ptr %.2648, i64 16
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.j, %bb.i, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1
  %.sroa.0110.3.ph.us.1 = phi i64 [ %i.iy, %bb.i ], [ %i.iy, %bb.j ], [ %.sroa.0110.3.ph.us, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 4 uses
  %.sroa.0104.3.ph.us.1 = phi <4 x float> [ %i.kx, %bb.i ], [ %i.kx, %bb.j ], [ %.sroa.0104.3.ph.us, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 3 uses
  %.649.ph.us.1 = phi ptr [ %.245647, %bb.i ], [ %i.ky, %bb.j ], [ %.245647, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 5 uses
  %.6.ph.us.1 = phi ptr [ %.2648, %bb.i ], [ %i.kz, %bb.j ], [ %.2648, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.lb = load i64, ptr %i.la, align 16           ; 3 uses
  %.not71.us.2 = icmp eq i64 %i.lb, 8
  br i1 %.not71.us.2, label %.split641.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2: ; preds = %.split.us.2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.ld = load float, ptr %i.lc, align 4, !noalias !3101
  %i.le = insertelement <4 x float> poison, float %i.ld, i64 0
  %i.lf = shufflevector <4 x float> %i.le, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lg = fsub <4 x float> %i.lf, %i.dq
  %i.lh = fmul <4 x float> %i.ei, %i.lg           ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gw, i64 72
  %i.lj = load float, ptr %i.li, align 4, !noalias !3101
  %i.lk = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fsub <4 x float> %i.ll, %i.ds
  %i.ln = fmul <4 x float> %i.en, %i.lm           ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  %i.lp = load float, ptr %i.lo, align 4, !noalias !3101
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = fsub <4 x float> %i.lr, %i.du
  %i.lt = fmul <4 x float> %i.es, %i.ls           ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.lv = load float, ptr %i.lu, align 4, !noalias !3101
  %i.lw = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = fsub <4 x float> %i.lx, %i.dq
  %i.lz = fmul <4 x float> %i.ei, %i.ly           ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gw, i64 88
  %i.mb = load float, ptr %i.ma, align 4, !noalias !3101
  %i.mc = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.me = fsub <4 x float> %i.md, %i.ds
  %i.mf = fmul <4 x float> %i.en, %i.me           ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  %i.mh = load float, ptr %i.mg, align 4, !noalias !3101
  %i.mi = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = fsub <4 x float> %i.mj, %i.du
  %i.ml = fmul <4 x float> %i.es, %i.mk           ; 2 uses
  %i.mm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lh, <4 x float> %i.lz)
  %i.mn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ln, <4 x float> %i.mf)
  %i.mo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lt, <4 x float> %i.ml)
  %i.mp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mm, <4 x float> %i.mn)
  %i.mq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mp, <4 x float> %i.mo) ; 2 uses
  %i.mr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lh, <4 x float> %i.lz)
  %i.ms = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ln, <4 x float> %i.mf)
  %i.mt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lt, <4 x float> %i.ml)
  %i.mu = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mr, <4 x float> %i.ms)
  %i.mv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mu, <4 x float> %i.mt)
  %i.mw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mq, <4 x float> %i.ez)
  %i.mx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mv, <4 x float> %.sroa.51.0752)
  %i.my = fcmp ole <4 x float> %i.mw, %i.mx       ; 2 uses
  %i.mz = bitcast <4 x i1> %i.my to i4
  %.not619.us.2 = icmp eq i4 %i.mz, 0
  br i1 %.not619.us.2, label %.split.us.3, label %bb.k, !prof !70

bb.k:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2
  %i.na = select <4 x i1> %i.my, <4 x float> %i.mq, <4 x float> splat (float +inf) ; 2 uses
  %.not70.us.2 = icmp eq i64 %.sroa.0110.3.ph.us.1, 8
  br i1 %.not70.us.2, label %.split.us.3, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.0110.3.ph.us.1, ptr %.649.ph.us.1, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.649.ph.us.1, i64 8
  store <4 x float> %.sroa.0104.3.ph.us.1, ptr %.6.ph.us.1, align 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.6.ph.us.1, i64 16
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.l, %bb.k, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2
  %.sroa.0110.3.ph.us.2 = phi i64 [ %i.lb, %bb.k ], [ %i.lb, %bb.l ], [ %.sroa.0110.3.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 4 uses
  %.sroa.0104.3.ph.us.2 = phi <4 x float> [ %i.na, %bb.k ], [ %i.na, %bb.l ], [ %.sroa.0104.3.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 3 uses
  %.649.ph.us.2 = phi ptr [ %.649.ph.us.1, %bb.k ], [ %i.nb, %bb.l ], [ %.649.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 5 uses
  %.6.ph.us.2 = phi ptr [ %.6.ph.us.1, %bb.k ], [ %i.nc, %bb.l ], [ %.6.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.ne = load i64, ptr %i.nd, align 8            ; 3 uses
  %.not71.us.3 = icmp eq i64 %i.ne, 8
  br i1 %.not71.us.3, label %.split641.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3: ; preds = %.split.us.3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.ng = load float, ptr %i.nf, align 4, !noalias !3101
  %i.nh = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = fsub <4 x float> %i.ni, %i.dq
  %i.nk = fmul <4 x float> %i.ei, %i.nj           ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gw, i64 76
  %i.nm = load float, ptr %i.nl, align 4, !noalias !3101
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = fsub <4 x float> %i.no, %i.ds
  %i.nq = fmul <4 x float> %i.en, %i.np           ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gw, i64 108
  %i.ns = load float, ptr %i.nr, align 4, !noalias !3101
  %i.nt = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fsub <4 x float> %i.nu, %i.du
  %i.nw = fmul <4 x float> %i.es, %i.nv           ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gw, i64 60
  %i.ny = load float, ptr %i.nx, align 4, !noalias !3101
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ob = fsub <4 x float> %i.oa, %i.dq
  %i.oc = fmul <4 x float> %i.ei, %i.ob           ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.gw, i64 92
  %i.oe = load float, ptr %i.od, align 4, !noalias !3101
  %i.of = insertelement <4 x float> poison, float %i.oe, i64 0
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oh = fsub <4 x float> %i.og, %i.ds
  %i.oi = fmul <4 x float> %i.en, %i.oh           ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.gw, i64 124
  %i.ok = load float, ptr %i.oj, align 4, !noalias !3101
  %i.ol = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.on = fsub <4 x float> %i.om, %i.du
  %i.oo = fmul <4 x float> %i.es, %i.on           ; 2 uses
  %i.op = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nk, <4 x float> %i.oc)
  %i.oq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nq, <4 x float> %i.oi)
  %i.or = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nw, <4 x float> %i.oo)
  %i.os = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.op, <4 x float> %i.oq)
  %i.ot = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.os, <4 x float> %i.or) ; 2 uses
  %i.ou = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nk, <4 x float> %i.oc)
  %i.ov = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nq, <4 x float> %i.oi)
  %i.ow = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nw, <4 x float> %i.oo)
  %i.ox = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ou, <4 x float> %i.ov)
  %i.oy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ox, <4 x float> %i.ow)
  %i.oz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ot, <4 x float> %i.ez)
  %i.pa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oy, <4 x float> %.sroa.51.0752)
  %i.pb = fcmp ole <4 x float> %i.oz, %i.pa       ; 2 uses
  %i.pc = bitcast <4 x i1> %i.pb to i4
  %.not619.us.3 = icmp eq i4 %i.pc, 0
  br i1 %.not619.us.3, label %.split641.us, label %bb.m, !prof !70

bb.m:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3
  %i.pd = select <4 x i1> %i.pb, <4 x float> %i.ot, <4 x float> splat (float +inf) ; 2 uses
  %.not70.us.3 = icmp eq i64 %.sroa.0110.3.ph.us.2, 8
  br i1 %.not70.us.3, label %.split641.us.thread, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.0110.3.ph.us.2, ptr %.649.ph.us.2, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.649.ph.us.2, i64 8
  store <4 x float> %.sroa.0104.3.ph.us.2, ptr %.6.ph.us.2, align 16
  %i.pf = getelementptr inbounds nuw i8, ptr %.6.ph.us.2, i64 16
  br label %.split641.us.thread

.split:                                           ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 14 uses
  %.3638 = phi ptr [ %.6.ph, %bb.q ], [ %.2648, %.lr.ph ] ; 5 uses
  %.346637 = phi ptr [ %.649.ph, %bb.q ], [ %.245647, %.lr.ph ] ; 5 uses
  %.sroa.0104.1636 = phi <4 x float> [ %.sroa.0104.3.ph, %bb.q ], [ splat (float +inf), %.lr.ph ] ; 3 uses
  %.sroa.0110.1635 = phi i64 [ %.sroa.0110.3.ph, %bb.q ], [ 8, %.lr.ph ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  %i.ph = load i64, ptr %i.pg, align 8            ; 3 uses
  %.not71 = icmp eq i64 %i.ph, 8
  br i1 %.not71, label %.split641.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb0EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb0EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit: ; preds = %.split
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv
  %i.pl = load float, ptr %i.pi, align 4, !noalias !3102
  %i.pm = load float, ptr %i.pj, align 4, !noalias !3102
  %i.pn = load float, ptr %i.pk, align 4, !noalias !3102
  %i.po = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pq = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ps = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv
  %i.px = load float, ptr %i.pu, align 4, !noalias !3102
  %i.py = load float, ptr %i.pv, align 4, !noalias !3102
  %i.pz = load float, ptr %i.pw, align 4, !noalias !3102
  %i.qa = insertelement <4 x float> poison, float %i.px, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qc = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qe = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv
  %i.qj = load float, ptr %i.qg, align 4, !noalias !3102
  %i.qk = load float, ptr %i.qh, align 4, !noalias !3102
  %i.ql = load float, ptr %i.qi, align 4, !noalias !3102
  %i.qm = insertelement <4 x float> poison, float %i.qj, i64 0
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qo = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qq = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.qr = shufflevector <4 x float> %i.qq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  %i.qv = load float, ptr %i.qs, align 4, !noalias !3102
  %i.qw = load float, ptr %i.qt, align 4, !noalias !3102
  %i.qx = load float, ptr %i.qu, align 4, !noalias !3102
  %i.qy = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rc = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = fmul <4 x float> %i.q, %i.qn
  %i.rf = fmul <4 x float> %i.q, %i.qp
  %i.rg = fmul <4 x float> %i.q, %i.qr
  %i.rh = fmul <4 x float> %i.s, %i.qb
  %i.ri = fadd <4 x float> %i.rh, %i.re
  %i.rj = fmul <4 x float> %i.s, %i.qd
  %i.rk = fadd <4 x float> %i.rj, %i.rf
  %i.rl = fmul <4 x float> %i.s, %i.qf
  %i.rm = fadd <4 x float> %i.rl, %i.rg
  %i.rn = fmul <4 x float> %i.v, %i.pp
  %i.ro = fadd <4 x float> %i.rn, %i.ri           ; 2 uses
  %i.rp = fmul <4 x float> %i.v, %i.pr
  %i.rq = fadd <4 x float> %i.rp, %i.rk           ; 2 uses
  %i.rr = fmul <4 x float> %i.v, %i.pt
  %i.rs = fadd <4 x float> %i.rr, %i.rm           ; 2 uses
  %i.rt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ro)
  %i.ru = fcmp uge <4 x float> %i.rt, splat (float 1.000000e-18)
  %i.rv = select <4 x i1> %i.ru, <4 x float> %i.ro, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.rw = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rq)
  %i.rx = fcmp uge <4 x float> %i.rw, splat (float 1.000000e-18)
  %i.ry = select <4 x i1> %i.rx, <4 x float> %i.rq, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.rz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rs)
  %i.sa = fcmp uge <4 x float> %i.rz, splat (float 1.000000e-18)
  %i.sb = select <4 x i1> %i.sa, <4 x float> %i.rs, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.sc = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.rv) ; 3 uses
  %i.sd = fmul <4 x float> %i.sc, %i.rv
  %i.se = fsub <4 x float> splat (float 1.000000e+00), %i.sd
  %i.sf = fmul <4 x float> %i.sc, %i.se
  %i.sg = fadd <4 x float> %i.sc, %i.sf           ; 2 uses
  %i.sh = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ry) ; 3 uses
  %i.si = fmul <4 x float> %i.sh, %i.ry
end_hunk_0
begin_hunk_1_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi257ELb1ENS0_24VirtualCurveIntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.bo = extractelement <4 x float> %i.bn, i64 0
  %i.bp = fcmp ogt float %i.bi, %i.bo
  %i.bq = select i1 %i.bp, <4 x i1> splat (i1 true), <4 x i1> zeroinitializer
  %.v = select <4 x i1> %i.bq, <4 x float> %i.ba, <4 x float> %i.bc ; 3 uses
  %i.br = fmul <4 x float> %.v, %.v               ; 3 uses
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bu = fadd <4 x float> %i.br, %i.bs
  %i.bv = fadd <4 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bv) ; 3 uses
  %i.by = extractelement <4 x float> %i.bx, i64 0 ; 2 uses
  %i.bz = fmul float %i.by, 1.500000e+00
  %i.ca = fmul float %i.bw, 5.000000e-01
  %i.cb = fmul float %i.by, %i.ca
  %foldExtExtBinop = fmul <4 x float> %i.bx, %i.bx
  %i.cc = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cd = fmul float %i.cc, %i.cb
  %i.ce = fsub float %i.bz, %i.cd
  %i.cf = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %.v, %i.cg             ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cj = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ck = fmul <4 x float> %i.cj, %i.ch
  %i.cl = fmul <4 x float> %i.av, %i.ci
  %i.cm = fsub <4 x float> %i.cl, %i.ck           ; 3 uses
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.co = fmul <4 x float> %i.cm, %i.cm           ; 3 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cr = fadd <4 x float> %i.cp, %i.cq
  %i.cs = fadd <4 x float> %i.co, %i.cr           ; 2 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cs) ; 3 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0 ; 2 uses
  %i.cw = fmul float %i.cv, 1.500000e+00
  %i.cx = fmul float %i.ct, 5.000000e-01
  %i.cy = fmul float %i.cv, %i.cx
  %foldExtExtBinop754 = fmul <4 x float> %i.cu, %i.cu
  %i.cz = extractelement <4 x float> %foldExtExtBinop754, i64 0
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fsub float %i.cw, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %i.cn, %i.dd           ; 2 uses
  %i.df = fmul <4 x float> %i.au, %i.av           ; 2 uses
  %i.dg = shufflevector <4 x float> %i.ch, <4 x float> %i.df, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.ch, <4 x float> %i.df, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.de, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dg, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dl = shufflevector <4 x float> %i.dg, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dn = getelementptr inbounds nuw [48 x i8], ptr %.ptr13.i, i64 %i.af ; 3 uses
  store <4 x float> %i.dk, ptr %i.dn, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x float> %i.dl, ptr %i.do, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store <4 x float> %i.dm, ptr %i.dp, align 16
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit, label %bb.d, !llvm.loop !35

_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit: ; preds = %bb.d
  %i.dq = load <4 x float>, ptr %2, align 16      ; 11 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 16   ; 11 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = load <4 x float>, ptr %i.dt, align 16   ; 11 uses
  %i.dv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.v)
  %i.dw = fcmp uge <4 x float> %i.dv, splat (float 1.000000e-18)
  %i.dx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.s)
  %i.dy = fcmp uge <4 x float> %i.dx, splat (float 1.000000e-18)
  %i.dz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.q)
  %i.ea = fcmp uge <4 x float> %i.dz, splat (float 1.000000e-18)
  %i.eb = fdiv <4 x float> splat (float 1.000000e+00), %i.v
  %i.ec = select <4 x i1> %i.dw, <4 x float> %i.eb, <4 x float> splat (float f0x5D5E0B6B) ; 8 uses
  %i.ed = fdiv <4 x float> splat (float 1.000000e+00), %i.s
  %i.ee = select <4 x i1> %i.dy, <4 x float> %i.ed, <4 x float> splat (float f0x5D5E0B6B) ; 8 uses
  %i.ef = fdiv <4 x float> splat (float 1.000000e+00), %i.q
  %i.eg = select <4 x i1> %i.ea, <4 x float> %i.ef, <4 x float> splat (float f0x5D5E0B6B) ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !noalias !3244
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ei, <4 x float> zeroinitializer)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.h, <4 x float> zeroinitializer)
  %i.el = xor <4 x i1> %i.j, splat (i1 true)
  %i.em = sext <4 x i1> %i.el to <4 x i32>        ; 2 uses
  %i.en = select <4 x i1> %i.j, <4 x float> %i.ej, <4 x float> splat (float +inf) ; 6 uses
  %i.eo = select <4 x i1> %i.j, <4 x float> %i.ek, <4 x float> splat (float -inf)
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = and i32 %i.et, 65536
  %.not615 = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not615, i64 3, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit
  %i.ew = phi i64 [ 3, %_ZN6embree4sse221CurvePrecalculationsKILi4EEC2ERKNS_11vboolf_implILi4EEERKNS_4RayKILi4EEE.exit ], [ %i.ev, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i64 -8, ptr %6, align 16
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.c, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x float> %i.en, ptr %i.ey, align 16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = load <4 x float>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 2 uses
  %i.fb = bitcast <4 x float> %i.fa to <4 x i32>
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.fe = icmp eq i64 %i.fd, -8
  br i1 %i.fe, label %.thread608, label %.lr.ph748.lr.ph, !prof !73

.lr.ph748.lr.ph:                                  ; preds = %bb.f
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %.lr.ph748

.loopexit.loopexit:                               ; preds = %bb.g, %bb.s, %bb.x
  %.ph = phi <4 x i32> [ %i.vq, %bb.x ], [ %i.fl, %bb.s ], [ %i.fl, %bb.g ] ; 2 uses
  %.sroa.51.5.ph = phi <4 x float> [ %i.vz, %bb.x ], [ %.sroa.51.0750, %bb.s ], [ %.sroa.51.0750, %bb.g ]
  %.1356.ph = phi ptr [ %.245.lcssa, %bb.x ], [ %.245.lcssa, %bb.s ], [ %i.fn, %bb.g ]
  %.13.ph = phi ptr [ %.2.lcssa, %bb.x ], [ %.2.lcssa, %bb.s ], [ %i.fo, %bb.g ]
  %i.fg = getelementptr inbounds i8, ptr %.1356.ph, i64 -8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fi = icmp eq i64 %i.fh, -8
  br i1 %i.fi, label %.thread608, label %.lr.ph748, !prof !74

.lr.ph748:                                        ; preds = %.lr.ph748.lr.ph, %.loopexit.loopexit
  %i.fj = phi i64 [ %i.fd, %.lr.ph748.lr.ph ], [ %i.fh, %.loopexit.loopexit ]
  %i.fk = phi ptr [ %i.fc, %.lr.ph748.lr.ph ], [ %i.fg, %.loopexit.loopexit ]
  %.042751 = phi ptr [ %i.ff, %.lr.ph748.lr.ph ], [ %.13.ph, %.loopexit.loopexit ]
  %.sroa.51.0750 = phi <4 x float> [ %i.eo, %.lr.ph748.lr.ph ], [ %.sroa.51.5.ph, %.loopexit.loopexit ] ; 11 uses
  %i.fl = phi <4 x i32> [ %i.em, %.lr.ph748.lr.ph ], [ %.ph, %.loopexit.loopexit ] ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph748, %.thread602
  %i.fm = phi i64 [ %i.fj, %.lr.ph748 ], [ %i.wb, %.thread602 ] ; 3 uses
  %i.fn = phi ptr [ %i.fk, %.lr.ph748 ], [ %i.wa, %.thread602 ] ; 3 uses
  %.1747 = phi ptr [ %.042751, %.lr.ph748 ], [ %.13, %.thread602 ]
  %i.fo = getelementptr inbounds i8, ptr %.1747, i64 -16 ; 4 uses
  %i.fp = load <4 x float>, ptr %i.fo, align 16   ; 2 uses
  %i.fq = fcmp olt <4 x float> %i.fp, %.sroa.51.0750
  %i.fr = bitcast <4 x i1> %i.fq to i4
  %i.fs = icmp eq i4 %i.fr, 0
  br i1 %i.fs, label %.loopexit.loopexit, label %.preheader, !prof !70, !llvm.loop !3226

.preheader:                                       ; preds = %bb.g
  %i.ft = and i64 %i.fm, 8
  %.not68643 = icmp eq i64 %i.ft, 0
  br i1 %.not68643, label %.lr.ph, label %._crit_edge, !prof !75

bb.h:                                             ; preds = %.split639.us.thread
  %i.fu = and i64 %.us-phi684, 8
  %.not68 = icmp eq i64 %i.fu, 0
  br i1 %.not68, label %.lr.ph, label %._crit_edge, !prof !76, !llvm.loop !3227

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.2646 = phi ptr [ %.us-phi642687, %bb.h ], [ %i.fo, %.preheader ] ; 7 uses
  %.245645 = phi ptr [ %.us-phi641686, %bb.h ], [ %i.fn, %.preheader ] ; 7 uses
  %.sroa.0110.0644 = phi i64 [ %.us-phi684, %bb.h ], [ %i.fm, %.preheader ]
  %.sroa.0110.0644.fr = freeze i64 %.sroa.0110.0644 ; 3 uses
  %i.fv = and i64 %.sroa.0110.0644.fr, -16
  %i.fw = inttoptr i64 %i.fv to ptr               ; 17 uses
  %i.fx = and i64 %.sroa.0110.0644.fr, 7
  %.not616 = icmp eq i64 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 160
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 176
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 208
  %i.gk = inttoptr i64 %.sroa.0110.0644.fr to ptr ; 24 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 112
  br i1 %.not616, label %.split.us.preheader, label %.split, !prof !69

.split.us.preheader:                              ; preds = %.lr.ph
  %i.gr = load i64, ptr %i.fw, align 16           ; 2 uses
  %.not71.us = icmp eq i64 %i.gr, 8
  br i1 %.not71.us, label %.thread602, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us: ; preds = %.split.us.preheader
  %i.gs = load float, ptr %i.gl, align 4, !noalias !3245
  %i.gt = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = fsub <4 x float> %i.gu, %i.dq
  %i.gw = fmul <4 x float> %i.ec, %i.gv           ; 2 uses
  %i.gx = load float, ptr %i.gm, align 4, !noalias !3245
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = fsub <4 x float> %i.gz, %i.ds
  %i.hb = fmul <4 x float> %i.ee, %i.ha           ; 2 uses
  %i.hc = load float, ptr %i.gn, align 4, !noalias !3245
  %i.hd = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = fsub <4 x float> %i.he, %i.du
  %i.hg = fmul <4 x float> %i.eg, %i.hf           ; 2 uses
  %i.hh = load float, ptr %i.go, align 4, !noalias !3245
  %i.hi = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = fsub <4 x float> %i.hj, %i.dq
  %i.hl = fmul <4 x float> %i.ec, %i.hk           ; 2 uses
  %i.hm = load float, ptr %i.gp, align 4, !noalias !3245
  %i.hn = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hp = fsub <4 x float> %i.ho, %i.ds
  %i.hq = fmul <4 x float> %i.ee, %i.hp           ; 2 uses
  %i.hr = load float, ptr %i.gq, align 4, !noalias !3245
  %i.hs = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = fsub <4 x float> %i.ht, %i.du
  %i.hv = fmul <4 x float> %i.eg, %i.hu           ; 2 uses
  %i.hw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gw, <4 x float> %i.hl)
  %i.hx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hb, <4 x float> %i.hq)
  %i.hy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hw, <4 x float> %i.hx)
  %i.hz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hg, <4 x float> %i.hv)
  %i.ia = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hy, <4 x float> %i.hz)
  %i.ib = fmul <4 x float> %i.ia, splat (float f0x3F7FFFFA) ; 2 uses
  %i.ic = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gw, <4 x float> %i.hl)
  %i.id = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hb, <4 x float> %i.hq)
  %i.ie = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ic, <4 x float> %i.id)
  %i.if = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hg, <4 x float> %i.hv)
  %i.ig = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ie, <4 x float> %i.if)
  %i.ih = fmul <4 x float> %i.ig, splat (float f0x3F800003)
  %i.ii = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ib, <4 x float> %i.en)
  %i.ij = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ih, <4 x float> %.sroa.51.0750)
  %i.ik = fcmp ole <4 x float> %i.ii, %i.ij       ; 2 uses
  %i.il = bitcast <4 x i1> %i.ik to i4
  %.not617.us = icmp eq i4 %i.il, 0               ; 3 uses
  %i.im = select <4 x i1> %i.ik, <4 x float> %i.ib, <4 x float> splat (float +inf)
  %.sroa.0110.3.ph.us = select i1 %.not617.us, i64 8, i64 %i.gr, !prof !70 ; 3 uses
  %.sroa.0104.3.ph.us = select i1 %.not617.us, <4 x float> splat (float +inf), <4 x float> %i.im, !prof !70 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.io = load i64, ptr %i.in, align 8            ; 3 uses
  %.not71.us.1 = icmp eq i64 %i.io, 8
  br i1 %.not71.us.1, label %.split639.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1: ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gk, i64 36
  %i.iq = load float, ptr %i.ip, align 4, !noalias !3245
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fsub <4 x float> %i.is, %i.dq
  %i.iu = fmul <4 x float> %i.ec, %i.it           ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gk, i64 68
  %i.iw = load float, ptr %i.iv, align 4, !noalias !3245
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = fsub <4 x float> %i.iy, %i.ds
  %i.ja = fmul <4 x float> %i.ee, %i.iz           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gk, i64 100
  %i.jc = load float, ptr %i.jb, align 4, !noalias !3245
  %i.jd = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fsub <4 x float> %i.je, %i.du
  %i.jg = fmul <4 x float> %i.eg, %i.jf           ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.ji = load float, ptr %i.jh, align 4, !noalias !3245
  %i.jj = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fsub <4 x float> %i.jk, %i.dq
  %i.jm = fmul <4 x float> %i.ec, %i.jl           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gk, i64 84
  %i.jo = load float, ptr %i.jn, align 4, !noalias !3245
  %i.jp = insertelement <4 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fsub <4 x float> %i.jq, %i.ds
  %i.js = fmul <4 x float> %i.ee, %i.jr           ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gk, i64 116
  %i.ju = load float, ptr %i.jt, align 4, !noalias !3245
  %i.jv = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fsub <4 x float> %i.jw, %i.du
  %i.jy = fmul <4 x float> %i.eg, %i.jx           ; 2 uses
  %i.jz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iu, <4 x float> %i.jm)
  %i.ka = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ja, <4 x float> %i.js)
  %i.kb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jz, <4 x float> %i.ka)
  %i.kc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jg, <4 x float> %i.jy)
  %i.kd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kb, <4 x float> %i.kc)
  %i.ke = fmul <4 x float> %i.kd, splat (float f0x3F7FFFFA) ; 2 uses
  %i.kf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iu, <4 x float> %i.jm)
  %i.kg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ja, <4 x float> %i.js)
  %i.kh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kf, <4 x float> %i.kg)
  %i.ki = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jg, <4 x float> %i.jy)
  %i.kj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kh, <4 x float> %i.ki)
  %i.kk = fmul <4 x float> %i.kj, splat (float f0x3F800003)
  %i.kl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ke, <4 x float> %i.en)
  %i.km = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kk, <4 x float> %.sroa.51.0750)
  %i.kn = fcmp ole <4 x float> %i.kl, %i.km       ; 2 uses
  %i.ko = bitcast <4 x i1> %i.kn to i4
  %.not617.us.1 = icmp eq i4 %i.ko, 0
  br i1 %.not617.us.1, label %.split.us.2, label %bb.i, !prof !70

bb.i:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1
  %i.kp = select <4 x i1> %i.kn, <4 x float> %i.ke, <4 x float> splat (float +inf) ; 2 uses
  br i1 %.not617.us, label %.split.us.2, label %bb.j, !prof !70

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.0110.3.ph.us, ptr %.245645, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.245645, i64 8
  store <4 x float> %.sroa.0104.3.ph.us, ptr %.2646, align 16
  %i.kr = getelementptr inbounds nuw i8, ptr %.2646, i64 16
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.j, %bb.i, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1
  %.sroa.0110.3.ph.us.1 = phi i64 [ %i.io, %bb.i ], [ %i.io, %bb.j ], [ %.sroa.0110.3.ph.us, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 4 uses
  %.sroa.0104.3.ph.us.1 = phi <4 x float> [ %i.kp, %bb.i ], [ %i.kp, %bb.j ], [ %.sroa.0104.3.ph.us, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 3 uses
  %.649.ph.us.1 = phi ptr [ %.245645, %bb.i ], [ %i.kq, %bb.j ], [ %.245645, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 5 uses
  %.6.ph.us.1 = phi ptr [ %.2646, %bb.i ], [ %i.kr, %bb.j ], [ %.2646, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.1 ] ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.kt = load i64, ptr %i.ks, align 16           ; 3 uses
  %.not71.us.2 = icmp eq i64 %i.kt, 8
  br i1 %.not71.us.2, label %.split639.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2: ; preds = %.split.us.2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.kv = load float, ptr %i.ku, align 4, !noalias !3245
  %i.kw = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ky = fsub <4 x float> %i.kx, %i.dq
  %i.kz = fmul <4 x float> %i.ec, %i.ky           ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.gk, i64 72
  %i.lb = load float, ptr %i.la, align 4, !noalias !3245
  %i.lc = insertelement <4 x float> poison, float %i.lb, i64 0
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.le = fsub <4 x float> %i.ld, %i.ds
  %i.lf = fmul <4 x float> %i.ee, %i.le           ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.lh = load float, ptr %i.lg, align 4, !noalias !3245
  %i.li = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lk = fsub <4 x float> %i.lj, %i.du
  %i.ll = fmul <4 x float> %i.eg, %i.lk           ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.ln = load float, ptr %i.lm, align 4, !noalias !3245
  %i.lo = insertelement <4 x float> poison, float %i.ln, i64 0
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lq = fsub <4 x float> %i.lp, %i.dq
  %i.lr = fmul <4 x float> %i.ec, %i.lq           ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gk, i64 88
  %i.lt = load float, ptr %i.ls, align 4, !noalias !3245
  %i.lu = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lw = fsub <4 x float> %i.lv, %i.ds
  %i.lx = fmul <4 x float> %i.ee, %i.lw           ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gk, i64 120
  %i.lz = load float, ptr %i.ly, align 4, !noalias !3245
  %i.ma = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = fsub <4 x float> %i.mb, %i.du
  %i.md = fmul <4 x float> %i.eg, %i.mc           ; 2 uses
  %i.me = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kz, <4 x float> %i.lr)
  %i.mf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lf, <4 x float> %i.lx)
  %i.mg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.me, <4 x float> %i.mf)
  %i.mh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ll, <4 x float> %i.md)
  %i.mi = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mg, <4 x float> %i.mh)
  %i.mj = fmul <4 x float> %i.mi, splat (float f0x3F7FFFFA) ; 2 uses
  %i.mk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kz, <4 x float> %i.lr)
  %i.ml = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lf, <4 x float> %i.lx)
  %i.mm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mk, <4 x float> %i.ml)
  %i.mn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ll, <4 x float> %i.md)
  %i.mo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mm, <4 x float> %i.mn)
  %i.mp = fmul <4 x float> %i.mo, splat (float f0x3F800003)
  %i.mq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mj, <4 x float> %i.en)
  %i.mr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mp, <4 x float> %.sroa.51.0750)
  %i.ms = fcmp ole <4 x float> %i.mq, %i.mr       ; 2 uses
  %i.mt = bitcast <4 x i1> %i.ms to i4
  %.not617.us.2 = icmp eq i4 %i.mt, 0
  br i1 %.not617.us.2, label %.split.us.3, label %bb.k, !prof !70

bb.k:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2
  %i.mu = select <4 x i1> %i.ms, <4 x float> %i.mj, <4 x float> splat (float +inf) ; 2 uses
  %.not70.us.2 = icmp eq i64 %.sroa.0110.3.ph.us.1, 8
  br i1 %.not70.us.2, label %.split.us.3, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.0110.3.ph.us.1, ptr %.649.ph.us.1, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %.649.ph.us.1, i64 8
  store <4 x float> %.sroa.0104.3.ph.us.1, ptr %.6.ph.us.1, align 16
  %i.mw = getelementptr inbounds nuw i8, ptr %.6.ph.us.1, i64 16
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.l, %bb.k, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2
  %.sroa.0110.3.ph.us.2 = phi i64 [ %i.kt, %bb.k ], [ %i.kt, %bb.l ], [ %.sroa.0110.3.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 4 uses
  %.sroa.0104.3.ph.us.2 = phi <4 x float> [ %i.mu, %bb.k ], [ %i.mu, %bb.l ], [ %.sroa.0104.3.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 3 uses
  %.649.ph.us.2 = phi ptr [ %.649.ph.us.1, %bb.k ], [ %i.mv, %bb.l ], [ %.649.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 5 uses
  %.6.ph.us.2 = phi ptr [ %.6.ph.us.1, %bb.k ], [ %i.mw, %bb.l ], [ %.6.ph.us.1, %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.2 ] ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.my = load i64, ptr %i.mx, align 8            ; 3 uses
  %.not71.us.3 = icmp eq i64 %i.my, 8
  br i1 %.not71.us.3, label %.split639.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3: ; preds = %.split.us.3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  %i.na = load float, ptr %i.mz, align 4, !noalias !3245
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = fsub <4 x float> %i.nc, %i.dq
  %i.ne = fmul <4 x float> %i.ec, %i.nd           ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.gk, i64 76
  %i.ng = load float, ptr %i.nf, align 4, !noalias !3245
  %i.nh = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = fsub <4 x float> %i.ni, %i.ds
  %i.nk = fmul <4 x float> %i.ee, %i.nj           ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.gk, i64 108
  %i.nm = load float, ptr %i.nl, align 4, !noalias !3245
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = fsub <4 x float> %i.no, %i.du
  %i.nq = fmul <4 x float> %i.eg, %i.np           ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.ns = load float, ptr %i.nr, align 4, !noalias !3245
  %i.nt = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fsub <4 x float> %i.nu, %i.dq
  %i.nw = fmul <4 x float> %i.ec, %i.nv           ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gk, i64 92
  %i.ny = load float, ptr %i.nx, align 4, !noalias !3245
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ob = fsub <4 x float> %i.oa, %i.ds
  %i.oc = fmul <4 x float> %i.ee, %i.ob           ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.gk, i64 124
  %i.oe = load float, ptr %i.od, align 4, !noalias !3245
  %i.of = insertelement <4 x float> poison, float %i.oe, i64 0
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oh = fsub <4 x float> %i.og, %i.du
  %i.oi = fmul <4 x float> %i.eg, %i.oh           ; 2 uses
  %i.oj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ne, <4 x float> %i.nw)
  %i.ok = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nk, <4 x float> %i.oc)
  %i.ol = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oj, <4 x float> %i.ok)
  %i.om = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nq, <4 x float> %i.oi)
  %i.on = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ol, <4 x float> %i.om)
  %i.oo = fmul <4 x float> %i.on, splat (float f0x3F7FFFFA) ; 2 uses
  %i.op = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ne, <4 x float> %i.nw)
  %i.oq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nk, <4 x float> %i.oc)
  %i.or = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.op, <4 x float> %i.oq)
  %i.os = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nq, <4 x float> %i.oi)
  %i.ot = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.or, <4 x float> %i.os)
  %i.ou = fmul <4 x float> %i.ot, splat (float f0x3F800003)
  %i.ov = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oo, <4 x float> %i.en)
  %i.ow = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ou, <4 x float> %.sroa.51.0750)
  %i.ox = fcmp ole <4 x float> %i.ov, %i.ow       ; 2 uses
  %i.oy = bitcast <4 x i1> %i.ox to i4
  %.not617.us.3 = icmp eq i4 %i.oy, 0
  br i1 %.not617.us.3, label %.split639.us, label %bb.m, !prof !70

bb.m:                                             ; preds = %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit.us.3
  %i.oz = select <4 x i1> %i.ox, <4 x float> %i.oo, <4 x float> splat (float +inf) ; 2 uses
  %.not70.us.3 = icmp eq i64 %.sroa.0110.3.ph.us.2, 8
  br i1 %.not70.us.3, label %.split639.us.thread, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.0110.3.ph.us.2, ptr %.649.ph.us.2, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.649.ph.us.2, i64 8
  store <4 x float> %.sroa.0104.3.ph.us.2, ptr %.6.ph.us.2, align 16
  %i.pb = getelementptr inbounds nuw i8, ptr %.6.ph.us.2, i64 16
  br label %.split639.us.thread

.split:                                           ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 14 uses
  %.3636 = phi ptr [ %.6.ph, %bb.q ], [ %.2646, %.lr.ph ] ; 5 uses
  %.346635 = phi ptr [ %.649.ph, %bb.q ], [ %.245645, %.lr.ph ] ; 5 uses
  %.sroa.0104.1634 = phi <4 x float> [ %.sroa.0104.3.ph, %bb.q ], [ splat (float +inf), %.lr.ph ] ; 3 uses
  %.sroa.0110.1633 = phi i64 [ %.sroa.0110.3.ph, %bb.q ], [ 8, %.lr.ph ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv
  %i.pd = load i64, ptr %i.pc, align 8            ; 3 uses
  %.not71 = icmp eq i64 %i.pd, 8
  br i1 %.not71, label %.split639.us, label %_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit, !prof !70

_ZN6embree4sse220BVHNNodeIntersectorKILi4ELi4ELi257ELb1EE9intersectERKNS_10NodeRefPtrILi4EEEmRKNS0_8TravRayKILi4ELb1EEERKNS_11vfloat_implILi4EEERSC_RNS_11vboolf_implILi4EEE.exit: ; preds = %.split
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv
  %i.ph = load float, ptr %i.pe, align 4, !noalias !3246
  %i.pi = load float, ptr %i.pf, align 4, !noalias !3246
  %i.pj = load float, ptr %i.pg, align 4, !noalias !3246
  %i.pk = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pm = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.po = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv
  %i.pt = load float, ptr %i.pq, align 4, !noalias !3246
  %i.pu = load float, ptr %i.pr, align 4, !noalias !3246
  %i.pv = load float, ptr %i.ps, align 4, !noalias !3246
  %i.pw = insertelement <4 x float> poison, float %i.pt, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.py = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.pz = shufflevector <4 x float> %i.py, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qa = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv
  %i.qf = load float, ptr %i.qc, align 4, !noalias !3246
  %i.qg = load float, ptr %i.qd, align 4, !noalias !3246
  %i.qh = load float, ptr %i.qe, align 4, !noalias !3246
  %i.qi = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qk = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qm = insertelement <4 x float> poison, float %i.qh, i64 0
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv
  %i.qr = load float, ptr %i.qo, align 4, !noalias !3246
  %i.qs = load float, ptr %i.qp, align 4, !noalias !3246
  %i.qt = load float, ptr %i.qq, align 4, !noalias !3246
  %i.qu = insertelement <4 x float> poison, float %i.qr, i64 0
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qw = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = insertelement <4 x float> poison, float %i.qt, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = fmul <4 x float> %i.q, %i.qj
  %i.rb = fmul <4 x float> %i.q, %i.ql
  %i.rc = fmul <4 x float> %i.q, %i.qn
  %i.rd = fmul <4 x float> %i.s, %i.px
  %i.re = fadd <4 x float> %i.rd, %i.ra
  %i.rf = fmul <4 x float> %i.s, %i.pz
  %i.rg = fadd <4 x float> %i.rf, %i.rb
  %i.rh = fmul <4 x float> %i.s, %i.qb
  %i.ri = fadd <4 x float> %i.rh, %i.rc
  %i.rj = fmul <4 x float> %i.v, %i.pl
  %i.rk = fadd <4 x float> %i.rj, %i.re           ; 2 uses
  %i.rl = fmul <4 x float> %i.v, %i.pn
  %i.rm = fadd <4 x float> %i.rl, %i.rg           ; 2 uses
  %i.rn = fmul <4 x float> %i.v, %i.pp
  %i.ro = fadd <4 x float> %i.rn, %i.ri           ; 2 uses
  %i.rp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rk)
  %i.rq = fcmp uge <4 x float> %i.rp, splat (float 1.000000e-18)
  %i.rr = select <4 x i1> %i.rq, <4 x float> %i.rk, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.rs = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rm)
  %i.rt = fcmp uge <4 x float> %i.rs, splat (float 1.000000e-18)
  %i.ru = select <4 x i1> %i.rt, <4 x float> %i.rm, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.rv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ro)
  %i.rw = fcmp uge <4 x float> %i.rv, splat (float 1.000000e-18)
  %i.rx = select <4 x i1> %i.rw, <4 x float> %i.ro, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.ry = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.rr) ; 3 uses
  %i.rz = fmul <4 x float> %i.ry, %i.rr
  %i.sa = fsub <4 x float> splat (float 1.000000e+00), %i.rz
end_hunk_1
