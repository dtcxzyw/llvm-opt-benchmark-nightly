Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/isea?download=true
inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14isea_s_forward5PJ_LPP8PJconsts:bb.a
bb.g:                                             ; preds = %bb.f
  %i.bt = fadd double %i.bn, -1.000000e+00
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp olt double %i.bu, 1.000000e-15
  br i1 %i.bv, label %_ZL10safeArcCosd.exit.thread1.i.i.i, label %_ZL10safeArcCosd.exit.i.i.i

_ZL10safeArcCosd.exit.i.i.i:                      ; preds = %bb.g
  %i.bw = tail call double @acos(double noundef %i.bn) #17 ; 2 uses
  %i.bx = fcmp ogt double %i.bw, f0x3FE4E028A9CFABEF
  br i1 %i.bx, label %_ZL10safeArcCosd.exit.thread.i.i.i, label %_ZL10safeArcCosd.exit.thread1.i.i.i

_ZL10safeArcCosd.exit.thread1.i.i.i:              ; preds = %_ZL10safeArcCosd.exit.i.i.i, %bb.g
  %i.by = phi double [ %i.bw, %_ZL10safeArcCosd.exit.i.i.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.bz = tail call double @sin(double noundef %i.bg) #17
  %i.ca = fmul double %i.ba, %i.bz
  %i.cb = fneg double %i.bi
  %i.cc = fmul double %i.bj, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.az, double %i.cc)
  %i.ce = tail call double @atan2(double noundef %i.ca, double noundef %i.cd) #17
  %i.cf = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 9 uses
  %switch.tableidx = add i32 %i.cf, -5            ; 2 uses
  %i.cg = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 3103, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.cg, i1 %switch.lobit, i1 false
  %i.ch = icmp samesign ugt i64 %indvars.iv.i.i.i, 16
  %..i.i.i.i = select i1 %i.ch, double f0xC00921FB54442D18, double 0.000000e+00
  %.0.i.i.i.i = select i1 %or.cond, double f0x400921FB54442D18, double %..i.i.i.i
  %i.ci = fsub double %i.ce, %.0.i.i.i.i          ; 3 uses
  %i.cj = fcmp olt double %i.ci, 0.000000e+00
  %i.ck = fadd double %i.ci, f0x401921FB54442D18
  %.067.i.i.i = select i1 %i.cj, double %i.ck, double %i.ci ; 3 uses
  %i.cl = fcmp olt double %.067.i.i.i, 0.000000e+00
  br i1 %i.cl, label %.lr.ph.i14.i.i, label %.preheader.i13.i.i

.preheader.i13.i.i:                               ; preds = %.lr.ph.i14.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i
  %.168.lcssa.i.i.i = phi double [ %.067.i.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i ], [ %i.cn, %.lr.ph.i14.i.i ] ; 3 uses
  %.066.lcssa.i.i.i = phi i32 [ 0, %_ZL10safeArcCosd.exit.thread1.i.i.i ], [ %i.co, %.lr.ph.i14.i.i ] ; 2 uses
  %i.cm = fcmp ogt double %.168.lcssa.i.i.i, f0x4000C152382D7366
  br i1 %i.cm, label %.lr.ph14.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i14.i.i:                                   ; preds = %_ZL10safeArcCosd.exit.thread1.i.i.i, %.lr.ph.i14.i.i
  %.06610.i.i.i = phi i32 [ %i.co, %.lr.ph.i14.i.i ], [ 0, %_ZL10safeArcCosd.exit.thread1.i.i.i ]
  %.1689.i.i.i = phi double [ %i.cn, %.lr.ph.i14.i.i ], [ %.067.i.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i ]
  %i.cn = fadd double %.1689.i.i.i, f0x4000C152382D7366 ; 3 uses
  %i.co = add nsw i32 %.06610.i.i.i, -1           ; 2 uses
  %i.cp = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.cp, label %.lr.ph.i14.i.i, label %.preheader.i13.i.i, !llvm.loop !79

.lr.ph14.i.i.i:                                   ; preds = %.preheader.i13.i.i, %.lr.ph14.i.i.i
  %.113.i.i.i = phi i32 [ %i.cr, %.lr.ph14.i.i.i ], [ %.066.lcssa.i.i.i, %.preheader.i13.i.i ]
  %.212.i.i.i = phi double [ %i.cq, %.lr.ph14.i.i.i ], [ %.168.lcssa.i.i.i, %.preheader.i13.i.i ]
  %i.cq = fadd double %.212.i.i.i, f0xC000C152382D7366 ; 3 uses
  %i.cr = add nsw i32 %.113.i.i.i, 1              ; 2 uses
  %i.cs = fcmp ogt double %i.cq, f0x4000C152382D7366
  br i1 %i.cs, label %.lr.ph14.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph14.i.i.i, %.preheader.i13.i.i
  %.2.lcssa.i.i.i = phi double [ %.168.lcssa.i.i.i, %.preheader.i13.i.i ], [ %i.cq, %.lr.ph14.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i32 [ %.066.lcssa.i.i.i, %.preheader.i13.i.i ], [ %i.cr, %.lr.ph14.i.i.i ]
  %i.ct = tail call double @cos(double noundef %.2.lcssa.i.i.i) #17 ; 2 uses
  %i.cu = tail call double @sin(double noundef %.2.lcssa.i.i.i) #17 ; 2 uses
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double f0x3FFBB67AE8584CAB, double %i.ct)
  %i.cw = tail call double @atan2(double noundef f0x3FE8722191A02D61, double noundef %i.cv) #17 ; 2 uses
  %i.cx = fadd double %i.cw, 5.000000e-06
  %i.cy = fcmp ogt double %i.by, %i.cx
  br i1 %i.cy, label %_ZL10safeArcCosd.exit.thread.i.i.i, label %_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i

_ZL10safeArcCosd.exit.thread.i.i.i:               ; preds = %._crit_edge.i.i.i, %_ZL10safeArcCosd.exit.i.i.i, %bb.f, %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 20
  br i1 %exitcond.not.i.i.i, label %bb.h, label %bb.e, !llvm.loop !81

bb.h:                                             ; preds = %_ZL10safeArcCosd.exit.thread.i.i.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !82
  %i.da = fmul double %.sroa.2.1.lcssa.i.i.i, 1.800000e+02
  %i.db = fdiv double %i.da, f0x400921FB54442D18
  %i.dc = fmul double %i.ap, 1.800000e+02
  %i.dd = fdiv double %i.dc, f0x400921FB54442D18
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.21, double noundef %i.db, double noundef %i.dd) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i: ; preds = %._crit_edge.i.i.i
  %i.df = fmul double %i.ct, f0xBFE9E3779B97F4A8
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cu, double f0x3FDDE4BD6E524E1F, double %i.df)
  %i.dh = tail call double @acos(double noundef %i.dg) #17
  %i.di = fadd double %.2.lcssa.i.i.i, f0x3FE41B2F769CF0E0
  %i.dj = fadd double %i.di, %i.dh
  %i.dk = fadd double %i.dj, f0xC00921FB54442D18
  %i.dl = fmul double %i.dk, 2.000000e+00         ; 2 uses
  %i.dm = fneg double %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double f0x3FFBB67AE8584CAB, double f0x3FDEF49C3F648C95)
  %i.do = tail call double @atan2(double noundef %i.dl, double noundef %i.dn) #17 ; 3 uses
  %i.dp = tail call double @cos(double noundef %i.do) #17
  %i.dq = tail call double @sin(double noundef %i.do) #17
  %i.dr = fmul double %i.cw, 5.000000e-01
  %i.ds = tail call double @sin(double noundef %i.dr) #17
  %i.dt = fmul double %i.ds, f0x3FFD21DC1E9D1240
  %i.du = fmul double %i.by, 5.000000e-01
  %i.dv = tail call double @sin(double noundef %i.du) #17
  %i.dw = sitofp i32 %.1.lcssa.i.i.i to double
  %i.dx = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.dw, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.do, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> <double f0x3FFBB67AE8584CAB, double f0x4000C152382D7366>, <2 x double> %i.ea) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = fdiv double f0x3FE6414C46A11CDA, %i.ec
  %i.ee = fdiv double %i.ed, %i.dt
  %i.ef = fmul double %i.ee, f0x3FFD21DC1E9D1240
  %i.eg = fmul double %i.dv, %i.ef                ; 2 uses
  %i.eh = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.ei = tail call double @sin(double noundef %i.eh) #17
  %i.ej = fmul double %i.ei, %i.eg                ; 3 uses
  %i.ek = tail call double @cos(double noundef %i.eh) #17
  %i.el = fmul double %i.ek, %i.eg                ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.cf, ptr %i.en, align 4, !tbaa !84
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !55 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i
  %i.er = srem i32 %i.cf, 20                      ; 2 uses
  %.lhs.trunc5.i.i.i = trunc nsw i32 %i.er to i8  ; 2 uses
  %i.es = sdiv i8 %.lhs.trunc5.i.i.i, 5           ; 2 uses
  %i.et = srem i8 %.lhs.trunc5.i.i.i, 5
  %i.eu = icmp ult i8 %i.es, 4
  br i1 %i.eu, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @exit(i32 noundef 1) #19
  unreachable

switch.lookup:                                    ; preds = %bb.i
  %i.ev = sdiv i32 %i.cf, 5
  %i.ew = and i32 %i.ev, -2147483647
  %i.ex = icmp eq i32 %i.ew, 1                    ; 2 uses
  %i.ey = fneg double %i.ej
  %i.ez = select i1 %i.ex, double %i.ey, double %i.ej
  %i.fa = fneg double %i.el
  %i.fb = select i1 %i.ex, double %i.fa, double %i.el
  %i.fc = zext nneg i8 %i.es to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL14isea_s_forward5PJ_LPP8PJconsts, i64 %i.fc
  %switch.load = load double, ptr %switch.gep, align 8
  %i.fd = icmp sgt i32 %i.er, 9
  %narrow.i.i.i = add nsw i8 %i.et, -2
  %i.fe = sitofp i8 %narrow.i.i.i to double
  %i.ff = fmul nnan double %i.fe, f0x3FE52BB3566A484C
  %i.fg = fmul nnan double %i.ff, 2.000000e+00    ; 2 uses
  %i.fh = fadd nnan double %i.fg, f0x3FE52BB3566A484C
  %.sroa.0.0.i.i.i = select i1 %i.fd, double %i.fh, double %i.fg
  %i.fi = fmul nnan double %.sroa.0.0.i.i.i, f0x3FED21DC1E9D1240
  %i.fj = fadd double %i.fi, %i.ez
  store double %i.fj, ptr %5, align 16, !tbaa !85
  %i.fk = fadd double %i.fb, %switch.load
  store double %i.fk, ptr %i.em, align 8, !tbaa !87
  br label %bb.o

bb.k:                                             ; preds = %_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i
  %i.fl = fmul double %i.ej, f0x3FEA90A6031F46A3
  %i.fm = fmul double %i.el, f0x3FEA90A6031F46A3
  %i.fn = fadd double %i.fl, 5.000000e-01         ; 3 uses
  store double %i.fn, ptr %5, align 16, !tbaa !85
  %i.fo = fadd double %i.fm, f0x3FD279A74590331C  ; 2 uses
  store double %i.fo, ptr %i.em, align 8, !tbaa !87
  switch i32 %i.ep, label %bb.o [
    i32 3, label %bb.m
    i32 2, label %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i
    i32 1, label %bb.l
  ]

_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i:   ; preds = %bb.k
  %i.fp = sdiv i32 %i.cf, 5
  %i.fq = srem i32 %i.cf, 5
  %i.fr = and i32 %i.fp, -2147483647
  %i.fs = icmp eq i32 %i.fr, 1                    ; 2 uses
  %i.ft = select i1 %i.fs, double f0xC010C152382D7365, double f0xBFF0C152382D7365 ; 3 uses
  %i.fu = tail call double @cos(double noundef %i.ft) #17
  %i.fv = tail call double @sin(double noundef %i.ft) #17 ; 2 uses
  %i.fw = fneg double %i.fn
  %i.fx = tail call double @cos(double noundef %i.ft) #17
  %i.fy = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fx, i64 1
  %i.gc = fmul <2 x double> %i.fz, %i.gb
  %i.gd = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.fw, i64 1
  %i.gf = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fv, i64 1
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.gg, <2 x double> %i.gc) ; 2 uses
  %i.gi = fadd <2 x double> %i.gh, <double 5.000000e-01, double f0x3FEBB67AE8584CAA>
  %storemerge = select i1 %i.fs, <2 x double> %i.gi, <2 x double> %i.gh
  store <2 x double> %storemerge, ptr %5, align 16, !tbaa !45
  %i.gj = sdiv i32 %i.cf, 10
  %i.gk = mul nsw i32 %i.gj, 5
  %i.gl = add nsw i32 %i.fq, 1
  %i.gm = add nsw i32 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !88
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.go = invoke fastcc noundef i32 @_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_(ptr noundef nonnull %i.b, i32 noundef %i.cf, ptr noundef %5, ptr noundef %4)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !88
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.gq = invoke fastcc noundef i32 @_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_(ptr noundef nonnull %i.b, i32 noundef %i.cf, ptr noundef nonnull readonly %5, ptr noundef %3)
          to label %.noexc16 unwind label %bb.p

.noexc16:                                         ; preds = %bb.m
  %i.gr = load double, ptr %3, align 8, !tbaa !85 ; 3 uses
  %i.gs = fcmp olt double %i.gr, f0xC1A0000000000000
  %i.gt = fcmp ogt double %i.gr, f0x419FFFFFFC000000
  %or.cond.i.i = or i1 %i.gs, %i.gt
  br i1 %or.cond.i.i, label %bb.n, label %_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.n:                                             ; preds = %.noexc16
  %i.gu = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.24, ptr %i.gu, align 16, !tbaa !89
  invoke void @__cxa_throw(ptr nonnull %i.gu, ptr nonnull @_ZTIPKc, ptr null) #20
          to label %.noexc17 unwind label %bb.p

.noexc17:                                         ; preds = %bb.n
  unreachable

_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i: ; preds = %.noexc16
  %i.gv = fptosi double %i.gr to i32
  %i.gw = shl nsw i32 %i.gv, 4
  %i.gx = add nsw i32 %i.gw, %i.gq
  %i.gy = sitofp i32 %i.gx to double
  store double %i.gy, ptr %4, align 16, !tbaa !85
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ha, ptr %i.hb, align 8, !tbaa !87
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
  %i.hk = load <2 x double>, ptr %6, align 16, !tbaa !45
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !45
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.l, <2 x double> %i.h) ; 5 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 4 uses
  %i.o = fcmp olt double %i.n, 0.000000e+00
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !67 ; 3 uses
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
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !91
  %i.aj = fmul double %i.ai, %i.ag                ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.al = load double, ptr %i.ak, align 8, !tbaa !92
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
end_hunk_0
