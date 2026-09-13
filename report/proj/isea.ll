Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/isea?download=true
inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14isea_s_forward5PJ_LPP8PJconsts:bb.a
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ha, ptr %i.hb, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

bb.o:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i, %bb.k, %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !90
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit: ; preds = %.noexc, %_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hc = load <2 x double>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.w

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.hd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc                      ; 3 uses
  %i.he = extractvalue { ptr, i32 } %i.hd, 1
  %i.hf = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #17
  %i.hg = icmp eq i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.hh = extractvalue { ptr, i32 } %i.hd, 0
  %i.hi = tail call ptr @__cxa_begin_catch(ptr %i.hh) #17 ; 0 uses
  %i.hj = invoke i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.hk = load <2 x double>, ptr %6, align 16, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @__cxa_end_catch() #17
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.hm, %bb.u ], [ %i.hl, %bb.t ]
  call void @__cxa_end_catch() #17
  br label %bb.x

bb.w:                                             ; preds = %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit, %bb.s
  %i.hn = phi <2 x double> [ %i.hk, %bb.s ], [ %i.hc, %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit ] ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0
  %.pn18 = insertvalue { double, double } poison, double %i.ho, 0
  %i.hp = extractelement <2 x double> %i.hn, i64 1
  %.fca.1.insert.merged = insertvalue { double, double } %.pn18, double %i.hp, 1
  ret { double, double } %.fca.1.insert.merged

bb.x:                                             ; preds = %bb.v, %bb.p
  %.merged = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.hd, %bb.p ]
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
  %3 = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %3, i32 4) ; 4 uses
  %i.bk = fptosi double %.099.i to i32
  %4 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0) ; 2 uses
  %i.bl = tail call i32 @llvm.umin.i32(i32 %4, i32 5) ; 3 uses
  %i.bm = icmp eq i32 %4, %i.bj
  %i.bn = add nuw nsw i32 %i.bj, 1
  %i.bo = icmp eq i32 %i.bl, %i.bn
  %or.cond108.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond108.i, label %bb.r, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = add nuw nsw i32 %i.bl, %i.bj
  %i.bq = uitofp nneg i32 %i.bj to double
  %i.br = fsub double %.0100.i, %i.bq
  %i.bs = uitofp nneg i32 %i.bl to double
  %i.bt = fsub double %.099.i, %i.bs
  %i.bu = fcmp ogt double %i.br, %i.bt            ; 10 uses
  switch i32 %i.bp, label %default.unreachable [
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
  %spec.select.i = select i1 %i.bu, i32 0, i32 5
  br label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.bv = select i1 %i.bu, i32 1, i32 6
  br label %.thread.i

bb.u:                                             ; preds = %bb.r
  %i.bw = select i1 %i.bu, i32 2, i32 7
  br label %.thread.i

bb.v:                                             ; preds = %bb.r
  %i.bx = select i1 %i.bu, i32 3, i32 8
  br label %.thread.i

bb.w:                                             ; preds = %bb.r
  %i.by = select i1 %i.bu, i32 4, i32 9
  br label %.thread.i

bb.x:                                             ; preds = %bb.r
  %i.bz = select i1 %i.bu, i32 10, i32 15
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.ca = select i1 %i.bu, i32 11, i32 16
  br label %bb.ac

bb.z:                                             ; preds = %bb.r
  %i.cb = select i1 %i.bu, i32 12, i32 17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r
  %i.cc = select i1 %i.bu, i32 13, i32 18
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r
  %i.cd = select i1 %i.bu, i32 14, i32 19
  br label %bb.ac

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.098.ph.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.by, %bb.w ], [ %i.bx, %bb.v ], [ %i.bw, %bb.u ], [ %i.bv, %bb.t ] ; 2 uses
  %.cmp.i = icmp samesign ugt i32 %.098.ph.i, 4
  %i.ce = zext i1 %.cmp.i to i8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.098.i = phi i32 [ %i.cd, %bb.ab ], [ %i.cc, %bb.aa ], [ %i.bz, %bb.x ], [ %i.ca, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.098.i to i8
  %i.cf = udiv i8 %.lhs.trunc.i, 5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.sink.i = phi i8 [ %i.ce, %.thread.i ], [ %i.cf, %bb.ac ] ; 2 uses
  %.098.ph.sink.i = phi i32 [ %.098.ph.i, %.thread.i ], [ %.098.i, %bb.ac ] ; 4 uses
  %i.cg = phi i32 [ 1, %.thread.i ], [ 2, %bb.ac ]
  %.zext37.i = zext nneg i8 %.sink.i to i32
  %.neg38.i = mul nsw i32 %.zext37.i, -5
  %i.ch = add nsw i32 %.neg38.i, %.098.ph.sink.i
  %i.ci = shl nsw i32 %i.ch, 1
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fmul double %.pre.i, %i.ck
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fsub double %.sroa.070.0.i, %i.cm       ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.cp = zext nneg i8 %.sink.i to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !52
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double 3.000000e+00, double %i.cr)
  %i.cv = extractelement <2 x double> %i.m, i64 1
  %i.cw = fsub double %i.cv, %i.cu                ; 3 uses
  %i.cx = tail call double @atan2(double noundef %i.cn, double noundef %i.cw) #17
  %i.cy = fmul double %i.cw, %i.cw
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.cy)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.cz)
  %i.da = icmp samesign ult i32 %.098.ph.sink.i, 5
  br i1 %i.da, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = add nsw i32 %.098.ph.sink.i, -10
  %i.dc = icmp ult i32 %i.db, 5
  %i.dd = select i1 %i.dc, double 0.000000e+00, double f0x400921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i: ; preds = %bb.ae, %bb.ad
  %i.de = phi double [ 0.000000e+00, %bb.ad ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.df = fadd double %i.cx, %i.de                ; 3 uses
  %i.dg = fcmp olt double %i.df, 0.000000e+00
  %i.dh = insertelement <2 x double> poison, double %i.de, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.df, i64 1 ; 2 uses
  br i1 %i.dg, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %.081.lcssa.i.i = phi double [ %i.df, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.dj = phi <2 x double> [ %i.di, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.dn, %.lr.ph.i.i ] ; 2 uses
  %i.dk = fcmp ogt double %.081.lcssa.i.i, f0x4000C152382D7365
  %i.dl = extractelement <2 x double> %i.dj, i64 0
  br i1 %i.dk, label %.lr.ph93.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, %.lr.ph.i.i
  %i.dm = phi <2 x double> [ %i.dn, %.lr.ph.i.i ], [ %i.di, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ]
  %i.dn = fadd <2 x double> %i.dm, splat (double f0x4000C152382D7365) ; 3 uses
  %i.do = extractelement <2 x double> %i.dn, i64 1 ; 2 uses
  %i.dp = fcmp olt double %i.do, 0.000000e+00
  br i1 %i.dp, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !91

.lr.ph93.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph93.i.i
  %i.dq = phi <2 x double> [ %i.dr, %.lr.ph93.i.i ], [ %i.dj, %.preheader.i.i ]
  %i.dr = fadd <2 x double> %i.dq, splat (double f0xC000C152382D7365) ; 3 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.dt = fcmp ogt double %i.ds, f0x4000C152382D7365
  br i1 %i.dt, label %.lr.ph93.i.i, label %._crit_edge.i.i.loopexit, !llvm.loop !92

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph93.i.i
  %i.du = extractelement <2 x double> %i.dr, i64 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.183.lcssa.i.i = phi double [ %i.dl, %.preheader.i.i ], [ %i.du, %._crit_edge.i.i.loopexit ]
  %.1.lcssa.i.i = phi double [ %.081.lcssa.i.i, %.preheader.i.i ], [ %i.ds, %._crit_edge.i.i.loopexit ] ; 3 uses
  %i.dv = tail call double @sin(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.dw = tail call double @cos(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.dx = fdiv double %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ea = fadd double %i.dx, f0x3FFBB67AE8584CAB
  %i.eb = fmul double %i.ea, 2.000000e+00
  %i.ec = fdiv double %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !49
  %i.ef = fdiv double %i.ec, %i.ee
  %i.eg = fadd double %i.ef, f0x40041B2F769CF0E0
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %._crit_edge.i.i
  %.08596.i.i = phi double [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %i.ey, %bb.af ] ; 4 uses
  %i.eh = tail call double @sin(double noundef %.08596.i.i) #17
  %i.ei = tail call double @cos(double noundef %.08596.i.i) #17
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1 ; 2 uses
  %i.el = fmul <2 x double> %i.ek, <double f0x3FE9E3779B97F4A8, double f0xBFE9E3779B97F4A8>
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double f0x3FDDE4BD6E524E1F), <2 x double> %i.el) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 1
  %i.ep = tail call double @acos(double noundef %i.eo) #17 ; 2 uses
  %i.eq = fsub double %i.eg, %i.ep
  %i.er = fsub double %i.eq, %.08596.i.i
  %i.es = tail call double @sin(double noundef %i.ep) #17
  %i.et = extractelement <2 x double> %i.en, i64 0
  %i.eu = fdiv double %i.et, %i.es
  %i.ev = fadd double %i.eu, -1.000000e+00
  %i.ew = fneg double %i.er
  %i.ex = fdiv double %i.ew, %i.ev                ; 2 uses
  %i.ey = fadd double %.08596.i.i, %i.ex          ; 4 uses
  %i.ez = tail call double @llvm.fabs.f64(double %i.ex)
  %i.fa = fcmp ogt double %i.ez, f0x3D4890361A0F3B4B
  br i1 %i.fa, label %bb.af, label %bb.ag, !llvm.loop !93

bb.ag:                                            ; preds = %bb.af
  %i.fb = tail call double @sin(double noundef %i.ey) #17
  %i.fc = tail call double @cos(double noundef %i.ey) #17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.fe = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.dv, i64 1
  %i.fg = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.dw, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> splat (double f0x3FFBB67AE8584CAB), <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  %i.fk = tail call double @atan2(double noundef f0x3FE8722191A02D61, double noundef %i.fj) #17
  %i.fl = load double, ptr %i.fd, align 8, !tbaa !51
  %i.fm = extractelement <2 x double> %i.fi, i64 1
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !50 ; 2 uses
  %i.fq = fmul double %i.fk, 5.000000e-01
  %i.fr = tail call double @sin(double noundef %i.fq) #17
  %i.fs = fmul double %i.fp, %i.fr
  %i.ft = fdiv double %i.fn, %i.fs
  %i.fu = fmul double %i.fp, %i.ft
  %i.fv = fdiv double %sqrt.i.i, %i.fu
  %i.fw = tail call double @asin(double noundef %i.fv) #17
  %i.fx = fmul double %i.fw, 2.000000e+00         ; 2 uses
  %i.fy = fsub double %i.ey, %.183.lcssa.i.i      ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ga = zext nneg i32 %.098.ph.sink.i to i64    ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !59 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !60
  %i.gf = tail call double @sin(double noundef %i.fx) #17
  %i.gg = tail call double @cos(double noundef %i.fx) #17 ; 2 uses
  %i.gh = fmul double %i.ge, %i.gf                ; 2 uses
  %i.gi = tail call double @cos(double noundef %i.fy) #17
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.gg, double %i.gj) ; 4 uses
  %i.gl = tail call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp olt double %i.gl, 1.000000e-15
  br i1 %i.gm, label %_ZL10safeArcSind.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = fadd double %i.gk, -1.000000e+00
  %i.go = tail call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp olt double %i.go, 1.000000e-15
  br i1 %i.gp, label %_ZL10safeArcSind.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = fadd double %i.gk, 1.000000e+00
  %i.gr = tail call double @llvm.fabs.f64(double %i.gq)
  %i.gs = fcmp olt double %i.gr, 1.000000e-15
  br i1 %i.gs, label %_ZL10safeArcSind.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gt = tail call double @asin(double noundef %i.gk) #17
  br label %_ZL10safeArcSind.exit.i.i

_ZL10safeArcSind.exit.i.i:                        ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.gu = phi double [ 0.000000e+00, %bb.ag ], [ f0x3FF921FB54442D18, %bb.ah ], [ %i.gt, %bb.aj ], [ f0xBFF921FB54442D18, %bb.ai ] ; 5 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr @_ZL31facesCenterDodecahedronVertices, i64 %i.ga
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !57
  %i.gy = tail call double @sin(double noundef %i.fy) #17
  %i.gz = fmul double %i.gh, %i.gy
  %i.ha = tail call double @sin(double noundef %i.gu) #17
  %i.hb = fneg double %i.gc
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.ha, double %i.gg)
  %i.hd = tail call double @atan2(double noundef %i.gz, double noundef %i.hc) #17
  %i.he = fadd double %i.gx, %i.hd
  %i.hf = tail call double @llvm.fabs.f64(double %i.gu)
  %or.cond.i.i.i = fcmp ogt double %i.hf, f0x3FF921FB256A5D67
  %i.hg = select i1 %or.cond.i.i.i, double 0.000000e+00, double %i.he ; 3 uses
  %i.hh = load double, ptr %i.d, align 8, !tbaa !97
  %i.hi = fcmp une double %i.hh, 0.000000e+00
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load double, ptr %i.hj, align 8         ; 2 uses
  %i.hl = fcmp une double %i.hk, 0.000000e+00
  %or.cond24.i.i.i = select i1 %i.hi, i1 true, i1 %i.hl
  br i1 %or.cond24.i.i.i, label %bb.ak, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

bb.ak:                                            ; preds = %_ZL10safeArcSind.exit.i.i
  %i.hm = tail call double @sin(double noundef %i.gu) #17
  %i.hn = tail call double @cos(double noundef %i.gu) #17 ; 2 uses
  %i.ho = tail call double @sin(double noundef %i.hg) #17
  %i.hp = tail call double @cos(double noundef %i.hg) #17
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !98
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !99 ; 2 uses
  %i.hv = fneg double %i.hu
  %i.hw = fmul double %i.hn, %i.ho
  %i.hx = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hq, i64 1 ; 2 uses
  %i.hz = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hv, i64 1
  %i.ib = fmul <2 x double> %i.hy, %i.ia
  %i.ic = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.id = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.ie, <2 x double> %i.ib) ; 2 uses
  %i.ig = extractelement <2 x double> %i.if, i64 1
  %i.ih = tail call double @asin(double noundef %i.ig) #17
  %i.ii = extractelement <2 x double> %i.if, i64 0
  %i.ij = tail call double @atan2(double noundef %i.hw, double noundef %i.ii) #17
  %i.ik = fsub double %i.ij, %i.hk
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i: ; preds = %bb.ak, %_ZL10safeArcSind.exit.i.i
  %.sink108.i.i = phi double [ %i.gu, %_ZL10safeArcSind.exit.i.i ], [ %i.ih, %bb.ak ] ; 3 uses
  %.sink.i.i = phi double [ %i.hg, %_ZL10safeArcSind.exit.i.i ], [ %i.ik, %bb.ak ] ; 5 uses
  %i.il = fcmp olt double %.sink.i.i, f0xC00921FB5444850E
  br i1 %i.il, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.im = fadd double %.sink.i.i, f0x401921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.am:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.in = fcmp ogt double %.sink.i.i, f0x400921FB5444850E
  br i1 %i.in, label %bb.an, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.an:                                            ; preds = %bb.am
  %i.io = fadd double %.sink.i.i, f0xC01921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

default.unreachable:                              ; preds = %bb.r
  unreachable

_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit: ; preds = %bb.a, %bb.an, %bb.am, %bb.al, %bb.q, %bb.p
  %.sroa.09.1 = phi double [ +inf, %bb.p ], [ %i.im, %bb.al ], [ %.sink.i.i, %bb.am ], [ %i.io, %bb.an ], [ +inf, %bb.q ], [ +inf, %bb.a ]
  %.sroa.4.1 = phi double [ +inf, %bb.p ], [ %.sink108.i.i, %bb.al ], [ %.sink108.i.i, %bb.am ], [ %.sink108.i.i, %bb.an ], [ +inf, %bb.q ], [ +inf, %bb.a ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.1, 1
  ret { double, double } %.fca.1.insert
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1073741823, 1073741827) i32 @_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit:
  %4 = alloca %"struct.(anonymous namespace)::hex", align 8 ; 4 uses
  %5 = alloca %"struct.(anonymous namespace)::hex", align 8 ; 4 uses
  %.sroa.0.0.copyload = load double, ptr %2, align 8, !tbaa !38 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !38
  %i.a = sdiv i32 %1, 5
  %i.b = and i32 %i.a, -2147483647
  %i.c = icmp eq i32 %i.b, 1                      ; 3 uses
  %i.d = select i1 %i.c, double f0xC010C152382D7365, double f0xBFF0C152382D7365 ; 3 uses
  %i.e = tail call double @cos(double noundef %i.d) #17
  %i.f = tail call double @sin(double noundef %i.d) #17 ; 2 uses
  %i.g = fneg double %.sroa.0.0.copyload
  %i.h = tail call double @cos(double noundef %i.d) #17
  %i.i = insertelement <2 x double> poison, double %.sroa.8.0.copyload, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.h, i64 1
  %i.m = fmul <2 x double> %i.j, %i.l
  %i.n = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.g, i64 1
  %i.p = insertelement <2 x double> poison, double %i.e, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.f, i64 1
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.q, <2 x double> %i.m) ; 3 uses
  %i.s = fadd <2 x double> %i.r, <double 5.000000e-01, double f0x3FEBB67AE8584CAA> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = extractelement <2 x double> %i.r, i64 1
  %.sroa.8.0 = select i1 %i.c, double %i.t, double %i.u ; 2 uses
  %i.v = extractelement <2 x double> %i.s, i64 0
  %i.w = extractelement <2 x double> %i.r, i64 0
  %.sroa.0.0 = select i1 %i.c, double %i.v, double %i.w ; 3 uses
  %i.x = srem i32 %1, 5
  %i.y = sdiv i32 %1, 10
  %i.z = mul nsw i32 %i.y, 5
  %i.aa = add nsw i32 %i.x, 1
  %i.ab = add nsw i32 %i.aa, %i.z                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.a, label %bb.n

bb.a:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 3 uses
  %i.ah = and i32 %i.ag, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %ldexp.i.i = tail call double @ldexp(double 1.000000e+00, i32 %i.ag)
  %i.ai = fadd double %ldexp.i.i, 1.000000e+00
  %i.aj = fmul double %i.ai, 5.000000e-01         ; 2 uses
  %i.ak = fdiv double f0x3FEBB67AE8584CAB, %i.aj
  %i.al = fmul double %i.aj, 2.000000e+00
  %i.am = tail call i64 @lround(double noundef %i.al) #17 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call fastcc void @_ZL7hexbin2dddPlS_(double noundef %i.ak, double noundef %.sroa.0.0, double noundef %.sroa.8.0, ptr noundef %i.an, ptr noundef %i.ao)
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !101 ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = add nuw nsw i64 %i.ap, 1
  %i.at = lshr i64 %i.as, 1
  %i.au = add i64 %i.ar, %i.at
  %i.av = sub i64 0, %i.au
  br label %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %.nonneg.i.i.i = sub i64 0, %i.ap
  %.neg1314.i.i.i = lshr i64 %.nonneg.i.i.i, 1
  %i.aw = sub i64 %.neg1314.i.i.i, %i.ar
  br label %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i.i

_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i.i:        ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i64 [ %i.aw, %bb.d ], [ %i.av, %bb.c ] ; 2 uses
  %reass.add56.i.i = shl i64 %i.ap, 1
  %i.ax = add i64 %.sink.i.i.i, %reass.add56.i.i  ; 7 uses
  %reass.add.i.i = shl i64 %.sink.i.i.i, 1
  %i.ay = add i64 %reass.add.i.i, %i.ap           ; 6 uses
  %i.az = icmp slt i32 %i.ab, 6
  br i1 %i.az, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i.i
  %i.ba = icmp eq i64 %i.ax, 0
  %i.bb = icmp eq i64 %i.ay, %i.am                ; 2 uses
  %or.cond.i.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.i, label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = add nsw i32 %i.ab, 1                    ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 6
  %spec.store.select.i.i = select i1 %i.bd, i32 1, i32 %i.bc
  %i.be = sub nsw i64 %i.am, %i.ax
  br label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = icmp eq i64 %i.ax, %i.am                ; 2 uses
  %i.bg = add nsw i32 %i.ab, 5
  %spec.select.i.i = select i1 %i.bf, i32 %i.bg, i32 %i.ab
  %spec.select46.i.i = select i1 %i.bf, i64 0, i64 %i.ax
  br label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.i:                                             ; preds = %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i.i
  %i.bh = icmp eq i64 %i.ay, 0
  %i.bi = icmp eq i64 %i.ax, %i.am                ; 2 uses
  %or.cond47.i.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond47.i.i, label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 11
  %spec.store.select1.i.i = select i1 %i.bk, i32 6, i32 %i.bj
  %i.bl = sub nsw i64 %i.am, %i.ay
  br label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bm = icmp eq i64 %i.ay, %i.am
  br i1 %i.bm, label %bb.m, label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i32 %i.ab, -4
  %i.bo = urem i32 %i.bn, 5
  br label %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  %.038.i.i = phi i32 [ %i.ab, %bb.l ], [ %spec.store.select.i.i, %bb.g ], [ 0, %bb.e ], [ 11, %bb.i ], [ %spec.select.i.i, %bb.h ], [ %spec.store.select1.i.i, %bb.k ], [ %i.bo, %bb.m ] ; 2 uses
  %.037.i.i = phi i64 [ %i.ax, %bb.l ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %spec.select46.i.i, %bb.h ], [ %i.bl, %bb.k ], [ %i.ax, %bb.m ]
  %.0.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.be, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %i.ay, %bb.h ], [ 0, %bb.k ], [ 0, %bb.m ]
  %i.bp = sitofp i64 %.037.i.i to double
  store double %i.bp, ptr %3, align 8, !tbaa !62
  %i.bq = sitofp i64 %.0.i.i to double
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.038.i.i, ptr %i.bs, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit

bb.n:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit
  %i.bt = icmp sgt i32 %i.ad, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !42 ; 2 uses
  br i1 %i.bt, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.n, %bb.a
  %i.bu = phi i32 [ %i.ag, %bb.a ], [ %.pre.i, %bb.n ]
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fmul nnan double %i.bv, 5.000000e-01
  %i.bx = uitofp nneg i32 %i.ad to double
  %i.by = tail call noundef double @pow(double noundef %i.bx, double noundef %i.bw) #17 ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, f0x41DFFFFFFFC00000
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_:_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit
  %i.dm = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 11
  %spec.store.select1.i = select i1 %i.dn, i32 6, i32 %i.dm
  %i.do = add nsw i64 %i.db, %.0.i                ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dp = sub nsw i64 0, %.0.i
  %i.dq = icmp eq i64 %i.db, %i.dp                ; 2 uses
  %i.dr = add nsw i32 %i.ab, -4
  %spec.select = select i1 %i.dq, i64 %i.ct, i64 %i.dc
  %spec.select5 = select i1 %i.dq, i32 %i.dr, i32 %i.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w
  %.neg66.i = phi i64 [ %spec.select, %bb.ac ], [ %.neg.i, %bb.x ], [ 0, %bb.w ], [ 0, %bb.z ], [ %i.dc, %bb.y ], [ %i.do, %bb.ab ]
  %i.ds = phi i64 [ %i.ct, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.z ], [ %spec.select.i, %bb.y ], [ %i.do, %bb.ab ]
  %.039.i = phi i32 [ %spec.select5, %bb.ac ], [ %spec.store.select.i, %bb.x ], [ 0, %bb.w ], [ 11, %bb.z ], [ %spec.select65.i, %bb.y ], [ %spec.store.select1.i, %bb.ab ] ; 2 uses
  %i.dt = sitofp i64 %i.ds to double
  store double %i.dt, ptr %3, align 8, !tbaa !62
  %i.du = sitofp i64 %.neg66.i to double
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.du, ptr %i.dv, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.039.i, ptr %i.dw, align 8, !tbaa !64
  br label %_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit

_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit: ; preds = %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, %bb.ad
  %.038.i = phi i32 [ %.038.i.i, %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i ], [ %.039.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.038.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL7hexbin2dddPlS_(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.23, ptr %i.b, align 16, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIPKc, ptr null) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fdiv double %1, f0x3FEBB67AE8584CAB      ; 2 uses
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = fsub double %2, %i.d
  %i.f = insertelement <2 x double> poison, double %i.c, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1
  %i.h = insertelement <2 x double> poison, double %0, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> %i.g, %i.i             ; 4 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = fneg double %i.k
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = fadd <2 x double> %i.j, splat (double 5.000000e-01)
  %i.p = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.o) ; 3 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = tail call i64 @lround(double noundef %i.q) #17 ; 5 uses
  %i.s = extractelement <2 x double> %i.p, i64 1
  %i.t = tail call i64 @lround(double noundef %i.s) #17 ; 5 uses
  %i.u = fadd double %i.n, 5.000000e-01
  %i.v = tail call double @llvm.floor.f64(double %i.u) ; 2 uses
  %i.w = tail call i64 @lround(double noundef %i.v) #17 ; 2 uses
  %i.x = sitofp i64 %i.r to double
  %i.y = sitofp i64 %i.t to double
  %i.z = fadd double %i.x, %i.y                   ; 2 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp ogt double %i.aa, f0x41DFFFFFFFC00000
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = sitofp i64 %i.w to double
  %i.ad = fadd double %i.z, %i.ac
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ogt double %i.ae, f0x41DFFFFFFFC00000
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.22, ptr %i.ag, align 16, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIPKc, ptr null) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.t, %i.r
  %i.ai = add nsw i64 %i.ah, %i.w                 ; 3 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = fsub <2 x double> %i.p, %i.j
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj) ; 2 uses
  %i.al = fsub double %i.v, %i.n
  %i.am = tail call double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = extractelement <2 x double> %i.ak, i64 0 ; 3 uses
  %i.ao = extractelement <2 x double> %i.ak, i64 1 ; 3 uses
  %i.ap = fcmp ult double %i.an, %i.ao
  %i.aq = fcmp ult double %i.an, %i.am
  %or.cond = or i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = sub nsw i64 %i.r, %i.ai
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = fcmp ult double %i.ao, %i.an
  %i.at = fcmp ult double %i.ao, %i.am
  %or.cond55 = or i1 %i.as, %i.at
  %i.au = select i1 %or.cond55, i64 0, i64 %i.ai
  %spec.select = sub nsw i64 %i.t, %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.h
  %.050 = phi i64 [ %i.ar, %bb.h ], [ %i.r, %bb.i ], [ %i.r, %bb.f ] ; 4 uses
  %.049 = phi i64 [ %i.t, %bb.h ], [ %spec.select, %bb.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.av = icmp sgt i64 %.050, -1
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = add nuw nsw i64 %.050, 1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = add i64 %.049, %i.ax
  %i.az = sub i64 0, %i.ay
  br label %_ZL6hex_xyPN12_GLOBAL__N_13hexE.exit

bb.l:                                             ; preds = %bb.j
  %.nonneg.i = sub i64 0, %.050
  %.neg1011.i = lshr i64 %.nonneg.i, 1
  %i.ba = sub i64 %.neg1011.i, %.049
  br label %_ZL6hex_xyPN12_GLOBAL__N_13hexE.exit

_ZL6hex_xyPN12_GLOBAL__N_13hexE.exit:             ; preds = %bb.k, %bb.l
  %.sink.i = phi i64 [ %i.ba, %bb.l ], [ %i.az, %bb.k ]
  store i64 %.050, ptr %3, align 8, !tbaa !103
  store i64 %.sink.i, ptr %4, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!14, !14, i64 0}
!39 = !{!"p1 _ZTSN12_GLOBAL__N_120ISEAPlanarProjectionE", !8, i64 0}
!40 = !{!"_ZTSN12_GLOBAL__N_112pj_isea_dataE", !14, i64 0, !14, i64 8, !14, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !5, i64 36, !5, i64 40, !4, i64 48, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !4, i64 432, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !39, i64 496}
!41 = !{!40, !5, i64 24}
!42 = !{!40, !5, i64 28}
!43 = !{!40, !14, i64 16}
!44 = !{!40, !14, i64 0}
!45 = !{!40, !14, i64 8}
!46 = !{!40, !4, i64 32}
!47 = !{!40, !39, i64 496}
!48 = !{!36, !14, i64 168}
!49 = !{!40, !14, i64 368}
!50 = !{!40, !14, i64 384}
!51 = !{!40, !14, i64 392}
!52 = !{!40, !14, i64 416}
!53 = !{!40, !14, i64 400}
!54 = !{!40, !14, i64 424}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"_ZTSN12_GLOBAL__N_18GeoPointE", !14, i64 0, !14, i64 8}
!57 = !{!56, !14, i64 8}
!58 = !{!"_ZTSN12_GLOBAL__N_111isea_sincosE", !14, i64 0, !14, i64 8}
!59 = !{!58, !14, i64 0}
!60 = !{!58, !14, i64 8}
!61 = !{!"_ZTSN12_GLOBAL__N_17isea_ptE", !14, i64 0, !14, i64 8}
!62 = !{!61, !14, i64 0}
!63 = !{!61, !14, i64 8}
!64 = !{!40, !5, i64 40}
!65 = !{!10, !10, i64 0}
!66 = !{!36, !10, i64 8}
!67 = !{!36, !10, i64 16}
!68 = !{!36, !5, i64 360}
!69 = !{!36, !15, i64 380}
!70 = !{!36, !15, i64 384}
!71 = !{!36, !8, i64 104}
!72 = !{!36, !8, i64 112}
!73 = !{!36, !9, i64 0}
!74 = !{!36, !11, i64 24}
!75 = !{!36, !14, i64 208}
!76 = !{!36, !14, i64 176}
!77 = !{!40, !14, i64 376}
!78 = !{!40, !14, i64 472}
!79 = !{!40, !14, i64 464}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = distinct !{!83, !55}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!40, !5, i64 36}
!90 = !{i64 0, i64 8, !38, i64 8, i64 8, !38}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{!40, !14, i64 480}
!95 = !{!40, !14, i64 488}
!96 = !{!"_ZTSN12_GLOBAL__N_120ISEAPlanarProjectionE", !56, i64 0, !14, i64 16, !14, i64 24}
!97 = !{!96, !14, i64 0}
!98 = !{!96, !14, i64 16}
!99 = !{!96, !14, i64 24}
!100 = !{!"_ZTSN12_GLOBAL__N_13hexE", !5, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!101 = !{!100, !23, i64 8}
!102 = !{!100, !23, i64 16}
!103 = !{!23, !23, i64 0}
end_hunk_1
