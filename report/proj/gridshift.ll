Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gridshift?download=true
inline.NumInlined: 813
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb
define internal fastcc void @_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %5, i32 noundef range(i32 -1, 2) %6, ptr noundef nonnull %7, ptr noundef %8, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %9) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %10 = alloca %struct.PJ_XYZ, align 16           ; 13 uses
  store i8 0, ptr %9, align 1, !tbaa !55
  %i.b = load double, ptr %5, align 8, !tbaa !111 ; 7 uses
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !87
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.278.0.copyload = load double, ptr %.sroa.278.0..sroa_idx, align 8, !tbaa !86 ; 2 uses
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !97, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !86
  %i.i = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.h)
  %i.j = fmul double %i.i, 1.000000e-05           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.l = load double, ptr %i.k, align 8, !tbaa !112
  %i.m = fsub double %i.l, %i.j
  %i.n = fcmp olt double %i.b, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = fadd double %i.b, f0x401921FB54442D18
  br label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.q = load double, ptr %i.p, align 8, !tbaa !113
  %i.r = fadd double %i.j, %i.q
  %i.s = fcmp ogt double %i.b, %i.r
  br i1 %i.s, label %bb.g, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.g:                                             ; preds = %bb.f
  %i.t = fadd double %i.b, f0xC01921FB54442D18
  br label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.sroa.0.1.i = phi double [ %i.b, %bb.c ], [ %i.o, %bb.e ], [ %i.t, %bb.g ], [ %i.b, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %.sroa.0.1.i, double %.sroa.278.0.copyload, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.u = load ptr, ptr %7, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(120) %7)
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit
  %i.y = load ptr, ptr %8, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %2)
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %9, align 1, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.ad, align 8, !tbaa !91
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  br label %.critedge63

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit
  %i.ae = load double, ptr %10, align 16, !tbaa !111 ; 3 uses
  %i.af = fcmp oeq double %i.ae, +inf
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !87
  br label %.critedge63

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp eq i32 %6, 1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !87
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !164
  %i.aj = load <2 x double>, ptr %0, align 8, !tbaa !86
  %i.ak = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = fadd <2 x double> %i.al, %i.aj
  store <2 x double> %i.am, ptr %0, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ao = load double, ptr %i.an, align 16, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !91
  %i.ar = fadd double %i.ao, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !91
  br label %.critedge63

bb.m:                                             ; preds = %bb.k
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = load double, ptr %i.as, align 16, !tbaa !91
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !91
  %i.aw = fsub double %i.av, %i.at
  store double %i.aw, ptr %i.au, align 8, !tbaa !91
  br label %.critedge63

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !164
  %i.az = insertelement <2 x double> poison, double %.sroa.0.1.i, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %.sroa.278.0.copyload, i64 1 ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ay, i64 1
  %i.bd = fsub <2 x double> %i.ba, %i.bc          ; 2 uses
  %i.be = load i8, ptr %i.a, align 1, !tbaa !55, !range !57, !noundef !58
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.ac
  %.085 = phi ptr [ %.287, %bb.ac ], [ %i.d, %.preheader ] ; 5 uses
  %.082 = phi ptr [ %.183, %bb.ac ], [ %8, %.preheader ] ; 3 uses
  %.055 = phi i32 [ %i.dn, %bb.ac ], [ 10, %.preheader ]
  %.0 = phi ptr [ %.2, %bb.ac ], [ %7, %.preheader ] ; 6 uses
  %i.bh = phi <2 x double> [ %i.dl, %bb.ac ], [ %i.bd, %.preheader ] ; 12 uses
  %i.bi = phi <2 x double> [ %i.dm, %bb.ac ], [ %i.ba, %.preheader ] ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bk = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %i.bj, double %i.bk, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bl = load ptr, ptr %.0, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(120) %.0)
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %.082, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(96) %.082, ptr noundef %2)
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %9, align 1, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.bu, align 8, !tbaa !91
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  br label %.critedge63

bb.r:                                             ; preds = %bb.p
  %i.bv = load double, ptr %10, align 16, !tbaa !111
  %i.bw = fcmp oeq double %i.bv, +inf             ; 2 uses
  br i1 %i.bw, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %.val = load ptr, ptr %1, align 8, !tbaa !80    ; 2 uses
  %.val65 = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %.not1315.i = icmp eq ptr %.val, %.val65
  br i1 %.not1315.i, label %.critedge.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.t
  %.sroa.05.016.i = phi ptr [ %i.bz, %bb.t ], [ %.val, %bb.s ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !82
  %i.by = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %i.bj, double noundef %i.bk) ; 13 uses
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.t, label %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit

bb.t:                                             ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.bz, %.val65
  br i1 %.not13.i, label %.critedge.thread, label %.lr.ph.i

_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit: ; preds = %.lr.ph.i
  %i.ca = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !82 ; 4 uses
  %i.cb = icmp eq ptr %i.by, %.0
  br i1 %i.cb, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(120) %i.by)
  br i1 %i.cf, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %i.ch, ptr noundef %i.cj)
  %i.ck = load <2 x double>, ptr %5, align 8, !tbaa !86 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 5 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !97, !range !57, !noundef !58
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.cp = load <2 x double>, ptr %i.co, align 8, !tbaa !86
  %i.cq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cp)
  %i.cr = fmul double %i.cq, 1.000000e-05         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !112
  %i.cu = fsub double %i.ct, %i.cr
  %i.cv = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cw = fcmp olt double %i.cv, %i.cu
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = fadd <2 x double> %i.ck, <double f0x401921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !113
  %i.da = fadd double %i.cr, %i.cz
  %i.db = fcmp ogt double %i.cv, %i.da
  br i1 %i.db, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dc = fadd <2 x double> %i.ck, <double f0xC01921FB54442D18, double -0.000000e+00>
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.dd = load <2 x double>, ptr %10, align 16, !tbaa !86
  %i.de = fadd <2 x double> %i.bh, %i.dd
  %i.df = fsub <2 x double> %i.de, %i.bi          ; 4 uses
  %i.dg = fsub <2 x double> %i.bh, %i.df
  %foldExtExtBinop = fmul <2 x double> %i.df, %i.df
  %i.dh = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.di = extractelement <2 x double> %i.df, i64 0 ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %i.dh)
  %i.dk = fcmp ogt double %i.dj, f0x3AF357C299A88EA7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa
  %.287 = phi ptr [ %.085, %bb.aa ], [ %i.cl, %bb.z ], [ %i.cl, %bb.y ], [ %i.cl, %bb.x ], [ %i.cl, %bb.v ] ; 3 uses
  %.183 = phi ptr [ %.082, %bb.aa ], [ %i.ca, %bb.z ], [ %i.ca, %bb.y ], [ %i.ca, %bb.x ], [ %i.ca, %bb.v ]
  %.sroa.06.2 = phi i1 [ %i.dk, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.v ]
  %.2 = phi ptr [ %.0, %bb.aa ], [ %i.by, %bb.z ], [ %i.by, %bb.y ], [ %i.by, %bb.x ], [ %i.by, %bb.v ]
  %i.dl = phi <2 x double> [ %i.dg, %bb.aa ], [ %i.bh, %bb.z ], [ %i.bh, %bb.y ], [ %i.bh, %bb.x ], [ %i.bh, %bb.v ] ; 3 uses
  %i.dm = phi <2 x double> [ %i.bi, %bb.aa ], [ %i.dc, %bb.z ], [ %i.ck, %bb.y ], [ %i.cx, %bb.x ], [ %i.ck, %bb.v ]
  %i.dn = add nsw i32 %.055, -1                   ; 2 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %.critedge64, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.sroa.06.2, label %bb.p, label %.critedge, !llvm.loop !163

.critedge64:                                      ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.22)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %2, i32 noundef 2054)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.do, align 8, !tbaa !91
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  br label %.critedge63

.critedge:                                        ; preds = %bb.ac
  br i1 %i.bw, label %.critedge.thread, label %bb.ad

.critedge.thread:                                 ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit, %bb.u, %bb.s, %bb.t, %.critedge
  %.3102 = phi ptr [ %.287, %.critedge ], [ %.085, %bb.t ], [ %.085, %bb.s ], [ %.085, %bb.u ], [ %.085, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  %i.dp = phi <2 x double> [ %i.dl, %.critedge ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit ]
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.23)
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.thread, %.critedge, %bb.o
  %.4 = phi ptr [ %i.d, %bb.o ], [ %.3102, %.critedge.thread ], [ %.287, %.critedge ]
  %i.dq = phi <2 x double> [ %i.bd, %bb.o ], [ %i.dp, %.critedge.thread ], [ %i.dl, %.critedge ] ; 2 uses
  %i.dr = load i8, ptr %.4, align 8, !tbaa !97, !range !57, !noundef !58
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  br i1 %i.ds, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = tail call noundef double @_Z6adjlond(double noundef %i.dt)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dv = phi double [ %i.du, %bb.ae ], [ %i.dt, %bb.ad ]
  store double %i.dv, ptr %0, align 8, !tbaa !111
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = extractelement <2 x double> %i.dq, i64 1
  store double %i.dx, ptr %i.dw, align 8, !tbaa !164
  %i.dy = load double, ptr %.sroa.379.0..sroa_idx, align 8, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ea = load double, ptr %i.dz, align 16, !tbaa !91
  %i.eb = fsub double %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.eb, ptr %i.ec, align 8, !tbaa !91
  br label %.critedge63

.critedge63:                                      ; preds = %bb.af, %.critedge64, %bb.q, %bb.n, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge63, %bb.b
  ret void
}

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %4, double %5, ptr noundef nonnull %6, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"struct.(anonymous namespace)::GridInfo", align 8 ; 20 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i8, align 1                       ; 11 uses
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97, !range !57, !noundef !58 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 10 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.a ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp ult ptr %i.l, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.083.i.i.i, ptr %.04.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.j
  br i1 %i.n, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp ult ptr %6, %i.p
  br i1 %i.q, label %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %bb.bq

_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_N12_GLOBAL__N_18GridInfoEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.a, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  %i.r = load ptr, ptr %6, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(144) %6) ; 3 uses
  %.not338663 = icmp sgt i32 %i.u, 0
  br i1 %.not338663, label %.lr.ph, label %._crit_edge._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit461.thread588_crit_edge

.lr.ph:                                           ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridEN12_GLOBAL__N_18GridInfoESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %i.ah = add nuw nsw i32 %.0312666, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !166

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0278668 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.b ] ; 12 uses
  %.0280667 = phi i32 [ -1, %.lr.ph ], [ %.2282, %bb.b ] ; 12 uses
  %.0312666 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 17 uses
  %.0313665 = phi i32 [ -1, %.lr.ph ], [ %.2315, %bb.b ] ; 14 uses
  %.0317664 = phi i32 [ -1, %.lr.ph ], [ %.2319, %bb.b ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312666)
  %i.al = load i64, ptr %i.v, align 8, !tbaa !49  ; 2 uses
  br i1 %i.h, label %bb.d, label %.critedge353

bb.d:                                             ; preds = %bb.c
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430.thread583 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit424
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit428
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 7306093638347678060
  %i.ap = getelementptr i8, ptr %i.am, i64 7
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 8387236764689850213
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit430

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aw = load ptr, ptr %6, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.0312666)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  switch i64 %i.az, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %._crit_edge709
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._crit_edge709:                                   ; preds = %bb.e
  %.pre710 = load ptr, ptr %9, align 8, !tbaa !60
  br label %bb.h

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ba = load ptr, ptr %9, align 8, !tbaa !60    ; 3 uses
end_hunk_0
