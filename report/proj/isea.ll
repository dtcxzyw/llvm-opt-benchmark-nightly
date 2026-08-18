inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z33pj_projection_specific_setup_iseaP8PJconsts:bb.a
  %i.fd = fmul double %i.er, -1.500000e+00
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store double %i.fd, ptr %i.fe, align 8, !tbaa !66
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.fg = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.er, i64 1
  %i.fi = fmul <2 x double> %i.fh, <double f0x3FFBB67AE8584CAA, double 3.000000e+00> ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  store double %i.fj, ptr %i.et, align 8, !tbaa !67
  %i.fk = fmul double %i.fj, 2.500000e+00
  store double %i.fk, ptr %i.fc, align 8, !tbaa !68
  %i.fl = fdiv <2 x double> splat (double 1.000000e+00), %i.fi
  store <2 x double> %i.fl, ptr %i.ff, align 8, !tbaa !45
  br label %_ZN12_GLOBAL__N_112pj_isea_data10initializeEPK8PJconsts.exit

_ZN12_GLOBAL__N_112pj_isea_data10initializeEPK8PJconsts.exit: ; preds = %bb.ah, %bb.ae, %bb.q, %bb.h, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.am, %bb.h ], [ %i.bz, %bb.q ], [ %0, %bb.ae ], [ %0, %bb.ah ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14isea_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::isea_pt", align 8 ; 5 uses
  %4 = alloca %"struct.(anonymous namespace)::isea_pt", align 16 ; 7 uses
  %5 = alloca %"struct.(anonymous namespace)::isea_pt", align 16 ; 9 uses
  %6 = alloca %union.PJ_COORD, align 16           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = load double, ptr %i.b, align 8, !tbaa !53 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !52
  %i.h = fadd double %i.e, f0x400921FB54442D18    ; 2 uses
  %i.i = fsub double %0, %i.h                     ; 2 uses
  %i.j = tail call double @cos(double noundef %1) #17 ; 3 uses
  %i.k = tail call double @sin(double noundef %1) #17 ; 2 uses
  %i.l = tail call double @cos(double noundef %i.c) #17 ; 2 uses
  %i.m = tail call double @sin(double noundef %i.c) #17 ; 2 uses
  %i.n = tail call double @cos(double noundef %i.i) #17 ; 2 uses
  %i.o = tail call double @sin(double noundef %i.i) #17
  %i.p = fmul double %i.j, %i.o
  %i.q = fmul double %i.j, %i.m
  %i.r = fmul double %i.k, %i.l
  %i.s = tail call double @llvm.fmuladd.f64(double %i.q, double %i.n, double %i.r)
  %i.t = tail call double @atan2(double noundef %i.p, double noundef %i.s) #17
  %i.u = fadd double %i.h, %i.t
  %i.v = tail call double @fmod(double noundef %i.u, double noundef f0x401921FB54442D18) #17 ; 3 uses
  %i.w = fcmp ogt double %i.v, f0x400921FB54442D18
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i = phi double [ %i.v, %bb.a ], [ %i.y, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.x = fcmp olt double %.0.lcssa.i.i.i.i, f0xC00921FB54442D18
  br i1 %i.x, label %.lr.ph7.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi double [ %i.y, %.lr.ph.i.i.i.i ], [ %i.v, %bb.a ]
  %i.y = fadd double %.05.i.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.z = fcmp ogt double %i.y, f0x400921FB54442D18
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !69

.lr.ph7.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i, %.lr.ph7.i.i.i.i
  %.16.i.i.i.i = phi double [ %i.aa, %.lr.ph7.i.i.i.i ], [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ]
  %i.aa = fadd double %.16.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ab = fcmp olt double %i.aa, f0xC00921FB54442D18
  br i1 %i.ab, label %.lr.ph7.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !71

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph7.i.i.i.i, %.preheader.i.i.i.i
  %.1.lcssa.i.i.i.i = phi double [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.aa, %.lr.ph7.i.i.i.i ]
  %i.ac = fmul double %i.j, %i.l
  %i.ad = fneg double %i.n
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.m, double %i.k, double %i.ae) ; 4 uses
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp olt double %i.ag, 1.000000e-15
  br i1 %i.ah, label %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = fadd double %i.af, -1.000000e+00
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp olt double %i.aj, 1.000000e-15
  br i1 %i.ak, label %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = fadd double %i.af, 1.000000e+00
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp olt double %i.am, 1.000000e-15
  br i1 %i.an, label %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call double @asin(double noundef %i.af) #17
  br label %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i

_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.ap = phi double [ 0.000000e+00, %._crit_edge.i.i.i.i ], [ f0x3FF921FB54442D18, %bb.b ], [ %i.ao, %bb.d ], [ f0xBFF921FB54442D18, %bb.c ] ; 3 uses
  %i.aq = fsub double %i.e, %i.g
  %i.ar = fsub double %.1.lcssa.i.i.i.i, %i.aq
  %i.as = tail call double @fmod(double noundef %i.ar, double noundef f0x401921FB54442D18) #17 ; 3 uses
  %i.at = fcmp ogt double %i.as, f0x400921FB54442D18
  br i1 %i.at, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i
  %.sroa.2.0.lcssa.i.i.i = phi double [ %i.as, %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i ], [ %i.av, %.lr.ph.i.i.i ] ; 3 uses
  %i.au = fcmp olt double %.sroa.2.0.lcssa.i.i.i, f0xC00921FB54442D18
  br i1 %i.au, label %.lr.ph8.i.i.i, label %_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.2.06.i.i.i = phi double [ %i.av, %.lr.ph.i.i.i ], [ %i.as, %_ZL12snyder_ctranRKN12_GLOBAL__N_18GeoPointES2_.exit.i.i.i ]
  %i.av = fadd double %.sroa.2.06.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.aw = fcmp ogt double %i.av, f0x400921FB54442D18
  br i1 %i.aw, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !72

.lr.ph8.i.i.i:                                    ; preds = %.preheader.i.i.i, %.lr.ph8.i.i.i
  %.sroa.2.17.i.i.i = phi double [ %i.ax, %.lr.ph8.i.i.i ], [ %.sroa.2.0.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.ax = fadd double %.sroa.2.17.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ay = fcmp olt double %i.ax, f0xC00921FB54442D18
  br i1 %i.ay, label %.lr.ph8.i.i.i, label %_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i, !llvm.loop !73

_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i: ; preds = %.lr.ph8.i.i.i, %.preheader.i.i.i
  %.sroa.2.1.lcssa.i.i.i = phi double [ %.sroa.2.0.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.ax, %.lr.ph8.i.i.i ] ; 2 uses
  %i.az = tail call double @sin(double noundef %i.ap) #17 ; 2 uses
  %i.ba = tail call double @cos(double noundef %i.ap) #17 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.e

bb.e:                                             ; preds = %_ZL10safeArcCosd.exit.thread.i.i.i, %_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i ], [ %indvars.iv.next.i.i.i, %_ZL10safeArcCosd.exit.thread.i.i.i ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @_ZL31facesCenterDodecahedronVertices, i64 %indvars.iv.i.i.i
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !74
  %i.bg = fsub double %.sroa.2.1.lcssa.i.i.i, %i.bf ; 2 uses
  %i.bh = tail call double @cos(double noundef %i.bg) #17
  %i.bi = fmul double %i.ba, %i.bh                ; 2 uses
  %i.bj = load double, ptr %i.bd, align 8, !tbaa !76 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !78 ; 2 uses
  %i.bm = fmul double %i.bi, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.az, double %i.bm) ; 4 uses
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp olt double %i.bo, 1.000000e-15
  br i1 %i.bp, label %_ZL10safeArcCosd.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = fadd double %i.bn, 1.000000e+00
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp olt double %i.br, 1.000000e-15
  br i1 %i.bs, label %_ZL10safeArcCosd.exit.thread.i.i.i, label %bb.g

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
  %.068.i.i.i = select i1 %i.cj, double %i.ck, double %i.ci ; 3 uses
  %i.cl = fcmp olt double %.068.i.i.i, 0.000000e+00
  br i1 %i.cl, label %.lr.ph.i14.i.i, label %.preheader.i13.i.i

.preheader.i13.i.i:                               ; preds = %.lr.ph.i14.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i
  %.070.lcssa.i.i.i = phi i32 [ 0, %_ZL10safeArcCosd.exit.thread1.i.i.i ], [ %i.co, %.lr.ph.i14.i.i ] ; 2 uses
  %.169.lcssa.i.i.i = phi double [ %.068.i.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i ], [ %i.cn, %.lr.ph.i14.i.i ] ; 3 uses
  %i.cm = fcmp ogt double %.169.lcssa.i.i.i, f0x4000C152382D7366
  br i1 %i.cm, label %.lr.ph14.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i14.i.i:                                   ; preds = %_ZL10safeArcCosd.exit.thread1.i.i.i, %.lr.ph.i14.i.i
  %.16910.i.i.i = phi double [ %i.cn, %.lr.ph.i14.i.i ], [ %.068.i.i.i, %_ZL10safeArcCosd.exit.thread1.i.i.i ]
  %.0709.i.i.i = phi i32 [ %i.co, %.lr.ph.i14.i.i ], [ 0, %_ZL10safeArcCosd.exit.thread1.i.i.i ]
  %i.cn = fadd double %.16910.i.i.i, f0x4000C152382D7366 ; 3 uses
  %i.co = add nsw i32 %.0709.i.i.i, -1            ; 2 uses
  %i.cp = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.cp, label %.lr.ph.i14.i.i, label %.preheader.i13.i.i, !llvm.loop !79

.lr.ph14.i.i.i:                                   ; preds = %.preheader.i13.i.i, %.lr.ph14.i.i.i
  %.213.i.i.i = phi double [ %i.cq, %.lr.ph14.i.i.i ], [ %.169.lcssa.i.i.i, %.preheader.i13.i.i ]
  %.17112.i.i.i = phi i32 [ %i.cr, %.lr.ph14.i.i.i ], [ %.070.lcssa.i.i.i, %.preheader.i13.i.i ]
  %i.cq = fadd double %.213.i.i.i, f0xC000C152382D7366 ; 3 uses
  %i.cr = add nsw i32 %.17112.i.i.i, 1            ; 2 uses
  %i.cs = fcmp ogt double %i.cq, f0x4000C152382D7366
  br i1 %i.cs, label %.lr.ph14.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph14.i.i.i, %.preheader.i13.i.i
  %.171.lcssa.i.i.i = phi i32 [ %.070.lcssa.i.i.i, %.preheader.i13.i.i ], [ %i.cr, %.lr.ph14.i.i.i ]
  %.2.lcssa.i.i.i = phi double [ %.169.lcssa.i.i.i, %.preheader.i13.i.i ], [ %i.cq, %.lr.ph14.i.i.i ] ; 3 uses
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
  %i.dw = sitofp i32 %.171.lcssa.i.i.i to double
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
end_hunk_0
begin_hunk_1_@_ZL14isea_s_inverse5PJ_XYP8PJconsts:bb.a
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

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.099.i.a = phi double [ %i.aq, %bb.f ], [ %i.au, %bb.i ], [ %i.aj, %bb.h ] ; 6 uses
  %i.av = fcmp olt double %i.am, 0.000000e+00
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = fcmp ogt double %.099.i.a, %i.am
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
  %i.ba = fcmp olt double %.099.i.a, %i.am
  %i.bb = fcmp ogt double %i.am, f0x3DA5FD7FE1796495
  %or.cond10.i = and i1 %i.bb, %i.ba
  br i1 %or.cond10.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = fadd double %i.am, f0xBDA5FD7FE1796495
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0100.i = phi double [ %i.ay, %bb.l ], [ %i.bc, %bb.o ], [ %i.am, %bb.n ] ; 4 uses
  %i.bd = fcmp oge double %.099.i.a, 0.000000e+00
  %i.be = fcmp ole double %.099.i.a, 5.000000e+00
  %or.cond12.i = and i1 %i.bd, %i.be
  %i.bf = fcmp oge double %.0100.i, 0.000000e+00
  %i.bg = fcmp ole double %.0100.i, 6.000000e+00
  %i.bh = and i1 %i.bf, %i.bg
  %or.cond16.i = select i1 %or.cond12.i, i1 %i.bh, i1 false
  br i1 %or.cond16.i, label %bb.q, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = fptosi double %.099.i.a to i32
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 4) ; 4 uses
  %i.bl = fptosi double %.0100.i to i32
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0) ; 2 uses
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 5) ; 3 uses
  %i.bo = icmp eq i32 %i.bm, %i.bk
  %i.bp = add nuw nsw i32 %i.bk, 1
  %i.bq = icmp eq i32 %i.bn, %i.bp
  %or.cond108.i = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond108.i, label %bb.r, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.r:                                             ; preds = %bb.q
  %i.br = add nuw nsw i32 %i.bn, %i.bk
  %i.bs = uitofp nneg i32 %i.bk to double
  %i.bt = fsub double %.099.i.a, %i.bs
  %i.bu = uitofp nneg i32 %i.bn to double
  %i.bv = fsub double %.0100.i, %i.bu
  %i.bw = fcmp ogt double %i.bt, %i.bv            ; 10 uses
  switch i32 %i.br, label %default.unreachable [
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
  br i1 %i.bw, label %select.unfold.i, label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.bx = select i1 %i.bw, i32 1, i32 6
  br label %.thread.i

bb.u:                                             ; preds = %bb.r
  %i.by = select i1 %i.bw, i32 2, i32 7
  br label %.thread.i

bb.v:                                             ; preds = %bb.r
  %i.bz = select i1 %i.bw, i32 3, i32 8
  br label %.thread.i

bb.w:                                             ; preds = %bb.r
  %i.ca = select i1 %i.bw, i32 4, i32 9
  br label %.thread.i

bb.x:                                             ; preds = %bb.r
  %i.cb = select i1 %i.bw, i32 10, i32 15
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.cc = select i1 %i.bw, i32 11, i32 16
  br label %bb.ac

bb.z:                                             ; preds = %bb.r
  %i.cd = select i1 %i.bw, i32 12, i32 17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r
  %i.ce = select i1 %i.bw, i32 13, i32 18
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r
  %i.cf = select i1 %i.bw, i32 14, i32 19
  br label %bb.ac

select.unfold.i:                                  ; preds = %bb.s
  br label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.098.ph.i = phi i32 [ 0, %select.unfold.i ], [ %i.ca, %bb.w ], [ %i.bz, %bb.v ], [ %i.by, %bb.u ], [ %i.bx, %bb.t ], [ 5, %bb.s ] ; 2 uses
  %.cmp.i = icmp samesign ugt i32 %.098.ph.i, 4
  %i.cg = zext i1 %.cmp.i to i8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.098.i = phi i32 [ %i.cf, %bb.ab ], [ %i.ce, %bb.aa ], [ %i.cb, %bb.x ], [ %i.cc, %bb.y ], [ %i.cd, %bb.z ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.098.i to i8
  %i.ch = udiv i8 %.lhs.trunc.i, 5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.sink.i = phi i8 [ %i.cg, %.thread.i ], [ %i.ch, %bb.ac ] ; 2 uses
  %.098.ph.sink.i = phi i32 [ %.098.ph.i, %.thread.i ], [ %.098.i, %bb.ac ] ; 4 uses
  %i.ci = phi i32 [ 1, %.thread.i ], [ 2, %bb.ac ]
  %.zext37.i = zext nneg i8 %.sink.i to i32
  %.neg38.i = mul nsw i32 %.zext37.i, -5
  %i.cj = add nsw i32 %.neg38.i, %.098.ph.sink.i
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul double %.pre.i, %i.cm
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fsub double %.sroa.070.0.i, %i.co       ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.cr = zext nneg i8 %.sink.i to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !64
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double 3.000000e+00, double %i.ct)
  %i.cx = extractelement <2 x double> %i.m, i64 1
  %i.cy = fsub double %i.cx, %i.cw                ; 3 uses
  %i.cz = tail call double @atan2(double noundef %i.cp, double noundef %i.cy) #17
  %i.da = fmul double %i.cy, %i.cy
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.da)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.db)
  %i.dc = icmp samesign ult i32 %.098.ph.sink.i, 5
  br i1 %i.dc, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = add nsw i32 %.098.ph.sink.i, -10
  %i.de = icmp ult i32 %i.dd, 5
  %i.df = select i1 %i.de, double 0.000000e+00, double f0x400921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i: ; preds = %bb.ae, %bb.ad
  %i.dg = phi double [ 0.000000e+00, %bb.ad ], [ %i.df, %bb.ae ] ; 3 uses
  %i.dh = fadd double %i.cz, %i.dg                ; 3 uses
  %i.di = fcmp olt double %i.dh, 0.000000e+00
  br i1 %i.di, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %3 = insertelement <2 x double> poison, double %i.dh, i64 0
  %4 = insertelement <2 x double> %3, double %i.dg, i64 1
  br label %.lr.ph.i.i

.preheader.i.i.loopexit:                          ; preds = %.lr.ph.i.i
  %5 = extractelement <2 x double> %i.dl, i64 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %.082.lcssa.i.i = phi double [ %i.dg, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %5, %.preheader.i.i.loopexit ] ; 2 uses
  %.081.lcssa.i.i = phi double [ %i.dh, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.dm, %.preheader.i.i.loopexit ] ; 3 uses
  %i.dj = fcmp ogt double %.081.lcssa.i.i, f0x4000C152382D7365
  br i1 %i.dj, label %.lr.ph93.i.i.preheader, label %._crit_edge.i.i

.lr.ph93.i.i.preheader:                           ; preds = %.preheader.i.i
  %6 = insertelement <2 x double> poison, double %.082.lcssa.i.i, i64 0
  %7 = insertelement <2 x double> %6, double %.081.lcssa.i.i, i64 1
  br label %.lr.ph93.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dk = phi <2 x double> [ %i.dl, %.lr.ph.i.i ], [ %4, %.lr.ph.i.i.preheader ]
  %i.dl = fadd <2 x double> %i.dk, splat (double f0x4000C152382D7365) ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.dn = fcmp olt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.lr.ph.i.i, label %.preheader.i.i.loopexit, !llvm.loop !93

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.preheader, %.lr.ph93.i.i
  %i.do = phi <2 x double> [ %i.dp, %.lr.ph93.i.i ], [ %7, %.lr.ph93.i.i.preheader ]
  %i.dp = fadd <2 x double> %i.do, splat (double f0xC000C152382D7365) ; 3 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 1 ; 2 uses
  %i.dr = fcmp ogt double %i.dq, f0x4000C152382D7365
  br i1 %i.dr, label %.lr.ph93.i.i, label %._crit_edge.i.i.loopexit, !llvm.loop !94

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph93.i.i
  %i.ds = extractelement <2 x double> %i.dp, i64 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.183.lcssa.i.i = phi double [ %.082.lcssa.i.i, %.preheader.i.i ], [ %i.ds, %._crit_edge.i.i.loopexit ]
  %.1.lcssa.i.i = phi double [ %.081.lcssa.i.i, %.preheader.i.i ], [ %i.dq, %._crit_edge.i.i.loopexit ] ; 3 uses
  %i.dt = tail call double @sin(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.du = tail call double @cos(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.dv = fdiv double %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !65
  %i.dy = fadd double %i.dv, f0x3FFBB67AE8584CAB
  %i.dz = fmul double %i.dy, 2.000000e+00
  %i.ea = fdiv double %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !60
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
  br i1 %i.ey, label %bb.af, label %bb.ag, !llvm.loop !95

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
  %i.fj = load double, ptr %i.fb, align 8, !tbaa !63
  %i.fk = extractelement <2 x double> %i.fg, i64 1
  %i.fl = fdiv double %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !62 ; 2 uses
  %i.fo = fmul double %i.fi, 5.000000e-01
  %i.fp = tail call double @sin(double noundef %i.fo) #17
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fdiv double %i.fl, %i.fq
  %i.fs = fmul double %i.fn, %i.fr
  %i.ft = fdiv double %sqrt.i.i, %i.fs
  %i.fu = tail call double @asin(double noundef %i.ft) #17
  %i.fv = fmul double %i.fu, 2.000000e+00         ; 2 uses
  %i.fw = fsub double %i.ew, %.183.lcssa.i.i      ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fy = zext nneg i32 %.098.ph.sink.i to i64    ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !76 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !78
  %i.gd = tail call double @sin(double noundef %i.fv) #17
  %i.ge = tail call double @cos(double noundef %i.fv) #17 ; 2 uses
  %i.gf = fmul double %i.gc, %i.gd                ; 2 uses
  %i.gg = tail call double @cos(double noundef %i.fw) #17
  %i.gh = fmul double %i.gf, %i.gg
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ge, double %i.gh) ; 4 uses
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp olt double %i.gj, 1.000000e-15
  br i1 %i.gk, label %_ZL10safeArcSind.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = fadd double %i.gi, -1.000000e+00
  %i.gm = tail call double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp olt double %i.gm, 1.000000e-15
  br i1 %i.gn, label %_ZL10safeArcSind.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = fadd double %i.gi, 1.000000e+00
  %i.gp = tail call double @llvm.fabs.f64(double %i.go)
  %i.gq = fcmp olt double %i.gp, 1.000000e-15
  br i1 %i.gq, label %_ZL10safeArcSind.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gr = tail call double @asin(double noundef %i.gi) #17
  br label %_ZL10safeArcSind.exit.i.i

_ZL10safeArcSind.exit.i.i:                        ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.gs = phi double [ 0.000000e+00, %bb.ag ], [ f0x3FF921FB54442D18, %bb.ah ], [ %i.gr, %bb.aj ], [ f0xBFF921FB54442D18, %bb.ai ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr @_ZL31facesCenterDodecahedronVertices, i64 %i.fy
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !74
  %i.gw = tail call double @sin(double noundef %i.fw) #17
  %i.gx = fmul double %i.gf, %i.gw
  %i.gy = tail call double @sin(double noundef %i.gs) #17
  %i.gz = fneg double %i.ga
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gy, double %i.ge)
  %i.hb = tail call double @atan2(double noundef %i.gx, double noundef %i.ha) #17
  %i.hc = fadd double %i.gv, %i.hb
  %i.hd = tail call double @llvm.fabs.f64(double %i.gs)
  %or.cond.i.i.i = fcmp ogt double %i.hd, f0x3FF921FB256A5D67
  %i.he = select i1 %or.cond.i.i.i, double 0.000000e+00, double %i.hc ; 3 uses
  %i.hf = load double, ptr %i.d, align 8, !tbaa !96
  %i.hg = fcmp une double %i.hf, 0.000000e+00
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hi = load double, ptr %i.hh, align 8         ; 2 uses
  %i.hj = fcmp une double %i.hi, 0.000000e+00
  %or.cond24.i.i.i = select i1 %i.hg, i1 true, i1 %i.hj
  br i1 %or.cond24.i.i.i, label %bb.ak, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

bb.ak:                                            ; preds = %_ZL10safeArcSind.exit.i.i
  %i.hk = tail call double @sin(double noundef %i.gs) #17
  %i.hl = tail call double @cos(double noundef %i.gs) #17 ; 2 uses
  %i.hm = tail call double @sin(double noundef %i.he) #17
  %i.hn = tail call double @cos(double noundef %i.he) #17
  %i.ho = fmul double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !98
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !99 ; 2 uses
  %i.ht = fneg double %i.hs
  %i.hu = fmul double %i.hl, %i.hm
  %i.hv = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.ho, i64 1 ; 2 uses
  %i.hx = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.ht, i64 1
  %i.hz = fmul <2 x double> %i.hw, %i.hy
  %i.ia = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ic, <2 x double> %i.hz) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 1
  %i.if = tail call double @asin(double noundef %i.ie) #17
  %i.ig = extractelement <2 x double> %i.id, i64 0
  %i.ih = tail call double @atan2(double noundef %i.hu, double noundef %i.ig) #17
  %i.ii = fsub double %i.ih, %i.hi
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i: ; preds = %bb.ak, %_ZL10safeArcSind.exit.i.i
  %.sink108.i.i = phi double [ %i.gs, %_ZL10safeArcSind.exit.i.i ], [ %i.if, %bb.ak ] ; 3 uses
  %.sink.i.i = phi double [ %i.he, %_ZL10safeArcSind.exit.i.i ], [ %i.ii, %bb.ak ] ; 5 uses
  %i.ij = fcmp olt double %.sink.i.i, f0xC00921FB5444850E
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.ik = fadd double %.sink.i.i, f0x401921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.am:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.il = fcmp ogt double %.sink.i.i, f0x400921FB5444850E
  br i1 %i.il, label %bb.an, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.an:                                            ; preds = %bb.am
  %i.im = fadd double %.sink.i.i, f0xC01921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

default.unreachable:                              ; preds = %bb.r
  unreachable

_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit: ; preds = %bb.a, %bb.an, %bb.am, %bb.al, %bb.q, %bb.p
  %.sroa.09.1 = phi double [ +inf, %bb.p ], [ %i.ik, %bb.al ], [ %.sink.i.i, %bb.am ], [ %i.im, %bb.an ], [ +inf, %bb.q ], [ +inf, %bb.a ]
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
  %.sroa.0.0.copyload = load double, ptr %2, align 8, !tbaa !45 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !45
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
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.a, label %bb.n

bb.a:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49 ; 3 uses
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
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !100 ; 5 uses
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
  %spec.select.i.i = select i1 %i.bf, i64 0, i64 %i.ax
  %spec.select46.i.i = select i1 %i.bf, i32 %i.bg, i32 %i.ab
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
  %.038.i.i = phi i64 [ %i.ax, %bb.l ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %spec.select.i.i, %bb.h ], [ %i.bl, %bb.k ], [ %i.ax, %bb.m ]
  %.037.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.be, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %i.ay, %bb.h ], [ 0, %bb.k ], [ 0, %bb.m ]
  %.0.i.i = phi i32 [ %i.ab, %bb.l ], [ %spec.store.select.i.i, %bb.g ], [ 0, %bb.e ], [ 11, %bb.i ], [ %spec.select46.i.i, %bb.h ], [ %spec.store.select1.i.i, %bb.k ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bp = sitofp i64 %.038.i.i to double
  store double %i.bp, ptr %3, align 8, !tbaa !85
  %i.bq = sitofp i64 %.037.i.i to double
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.i.i, ptr %i.bs, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit

bb.n:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit
  %i.bt = icmp sgt i32 %i.ad, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !49 ; 2 uses
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
  store ptr @.str.22, ptr %i.cb, align 16, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIPKc, ptr null) #20
  unreachable

bb.p:                                             ; preds = %.thread.i
  %i.cc = tail call i64 @lround(double noundef %i.by) #17
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cd = sext i32 %.pre.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.038.i.a = phi i64 [ %i.cc, %bb.p ], [ %i.cd, %bb.q ] ; 8 uses
  %i.ce = icmp eq i64 %.038.i.a, 0
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.23, ptr %i.cf, align 16, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cg = sitofp i64 %.038.i.a to double
  %i.ch = fdiv double 1.000000e+00, %i.cg
  %i.ci = insertelement <2 x double> poison, double %.sroa.8.0, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.cj, <double f0x3FDFFFFFFFFFFFFF, double f0x3FEBB67AE8584CAB>
  %i.cl = fneg double %.sroa.0.0
  %i.cm = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> <double f0x3FEBB67AE8584CAB, double f0x3FDFFFFFFFFFFFFF>, <2 x double> %i.ck) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = extractelement <2 x double> %i.co, i64 0
  %i.cs = extractelement <2 x double> %i.co, i64 1
  call fastcc void @_ZL7hexbin2dddPlS_(double noundef %i.ch, double noundef %i.cr, double noundef %i.cs, ptr noundef %i.cp, ptr noundef %i.cq)
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !100 ; 11 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  %i.cv = load i64, ptr %i.cq, align 8, !tbaa !102 ; 2 uses
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cw = add nuw nsw i64 %i.ct, 1
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = add i64 %i.cv, %i.cx
  %i.cz = sub i64 0, %i.cy
  br label %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i

bb.v:                                             ; preds = %bb.t
  %.nonneg.i.i = sub i64 0, %i.ct
  %.neg1314.i.i = lshr i64 %.nonneg.i.i, 1
  %i.da = sub i64 %.neg1314.i.i, %i.cv
  br label %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i

_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i:          ; preds = %bb.v, %bb.u
  %i.db = phi i64 [ %i.da, %bb.v ], [ %i.cz, %bb.u ] ; 3 uses
  %i.dc = add i64 %i.db, %i.ct                    ; 4 uses
  %i.dd = icmp slt i32 %i.ab, 6
  br i1 %i.dd, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i
  %i.de = icmp eq i64 %i.ct, 0
  %i.df = icmp eq i64 %.038.i.a, %i.dc            ; 2 uses
  %or.cond64.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond64.i, label %bb.ad, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  br i1 %i.df, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i
  %i.dg = add nsw i32 %i.ab, 1                    ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 6
  %spec.store.select.i = select i1 %i.dh, i32 1, i32 %i.dg
  %.neg.i = sub nsw i64 %.038.i.a, %i.ct
  br label %bb.ad

bb.y:                                             ; preds = %._crit_edge.i
  %i.di = icmp eq i64 %i.ct, %.038.i.a            ; 2 uses
  %i.dj = add nsw i32 %i.ab, 5
  %spec.select.i = select i1 %i.di, i64 0, i64 %i.ct
  %spec.select65.i = select i1 %i.di, i32 %i.dj, i32 %i.ab
  br label %bb.ad

bb.z:                                             ; preds = %_ZL7hex_isoPN12_GLOBAL__N_13hexE.exit.i
  %i.dk = icmp eq i64 %i.dc, 0
  %i.dl = icmp eq i64 %i.ct, %.038.i.a            ; 2 uses
  %or.cond.i = and i1 %i.dl, %i.dk
  br i1 %or.cond.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 11
  %spec.store.select1.i = select i1 %i.dn, i32 6, i32 %i.dm
  %i.do = add nsw i64 %i.db, %.038.i.a            ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dp = sub nsw i64 0, %.038.i.a
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
  store double %i.dt, ptr %3, align 8, !tbaa !85
  %i.du = sitofp i64 %.neg66.i to double
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.du, ptr %i.dv, align 8, !tbaa !87
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.039.i, ptr %i.dw, align 8, !tbaa !88
  br label %_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit

_ZL9isea_dddiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit: ; preds = %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, %bb.ad
  %.0.i = phi i32 [ %.0.i.i, %_ZL16isea_dddi_ap3oddPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i ], [ %.039.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0.i
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
  store ptr @.str.23, ptr %i.b, align 16, !tbaa !89
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
  store ptr @.str.22, ptr %i.ag, align 16, !tbaa !89
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
end_hunk_1
