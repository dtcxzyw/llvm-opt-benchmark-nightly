Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/isea?download=true
inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z33pj_projection_specific_setup_iseaP8PJconsts:bb.a
  store double %i.ep, ptr %i.eq, align 8, !tbaa !51
  %i.er = fmul double %i.ep, 5.000000e-01         ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store double %i.er, ptr %i.es, align 8, !tbaa !52
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.eu = fmul double %i.ep, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store double %i.eu, ptr %i.ev, align 8, !tbaa !53
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ex = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul <2 x double> %i.ey, <double -2.000000e+00, double -4.000000e+00>
  store <2 x double> %i.ez, ptr %i.ew, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.fb = fmul <2 x double> %i.ey, <double -5.000000e+00, double -7.000000e+00>
  store <2 x double> %i.fb, ptr %i.fa, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.fd = fmul double %i.er, -1.500000e+00
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store double %i.fd, ptr %i.fe, align 8, !tbaa !78
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.fg = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.er, i64 1
  %i.fi = fmul <2 x double> %i.fh, <double f0x3FFBB67AE8584CAA, double 3.000000e+00> ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  store double %i.fj, ptr %i.et, align 8, !tbaa !54
  %i.fk = fmul double %i.fj, 2.500000e+00
  store double %i.fk, ptr %i.fc, align 8, !tbaa !79
  %i.fl = fdiv <2 x double> splat (double 1.000000e+00), %i.fi
  store <2 x double> %i.fl, ptr %i.ff, align 8, !tbaa !38
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = load double, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !45 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !43
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
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !80

.lr.ph7.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i, %.lr.ph7.i.i.i.i
  %.16.i.i.i.i = phi double [ %i.aa, %.lr.ph7.i.i.i.i ], [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ]
  %i.aa = fadd double %.16.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ab = fcmp olt double %i.aa, f0xC00921FB54442D18
  br i1 %i.ab, label %.lr.ph7.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !81

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
  br i1 %i.aw, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !82

.lr.ph8.i.i.i:                                    ; preds = %.preheader.i.i.i, %.lr.ph8.i.i.i
  %.sroa.2.17.i.i.i = phi double [ %i.ax, %.lr.ph8.i.i.i ], [ %.sroa.2.0.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.ax = fadd double %.sroa.2.17.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ay = fcmp olt double %i.ax, f0xC00921FB54442D18
  br i1 %i.ay, label %.lr.ph8.i.i.i, label %_ZL10isea_ctranPKN12_GLOBAL__N_18GeoPointES2_d.exit.i.i, !llvm.loop !83

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
  %i.bf = load double, ptr %i.be, align 8, !tbaa !57
  %i.bg = fsub double %.sroa.2.1.lcssa.i.i.i, %i.bf ; 2 uses
  %i.bh = tail call double @cos(double noundef %i.bg) #17
  %i.bi = fmul double %i.ba, %i.bh                ; 2 uses
  %i.bj = load double, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
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
  %switch.tableidx = add nsw i32 %i.cf, -5        ; 2 uses
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
  br i1 %i.cp, label %.lr.ph.i14.i.i, label %.preheader.i13.i.i, !llvm.loop !84

.lr.ph14.i.i.i:                                   ; preds = %.preheader.i13.i.i, %.lr.ph14.i.i.i
  %.113.i.i.i = phi i32 [ %i.cr, %.lr.ph14.i.i.i ], [ %.066.lcssa.i.i.i, %.preheader.i13.i.i ]
  %.212.i.i.i = phi double [ %i.cq, %.lr.ph14.i.i.i ], [ %.168.lcssa.i.i.i, %.preheader.i13.i.i ]
  %i.cq = fadd double %.212.i.i.i, f0xC000C152382D7366 ; 3 uses
  %i.cr = add nsw i32 %.113.i.i.i, 1              ; 2 uses
  %i.cs = fcmp ogt double %i.cq, f0x4000C152382D7366
  br i1 %i.cs, label %.lr.ph14.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !85

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
  br i1 %exitcond.not.i.i.i, label %bb.h, label %bb.e, !llvm.loop !86

bb.h:                                             ; preds = %_ZL10safeArcCosd.exit.thread.i.i.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !88
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
  store i32 %i.cf, ptr %i.en, align 4, !tbaa !89
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !46 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i
  %7 = udiv i32 %i.cf, 5
  %i.er = and i32 %7, 1
  %i.es = icmp eq i32 %i.er, 0                    ; 2 uses
  %i.et = fneg double %i.ej
  %i.eu = fneg double %i.el
  %i.ev = select i1 %i.es, double %i.el, double %i.eu
  %i.ew = select i1 %i.es, double %i.ej, double %i.et
  %8 = urem i32 %i.cf, 20                         ; 2 uses
  %.lhs.trunc5.i.i.i = trunc nuw nsw i32 %8 to i8 ; 2 uses
  %i.ex = udiv i8 %.lhs.trunc5.i.i.i, 5
  %i.ey = zext nneg i8 %i.ex to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL14isea_s_forward5PJ_LPP8PJconsts, i64 %i.ey
  %switch.load = load double, ptr %switch.gep, align 8
  %9 = icmp samesign ugt i32 %8, 9
  %i.ez = urem i8 %.lhs.trunc5.i.i.i, 5
  %narrow.i.i.i = add nsw i8 %i.ez, -2
  %i.fa = sitofp i8 %narrow.i.i.i to double
  %i.fb = fmul nnan double %i.fa, f0x3FE52BB3566A484C
  %i.fc = fmul nnan double %i.fb, 2.000000e+00    ; 2 uses
  %i.fd = fadd nnan double %i.fc, f0x3FE52BB3566A484C
  %.sroa.0.0.i.i.i = select i1 %9, double %i.fd, double %i.fc
  %i.fe = fmul nnan double %.sroa.0.0.i.i.i, f0x3FED21DC1E9D1240
  %i.ff = fadd double %i.fe, %i.ew
  store double %i.ff, ptr %5, align 16, !tbaa !62
  %i.fg = fadd double %i.ev, %switch.load
  store double %i.fg, ptr %i.em, align 8, !tbaa !63
  br label %bb.m

bb.i:                                             ; preds = %_ZL14isea_transformPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointEPNS_7isea_ptE.exit.i
  %i.fh = fmul double %i.ej, f0x3FEA90A6031F46A3
  %i.fi = fmul double %i.el, f0x3FEA90A6031F46A3
  %i.fj = fadd double %i.fh, 5.000000e-01         ; 3 uses
  store double %i.fj, ptr %5, align 16, !tbaa !62
  %i.fk = fadd double %i.fi, f0x3FD279A74590331C  ; 2 uses
  store double %i.fk, ptr %i.em, align 8, !tbaa !63
  switch i32 %i.ep, label %bb.m [
    i32 3, label %bb.k
    i32 2, label %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i
    i32 1, label %bb.j
  ]

_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i:   ; preds = %bb.i
  %10 = udiv i32 %i.cf, 5
  %11 = urem i32 %i.cf, 5
  %i.fl = and i32 %10, 1
  %i.fm = icmp eq i32 %i.fl, 0                    ; 2 uses
  %i.fn = select i1 %i.fm, double f0xBFF0C152382D7365, double f0xC010C152382D7365 ; 3 uses
  %i.fo = tail call double @cos(double noundef %i.fn) #17
  %i.fp = tail call double @sin(double noundef %i.fn) #17 ; 2 uses
  %i.fq = fneg double %i.fj
  %i.fr = tail call double @cos(double noundef %i.fn) #17
  %i.fs = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fr, i64 1
  %i.fw = fmul <2 x double> %i.ft, %i.fv
  %i.fx = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fq, i64 1
  %i.fz = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fp, i64 1
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.ga, <2 x double> %i.fw) ; 2 uses
  %i.gc = fadd <2 x double> %i.gb, <double 5.000000e-01, double f0x3FEBB67AE8584CAA>
  %storemerge = select i1 %i.fm, <2 x double> %i.gb, <2 x double> %i.gc
  store <2 x double> %storemerge, ptr %5, align 16, !tbaa !38
  %12 = udiv i32 %i.cf, 10
  %i.gd = mul nuw nsw i32 %12, 5
  %i.ge = add nuw nsw i32 %11, 1
  %i.gf = add nuw nsw i32 %i.ge, %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !64
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.gh = invoke fastcc noundef i32 @_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_(ptr noundef nonnull %i.b, i32 noundef %i.cf, ptr noundef %5, ptr noundef %4)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !64
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.gj = invoke fastcc noundef i32 @_ZL9isea_ptdiPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_(ptr noundef nonnull %i.b, i32 noundef %i.cf, ptr noundef nonnull readonly %5, ptr noundef %3)
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %bb.k
  %i.gk = load double, ptr %3, align 8, !tbaa !62 ; 3 uses
  %i.gl = fcmp olt double %i.gk, f0xC1A0000000000000
  %i.gm = fcmp ogt double %i.gk, f0x419FFFFFFC000000
  %or.cond.i.i = or i1 %i.gl, %i.gm
  br i1 %or.cond.i.i, label %bb.l, label %_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i

bb.l:                                             ; preds = %.noexc16
  %i.gn = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.24, ptr %i.gn, align 16, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIPKc, ptr null) #20
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %bb.l
  unreachable

_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i: ; preds = %.noexc16
  %i.go = fptosi double %i.gk to i32
  %i.gp = shl nsw i32 %i.go, 4
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = sitofp i32 %i.gq to double
  store double %i.gr, ptr %4, align 16, !tbaa !62
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.gt, ptr %i.gu, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

bb.m:                                             ; preds = %_ZL9isea_ptddiPN12_GLOBAL__N_17isea_ptE.exit.i, %bb.i, %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !90
  br label %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit

_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit: ; preds = %.noexc, %_ZL8isea_hexPN12_GLOBAL__N_112pj_isea_dataEiPNS_7isea_ptES3_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.gv = load <2 x double>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.u

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.gw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc                      ; 3 uses
  %i.gx = extractvalue { ptr, i32 } %i.gw, 1
  %i.gy = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #17
  %i.gz = icmp eq i32 %i.gx, %i.gy
  br i1 %i.gz, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ha = extractvalue { ptr, i32 } %i.gw, 0
  %i.hb = tail call ptr @__cxa_begin_catch(ptr %i.ha) #17 ; 0 uses
  %i.hc = invoke i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.hd = load <2 x double>, ptr %6, align 16, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @__cxa_end_catch() #17
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.hf, %bb.s ], [ %i.he, %bb.r ]
  call void @__cxa_end_catch() #17
  br label %bb.v

bb.u:                                             ; preds = %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit, %bb.q
  %i.hg = phi <2 x double> [ %i.hd, %bb.q ], [ %i.gv, %_ZL12isea_forwardPN12_GLOBAL__N_112pj_isea_dataEPNS_8GeoPointE.exit ] ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %.pn18 = insertvalue { double, double } poison, double %i.hh, 0
  %i.hi = extractelement <2 x double> %i.hg, i64 1
  %.fca.1.insert.merged = insertvalue { double, double } %.pn18, double %i.hi, 1
  ret { double, double } %.fca.1.insert.merged

bb.v:                                             ; preds = %bb.t, %bb.n
  %.merged = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.gw, %bb.n ]
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
end_hunk_0
