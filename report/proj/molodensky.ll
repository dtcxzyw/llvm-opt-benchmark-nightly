Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/molodensky?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts:bb.a
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx17, align 16, !tbaa !47
  call fastcc void @_ZL20calc_abridged_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %4, ptr noundef nonnull %2)
  %i.f = load <2 x double>, ptr %3, align 16, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store <2 x double> %i.c, ptr %6, align 16, !tbaa !47
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx19, align 16, !tbaa !47
  call fastcc void @_ZL20calc_standard_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %6, ptr noundef nonnull %2)
  %i.g = load <2 x double>, ptr %5, align 16, !tbaa !47
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0.copyload6 = load double, ptr %.sroa.7.0..sroa_idx5, align 16, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.7.0 = phi double [ %.sroa.7.0.copyload, %bb.b ], [ %.sroa.7.0.copyload6, %bb.c ]
  %i.h = phi <2 x double> [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fcmp oeq double %i.i, +inf
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = fsub <2 x double> %i.c, %i.h
  %i.m = fsub double %.sroa.11.0.copyload, %.sroa.7.0
  store <2 x double> %i.l, ptr %0, align 8, !tbaa !47
  %.sroa.11.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %.sroa.11.0..sroa_idx21, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL24pj_molodensky_forward_2d5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.PJ_LPZ, align 8             ; 4 uses
  %4 = alloca %struct.PJ_LPZ, align 8             ; 4 uses
  %5 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %6 = alloca %struct.PJ_LPZ, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store double %0, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store double %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !noalias !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46, !noalias !76
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !76
  call fastcc void @_ZL20calc_abridged_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %6, ptr noundef nonnull %2), !noalias !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !52, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8, !noalias !76
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !76
  call fastcc void @_ZL20calc_standard_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %6, ptr noundef nonnull %2), !noalias !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !52, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8, !noalias !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load double, ptr %6, align 8, !tbaa !49, !noalias !76 ; 2 uses
  %i.f = fcmp oeq double %i.e, +inf
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050), !noalias !76 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8, !noalias !76
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %5), !noalias !76
  %.sroa.010.0.copyload = load double, ptr %5, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8, !noalias !76
  br label %_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50, !noalias !76
  %i.i = fadd double %1, %i.h
  %i.j = fadd double %0, %i.e
  br label %_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts.exit

_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts.exit: ; preds = %bb.e, %bb.f
  %.sroa.010.0 = phi double [ %.sroa.010.0.copyload, %bb.e ], [ %i.j, %bb.f ]
  %.sroa.5.0 = phi double [ %.sroa.5.0.copyload, %bb.e ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL24pj_molodensky_reverse_2d5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.PJ_LPZ, align 16            ; 4 uses
  %4 = alloca %struct.PJ_LPZ, align 8             ; 6 uses
  %5 = alloca %struct.PJ_LPZ, align 16            ; 4 uses
  %6 = alloca %struct.PJ_LPZ, align 8             ; 6 uses
  %7 = alloca %union.PJ_COORD, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !noalias !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46, !noalias !79
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !79
  store double %0, ptr %4, align 8, !tbaa !47, !noalias !79
  %.sroa.9.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %1, ptr %.sroa.9.0..sroa_idx11.i, align 8, !tbaa !47, !noalias !79
  %.sroa.11.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0.000000e+00, ptr %.sroa.11.0..sroa_idx17.i, align 8, !tbaa !47, !noalias !79
  call fastcc void @_ZL20calc_abridged_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %4, ptr noundef nonnull %2), !noalias !79
  %i.e = load <2 x double>, ptr %3, align 16, !tbaa !47, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8, !noalias !79
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8, !noalias !79
  store double %0, ptr %6, align 8, !tbaa !47, !noalias !79
  %.sroa.9.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %1, ptr %.sroa.9.0..sroa_idx13.i, align 8, !tbaa !47, !noalias !79
  %.sroa.11.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 0.000000e+00, ptr %.sroa.11.0..sroa_idx19.i, align 8, !tbaa !47, !noalias !79
  call fastcc void @_ZL20calc_standard_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %6, ptr noundef nonnull %2), !noalias !79
  %i.f = load <2 x double>, ptr %5, align 16, !tbaa !47, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8, !noalias !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi <2 x double> [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050), !noalias !79 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !79
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %7), !noalias !79
  %i.k = load <2 x double>, ptr %7, align 16, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8, !noalias !79
  br label %_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts.exit

bb.f:                                             ; preds = %bb.d
  %i.l = insertelement <2 x double> poison, double %0, i64 0
  %i.m = insertelement <2 x double> %i.l, double %1, i64 1
  %i.n = fsub <2 x double> %i.m, %i.g
  br label %_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts.exit

_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts.exit: ; preds = %bb.e, %bb.f
  %i.o = phi <2 x double> [ %i.k, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.p = extractelement <2 x double> %i.o, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.p, 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.q, 1
  ret { double, double } %.fca.1.insert
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL20calc_abridged_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.c = load double, ptr %1, align 8, !tbaa !49  ; 2 uses
  %i.d = tail call double @sin(double noundef %i.c) #8 ; 3 uses
  %i.e = tail call double @cos(double noundef %i.c) #8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !50 ; 9 uses
  %i.h = tail call double @sin(double noundef %i.g) #8 ; 5 uses
  %i.i = tail call double @cos(double noundef %i.g) #8 ; 4 uses
  %i.j = load double, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !43 ; 2 uses
  %i.n = load double, ptr %i.k, align 8, !tbaa !42 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !47 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.r = load double, ptr %i.q, align 8, !tbaa !53 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.t = load double, ptr %i.s, align 8, !tbaa !54
  %i.u = fmul double %i.g, 2.000000e+00
  %i.v = tail call double @sin(double noundef %i.u) #8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.x = load double, ptr %i.w, align 8, !tbaa !55 ; 5 uses
  %i.y = tail call double @sin(double noundef %i.g) #8 ; 2 uses
  %i.z = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.z, label %_ZL2RMddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = fcmp oeq double %i.g, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = fsub double 1.000000e+00, %i.x
  %i.ac = fmul double %i.r, %i.ab
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call double @llvm.fabs.f64(double %i.g)
  %i.ae = fcmp oeq double %i.ad, f0x3FF921FB54442D18
  %i.af = fsub double 1.000000e+00, %i.x          ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call double @sqrt(double noundef %i.af) #8
  %i.ah = fdiv double %i.r, %i.ag
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = fmul double %i.r, %i.af
  %i.aj = fneg double %i.y
  %i.ak = fmul double %i.x, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.y, double 1.000000e+00)
  %i.am = tail call double @pow(double noundef %i.al, double noundef 1.500000e+00) #8
  %i.an = fdiv double %i.ai, %i.am
  br label %bb.g

_ZL2RMddd.exit:                                   ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.g)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %cdce.call, label %_ZL2RNddd.exit, !prof !56

cdce.call:                                        ; preds = %_ZL2RMddd.exit
  %i.aq = tail call double @sin(double noundef %i.g) #8 ; 0 uses
  br label %_ZL2RNddd.exit

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.ph = phi double [ %i.ah, %bb.e ], [ %i.ac, %bb.c ], [ %i.an, %bb.f ]
  %i.ar = tail call double @sin(double noundef %i.g) #8 ; 2 uses
  %i.as = fneg double %i.ar
  %i.at = fmul double %i.x, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ar, double 1.000000e+00)
  %i.av = tail call double @sqrt(double noundef %i.au) #8
  %i.aw = fdiv double %i.r, %i.av
  br label %_ZL2RNddd.exit

_ZL2RNddd.exit:                                   ; preds = %cdce.call, %_ZL2RMddd.exit, %bb.g
  %.0.i50 = phi double [ %.0.i.ph, %bb.g ], [ %i.r, %_ZL2RMddd.exit ], [ %i.r, %cdce.call ]
  %.0.i47 = phi double [ %i.aw, %bb.g ], [ %i.r, %_ZL2RMddd.exit ], [ %i.r, %cdce.call ]
  %i.ax = fmul double %i.i, %.0.i47               ; 2 uses
  %i.ay = fcmp oeq double %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL2RNddd.exit
  store double +inf, ptr %1, align 8, !tbaa !49
  br label %bb.j

bb.i:                                             ; preds = %_ZL2RNddd.exit
  %3 = fmul double %i.h, %i.n
  %4 = fneg double %i.d
  %i.az = fmul double %3, %4
  %5 = fmul double %i.i, %i.j
  %i.ba = fmul double %i.i, %i.n
  %6 = fneg double %i.j                           ; 2 uses
  %7 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = insertelement <2 x double> %7, double %i.d, i64 0
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.t, i64 1
  %i.be = fmul <2 x double> %i.bb, %i.bd
  %i.bf = insertelement <2 x double> poison, double %5, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.r, i64 1
  %8 = insertelement <2 x double> %i.p, double %i.e, i64 0
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %8, <2 x double> %i.be) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.m, double %i.h, double %i.bi)
  %i.bk = extractelement <2 x double> %i.p, i64 0
  %i.bl = fsub double %i.bj, %i.bk
  %9 = fmul double %i.h, %6
  %10 = extractelement <2 x double> %i.bh, i64 1  ; 2 uses
  %11 = fmul double %i.e, %i.n
  %12 = tail call double @llvm.fmuladd.f64(double %9, double %i.e, double %i.az)
  %i.bm = insertelement <2 x double> poison, double %i.m, i64 0
  %13 = insertelement <2 x double> %i.bm, double %6, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.d, i64 1
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %i.bp = insertelement <2 x double> %14, double %11, i64 1
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.bo, <2 x double> %i.bp) ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = tail call double @llvm.fmuladd.f64(double %10, double %i.v, double %i.br)
  %15 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x double> %15, double %i.bs, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %.0.i50, i64 1
  %i.bw = fdiv <2 x double> %i.bt, %i.bv
  %i.bx = fmul double %i.h, %10
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.h, double %i.bl)
  store <2 x double> %i.bw, ptr %1, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.by, ptr %i.bz, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL20calc_standard_params6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = load double, ptr %1, align 8, !tbaa !49  ; 2 uses
  %i.d = tail call double @sin(double noundef %i.c) #8 ; 3 uses
  %i.e = tail call double @cos(double noundef %i.c) #8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !50 ; 8 uses
  %i.h = tail call double @sin(double noundef %i.g) #8 ; 6 uses
  %i.i = tail call double @cos(double noundef %i.g) #8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.k = load double, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.m = load double, ptr %i.l, align 8, !tbaa !53 ; 10 uses
  %i.n = load double, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = load double, ptr %i.p, align 8, !tbaa !43 ; 2 uses
  %i.t = load double, ptr %i.o, align 8, !tbaa !42 ; 3 uses
  %i.u = load double, ptr %i.r, align 8, !tbaa !45 ; 2 uses
  %i.v = load double, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.x = load double, ptr %i.w, align 8, !tbaa !55 ; 6 uses
  %i.y = tail call double @sin(double noundef %i.g) #8 ; 2 uses
  %i.z = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.z, label %_ZL2RMddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = fcmp oeq double %i.g, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = fsub double 1.000000e+00, %i.x
  %i.ac = fmul double %i.m, %i.ab
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call double @llvm.fabs.f64(double %i.g)
  %i.ae = fcmp oeq double %i.ad, f0x3FF921FB54442D18
  %i.af = fsub double 1.000000e+00, %i.x          ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call double @sqrt(double noundef %i.af) #8
  %i.ah = fdiv double %i.m, %i.ag
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = fmul double %i.m, %i.af
  %i.aj = fneg double %i.y
  %i.ak = fmul double %i.x, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.y, double 1.000000e+00)
  %i.am = tail call double @pow(double noundef %i.al, double noundef 1.500000e+00) #8
  %i.an = fdiv double %i.ai, %i.am
  br label %bb.g

_ZL2RMddd.exit:                                   ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.g)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %cdce.call, label %_ZL2RNddd.exit, !prof !56

cdce.call:                                        ; preds = %_ZL2RMddd.exit
  %i.aq = tail call double @sin(double noundef %i.g) #8 ; 0 uses
  br label %_ZL2RNddd.exit

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.ph = phi double [ %i.ah, %bb.e ], [ %i.ac, %bb.c ], [ %i.an, %bb.f ]
  %i.ar = tail call double @sin(double noundef %i.g) #8 ; 2 uses
  %i.as = fneg double %i.ar
  %i.at = fmul double %i.x, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ar, double 1.000000e+00)
  %i.av = tail call double @sqrt(double noundef %i.au) #8
  %i.aw = fdiv double %i.m, %i.av
  br label %_ZL2RNddd.exit

_ZL2RNddd.exit:                                   ; preds = %cdce.call, %_ZL2RMddd.exit, %bb.g
  %.0.i68 = phi double [ %.0.i.ph, %bb.g ], [ %i.m, %_ZL2RMddd.exit ], [ %i.m, %cdce.call ] ; 2 uses
  %.0.i65 = phi double [ %i.aw, %bb.g ], [ %i.m, %_ZL2RMddd.exit ], [ %i.m, %cdce.call ] ; 5 uses
  %i.ax = fneg double %i.n                        ; 2 uses
  %i.ay = fsub double 1.000000e+00, %i.k          ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %i.bb = fadd double %.0.i68, %i.ba              ; 2 uses
  %i.bc = fcmp oeq double %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL2RNddd.exit
  store double +inf, ptr %1, align 8, !tbaa !49
  br label %bb.l

bb.i:                                             ; preds = %_ZL2RNddd.exit
  %i.bd = fadd double %.0.i65, %i.ba
  %i.be = fmul double %i.i, %i.bd                 ; 2 uses
  %i.bf = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double +inf, ptr %1, align 8, !tbaa !49
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bg = fmul double %i.h, %i.i
  %i.bh = fdiv double %.0.i68, %i.ay
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0.i65, double %i.ay, double %i.bh)
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = fneg double %i.d
  %i.bl = fmul double %i.x, %.0.i65
  %i.bm = fmul double %i.h, %i.bl
  %i.bn = fmul double %i.i, %i.bm
  %i.bo = fmul double %i.v, %i.bn
  %i.bp = fdiv double %i.bo, %i.m
  %i.bq = fmul double %i.i, %i.n
  %i.br = fmul double %i.i, %i.t
  %i.bs = fmul double %i.d, %i.br
  %i.bt = fneg double %i.m
  %i.bu = fmul double %i.ay, %.0.i65
  %i.bv = fmul double %i.h, %i.bu
  %i.bw = fmul double %i.h, %i.t
  %3 = fdiv double %i.bt, %.0.i65
  %4 = fmul double %i.bw, %i.bk
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.e, double %i.bs)
  %5 = tail call double @llvm.fmuladd.f64(double %i.s, double %i.h, double %i.bx)
  %i.by = tail call double @llvm.fmuladd.f64(double %3, double %i.v, double %5)
  %i.bz = insertelement <2 x double> poison, double %i.h, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ax, i64 1
  %i.cd = fmul <2 x double> %i.ca, %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.u, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.e, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %4, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cf, <2 x double> %i.ch) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.s, double %i.i, double %i.cj)
  %i.cl = fadd double %i.ck, %i.bp
  %i.cm = fmul double %i.e, %i.t
  %i.cn = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bj, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.u, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cl, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cs)
  %i.cu = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.bb, i64 1
  %i.cw = fdiv <2 x double> %i.ct, %i.cv
  store <2 x double> %i.cw, ptr %1, align 8, !tbaa !47
  %i.cx = extractelement <2 x double> %i.ci, i64 0
  store double %i.cx, ptr %i.az, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

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
!37 = !{!36, !15, i64 380}
!38 = !{!36, !15, i64 384}
!39 = !{!36, !8, i64 88}
!40 = !{!"_ZTSN12_GLOBAL__N_120pj_opaque_molodenskyE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !5, i64 40}
!41 = !{!40, !14, i64 0}
!42 = !{!40, !14, i64 8}
!43 = !{!40, !14, i64 16}
!44 = !{!40, !14, i64 24}
!45 = !{!40, !14, i64 32}
!46 = !{!40, !5, i64 40}
!47 = !{!14, !14, i64 0}
!48 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!49 = !{!48, !14, i64 0}
!50 = !{!48, !14, i64 8}
!51 = !{!48, !14, i64 16}
!52 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!53 = !{!36, !14, i64 168}
!54 = !{!36, !14, i64 272}
!55 = !{!36, !14, i64 216}
!56 = !{!"branch_weights", i32 1, i32 1048575}
!57 = !{!36, !10, i64 8}
!58 = !{!36, !10, i64 16}
!59 = !{!36, !5, i64 360}
!60 = !{!36, !8, i64 136}
!61 = !{!36, !8, i64 144}
!62 = !{!36, !8, i64 120}
!63 = !{!36, !8, i64 128}
!64 = !{!36, !8, i64 104}
!65 = !{!36, !8, i64 112}
!66 = !{!36, !9, i64 0}
!67 = !{!36, !11, i64 24}
!68 = distinct !{!68, !"_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts"}
!69 = distinct !{!69, !68, !"_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts: argument 0"}
!70 = !{!69}
!71 = distinct !{!71, !"_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts"}
!72 = distinct !{!72, !71, !"_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts: argument 0"}
!73 = !{!72}
!74 = distinct !{!74, !"_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts"}
!75 = distinct !{!75, !74, !"_ZL24pj_molodensky_forward_3d6PJ_LPZP8PJconsts: argument 0"}
!76 = !{!75}
!77 = distinct !{!77, !"_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts"}
!78 = distinct !{!78, !77, !"_ZL24pj_molodensky_reverse_3d6PJ_XYZP8PJconsts: argument 0"}
!79 = !{!78}
end_hunk_0
