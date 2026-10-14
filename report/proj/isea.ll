Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/isea?download=true
inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14isea_s_forward5PJ_LPP8PJconsts:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hb = load <2 x double>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.u

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.hc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc                      ; 3 uses
  %i.hd = extractvalue { ptr, i32 } %i.hc, 1
  %i.he = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #17
  %i.hf = icmp eq i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.hg = extractvalue { ptr, i32 } %i.hc, 0
  %i.hh = tail call ptr @__cxa_begin_catch(ptr %i.hg) #17 ; 0 uses
  %i.hi = invoke i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.hj = load <2 x double>, ptr %6, align 16, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @__cxa_end_catch() #17
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.hl, %bb.s ], [ %i.hk, %bb.r ]
  call void @__cxa_end_catch() #17
  br label %bb.v

bb.u:                                             ; preds = %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit, %bb.q
  %i.hm = phi <2 x double> [ %i.hj, %bb.q ], [ %i.hb, %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit ] ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 0
  %.pn18 = insertvalue { double, double } poison, double %i.hn, 0
  %i.ho = extractelement <2 x double> %i.hm, i64 1
  %.fca.1.insert.merged = insertvalue { double, double } %.pn18, double %i.ho, 1
  ret { double, double } %.fca.1.insert.merged

bb.v:                                             ; preds = %bb.t, %bb.n
  %.merged = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.hc, %bb.n ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL14isea_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !38
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.l, <2 x double> %i.h) ; 5 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 4 uses
  %i.o = fcmp olt double %i.n, 0.000000e+00
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !54 ; 3 uses
  br i1 %i.o, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fmul double %.pre.i, 5.000000e-01
  %i.q = fcmp olt double %i.n, %i.p
  %i.r = extractelement <2 x double> %i.m, i64 1
  %i.s = fcmp olt double %i.r, 0.000000e+00
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  %i.t = fmul <2 x double> %i.m, <double f0xBFEBB67AE8584CAA, double 5.000000e-01> ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = extractelement <2 x double> %i.t, i64 1
  %i.w = fcmp olt double %i.v, %i.u
  %or.cond = select i1 %or.cond.i, i1 %i.w, i1 false
  br i1 %or.cond, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.x = tail call double @llvm.fmuladd.f64(double %.pre.i, double 5.000000e+00, double %i.n)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %.sroa.070.0.i = phi double [ %i.x, %._crit_edge.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.y = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x double> %i.y, <double 5.000000e-01, double f0x3FEBB67AE8584CAA>
  %i.aa = insertelement <2 x double> poison, double %.sroa.070.0.i, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double f0xBFEBB67AE8584CAA, double 5.000000e-01>, <2 x double> %i.z) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3FE279A74590331D, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !94
  %i.aj = fmul double %i.ai, %i.ag                ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.al = load double, ptr %i.ak, align 8, !tbaa !95
  %i.am = fmul double %i.al, %i.ae                ; 11 uses
  %i.an = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = fcmp ogt double %i.am, %i.aj
  %i.ap = fcmp olt double %i.aj, f0x4013FFFFFFFFD405
  %or.cond4.i = and i1 %i.ao, %i.ap
  br i1 %or.cond4.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = fadd double %i.aj, f0x3DA5FD7FE1796495
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ar = fcmp ogt double %i.aj, 5.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fcmp olt double %i.am, %i.aj
  %i.at = fcmp ogt double %i.aj, f0x3DA5FD7FE1796495
  %or.cond6.i = and i1 %i.as, %i.at
  br i1 %or.cond6.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = fadd double %i.aj, f0xBDA5FD7FE1796495
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0100.i = phi double [ %i.aq, %bb.f ], [ %i.au, %bb.i ], [ %i.aj, %bb.h ] ; 6 uses
  %i.av = fcmp olt double %i.am, 0.000000e+00
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = fcmp ogt double %.0100.i, %i.am
  %i.ax = fcmp olt double %i.am, f0x4017FFFFFFFFD405
  %or.cond8.i = and i1 %i.ax, %i.aw
  br i1 %or.cond8.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = fadd double %i.am, f0x3DA5FD7FE1796495
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = fcmp ogt double %i.am, 6.000000e+00
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = fcmp olt double %.0100.i, %i.am
  %i.bb = fcmp ogt double %i.am, f0x3DA5FD7FE1796495
  %or.cond10.i = and i1 %i.bb, %i.ba
  br i1 %or.cond10.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = fadd double %i.am, f0xBDA5FD7FE1796495
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.099.i = phi double [ %i.ay, %bb.l ], [ %i.bc, %bb.o ], [ %i.am, %bb.n ] ; 4 uses
  %i.bd = fcmp oge double %.0100.i, 0.000000e+00
  %i.be = fcmp ole double %.0100.i, 5.000000e+00
  %or.cond12.i = and i1 %i.bd, %i.be
  %i.bf = fcmp oge double %.099.i, 0.000000e+00
  %i.bg = fcmp ole double %.099.i, 6.000000e+00
  %i.bh = and i1 %i.bf, %i.bg
  %or.cond16.i = select i1 %or.cond12.i, i1 %i.bh, i1 false
  br i1 %or.cond16.i, label %bb.q, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = fptosi double %.0100.i to i32
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 4) ; 4 uses
  %i.bk = fptosi double %.099.i to i32            ; 2 uses
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 5) ; 3 uses
  %i.bm = icmp eq i32 %i.bj, %i.bk
  %i.bn = add nuw nsw i32 %i.bj, 1
  %i.bo = icmp eq i32 %i.bl, %i.bn
  %or.cond108.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond108.i, label %bb.r, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = add nuw nsw i32 %i.bl, %i.bj
  %3 = uitofp nneg i32 %i.bj to double
  %i.bq = fsub double %.0100.i, %3
  %4 = uitofp nneg i32 %i.bl to double
  %i.br = fsub double %.099.i, %4
  %i.bs = fcmp ogt double %i.bq, %i.br            ; 10 uses
  switch i32 %i.bp, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit [
    i32 0, label %bb.s
    i32 2, label %bb.t
    i32 4, label %bb.u
    i32 6, label %bb.v
    i32 8, label %bb.w
    i32 1, label %bb.x
    i32 3, label %bb.y
    i32 5, label %bb.z
    i32 7, label %bb.aa
    i32 9, label %bb.ab
  ]

bb.s:                                             ; preds = %bb.r
  %spec.select.i = select i1 %i.bs, i32 0, i32 5
  br label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.bt = select i1 %i.bs, i32 1, i32 6
  br label %.thread.i

bb.u:                                             ; preds = %bb.r
  %i.bu = select i1 %i.bs, i32 2, i32 7
  br label %.thread.i

bb.v:                                             ; preds = %bb.r
  %i.bv = select i1 %i.bs, i32 3, i32 8
  br label %.thread.i

bb.w:                                             ; preds = %bb.r
  %i.bw = select i1 %i.bs, i32 4, i32 9
  br label %.thread.i

bb.x:                                             ; preds = %bb.r
  %i.bx = select i1 %i.bs, i32 10, i32 15
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.by = select i1 %i.bs, i32 11, i32 16
  br label %bb.ac

bb.z:                                             ; preds = %bb.r
  %i.bz = select i1 %i.bs, i32 12, i32 17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r
  %i.ca = select i1 %i.bs, i32 13, i32 18
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r
  %i.cb = select i1 %i.bs, i32 14, i32 19
  br label %bb.ac

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.098.ph.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.bw, %bb.w ], [ %i.bv, %bb.v ], [ %i.bu, %bb.u ], [ %i.bt, %bb.t ] ; 2 uses
  %.cmp.i = icmp samesign ugt i32 %.098.ph.i, 4
  %i.cc = zext i1 %.cmp.i to i8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.098.i = phi i32 [ %i.cb, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.bx, %bb.x ], [ %i.by, %bb.y ], [ %i.bz, %bb.z ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.098.i to i8
  %i.cd = udiv i8 %.lhs.trunc.i, 5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.sink.i = phi i8 [ %i.cc, %.thread.i ], [ %i.cd, %bb.ac ] ; 2 uses
  %.098.ph.sink.i = phi i32 [ %.098.ph.i, %.thread.i ], [ %.098.i, %bb.ac ] ; 4 uses
  %i.ce = phi i32 [ 1, %.thread.i ], [ 2, %bb.ac ]
  %.zext37.i = zext nneg i8 %.sink.i to i32
  %.neg38.i = mul nsw i32 %.zext37.i, -5
  %i.cf = add nsw i32 %.neg38.i, %.098.ph.sink.i
  %i.cg = shl nsw i32 %i.cf, 1
  %i.ch = add nsw i32 %i.cg, %i.ce
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fmul double %.pre.i, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fsub double %.sroa.070.0.i, %i.ck       ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.cn = zext nneg i8 %.sink.i to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !52
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double 3.000000e+00, double %i.cp)
  %i.ct = extractelement <2 x double> %i.m, i64 1
  %i.cu = fsub double %i.ct, %i.cs                ; 3 uses
  %i.cv = tail call double @atan2(double noundef %i.cl, double noundef %i.cu) #17
  %i.cw = fmul double %i.cu, %i.cu
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.cw)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.cx)
  %i.cy = icmp samesign ult i32 %.098.ph.sink.i, 5
  br i1 %i.cy, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add nsw i32 %.098.ph.sink.i, -10
  %i.da = icmp ult i32 %i.cz, 5
  %i.db = select i1 %i.da, double 0.000000e+00, double f0x400921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i: ; preds = %bb.ae, %bb.ad
  %i.dc = phi double [ 0.000000e+00, %bb.ad ], [ %i.db, %bb.ae ] ; 2 uses
  %i.dd = fadd double %i.cv, %i.dc                ; 3 uses
  %i.de = fcmp olt double %i.dd, 0.000000e+00
  %i.df = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.dd, i64 1 ; 2 uses
  br i1 %i.de, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %.081.lcssa.i.i = phi double [ %i.dd, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %i.dh = phi <2 x double> [ %i.dg, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.dl, %.lr.ph.i.i ] ; 2 uses
  %i.di = fcmp ogt double %.081.lcssa.i.i, f0x4000C152382D7365
  %i.dj = extractelement <2 x double> %i.dh, i64 0
  br i1 %i.di, label %.lr.ph93.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, %.lr.ph.i.i
  %i.dk = phi <2 x double> [ %i.dl, %.lr.ph.i.i ], [ %i.dg, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ]
  %i.dl = fadd <2 x double> %i.dk, splat (double f0x4000C152382D7365) ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.dn = fcmp olt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !91

.lr.ph93.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph93.i.i
  %i.do = phi <2 x double> [ %i.dp, %.lr.ph93.i.i ], [ %i.dh, %.preheader.i.i ]
  %i.dp = fadd <2 x double> %i.do, splat (double f0xC000C152382D7365) ; 3 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 1 ; 2 uses
  %i.dr = fcmp ogt double %i.dq, f0x4000C152382D7365
  br i1 %i.dr, label %.lr.ph93.i.i, label %._crit_edge.i.i.loopexit, !llvm.loop !92

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph93.i.i
  %i.ds = extractelement <2 x double> %i.dp, i64 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.183.lcssa.i.i = phi double [ %i.dj, %.preheader.i.i ], [ %i.ds, %._crit_edge.i.i.loopexit ]
  %.1.lcssa.i.i = phi double [ %.081.lcssa.i.i, %.preheader.i.i ], [ %i.dq, %._crit_edge.i.i.loopexit ] ; 3 uses
  %i.dt = tail call double @sin(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.du = tail call double @cos(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.dv = fdiv double %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !53
  %i.dy = fadd double %i.dv, f0x3FFBB67AE8584CAB
  %i.dz = fmul double %i.dy, 2.000000e+00
  %i.ea = fdiv double %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !49
  %i.ed = fdiv double %i.ea, %i.ec
  %i.ee = fadd double %i.ed, f0x40041B2F769CF0E0
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %._crit_edge.i.i
  %.08596.i.i = phi double [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %i.ew, %bb.af ] ; 4 uses
  %i.ef = tail call double @sin(double noundef %.08596.i.i) #17
  %i.eg = tail call double @cos(double noundef %.08596.i.i) #17
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.eg, i64 1 ; 2 uses
  %i.ej = fmul <2 x double> %i.ei, <double f0x3FE9E3779B97F4A8, double f0xBFE9E3779B97F4A8>
  %i.ek = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> splat (double f0x3FDDE4BD6E524E1F), <2 x double> %i.ej) ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 1
  %i.en = tail call double @acos(double noundef %i.em) #17 ; 2 uses
  %i.eo = fsub double %i.ee, %i.en
  %i.ep = fsub double %i.eo, %.08596.i.i
  %i.eq = tail call double @sin(double noundef %i.en) #17
  %i.er = extractelement <2 x double> %i.el, i64 0
  %i.es = fdiv double %i.er, %i.eq
  %i.et = fadd double %i.es, -1.000000e+00
  %i.eu = fneg double %i.ep
  %i.ev = fdiv double %i.eu, %i.et                ; 2 uses
  %i.ew = fadd double %.08596.i.i, %i.ev          ; 4 uses
  %i.ex = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ey = fcmp ogt double %i.ex, f0x3D4890361A0F3B4B
  br i1 %i.ey, label %bb.af, label %bb.ag, !llvm.loop !93

bb.ag:                                            ; preds = %bb.af
  %i.ez = tail call double @sin(double noundef %i.ew) #17
  %i.fa = tail call double @cos(double noundef %i.ew) #17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.fc = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.dt, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.du, i64 1
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> splat (double f0x3FFBB67AE8584CAB), <2 x double> %i.ff) ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0
  %i.fi = tail call double @atan2(double noundef f0x3FE8722191A02D61, double noundef %i.fh) #17
  %i.fj = load double, ptr %i.fb, align 8, !tbaa !51
  %i.fk = extractelement <2 x double> %i.fg, i64 1
  %i.fl = fdiv double %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !50 ; 2 uses
  %i.fo = fmul double %i.fi, 5.000000e-01
  %i.fp = tail call double @sin(double noundef %i.fo) #17
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fdiv double %i.fl, %i.fq
  %i.fs = fmul double %i.fn, %i.fr
  %i.ft = fdiv double %sqrt.i.i, %i.fs
  %i.fu = tail call double @asin(double noundef %i.ft) #17
  %i.fv = fmul double %i.fu, 2.000000e+00         ; 2 uses
end_hunk_0
