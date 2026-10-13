Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/molodensky?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@_ZL24pj_molodensky_forward_2d5PJ_LPP8PJconsts:bb.a
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
  %i.d = tail call double @sin(double noundef %i.c) #8 ; 2 uses
  %i.e = tail call double @cos(double noundef %i.c) #8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !50 ; 9 uses
  %i.h = tail call double @sin(double noundef %i.g) #8 ; 5 uses
  %i.i = tail call double @cos(double noundef %i.g) #8 ; 4 uses
  %i.j = load double, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load double, ptr %i.k, align 8, !tbaa !42 ; 3 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !43 ; 2 uses
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
  %3 = fneg double %i.j                           ; 2 uses
  %4 = fmul double %i.h, %3
  %i.az = fmul double %i.h, %i.m
  %i.ba = fneg double %i.d
  %i.bb = fmul double %i.i, %i.j
  %i.bc = fmul double %i.i, %i.m
  %i.bd = insertelement <2 x double> poison, double %i.e, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.d, i64 1 ; 2 uses
  %i.bf = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.bc, i64 1
  %i.bh = fmul <2 x double> %i.be, %i.bg
  %i.bi = insertelement <2 x double> poison, double %3, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bb, i64 1
  %i.bk = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bk, <2 x double> %i.bh) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 1
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.n, double %i.h, double %i.bm)
  %i.bo = extractelement <2 x double> %i.p, i64 0
  %i.bp = fsub double %i.bn, %i.bo
  %i.bq = insertelement <2 x double> %i.p, double %i.az, i64 1
  %i.br = insertelement <2 x double> poison, double %i.t, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.ba, i64 1
  %i.bt = fmul <2 x double> %i.bq, %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %4, i64 1
  %i.bw = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.e, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bx, <2 x double> %i.bt) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 1
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.n, double %i.i, double %i.bz)
  %i.cb = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.v, double %i.ca)
  %i.cd = insertelement <2 x double> %i.bl, double %i.cc, i64 1
  %i.ce = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %.0.i50, i64 1
  %i.cg = fdiv <2 x double> %i.cd, %i.cf
  %i.ch = fmul double %i.h, %i.cb
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.h, double %i.bp)
  store <2 x double> %i.cg, ptr %1, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !51
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
  %i.s = load double, ptr %i.o, align 8, !tbaa !42 ; 3 uses
  %i.t = load double, ptr %i.p, align 8, !tbaa !43 ; 2 uses
  %i.u = load double, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.v = load double, ptr %i.r, align 8, !tbaa !45 ; 2 uses
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
  %i.bo = fmul double %i.u, %i.bn
  %i.bp = fdiv double %i.bo, %i.m
  %i.bq = fmul double %i.i, %i.n
  %i.br = fmul double %i.i, %i.s
  %i.bs = fmul double %i.d, %i.br
  %i.bt = fneg double %i.m
  %i.bu = fmul double %i.ay, %.0.i65
  %i.bv = fmul double %i.h, %i.bu
  %i.bw = fmul double %i.h, %i.s
  %i.bx = fmul double %i.bw, %i.bk
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.e, double %i.bs)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.t, double %i.h, double %i.by)
  %i.ca = fdiv double %i.bt, %.0.i65
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.u, double %i.bz)
  %i.cc = insertelement <2 x double> poison, double %i.h, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.ax, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.e, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.bx, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ci, <2 x double> %i.ck) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 1
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.t, double %i.i, double %i.cm)
  %i.co = fadd double %i.cn, %i.bp
  %i.cp = fmul double %i.e, %i.s
  %i.cq = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bj, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.d, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.v, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.co, i64 1
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ct, <2 x double> %i.cv)
  %i.cx = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.bb, i64 1
  %i.cz = fdiv <2 x double> %i.cw, %i.cy
  store <2 x double> %i.cz, ptr %1, align 8, !tbaa !47
  %i.da = extractelement <2 x double> %i.cl, i64 0
  store double %i.da, ptr %i.az, align 8, !tbaa !51
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

end_hunk_0
