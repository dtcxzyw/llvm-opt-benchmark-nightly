inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.da = load double, ptr %i.cz, align 8, !noalias !225 ; 2 uses
  %i.db = fmul double %i.v, %i.cy
  %i.dc = call double @llvm.fmuladd.f64(double %i.bg, double %i.cw, double %i.db)
  %i.dd = call double @llvm.fmuladd.f64(double %i.bh, double %i.da, double %i.dc)
  %i.de = fadd double %i.dd, 0.000000e+00
  %i.df = fadd double %.0150, %i.de               ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.bi, %i.dh
  %i.dj = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.dk, <2 x double> %i.di)
  %i.dm = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.dn, <2 x double> %i.dl) ; 3 uses
  %i.dp = fadd <2 x double> %i.do, zeroinitializer ; 4 uses
  %i.dq = fcmp olt <2 x double> %i.cv, %i.do
  %i.dr = select <2 x i1> %i.dq, <2 x double> %i.cv, <2 x double> %i.dp ; 2 uses
  %i.ds = fcmp olt <2 x double> %i.do, %i.cu
  %i.dt = select <2 x i1> %i.ds, <2 x double> %i.cu, <2 x double> %i.dp ; 2 uses
  %i.du = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.ct, %i.du
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.dp, ptr %i.ct, align 8
  %i.dv = load ptr, ptr %.phi.trans.insert, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store ptr %i.dw, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.dx = load ptr, ptr %1, align 8               ; 5 uses
  %i.dy = ptrtoint ptr %i.ct to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775792
  br i1 %i.eb, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ec = ashr exact i64 %i.ea, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %i.eg = select i1 %i.ee, i64 576460752303423487, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #25 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  store <2 x double> %i.dp, ptr %i.ej, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dx, %i.ct
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ei, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %i.dx, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !228
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, %i.ct
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ei, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.el, %.lr.ph.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ea) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ei, ptr %1, align 8
  store ptr %i.em, ptr %.phi.trans.insert, align 8
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.en, ptr %i.al, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.eo = phi ptr [ %i.dw, %bb.i ], [ %i.em, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ep, %i.be
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %.lr.ph158, %middle.block, %._crit_edge
  %i.eq = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 4 uses
  %i.er = fneg <2 x double> %i.bq
  %i.es = fneg double %.0.lcssa
  %i.et = fdiv double %i.es, %i.bv                ; 4 uses
  %i.eu = extractelement <2 x double> %i.eq, i64 0
  %i.ev = call double @llvm.fmuladd.f64(double %i.eu, double 0.000000e+00, double 0.000000e+00)
  %i.ew = extractelement <2 x double> %i.eq, i64 1
  %i.ex = fmul double %i.ew, 0.000000e+00
  %i.ey = fmul <2 x double> %i.eq, %i.er          ; 2 uses
  %i.ez = shufflevector <2 x double> %i.eq, <2 x double> poison, <6 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fa = shufflevector <6 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison, double poison, double poison>, <6 x double> %i.ez, <6 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11>
  %i.fb = fmul <6 x double> %i.s, %i.fa           ; 4 uses
  %i.fc = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ex, i64 1
  %i.fe = fadd <2 x double> %i.fd, zeroinitializer
  %i.ff = fadd <2 x double> %i.ey, %i.fe
  %i.fg = shufflevector <2 x double> %i.ey, <2 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <6 x double> %i.u, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fi = shufflevector <6 x double> %i.p, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fj = shufflevector <6 x double> %i.ez, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.fk = shufflevector <6 x double> %i.fb, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fl = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fi, <8 x double> %i.fj, <8 x double> %i.fk)
  %i.fm = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fh, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fl)
  %i.fn = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fg, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fm)
  %i.fo = shufflevector <2 x double> %i.ff, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = extractelement <3 x double> %i.o, i64 0
  %i.fq = extractelement <6 x double> %i.fb, i64 0
  %i.fr = call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %i.fq) ; 2 uses
  %i.fs = extractelement <3 x double> %i.t, i64 0 ; 2 uses
  %i.ft = fadd double %i.fr, %i.fs
  %i.fu = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.ft)
  %i.fv = extractelement <6 x double> %i.fb, i64 1
  %i.fw = call double @llvm.fmuladd.f64(double %i.q, double 0.000000e+00, double %i.fv) ; 2 uses
  %i.fx = fadd double %i.fw, %i.v
  %i.fy = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.fx)
  %i.fz = extractelement <3 x double> %i.o, i64 2
  %i.ga = extractelement <6 x double> %i.fb, i64 2
  %i.gb = call double @llvm.fmuladd.f64(double %i.fz, double 0.000000e+00, double %i.ga) ; 2 uses
  %i.gc = extractelement <3 x double> %i.t, i64 2 ; 2 uses
  %i.gd = fadd double %i.gb, %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.gd)
  %i.gf = call double @llvm.fmuladd.f64(double %i.fs, double 0.000000e+00, double %i.fr)
  %i.gg = call double @llvm.fmuladd.f64(double %i.v, double 0.000000e+00, double %i.fw)
  %i.gh = fadd double %i.gg, 0.000000e+00
  %i.gi = call double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double %i.gb)
  %i.gj = fadd double %i.gi, 0.000000e+00
  %i.gk = shufflevector <8 x double> %i.fn, <8 x double> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 3, i32 4, i32 5, i32 9>
  store <8 x double> %i.gk, ptr %0, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.fu, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.fy, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ge, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = insertelement <2 x double> poison, double %i.et, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gf, i64 1
  %i.gn = fadd <2 x double> %i.gm, zeroinitializer
  store <2 x double> %i.gn, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.gh, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.gj, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader217, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.gv, %.lr.ph158 ], [ %.sroa.078.0156.ph, %.lr.ph158.preheader217 ] ; 3 uses
  %i.go = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.gp = fsub <2 x double> %i.go, %i.bq
  %i.gq = fdiv <2 x double> %i.gp, %i.bw          ; 2 uses
  %i.gr = fcmp olt <2 x double> %i.gq, zeroinitializer
  %i.gs = select <2 x i1> %i.gr, <2 x double> zeroinitializer, <2 x double> %i.gq ; 2 uses
  %i.gt = fcmp ogt <2 x double> %i.gs, splat (double 1.000000e+00)
  %i.gu = select <2 x i1> %i.gt, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gs
  store <2 x double> %i.gu, ptr %.sroa.078.0156, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.gv, %i.bl
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !232

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 17 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 21 uses
  %.sroa.0419 = alloca ptr, align 8               ; 10 uses
  %.sroa.11424 = alloca ptr, align 8              ; 9 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 11 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 19 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %..sroa.gep412 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %..sroa.gep418 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !143, !noundef !144
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.cz

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0419, align 8
  store ptr null, ptr %.sroa.11424, align 8
  store ptr null, ptr %.sroa.18, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not456651 = icmp eq ptr %i.i, %i.k
  br i1 %.not456651, label %.loopexit482, label %.lr.ph654

.lr.ph654:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cy

bb.f:                                             ; preds = %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

bb.g:                                             ; preds = %.lr.ph654, %bb.ce
  %.0653 = phi i1 [ undef, %.lr.ph654 ], [ %.8, %bb.ce ] ; 6 uses
  %.sroa.0406.0652 = phi ptr [ %i.i, %.lr.ph654 ], [ %i.sv, %bb.ce ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 8
  %.sroa.0385.0.copyload = load double, ptr %i.ab, align 8 ; 3 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 16
  %.sroa.10390.0.copyload = load double, ptr %.sroa.10390.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 24
  %.sroa.15396.0.copyload = load double, ptr %.sroa.15396.0..sroa_idx, align 8 ; 3 uses
  %i.ac = fmul double %.sroa.10390.0.copyload, %.sroa.10390.0.copyload
  %i.ad = call double @llvm.fmuladd.f64(double %.sroa.0385.0.copyload, double %.sroa.0385.0.copyload, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0.copyload, double %.sroa.15396.0.copyload, double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-10
  br i1 %i.af, label %_ZN10aiVector3tIdEdVEd.exit.i180, label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.g
  %sqrt.i.i181 = call noundef double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i181  ; 3 uses
  %i.ah = fmul double %.sroa.0385.0.copyload, %i.ag
  %i.ai = fmul double %.sroa.10390.0.copyload, %i.ag
  %i.aj = fmul double %.sroa.15396.0.copyload, %i.ag
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdE9NormalizeEv.exit182:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180
  %.sroa.0385.0 = phi double [ %i.ah, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10390.0 = phi double [ %i.ai, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15396.0 = phi double [ %i.aj, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not457 = icmp eq ptr %i.an, null
  br i1 %.not457, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %i.ao = fmul double %.sroa.10390.0, %.sroa.10390.0
  %i.ap = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %.sroa.0385.0, double %i.ao)
  %i.aq = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %.sroa.15396.0, double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = load double, ptr %7, align 8
  %i.at = load double, ptr %i.l, align 8
  %i.au = fmul double %.sroa.10390.0, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %i.as, double %i.au)
  %i.aw = load double, ptr %i.m, align 8
  %i.ax = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, 9.000000e-01
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.0144 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 2 uses
  %.0143 = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %.0143, align 8           ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %.noexc183, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, 384307168202282325
  br i1 %i.bh, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, !prof !233

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp468

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #25
          to label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge unwind label %.loopexit467

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge: ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %.0143, align 8
  %.pre749 = load ptr, ptr %i.ba, align 8
  br label %.noexc183

.noexc183:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge, %bb.k
  %i.bj = phi ptr [ %i.bb, %bb.k ], [ %.pre749, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bk = phi ptr [ %i.bc, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bl = phi ptr [ null, %bb.k ], [ %i.bi, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc183, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.noexc183 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc183 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.bj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !234

_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.noexc183
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bl, %.noexc183 ], [ %i.bn, %.lr.ph.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0143, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0143, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i184, label %.noexc187, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  %i.bv = icmp ugt i64 %i.bu, 9223372036854775804
  br i1 %i.bv, label %.noexc.i.i185, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !233

.noexc.i.i185:                                    ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc186 unwind label %.loopexit.split-lp473

.noexc186:                                        ; preds = %.noexc.i.i185
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.m
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #25
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge unwind label %.loopexit472

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %.pre750 = load ptr, ptr %i.bo, align 8         ; 3 uses
  %.pre751 = load ptr, ptr %i.bp, align 8         ; 2 uses
  %.pre763 = ptrtoint ptr %.pre751 to i64
  %.pre764 = ptrtoint ptr %.pre750 to i64
  %i.bx = icmp eq ptr %.pre751, %.pre750
  br label %.noexc187

.noexc187:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  %.pre-phi765 = phi i64 [ %.pre764, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.bt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %.pre-phi = phi i64 [ %.pre763, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.bs, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %.not660 = phi i1 [ %i.bx, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ true, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %i.by = phi ptr [ %.pre750, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.br, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.bw, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ null, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ] ; 8 uses
  %i.ca = sub i64 %.pre-phi, %.pre-phi765         ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 4
  br i1 %i.cb, label %bb.n, label %bb.o, !prof !118

bb.n:                                             ; preds = %.noexc187
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.by, i64 %i.ca, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc187
  %i.cc = icmp eq i64 %i.ca, 4
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.by, align 4
  store i32 %i.cd, ptr %i.bz, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ce = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.bl to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24
  %i.ci = icmp ult i64 %i.ch, 3
  br i1 %i.ci, label %bb.cb, label %bb.r

.loopexit467:                                     ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit469 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.loopexit.split-lp468:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp470 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.loopexit472:                                     ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit474 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

.loopexit.split-lp473:                            ; preds = %.noexc.i.i185
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  %.not.not.i = icmp eq ptr %i.hh, %..val179
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.z
  %.sroa.06.011.i = phi ptr [ %i.hh, %bb.z ], [ %..val, %.lr.ph.i.preheader ] ; 3 uses
  %i.hi = load double, ptr %.sroa.06.011.i, align 8
  %i.hj = fsub double %i.hi, %i.hf                ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 8
  %i.hl = load double, ptr %i.hk, align 8
  %i.hm = fsub double %i.hl, %i.hg                ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = call noundef double @llvm.fmuladd.f64(double %i.hj, double %i.hj, double %i.hn)
  %i.hp = fcmp olt double %i.ho, f0x3EE4F8B580000000
  br i1 %i.hp, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, label %bb.z

.loopexit:                                        ; preds = %bb.z, %bb.y
  %i.hq = load ptr, ptr %..sroa.phi416, align 8
  %.not.i = icmp eq ptr %..val179, %i.hq
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  store <2 x double> %i.gs, ptr %..val179, align 8
  %i.hr = load ptr, ptr %..sroa.phi, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store ptr %i.hs, ptr %..sroa.phi, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

bb.ab:                                            ; preds = %.loopexit
  %i.ht = ptrtoint ptr %..val179 to i64
  %i.hu = ptrtoint ptr %..val to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 4 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775792
  br i1 %i.hw, label %bb.ac, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc210 unwind label %.loopexit.split-lp463

.noexc210:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.hx = ashr exact i64 %i.hv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 576460752303423487)
  %i.ib = select i1 %i.hz, i64 576460752303423487, i64 %i.ia ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ic = shl nuw nsw i64 %i.ib, 4
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #25
          to label %.noexc211 unwind label %.loopexit462 ; 5 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hv
  store <2 x double> %i.gs, ptr %i.ie, align 8
  br i1 %.not10.not.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i207

.lr.ph.i.i.i.i.i207:                              ; preds = %.noexc211, %.lr.ph.i.i.i.i.i207
  %.012.i.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i207 ], [ %i.id, %.noexc211 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i207 ], [ %..val, %.noexc211 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !244
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i208 = icmp eq ptr %i.if, %..val179
  br i1 %.not.i.i.i.i.i208, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i207, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i207, %.noexc211
  %.0.lcssa.i.i.i.i.i209 = phi ptr [ %i.id, %.noexc211 ], [ %i.ig, %.lr.ph.i.i.i.i.i207 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209, i64 16
  %.not.i23.i.i = icmp eq ptr %..val, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %..val, i64 noundef %i.hv) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.id, ptr %., align 8
  store ptr %i.ih, ptr %..sroa.phi, align 8
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.ii, ptr %..sroa.phi416, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

.loopexit462:                                     ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit464 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp463:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp465 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa
  %i.ij = add nuw i32 %.0153606, 1                ; 2 uses
  %i.ik = add i64 %.3149607, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ij, %i.fo
  br i1 %exitcond.not, label %.loopexit461, label %.lr.ph, !llvm.loop !248

.loopexit461:                                     ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, %bb.v, %bb.u
  %.2440 = phi double [ %.0438626, %bb.u ], [ %.0438626, %bb.v ], [ %.sroa.speculated, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %.2437 = phi double [ %.0435627, %bb.u ], [ %.0435627, %bb.v ], [ %.sroa.speculated327, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %.4150 = phi i64 [ %i.fm, %bb.u ], [ %.0146628, %bb.v ], [ %i.ik, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ]
  %i.il = phi <2 x double> [ %i.dh, %bb.u ], [ %i.dh, %bb.v ], [ %i.hb, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.im = phi <2 x double> [ %i.di, %bb.u ], [ %i.di, %bb.v ], [ %i.hc, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.in = phi <2 x double> [ %i.dj, %bb.u ], [ %i.dj, %bb.v ], [ %i.hd, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.io = phi <2 x double> [ %i.dk, %bb.u ], [ %i.dk, %bb.v ], [ %i.he, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.ip = add nuw i64 %.0145629, 1                ; 2 uses
  %exitcond748.not = icmp eq i64 %i.ip, %umax
  br i1 %exitcond748.not, label %._crit_edge.loopexit, label %bb.s, !llvm.loop !249

bb.ae:                                            ; preds = %._crit_edge
  br i1 %i.dg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = fsub <2 x double> %i.cy, %i.cw          ; 2 uses
  %i.ir = fsub <2 x double> %i.cx, %i.cv          ; 2 uses
  %i.is = shufflevector <2 x double> %i.iq, <2 x double> %i.ir, <2 x i32> <i32 1, i32 3>
  %i.it = shufflevector <2 x double> %i.iq, <2 x double> %i.ir, <2 x i32> <i32 0, i32 2>
  %i.iu = fmul <2 x double> %i.is, %i.it
  %i.iv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.iu) ; 2 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  %i.ix = extractelement <2 x double> %i.iv, i64 1
  %i.iy = fcmp ogt double %i.iw, %i.ix
  br i1 %i.iy, label %bb.ag, label %.thread849

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.iz = load ptr, ptr %..sroa.gep418, align 8
  store ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, ptr %12, align 8
  store ptr %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425, ptr %..sroa.gep412, align 8
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16. = load ptr, ptr %.sroa.18, align 8
  store ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16., ptr %..sroa.gep418, align 8
  store ptr %.pre755, ptr %.sroa.0419, align 8
  store ptr %.pre754, ptr %.sroa.11424, align 8
  store ptr %i.iz, ptr %.sroa.18, align 8
  br label %.thread849

bb.ah:                                            ; preds = %._crit_edge
  br i1 %i.dg, label %bb.cb, label %.thread849

.thread849:                                       ; preds = %bb.ag, %bb.af, %bb.ah
  %i.ja = phi ptr [ %.pre754, %bb.ah ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425, %bb.ag ], [ %.pre754, %bb.af ]
  %i.jb = phi ptr [ %.pre755, %bb.ah ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, %bb.ag ], [ %.pre755, %bb.af ]
  %.pre-phi771855 = phi i64 [ %i.df, %bb.ah ], [ %i.db, %bb.ag ], [ %i.df, %bb.af ]
  %i.jc = phi <2 x double> [ %i.cx, %bb.ah ], [ %i.cy, %bb.ag ], [ %i.cx, %bb.af ] ; 2 uses
  %i.jd = phi <2 x double> [ %i.cv, %bb.ah ], [ %i.cw, %bb.ag ], [ %i.cv, %bb.af ] ; 2 uses
  %.not = xor i1 %.0144, true
  %or.cond = and i1 %2, %.not
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread849
  %i.je = fsub double %.0438.lcssa, %.0435.lcssa
  %i.jf = call double @llvm.fabs.f64(double %i.je)
  %i.jg = fmul double %i.jf, 1.000000e-04         ; 2 uses
  %i.jh = fcmp ogt double %.0435.lcssa, %i.jg
  %i.ji = fadd double %.0438.lcssa, %i.jg
  %i.jj = fcmp olt double %i.ji, 0.000000e+00
  %or.cond177 = select i1 %i.jh, i1 true, i1 %i.jj
  br i1 %or.cond177, label %bb.cb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread849
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store <2 x double> %i.jd, ptr %13, align 16
  store <2 x double> %i.jc, ptr %i.r, align 16
  %i.jk = fsub <2 x double> %i.jc, %i.jd          ; 2 uses
  %shift = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.jk
  %i.jl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.jm = call double @llvm.fabs.f64(double %i.jl)
  %i.jn = fcmp olt double %i.jm, 1.000000e-10
  br i1 %i.jn, label %bb.ca, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.jo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %.noexc216 unwind label %bb.al ; 3 uses

.noexc216:                                        ; preds = %bb.ak
  store ptr %i.jo, ptr %14, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  store ptr %i.jp, ptr %i.t, align 8
  store ptr %.sroa.0406.0652, ptr %i.jo, align 8
  store ptr %i.jp, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.jq = icmp eq i64 %.pre-phi771855, 64
  %i.jr = zext i1 %i.jq to i8
  store i8 %i.jr, ptr %i.d, align 1
  %i.js = load ptr, ptr %11, align 8              ; 2 uses
  %i.jt = load ptr, ptr %i.u, align 8
  %.not458641 = icmp eq ptr %i.js, %i.jt
  br i1 %.not458641, label %.thread446, label %.lr.ph645

bb.al:                                            ; preds = %bb.ak
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250

.lr.ph645:                                        ; preds = %.noexc216, %.backedge
  %.1643 = phi i1 [ %.3855, %.backedge ], [ %.0653, %.noexc216 ] ; 5 uses
  %.sroa.0299.0642 = phi ptr [ %.sroa.0299.2851, %.backedge ], [ %i.js, %.noexc216 ] ; 13 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 24 ; 3 uses
  %i.jw = load double, ptr %i.jv, align 8
  %i.jx = load double, ptr %i.r, align 16
  %i.jy = fcmp olt double %i.jw, %i.jx
  br i1 %i.jy, label %bb.am, label %.thread860

bb.am:                                            ; preds = %.lr.ph645
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 40 ; 3 uses
  %i.ka = load double, ptr %i.jz, align 8
  %i.kb = load double, ptr %13, align 16
  %i.kc = fcmp ogt double %i.ka, %i.kb
  br i1 %i.kc, label %bb.an, label %.thread860

bb.an:                                            ; preds = %bb.am
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 32 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8
  %i.kf = load double, ptr %.sroa.11354.0..sroa_idx, align 8
  %i.kg = fcmp olt double %i.ke, %i.kf
  br i1 %i.kg, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %.thread860

_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.an
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 48 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8
  %i.kj = load double, ptr %.sroa.11360.0..sroa_idx, align 8
  %i.kk = fcmp ogt double %i.ki, %i.kj
  br i1 %i.kk, label %bb.ao, label %.thread860

bb.ao:                                            ; preds = %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 96
  %i.km = load i8, ptr %i.kl, align 8, !range !143, !noundef !144
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.d, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp3IFC26MakeDisjunctWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0299.0642, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ar unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.ko = load ptr, ptr %i.v, align 8
  %i.kp = load ptr, ptr %15, align 8              ; 4 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = icmp eq i64 %i.ks, 24
  br i1 %i.kt, label %bb.as, label %.thread444

bb.as:                                            ; preds = %bb.ar
  %i.ku = load ptr, ptr %i.kp, align 8, !noalias !250 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !250 ; 2 uses
  %.not32.i = icmp eq ptr %i.ku, %i.kw
  br i1 %.not32.i, label %_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE.exit, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.as, %.lr.ph.i217
  %.sroa.025.033.i = phi ptr [ %i.li, %.lr.ph.i217 ], [ %i.ku, %bb.as ] ; 2 uses
  %i.kx = phi <2 x double> [ %i.lf, %.lr.ph.i217 ], [ splat (double 1.000000e+10), %bb.as ] ; 2 uses
  %i.ky = phi <2 x double> [ %i.lh, %.lr.ph.i217 ], [ splat (double -1.000000e+10), %bb.as ] ; 2 uses
  %i.kz = load <2 x i64>, ptr %.sroa.025.033.i, align 8, !noalias !250
  %i.la = uitofp <2 x i64> %i.kz to <2 x double>
  %i.lb = fdiv <2 x double> %i.la, splat (double f0x41D6A09E66400000) ; 2 uses
  %i.lc = fcmp ogt <2 x double> %i.lb, splat (double 1.000000e+00)
  %i.ld = select <2 x i1> %i.lc, <2 x double> splat (double 1.000000e+00), <2 x double> %i.lb ; 4 uses
  %i.le = fcmp olt <2 x double> %i.ld, %i.kx
  %i.lf = select <2 x i1> %i.le, <2 x double> %i.ld, <2 x double> %i.kx ; 2 uses
  %i.lg = fcmp olt <2 x double> %i.ky, %i.ld
  %i.lh = select <2 x i1> %i.lg, <2 x double> %i.ld, <2 x double> %i.ky ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.025.033.i, i64 16 ; 2 uses
  %.not.i218 = icmp eq ptr %i.li, %i.kw
  br i1 %.not.i218, label %_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE.exit, label %.lr.ph.i217

_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE.exit: ; preds = %.lr.ph.i217, %bb.as
  %i.lj = phi <2 x double> [ splat (double 1.000000e+10), %bb.as ], [ %i.lf, %.lr.ph.i217 ] ; 3 uses
  %i.lk = phi <2 x double> [ splat (double -1.000000e+10), %bb.as ], [ %i.lh, %.lr.ph.i217 ] ; 3 uses
  %i.ll = load double, ptr %i.jv, align 8
  %i.lm = extractelement <2 x double> %i.lk, i64 0
  %i.ln = fcmp olt double %i.ll, %i.lm
  br i1 %i.ln, label %bb.at, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread

bb.at:                                            ; preds = %_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE.exit
  %i.lo = load double, ptr %i.jz, align 8
  %i.lp = extractelement <2 x double> %i.lj, i64 0
  %i.lq = fcmp ogt double %i.lo, %i.lp
  br i1 %i.lq, label %bb.au, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread

bb.au:                                            ; preds = %bb.at
  %i.lr = load double, ptr %i.kd, align 8
  %i.ls = extractelement <2 x double> %i.lk, i64 1
  %i.lt = fcmp olt double %i.lr, %i.ls
  br i1 %i.lt, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread

_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219: ; preds = %bb.au
  %i.lu = load double, ptr %i.kh, align 8
  %i.lv = extractelement <2 x double> %i.lj, i64 1
  %i.lw = fcmp ogt double %i.lu, %i.lv
  br i1 %i.lw, label %.thread444, label %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread

_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread: ; preds = %_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE.exit, %bb.at, %bb.au, %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219
  store <2 x double> %i.lj, ptr %13, align 16
  store <2 x double> %i.lk, ptr %i.r, align 16
  invoke void @_ZN6Assimp3IFC26ExtractVerticesFromClipperERKSt6vectorIN10ClipperLib8IntPointESaIS3_EERS1_I10aiVector2tIdESaIS9_EEb(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext false)
          to label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 unwind label %bb.av, !llvm.loop !253

.loopexit460:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc284
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.aq, %.thread444, %bb.ax, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA29_KcEEEvDpOT_.exit, %bb.az, %bb.ba, %.noexc221, %.noexc222, %bb.bb, %bb.bc, %.noexc228, %.noexc229
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.av:                                            ; preds = %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.thread444:                                       ; preds = %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219, %bb.ar
  invoke void @_ZN6Assimp3IFC19MergeWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0299.0642, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %.thread444
  %i.ly = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.lz = load ptr, ptr %15, align 8              ; 2 uses
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = sdiv exact i64 %i.mc, 24
  %i.me = icmp ugt i64 %i.md, 1
  br i1 %i.me, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mf = invoke noundef zeroext i1 @_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 unwind label %.loopexit.split-lp ; 2 uses

bb.ay:                                            ; preds = %bb.aw
  %i.mg = icmp eq ptr %i.lz, %i.ly
  br i1 %i.mg, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.mh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc220 unwind label %.loopexit.split-lp

.noexc220:                                        ; preds = %bb.az
  br i1 %i.mh, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA27_KcEEEvDpOT_.exit, label %bb.ba

bb.ba:                                            ; preds = %.noexc220
  %i.mi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc221 unwind label %.loopexit.split-lp

.noexc221:                                        ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.mj = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc222 unwind label %.loopexit.split-lp

.noexc222:                                        ; preds = %.noexc221
  store ptr %i.mj, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA27_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mi, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
          to label %.noexc223 unwind label %.loopexit.split-lp

.noexc223:                                        ; preds = %.noexc222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA27_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA27_KcEEEvDpOT_.exit: ; preds = %.noexc223, %.noexc220
  %i.mk = load ptr, ptr %12, align 8              ; 2 uses
  %i.ml = load ptr, ptr %..sroa.gep412, align 8
  %.not.i.i224 = icmp eq ptr %i.ml, %i.mk
  br i1 %.not.i.i224, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10, label %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i225

_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i225: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA27_KcEEEvDpOT_.exit
  store ptr %i.mk, ptr %..sroa.gep412, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10

bb.bb:                                            ; preds = %bb.ay
  %i.mm = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc227 unwind label %.loopexit.split-lp

.noexc227:                                        ; preds = %bb.bb
  br i1 %i.mm, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA29_KcEEEvDpOT_.exit, label %bb.bc

bb.bc:                                            ; preds = %.noexc227
  %i.mn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc228 unwind label %.loopexit.split-lp

.noexc228:                                        ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.mo = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc229 unwind label %.loopexit.split-lp

.noexc229:                                        ; preds = %.noexc228
  store ptr %i.mo, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA29_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(29) @.str.8)
          to label %.noexc230 unwind label %.loopexit.split-lp

.noexc230:                                        ; preds = %.noexc229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA29_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA29_KcEEEvDpOT_.exit: ; preds = %.noexc230, %.noexc227
  %i.mp = load ptr, ptr %15, align 8
  invoke void @_ZN6Assimp3IFC26ExtractVerticesFromClipperERKSt6vectorIN10ClipperLib8IntPointESaIS3_EERS1_I10aiVector2tIdESaIS9_EEb(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext false)
          to label %bb.bd unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA29_KcEEEvDpOT_.exit
  %i.mq = load <2 x double>, ptr %i.jv, align 8   ; 2 uses
  %i.mr = load <2 x double>, ptr %13, align 16    ; 2 uses
  %i.ms = fcmp olt <2 x double> %i.mq, %i.mr
  %i.mt = select <2 x i1> %i.ms, <2 x double> %i.mq, <2 x double> %i.mr
  store <2 x double> %i.mt, ptr %13, align 16
  %i.mu = load <2 x double>, ptr %i.r, align 16   ; 2 uses
  %i.mv = load <2 x double>, ptr %i.jz, align 8   ; 2 uses
  %i.mw = fcmp olt <2 x double> %i.mu, %i.mv
  %i.mx = select <2 x i1> %i.mw, <2 x double> %i.mv, <2 x double> %i.mu
  store <2 x double> %i.mx, ptr %i.r, align 16
  br i1 %3, label %bb.be, label %._ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit_crit_edge

._ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit_crit_edge: ; preds = %bb.bd
  %.pre772 = ptrtoint ptr %.sroa.0299.0642 to i64
  br label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

bb.be:                                            ; preds = %bb.bd
  %i.my = load ptr, ptr %11, align 8
  %i.mz = ptrtoint ptr %.sroa.0299.0642 to i64    ; 4 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = sdiv exact i64 %i.nb, 104
  %i.nd = load ptr, ptr %5, align 8
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %i.nd, i64 %i.nc ; 2 uses
  %i.nf = load ptr, ptr %i.s, align 8
  %i.ng = load ptr, ptr %i.ne, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = load ptr, ptr %14, align 8              ; 2 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  invoke void @_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.nn, ptr %i.ng, ptr %i.ni)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.no = load ptr, ptr %5, align 8
  %i.np = load ptr, ptr %11, align 8
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = sub i64 %i.mz, %i.nq
  %i.ns = sdiv exact i64 %i.nr, 104
  %i.nt = getelementptr inbounds [24 x i8], ptr %i.no, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 3 uses
  %i.nv = load ptr, ptr %i.w, align 8             ; 4 uses
  %.not.i.i236 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i.i236, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 2 uses
  %i.nz = icmp sgt i64 %i.ny, 0
  br i1 %i.nz, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.bg
  %i.oa = udiv exact i64 %i.ny, 24
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.op, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.oa, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.oo, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.nt, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.on, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.nu, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %i.ob = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr %i.of, ptr %.0811.i.i.i.i.i.i.i, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.oh = load ptr, ptr %i.og, align 8
  store ptr %i.oh, ptr %i.oc, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  store ptr %i.oj, ptr %i.od, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ob, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ok = ptrtoint ptr %i.oe to i64
  %i.ol = ptrtoint ptr %i.ob to i64
  %i.om = sub i64 %i.ok, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.om) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.oo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  %i.op = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.oq = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.oq, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i, !llvm.loop !254

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i: ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.w, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i, %bb.bg, %bb.bf
  %i.or = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i ], [ %i.nv, %bb.bg ], [ %i.nv, %bb.bf ] ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -24 ; 2 uses
  store ptr %i.os, ptr %i.w, align 8
  %i.ot = load ptr, ptr %i.os, align 8            ; 3 uses
  %.not.i.i.i.i.i237 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i.i237, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i
  %i.ou = getelementptr inbounds i8, ptr %i.or, i64 -8
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = ptrtoint ptr %i.ot to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.oy) #26
  br label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

bb.bj:                                            ; preds = %bb.be
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %._ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i, %bb.bi
  %.pre-phi773 = phi i64 [ %.pre772, %._ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit_crit_edge ], [ %i.mz, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS6_EES2_IS8_SaIS8_EEEESC_ET0_T_SE_SD_.exit.i.i ], [ %i.mz, %bb.bi ]
  %i.pa = load ptr, ptr %11, align 8              ; 2 uses
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = sub i64 %.pre-phi773, %i.pb
  %i.pd = getelementptr inbounds i8, ptr %i.pa, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 104 ; 3 uses
  %i.pf = load ptr, ptr %i.u, align 8             ; 4 uses
  %.not.i280 = icmp eq ptr %i.pe, %i.pf
  br i1 %.not.i280, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pe to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 2 uses
  %i.pj = icmp sgt i64 %i.pi, 0
  br i1 %i.pj, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bk
  %i.pk = udiv exact i64 %i.pi, 104
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc285, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.py, %.noexc285 ], [ %i.pk, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.px, %.noexc285 ], [ %i.pd, %.lr.ph.preheader.i.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.pw, %.noexc285 ], [ %i.pe, %.lr.ph.preheader.i.i.i.i.i.i ] ; 6 uses
  %i.pl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector2tIdESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(97) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(97) %.0910.i.i.i.i.i.i)
          to label %.noexc284 unwind label %.loopexit460 ; 0 uses

.noexc284:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pm, ptr noundef nonnull align 8 dereferenceable(32) %i.pn, i64 16, i1 false)
  %i.po = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.pp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  %i.pr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ps = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.pq, ptr noundef nonnull align 8 dereferenceable(40) %i.pr)
          to label %.noexc285 unwind label %.loopexit460 ; 0 uses

.noexc285:                                        ; preds = %.noexc284
  %i.pt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 96
  %i.pu = load i8, ptr %i.pt, align 8, !range !143, !noundef !144
  %i.pv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 96
  store i8 %i.pu, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 104
  %i.px = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 104
  %i.py = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.pz = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.pz, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, !llvm.loop !255

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i: ; preds = %.noexc285
  %.pre.i283 = load ptr, ptr %i.u, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, %bb.bk, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.qa = phi ptr [ %.pre.i283, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i ], [ %i.pf, %bb.bk ], [ %i.pf, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ] ; 4 uses
  %i.qb = getelementptr inbounds i8, ptr %i.qa, i64 -104 ; 2 uses
  store ptr %i.qb, ptr %i.u, align 8
  %i.qc = getelementptr inbounds i8, ptr %i.qa, i64 -48
  %i.qd = load ptr, ptr %i.qc, align 8            ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i281, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.qe = getelementptr inbounds i8, ptr %i.qa, i64 -16
  %i.qf = load ptr, ptr %i.qe, align 8            ; 2 uses
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 2 uses
  %i.qj = ashr exact i64 %i.qi, 3
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qk
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qi) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.bl, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC22ProjectedWindowContourESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.qm = load ptr, ptr %i.qb, align 8            ; 3 uses
  %.not.i.i.i.i.i282 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i.i282, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.qn = getelementptr inbounds i8, ptr %i.qa, i64 -88
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #26
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, %bb.bm
  %i.qs = load ptr, ptr %11, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226, !llvm.loop !253

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10: ; preds = %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i225, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA27_KcEEEvDpOT_.exit
  %18 = load ptr, ptr %15, align 8                ; 5 uses
  %19 = load ptr, ptr %i.v, align 8               ; 2 uses
  %.not4.i.i.i.jt10 = icmp eq ptr %18, %19
  br i1 %.not4.i.i.i.jt10, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt10, label %.lr.ph.i.i.i.preheader

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226: ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread
  %.sroa.0299.1.jt11 = phi ptr [ %i.qs, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.sroa.0299.0642, %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit219.thread ] ; 2 uses
  %i.qt = load ptr, ptr %15, align 8              ; 5 uses
  %i.qu = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qt, %i.qu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt11, label %.lr.ph.i.i.i.preheader

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1: ; preds = %bb.ax
  %20 = load ptr, ptr %15, align 8                ; 5 uses
  %21 = load ptr, ptr %i.v, align 8               ; 2 uses
  %.not4.i.i.i.jt1 = icmp eq ptr %20, %21
  br i1 %.not4.i.i.i.jt1, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt1, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1
  %22 = phi ptr [ %19, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10 ], [ %i.qu, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 ], [ %21, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 ]
  %23 = phi ptr [ %18, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10 ], [ %i.qt, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 ], [ %20, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 ]
  %.2850 = phi i1 [ %.1643, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10 ], [ %.1643, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 ], [ %i.mf, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 ] ; 3 uses
  %.2134849 = phi i32 [ 10, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10 ], [ 11, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 ], [ 1, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 ] ; 2 uses
  %.sroa.0299.1848 = phi ptr [ %.sroa.0299.0642, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10 ], [ %.sroa.0299.1.jt11, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226 ], [ %.sroa.0299.0642, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.rb, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %23, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.qv = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.ra) #26
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bn, %.lr.ph.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.rb, %22
  br i1 %.not.i.i.i239, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8             ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %bb.bq, label %24

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt10: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt10
  %.not.i.i1.i.jt10 = icmp eq ptr %18, null
  br i1 %.not.i.i1.i.jt10, label %36, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.a

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt11: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226
  %.not.i.i1.i.jt11 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i1.i.jt11, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt1: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit226.jt1
  %.not.i.i1.i.jt1 = icmp eq ptr %20, null
  br i1 %.not.i.i1.i.jt1, label %37, label %bb.bo

24:                                               ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i
  %25 = load ptr, ptr %i.x, align 8
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %.pr.i to i64
  %28 = sub i64 %26, %27
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %28) #26
  br label %bb.bq

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.a: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt10
  %.pr.i.a = load ptr, ptr %i.x, align 8
  %29 = ptrtoint ptr %.pr.i.a to i64
  %30 = ptrtoint ptr %18 to i64
  %31 = sub i64 %29, %30
  call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %31) #26
  br label %36

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt11
  %32 = load ptr, ptr %i.x, align 8
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %i.qt to i64
  %35 = sub i64 %33, %34
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %35) #26
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11

bb.bo:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt1
  %i.rc = load ptr, ptr %i.x, align 8
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %20 to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %i.rf) #26
  br label %37

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.backedge

bb.bp:                                            ; preds = %.loopexit460, %.loopexit.split-lp, %bb.bj, %bb.av
  %.pn157 = phi { ptr, i32 } [ %i.oz, %bb.bj ], [ %i.lx, %bb.av ], [ %lpad.loopexit, %.loopexit460 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.cf

.thread860:                                       ; preds = %.lr.ph645, %bb.am, %bb.an, %_ZN6Assimp3IFCL24BoundingBoxesOverlappingERKSt4pairI10aiVector2tIdES3_ES6_.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0299.0642, i64 104
  br label %.backedge

bb.bq:                                            ; preds = %24, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  switch i32 %.2134849, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit [
    i32 10, label %.thread446.loopexit
    i32 11, label %.backedge
  ]

36:                                               ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt10, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.thread446.loopexit

37:                                               ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.jt1, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit

.backedge:                                        ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11, %.thread860, %bb.bq
  %.3855 = phi i1 [ %.1643, %.thread860 ], [ %.2850, %bb.bq ], [ %.1643, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11 ] ; 2 uses
  %.sroa.0299.2851 = phi ptr [ %i.rg, %.thread860 ], [ %.sroa.0299.1848, %bb.bq ], [ %.sroa.0299.1.jt11, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit.jt11 ] ; 2 uses
  %i.rh = load ptr, ptr %i.u, align 8
  %.not458 = icmp eq ptr %.sroa.0299.2851, %i.rh
  br i1 %.not458, label %.thread446.loopexit, label %.lr.ph645

.thread446.loopexit:                              ; preds = %.backedge, %bb.bq, %36
  %.3853 = phi i1 [ %.1643, %36 ], [ %.3855, %.backedge ], [ %.2850, %bb.bq ]
  %.pre756 = load ptr, ptr %12, align 8
  %.pre757 = load ptr, ptr %..sroa.gep412, align 8
  br label %.thread446

.thread446:                                       ; preds = %.thread446.loopexit, %.noexc216
  %i.ri = phi ptr [ %i.ja, %.noexc216 ], [ %.pre757, %.thread446.loopexit ]
  %i.rj = phi ptr [ %i.jb, %.noexc216 ], [ %.pre756, %.thread446.loopexit ]
  %.4451 = phi i1 [ %.0653, %.noexc216 ], [ %.3853, %.thread446.loopexit ] ; 3 uses
  %i.rk = icmp eq ptr %i.rj, %i.ri
  br i1 %i.rk, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit, label %bb.br

bb.br:                                            ; preds = %.thread446
  br i1 %3, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.rl = load ptr, ptr %14, align 8
  store ptr %i.rl, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.rm = load ptr, ptr %i.s, align 8
  store ptr %i.rm, ptr %17, align 8
  %i.rn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bt unwind label %bb.bu     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ro = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bt, %bb.br
  %i.rp = load ptr, ptr %i.u, align 8             ; 13 uses
  %i.rq = load ptr, ptr %i.y, align 8
  %.not.i240 = icmp eq ptr %i.rp, %i.rq
  br i1 %.not.i240, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rr = load i8, ptr %i.d, align 1, !range !143, !noundef !144
  %i.rs = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %i.rt = load ptr, ptr %12, align 8              ; 2 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.rp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rs, %i.rt
  br i1 %.not.i.i.i.i.i.i, label %.noexc244, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rx = icmp ugt i64 %i.rw, 9223372036854775792
  br i1 %i.rx, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !233

.noexc.i.i.i.i:                                   ; preds = %bb.bx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc243 unwind label %.loopexit.split-lp478

.noexc243:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.bx
  %i.ry = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rw) #25
          to label %.noexc244 unwind label %.loopexit477

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.bw
  %i.rz = phi ptr [ null, %bb.bw ], [ %i.ry, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.rz, ptr %i.rp, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 2 uses
  store ptr %i.rz, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.rw
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store ptr %i.sb, ptr %i.sc, align 8
  %i.sd = load ptr, ptr %12, align 8              ; 2 uses
  %i.se = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.sd, %i.se
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.noexc244, %.lr.ph.i.i.i.i.i.i.i241
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.sg, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.rz, %.noexc244 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.sf, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.sd, %.noexc244 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i242 = icmp eq ptr %i.sf, %i.se
  br i1 %.not.i.i.i.i.i.i.i242, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241, !llvm.loop !256

_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i241, %.noexc244
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rz, %.noexc244 ], [ %i.sg, %.lr.ph.i.i.i.i.i.i.i241 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.sa, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sh, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 32, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %i.rp, i64 56
  store ptr null, ptr %i.si, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 64
  store i32 0, ptr %i.sj, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rp, i64 72
  store ptr null, ptr %i.sk, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rp, i64 80
  store i32 0, ptr %i.sl, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rp, i64 88
  store ptr null, ptr %i.sm, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rp, i64 96
  store i8 %i.rr, ptr %i.sn, align 8
  %i.so = load ptr, ptr %i.u, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 104
  store ptr %i.sp, ptr %i.u, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit

bb.by:                                            ; preds = %bb.bv
  invoke void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.rp, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit unwind label %.loopexit477

.loopexit477:                                     ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.by
  %lpad.loopexit479 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp478:                            ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit: ; preds = %bb.bq, %37, %bb.by, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, %.thread446
  %.4450 = phi i1 [ %.4451, %bb.by ], [ %.4451, %.thread446 ], [ %.4451, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ %i.mf, %37 ], [ %.2850, %bb.bq ]
  %.5137 = phi i32 [ 0, %bb.by ], [ 0, %.thread446 ], [ 0, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ 1, %37 ], [ %.2134849, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.sq = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit
  %i.sr = load ptr, ptr %i.t, align 8
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sq to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef %i.su) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ca

bb.ca:                                            ; preds = %bb.aj, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  %.6138 = phi i32 [ %.5137, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ 3, %bb.aj ]
  %.5 = phi i1 [ %.4450, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ %.0653, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ah, %bb.ai, %bb.ca, %bb.q
  %.9141 = phi i32 [ 3, %bb.q ], [ 3, %bb.ah ], [ %.6138, %bb.ca ], [ 3, %bb.ai ]
  %.8 = phi i1 [ %.0653, %bb.q ], [ %.0653, %bb.ah ], [ %.5, %bb.ca ], [ %.0653, %bb.ai ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.cb, %bb.cc
  %.not.i.i.i248 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.cd
  switch i32 %.9141, label %.loopexit482 [
    i32 0, label %bb.ce
    i32 3, label %bb.ce
    i32 2, label %.thread452
  ]

bb.ce:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 88 ; 2 uses
  %.not456 = icmp eq ptr %i.sv, %i.k
  br i1 %.not456, label %.thread452, label %bb.g

bb.cf:                                            ; preds = %.loopexit477, %.loopexit.split-lp478, %bb.bu, %bb.bp
  %.pn159 = phi { ptr, i32 } [ %.pn157, %bb.bp ], [ %i.ro, %bb.bu ], [ %lpad.loopexit479, %.loopexit477 ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp478 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.sw = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i249 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = load ptr, ptr %i.t, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sw, i64 noundef %i.ta) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250: ; preds = %bb.cg, %bb.cf, %bb.al
  %.pn159.pn = phi { ptr, i32 } [ %i.ju, %bb.al ], [ %.pn159, %bb.cf ], [ %.pn159, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit462, %.loopexit.split-lp463, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %.pn159.pn, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250 ], [ %lpad.loopexit464, %.loopexit462 ], [ %lpad.loopexit.split-lp465, %.loopexit.split-lp463 ] ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i251, label %_ZNSt6vectorIjSaIjEED2Ev.exit252, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

_ZNSt6vectorIjSaIjEED2Ev.exit252:                 ; preds = %.loopexit472, %.loopexit.split-lp473, %bb.ci, %bb.ch
  %.pn164.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn, %bb.ci ], [ %.pn164.pn.pn.pn, %bb.ch ], [ %lpad.loopexit474, %.loopexit472 ], [ %lpad.loopexit.split-lp475, %.loopexit.split-lp473 ] ; 2 uses
  %.not.i.i.i253 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit252
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.thread452:                                       ; preds = %bb.ce, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %.pre758 = load ptr, ptr %11, align 8
  %.pre759 = load ptr, ptr %i.u, align 8
  %i.tb = icmp eq ptr %.pre758, %.pre759
  br i1 %i.tb, label %.loopexit482, label %bb.ck

bb.ck:                                            ; preds = %.thread452
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cl unwind label %bb.f

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cm unwind label %bb.f

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6Assimp3IFC21CleanupWindowContoursERSt6vectorINS0_22ProjectedWindowContourESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.cn unwind label %bb.f

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.co unwind label %bb.f

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cp unwind label %bb.f

bb.cp:                                            ; preds = %bb.co
  %i.tc = load ptr, ptr %1, align 8               ; 6 uses
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.te = load ptr, ptr %i.td, align 8            ; 3 uses
  %.not459655 = icmp eq ptr %i.tc, %i.te
  br i1 %.not459655, label %._crit_edge659, label %.lr.ph658

.lr.ph658:                                        ; preds = %bb.cp
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = load double, ptr %9, align 8, !noalias !257 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.tj = load double, ptr %i.ti, align 8, !noalias !257 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tl = load double, ptr %i.tk, align 8, !noalias !257 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.tn = load double, ptr %i.tm, align 8, !noalias !257 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.tp = load double, ptr %i.to, align 8, !noalias !257 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.tr = load double, ptr %i.tq, align 8, !noalias !257 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.tt = load double, ptr %i.ts, align 8, !noalias !257 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.tv = load double, ptr %i.tu, align 8, !noalias !257 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.tx = load double, ptr %i.tw, align 8, !noalias !257 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.tz = load double, ptr %i.ty, align 8, !noalias !257 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ub = load double, ptr %i.ua, align 8, !noalias !257 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ud = load double, ptr %i.uc, align 8, !noalias !257 ; 2 uses
  %i.ue = add i64 %i.tf, -24
  %i.uf = sub i64 %i.ue, %i.tg                    ; 2 uses
  %i.ug = udiv i64 %i.uf, 24
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uf, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph658
  %n.vec = and i64 %i.uh, 2305843009213693950     ; 3 uses
  %i.ui = mul i64 %n.vec, 24
  %i.uj = getelementptr i8, ptr %i.tc, i64 %i.ui
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.th, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1035 = insertelement <2 x double> poison, double %i.tj, i64 0
  %broadcast.splat1036 = shufflevector <2 x double> %broadcast.splatinsert1035, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1037 = insertelement <2 x double> poison, double %i.tl, i64 0
  %broadcast.splat1038 = shufflevector <2 x double> %broadcast.splatinsert1037, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1039 = insertelement <2 x double> poison, double %i.tn, i64 0
  %broadcast.splatinsert1041 = insertelement <2 x double> poison, double %i.tp, i64 0
  %broadcast.splat1042 = shufflevector <2 x double> %broadcast.splatinsert1041, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1043 = insertelement <2 x double> poison, double %i.tr, i64 0
  %broadcast.splat1044 = shufflevector <2 x double> %broadcast.splatinsert1043, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1045 = insertelement <2 x double> poison, double %i.tt, i64 0
  %broadcast.splat1046 = shufflevector <2 x double> %broadcast.splatinsert1045, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1047 = insertelement <2 x double> poison, double %i.tv, i64 0
  %broadcast.splatinsert1049 = insertelement <2 x double> poison, double %i.tx, i64 0
  %broadcast.splat1050 = shufflevector <2 x double> %broadcast.splatinsert1049, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1051 = insertelement <2 x double> poison, double %i.tz, i64 0
  %broadcast.splat1052 = shufflevector <2 x double> %broadcast.splatinsert1051, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1053 = insertelement <2 x double> poison, double %i.ub, i64 0
  %broadcast.splat1054 = shufflevector <2 x double> %broadcast.splatinsert1053, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1055 = insertelement <2 x double> poison, double %i.ud, i64 0
  %broadcast.splat1056 = shufflevector <2 x double> %broadcast.splatinsert1055, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uk = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tc, i64 %i.uk ; 4 uses
  %i.ul = getelementptr i8, ptr %i.tc, i64 %i.uk  ; 3 uses
  %next.gep1057 = getelementptr i8, ptr %i.ul, i64 24
  %i.um = load double, ptr %next.gep, align 8, !noalias !257
  %i.un = load double, ptr %next.gep1057, align 8, !noalias !257
  %i.uo = insertelement <2 x double> poison, double %i.um, i64 0
  %i.up = insertelement <2 x double> %i.uo, double %i.un, i64 1 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ur = getelementptr i8, ptr %i.ul, i64 32
  %i.us = load double, ptr %i.uq, align 8, !noalias !257
  %i.ut = load double, ptr %i.ur, align 8, !noalias !257
end_hunk_1
