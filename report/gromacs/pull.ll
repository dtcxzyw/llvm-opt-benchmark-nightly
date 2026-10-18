Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull?download=true
inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_Z14pull_calc_comsRKN3gmx7MpiCommEP6pull_tNS_8ArrayRefIKfEERK5t_pbcdNS5_IKNS_11BasicVectorIfEEEENS5_ISC_EE

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, double noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  switch i32 %i.b, label %_ZL17make_periodic_2piPd.exit [
    i32 0, label %bb.b
    i32 5, label %bb.f
    i32 7, label %bb.f
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %_ZL17make_periodic_2piPd.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !176
  %i.f = add nsw i32 %i.e, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 661, ptr noundef nonnull @.str.31, i32 noundef %i.f, double noundef %1) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp ogt double %1, f0x400921FB54442D18
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.g, label %_ZL17make_periodic_2piPd.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !176
  %i.l = add nsw i32 %i.k, 1
  %i.m = load i32, ptr %i.a, align 8, !tbaa !80
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZL14sc_isAngleType, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81, !range !82, !noundef !83
  %i.q = trunc nuw i8 %i.p to i1
  %..i = select i1 %i.q, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  %i.r = fmul double %1, %..i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 671, ptr noundef nonnull @.str.32, i32 noundef %i.l, double noundef %i.r) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.t = fcmp ult double %1, f0x400921FB54442D18
  br i1 %i.t, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.u = fcmp olt double %1, f0xC00921FB54442D18
  br i1 %i.u, label %.sink.split.i, label %_ZL17make_periodic_2piPd.exit

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink4.i = phi double [ f0xC01921FB54442D18, %bb.j ], [ f0x401921FB54442D18, %bb.k ]
  %i.v = fadd double %1, %.sink4.i
  br label %_ZL17make_periodic_2piPd.exit

_ZL17make_periodic_2piPd.exit:                    ; preds = %.sink.split.i, %bb.k, %bb.a, %bb.f, %bb.b
  %.0 = phi double [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.f ], [ %i.v, %.sink.split.i ], [ %1, %bb.k ]
  ret double %.0

bb.l:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z17pull_apply_forcesP6pull_tN3gmx8ArrayRefIKfEERKNS1_7MpiCommEPNS1_15ForceWithVirialE(ptr nofree noundef readonly captures(none) %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %5 = alloca %"class.gmx::ArrayRef.88", align 8  ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %6 = alloca %"class.gmx::ArrayRef.112", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [3 x double], align 16            ; 6 uses
  %7 = alloca %struct.PullCoordVectorForces, align 16 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.k = load i8, ptr %i.j, align 1, !tbaa !160, !range !82, !noundef !83
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !321, !range !82, !noundef !83
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !172
  %i.r = icmp eq i32 %i.q, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !157
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ab = udiv exact i64 %i.z, 488
  %.038 = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.048.us = phi i64 [ %.0.us, %bb.h ], [ %.038, %.lr.ph ] ; 3 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !88  ; 3 uses
  %i.av = getelementptr inbounds nuw [488 x i8], ptr %i.au, i64 %.048.us ; 4 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !109
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !107
  %i.ba = icmp eq i32 %i.az, 8
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 172
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !108
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [488 x i8], ptr %i.au, i64 %i.bd
  tail call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.av, ptr nonnull %i.au, ptr %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph.split.us
  %.0.us = add nsw i64 %.048.us, -1
  %i.bf = icmp sgt i64 %.048.us, 0
  br i1 %i.bf, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !316

._crit_edge:                                      ; preds = %bb.af, %bb.h, %bb.e
  %.sroa.43.0.lcssa = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.h ], [ %.sroa.43.2, %bb.af ]
  %i.bg = phi <8 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.h ], [ %i.py, %bb.af ]
  br i1 %i.s, label %bb.ag, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.af
  %.048 = phi i64 [ %.0, %bb.af ], [ %.038, %.lr.ph ] ; 3 uses
  %.sroa.43.041 = phi float [ %.sroa.43.2, %bb.af ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.bh = phi <8 x float> [ %i.py, %bb.af ], [ zeroinitializer, %.lr.ph ] ; 5 uses
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !88  ; 3 uses
  %i.bj = getelementptr inbounds nuw [488 x i8], ptr %i.bi, i64 %.048 ; 60 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !109
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.af, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !107
  %i.bo = icmp eq i32 %i.bn, 8
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 172
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !108
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [488 x i8], ptr %i.bi, i64 %i.br
  call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.bj, ptr nonnull %i.bi, ptr %i.bs)
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 6 uses
  %i.bu = load i32, ptr %i.bm, align 8, !tbaa !80, !noalias !322
  switch i32 %i.bu, label %.preheader.i [
    i32 0, label %.loopexit.loopexit126.i
    i32 5, label %bb.l
    i32 7, label %bb.o
    i32 6, label %bb.r
  ]

.preheader.i:                                     ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !154, !noalias !322
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %i.by = load <3 x double>, ptr %i.bx, align 8, !tbaa !85, !noalias !322
  %i.bz = insertelement <3 x double> poison, double %i.bw, i64 0
  %i.ca = shufflevector <3 x double> %i.bz, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cb = fmul <3 x double> %i.ca, %i.by          ; 3 uses
  %i.cc = shufflevector <3 x double> %i.cb, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.cc, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.cd = extractelement <3 x double> %i.cb, i64 2
  store double %i.cd, ptr %i.ad, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

.loopexit.loopexit126.i:                          ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !117, !noalias !322 ; 2 uses
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00
  %i.ch = fdiv nnan double 1.000000e+00, %i.cf
  %spec.select.i = select i1 %i.cg, double %i.ch, double 0.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !154, !noalias !322
  %i.ck = load <3 x double>, ptr %i.bt, align 8, !tbaa !85, !noalias !322
  %i.cl = insertelement <3 x double> poison, double %i.cj, i64 0
  %i.cm = shufflevector <3 x double> %i.cl, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cn = fmul <3 x double> %i.cm, %i.ck
  %i.co = insertelement <3 x double> poison, double %spec.select.i, i64 0
  %i.cp = shufflevector <3 x double> %i.co, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cq = fmul <3 x double> %i.cp, %i.cn          ; 3 uses
  %i.cr = shufflevector <3 x double> %i.cq, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.cr, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.cs = extractelement <3 x double> %i.cq, i64 2
  store double %i.cs, ptr %i.ad, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !117, !noalias !322
  %i.cv = call double @cos(double noundef %i.cu) #20, !noalias !322 ; 4 uses
  %i.cw = fmul double %i.cv, %i.cv                ; 2 uses
  %i.cx = fcmp olt double %i.cw, 1.000000e+00
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = fsub double 1.000000e+00, %i.cw
  %i.cz = call double @sqrt(double noundef %i.cy) #20, !noalias !322
  %8 = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %9 = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %10 = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %11 = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %12 = load <3 x double>, ptr %i.bt, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.db = load double, ptr %8, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %13 = fmul double %i.db, %i.db
  %14 = extractelement <3 x double> %12, i64 0    ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  %16 = extractelement <3 x double> %12, i64 2    ; 2 uses
  %17 = call noundef double @llvm.fmuladd.f64(double %16, double %16, double %15)
  %18 = call noundef double @sqrt(double noundef %17) #20, !noalias !322
  %19 = load double, ptr %10, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.dc = insertelement <2 x double> poison, double %18, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cz, i64 1
  %i.de = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.dd ; 5 uses
  %i.df = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.dg = load <2 x double>, ptr %i.da, align 8, !tbaa !85, !noalias !322 ; 2 uses
  %i.dh = load double, ptr %9, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.di = fmul double %i.dh, %i.dh
  %i.dj = extractelement <2 x double> %i.dg, i64 0 ; 2 uses
  %i.dk = call double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.di)
  %i.dl = call noundef double @llvm.fmuladd.f64(double %19, double %19, double %i.dk)
  %i.dm = call noundef double @sqrt(double noundef %i.dl) #20, !noalias !322
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %i.do = extractelement <2 x double> %i.de, i64 0
  %20 = shufflevector <2 x double> %i.de, <2 x double> poison, <3 x i32> zeroinitializer
  %21 = fmul <3 x double> %12, %20                ; 3 uses
  %i.dp = fmul double %i.db, %i.do
  %i.dq = shufflevector <2 x double> %i.dg, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dr = insertelement <3 x double> %i.dq, double %19, i64 2
  %i.ds = insertelement <3 x double> poison, double %i.dn, i64 0
  %i.dt = shufflevector <3 x double> %i.ds, <3 x double> poison, <3 x i32> zeroinitializer
  %i.du = fmul <3 x double> %i.dr, %i.dt          ; 3 uses
  %i.dv = load double, ptr %11, align 8, !tbaa !154, !noalias !322 ; 2 uses
  %i.dw = fmul double %i.cv, %i.df                ; 3 uses
  %i.dx = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.cv, i64 1
  %i.dz = fmul <2 x double> %i.de, %i.dy          ; 2 uses
  %i.ea = fmul double %i.dn, %i.dv                ; 3 uses
  %22 = fneg <3 x double> %21
  %i.eb = shufflevector <2 x double> %i.dz, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ec = fmul <3 x double> %i.eb, %22
  %i.ed = shufflevector <2 x double> %i.de, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ee = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ed, <3 x double> %i.du, <3 x double> %i.ec)
  %i.ef = shufflevector <2 x double> %i.dz, <2 x double> poison, <3 x i32> zeroinitializer
  %i.eg = fmul <3 x double> %i.ef, %i.ee          ; 3 uses
  %i.eh = extractelement <3 x double> %i.du, i64 0
  %i.ei = fneg double %i.eh
  %i.ej = fmul double %i.dw, %i.ei
  %i.ek = extractelement <3 x double> %21, i64 0
  %i.el = call double @llvm.fmuladd.f64(double %i.df, double %i.ek, double %i.ej)
  %i.em = fmul double %i.ea, %i.el
  store double %i.em, ptr %i.ah, align 8, !tbaa !85, !alias.scope !322
  %i.en = shufflevector <3 x double> %i.eg, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.en, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.eo = fneg double %i.dn
  %i.ep = fmul double %i.dh, %i.eo
  %i.eq = fmul double %i.dw, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.df, double %i.dp, double %i.eq)
  %i.es = fmul double %i.ea, %i.er
  store double %i.es, ptr %i.ai, align 16, !tbaa !85, !alias.scope !322
  %i.et = extractelement <3 x double> %i.eg, i64 2
  store double %i.et, ptr %i.ad, align 16, !tbaa !85, !alias.scope !322
  %i.eu = extractelement <3 x double> %i.du, i64 2
  %i.ev = fneg double %i.eu
  %i.ew = fmul double %i.dw, %i.ev
  %23 = extractelement <3 x double> %21, i64 2
  %i.ex = call double @llvm.fmuladd.f64(double %i.df, double %23, double %i.ew)
  %i.ey = fmul double %i.ea, %i.ex
  store double %i.ey, ptr %i.aj, align 8, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.o:                                             ; preds = %bb.k
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !117, !noalias !322
  %i.fb = call double @cos(double noundef %i.fa) #20, !noalias !322 ; 3 uses
  %i.fc = fmul double %i.fb, %i.fb                ; 2 uses
  %i.fd = fcmp olt double %i.fc, 1.000000e+00
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.ff = fsub double 1.000000e+00, %i.fc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %24 = load <3 x double>, ptr %i.bt, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %25 = load double, ptr %i.fe, align 8, !tbaa !85, !noalias !322 ; 2 uses
  %26 = fmul double %25, %25
  %i.fi = extractelement <3 x double> %24, i64 0  ; 2 uses
  %i.fj = call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %26)
  %27 = extractelement <3 x double> %24, i64 2    ; 2 uses
  %i.fk = call noundef double @llvm.fmuladd.f64(double %27, double %27, double %i.fj)
  %i.fl = call noundef double @sqrt(double noundef %i.fk) #20, !noalias !322
  %i.fm = call double @sqrt(double noundef %i.ff) #20, !noalias !322
  %i.fn = load double, ptr %i.fg, align 8, !tbaa !154, !noalias !322
  %i.fo = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fm, i64 1
  %i.fq = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.fp ; 3 uses
  %i.fr = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fb, i64 1
  %i.ft = fmul <2 x double> %i.fq, %i.fs          ; 2 uses
  %i.fu = extractelement <2 x double> %i.fq, i64 0
  %i.fv = fneg double %i.fu
  %i.fw = load <3 x double>, ptr %i.fh, align 8, !tbaa !85, !noalias !322
  %28 = insertelement <3 x double> poison, double %i.fv, i64 0
  %29 = shufflevector <3 x double> %28, <3 x double> poison, <3 x i32> zeroinitializer
  %i.fx = fmul <3 x double> %24, %29
  %i.fy = shufflevector <2 x double> %i.ft, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fz = fmul <3 x double> %i.fx, %i.fy
  %i.ga = shufflevector <2 x double> %i.fq, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gb = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ga, <3 x double> %i.fw, <3 x double> %i.fz)
  %i.gc = shufflevector <2 x double> %i.ft, <2 x double> poison, <3 x i32> zeroinitializer
  %i.gd = fmul <3 x double> %i.gc, %i.gb          ; 3 uses
  %i.ge = shufflevector <3 x double> %i.gd, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.ge, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.gf = extractelement <3 x double> %i.gd, i64 2
  store double %i.gf, ptr %i.ad, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.r:                                             ; preds = %bb.k
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bj, i64 328
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  %i.gi = load <3 x double>, ptr %i.gg, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.gk = fmul double %i.gj, %i.gj
  %i.gl = extractelement <3 x double> %i.gi, i64 0 ; 2 uses
  %i.gm = call double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.gk)
  %i.gn = extractelement <3 x double> %i.gi, i64 2 ; 2 uses
  %i.go = call noundef double @llvm.fmuladd.f64(double %i.gn, double %i.gn, double %i.gm) ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bj, i64 352
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bj, i64 360
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.gt = fmul double %i.gs, %i.gs
  %i.gu = call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bj, i64 368
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.gx = call noundef double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double %i.gu) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.he = fmul double %i.hb, %i.hb
  %i.hf = call double @llvm.fmuladd.f64(double %i.gz, double %i.gz, double %i.he)
  %i.hg = call double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hf) ; 3 uses
  %i.hh = fmul double %i.hg, f0x3E80000000000000  ; 2 uses
  %i.hi = fcmp ogt double %i.go, %i.hh
  %i.hj = fcmp ogt double %i.gx, %i.hh
  %or.cond.i = and i1 %i.hi, %i.hj
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hk = fneg double %i.hd                       ; 2 uses
  %i.hl = fneg double %i.gz                       ; 2 uses
  %i.hm = fneg double %i.hb                       ; 2 uses
  %i.hn = call double @sqrt(double noundef %i.hg) #20, !noalias !322
  %i.ho = fdiv double 1.000000e+00, %i.hn         ; 3 uses
  %i.hp = fmul double %i.ho, %i.ho                ; 2 uses
  %i.hq = fmul double %i.hg, %i.ho                ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !154, !noalias !322 ; 2 uses
  %i.ht = fneg double %i.hq
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = fdiv double %i.hu, %i.go                ; 2 uses
  %i.hw = insertelement <3 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <3 x double> %i.hw, <3 x double> poison, <3 x i32> zeroinitializer
  %i.hy = fmul <3 x double> %i.gi, %i.hx          ; 3 uses
  %i.hz = fmul double %i.gj, %i.hv                ; 2 uses
  %i.ia = extractelement <3 x double> %i.hy, i64 0 ; 2 uses
  store double %i.ia, ptr %7, align 16, !tbaa !85, !alias.scope !322
  store double %i.hz, ptr %i.ac, align 8, !tbaa !85, !alias.scope !322
  %i.ib = extractelement <3 x double> %i.hy, i64 2 ; 2 uses
  store double %i.ib, ptr %i.ad, align 16, !tbaa !85, !alias.scope !322
  %i.ic = fneg double %i.hs
  %i.id = fmul double %i.hq, %i.ic
  %i.ie = fdiv double %i.id, %i.gx                ; 3 uses
  %i.if = fmul double %i.gq, %i.ie                ; 2 uses
  store double %i.if, ptr %i.ae, align 16, !tbaa !85, !alias.scope !322
  %i.ig = fmul double %i.gs, %i.ie                ; 2 uses
  store double %i.ig, ptr %i.af, align 8, !tbaa !85, !alias.scope !322
  %i.ih = fmul double %i.gw, %i.ie                ; 2 uses
  store double %i.ih, ptr %i.ag, align 16, !tbaa !85, !alias.scope !322
  %i.ii = load double, ptr %i.bt, align 8, !tbaa !85, !noalias !322
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !85, !noalias !322
  %i.il = fmul double %i.ik, %i.hm
  %i.im = call double @llvm.fmuladd.f64(double %i.ii, double %i.hl, double %i.il)
  %i.in = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  %i.io = load double, ptr %i.in, align 8, !tbaa !85, !noalias !322
  %i.ip = call noundef double @llvm.fmuladd.f64(double %i.io, double %i.hk, double %i.im)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !85, !noalias !322
  %i.is = getelementptr inbounds nuw i8, ptr %i.bj, i64 248
  %i.it = load double, ptr %i.is, align 8, !tbaa !85, !noalias !322
  %i.iu = fmul double %i.it, %i.hm
  %i.iv = call double @llvm.fmuladd.f64(double %i.ir, double %i.hl, double %i.iu)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !85, !noalias !322
  %i.iy = call noundef double @llvm.fmuladd.f64(double %i.ix, double %i.hk, double %i.iv)
  %i.iz = fneg double %i.iy
  %i.ja = fmul double %i.hp, %i.iz                ; 3 uses
  %i.jb = fmul double %i.hp, %i.ip                ; 3 uses
  %i.jc = fmul double %i.ia, %i.jb
  %i.jd = fmul double %i.hz, %i.jb
  %i.je = fmul double %i.ib, %i.jb
  %i.jf = fmul double %i.if, %i.ja
  %i.jg = fmul double %i.ig, %i.ja
  %i.jh = fmul double %i.ih, %i.ja
  %i.ji = fsub double %i.jc, %i.jf
  %i.jj = fsub double %i.jd, %i.jg
  %i.jk = fsub double %i.je, %i.jh
  store double %i.ji, ptr %i.ah, align 8, !tbaa !85, !alias.scope !322
  store double %i.jj, ptr %i.ai, align 16, !tbaa !85, !alias.scope !322
  store double %i.jk, ptr %i.aj, align 8, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %7, i8 0, i64 72, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

_ZL21calculateVectorForcesRK17pull_coord_work_t.exit: ; preds = %.preheader.i, %.loopexit.loopexit126.i, %bb.m, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t
  %i.jl = phi <3 x double> [ %i.cb, %.preheader.i ], [ %i.cq, %.loopexit.loopexit126.i ], [ %i.eg, %bb.m ], [ zeroinitializer, %bb.n ], [ %i.gd, %bb.p ], [ zeroinitializer, %bb.q ], [ %i.hy, %bb.s ], [ zeroinitializer, %bb.t ]
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !107 ; 2 uses
  br i1 %i.s, label %bb.u, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.u:                                             ; preds = %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit
  %.not.i = icmp eq i32 %.pre, 3
  br i1 %.not.i, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread, label %bb.v

_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread: ; preds = %bb.u
  %i.jm = load ptr, ptr %i.ak, align 8, !tbaa !111
  %i.jn = load ptr, ptr %4, align 8, !tbaa !179
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.jo = fmul <3 x double> %i.jl, splat (double -5.000000e-01) ; 2 uses
  %i.jp = shufflevector <3 x double> %i.jo, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.jq = fpext <8 x float> %i.bh to <8 x double>
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  %i.js = load double, ptr %i.jr, align 8, !tbaa !85
  %i.jt = load <3 x double>, ptr %i.bt, align 8, !tbaa !85
  %i.ju = shufflevector <3 x double> %i.jt, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.jv = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.jp, <8 x double> %i.ju, <8 x double> %i.jq)
  %i.jw = fptrunc <8 x double> %i.jv to <8 x float> ; 2 uses
  %i.jx = fpext float %.sroa.43.041 to double
  %i.jy = extractelement <3 x double> %i.jo, i64 2
  %i.jz = call double @llvm.fmuladd.f64(double %i.jy, double %i.js, double %i.jx)
  %i.ka = fptrunc double %i.jz to float           ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !116 ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 3
  br i1 %i.kd, label %bb.w, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.w:                                             ; preds = %bb.v
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.kf = fpext <8 x float> %i.jw to <8 x double>
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !85
  %i.ki = load <3 x double>, ptr %i.ke, align 8, !tbaa !85
  %i.kj = shufflevector <3 x double> %i.ki, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.kk = load <3 x double>, ptr %i.ah, align 8, !tbaa !85
  %i.kl = fmul <3 x double> %i.kk, splat (double -5.000000e-01) ; 2 uses
  %i.km = shufflevector <3 x double> %i.kl, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.kn = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.km, <8 x double> %i.kj, <8 x double> %i.kf)
  %i.ko = fptrunc <8 x double> %i.kn to <8 x float> ; 2 uses
  %i.kp = fpext float %i.ka to double
  %i.kq = extractelement <3 x double> %i.kl, i64 2
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double %i.kh, double %i.kp)
  %i.ks = fptrunc double %i.kr to float           ; 2 uses
  %i.kt = icmp samesign ugt i32 %i.kc, 5
  br i1 %i.kt, label %bb.x, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.x:                                             ; preds = %bb.w
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.kv = fpext <8 x float> %i.ko to <8 x double>
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !85
  %i.ky = load <3 x double>, ptr %i.ku, align 8, !tbaa !85
  %i.kz = shufflevector <3 x double> %i.ky, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.la = load <3 x double>, ptr %i.ae, align 16, !tbaa !85
  %i.lb = fmul <3 x double> %i.la, splat (double -5.000000e-01) ; 2 uses
  %i.lc = shufflevector <3 x double> %i.lb, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ld = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.lc, <8 x double> %i.kz, <8 x double> %i.kv)
  %i.le = fptrunc <8 x double> %i.ld to <8 x float>
  %i.lf = fpext float %i.ks to double
  %i.lg = extractelement <3 x double> %i.lb, i64 2
  %i.lh = call double @llvm.fmuladd.f64(double %i.lg, double %i.kx, double %i.lf)
  %i.li = fptrunc double %i.lh to float
  br label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit: ; preds = %bb.x, %bb.w, %bb.v, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit
  %.sroa.43.1 = phi float [ %.sroa.43.041, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit ], [ %i.ka, %bb.v ], [ %i.li, %bb.x ], [ %i.ks, %bb.w ] ; 4 uses
  %i.lj = phi <8 x float> [ %i.bh, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit ], [ %i.jw, %bb.v ], [ %i.le, %bb.x ], [ %i.ko, %bb.w ] ; 4 uses
  %i.lk = load ptr, ptr %i.ak, align 8, !tbaa !111 ; 5 uses
  %i.ll = load ptr, ptr %4, align 8, !tbaa !179   ; 6 uses
  switch i32 %.pre, label %bb.ab [
    i32 2, label %bb.y
    i32 8, label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit
    i32 4, label %bb.aa
  ]

bb.y:                                             ; preds = %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
end_hunk_0
