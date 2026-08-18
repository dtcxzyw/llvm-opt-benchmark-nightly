inline.NumInlined: 171
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL25pj_deformation_reverse_4dR8PJ_COORDP8PJconsts:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi double [ %i.k, %bb.d ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call fastcc void @_ZL28pj_deformation_reverse_shiftP8PJconstsRK6PJ_XYZd(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25pj_deformation_forward_3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 16           ; 6 uses
  %4 = alloca %union.PJ_COORD, align 16           ; 5 uses
  %5 = alloca %struct.PJ_XYZ, align 16            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !105
  %i.c = load <2 x double>, ptr %3, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 16
  %i.d = load double, ptr %i.b, align 8, !tbaa !84
  %i.e = fcmp oeq double %i.d, +inf
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  %i.f = load <2 x double>, ptr %4, align 16
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.10.0.copyload18 = load double, ptr %.sroa.10.0..sroa_idx17, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void (ptr, ptr, ...) @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.27)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call fastcc void @_ZL29pj_deformation_get_grid_shiftP8PJconstsRK6PJ_XYZ(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.g = load <2 x double>, ptr %5, align 16, !tbaa !104 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fcmp oeq double %i.h, +inf
  %i.j = insertelement <2 x double> %i.g, double +inf, i64 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load double, ptr %i.b, align 8, !tbaa !84 ; 2 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.g, <2 x double> %i.c)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double %.sroa.7.0.copyload, double %.sroa.10.0.copyload)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi double [ %i.o, %bb.d ], [ %.sroa.10.0.copyload18, %bb.b ], [ %.sroa.7.0.copyload, %bb.c ]
  %i.p = phi <2 x double> [ %i.n, %bb.d ], [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  store <2 x double> %i.p, ptr %0, align 8, !tbaa !104
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %.sroa.10.0..sroa_idx21, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25pj_deformation_reverse_3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %.sroa.0 = alloca [4 x double], align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !105
  %i.c = load double, ptr %i.b, align 8, !tbaa !84 ; 2 uses
  %i.d = fcmp oeq double %i.c, +inf
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %.sroa.0)
  call void (ptr, ptr, ...) @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.27)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_ZL28pj_deformation_reverse_shiftP8PJconstsRK6PJ_XYZd(ptr dead_on_unwind noalias writable align 8 %.sroa.0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29pj_deformation_get_grid_shiftP8PJconstsRK6PJ_XYZ(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 8 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %4 = alloca %union.PJ_COORD, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = tail call i32 @proj_errno_reset(ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  call void @_Z8pj_inv3d6PJ_XYZP8PJconsts(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %3, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %2, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !104
  %i.n = call fastcc noundef zeroext i1 @_ZL30pj_deformation_get_grid_valuesP8PJconstsPN12_GLOBAL__N_115deformationDataERK5PJ_LPRdS7_S7_(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.n, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.o = load double, ptr %i.a, align 8, !tbaa !104
  %i.p = load double, ptr %i.b, align 8, !tbaa !104
  %i.q = load double, ptr %i.c, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !102
  %.pre44 = load double, ptr %3, align 8, !tbaa !102
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.o, i64 1
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.01.0.copyload = load double, ptr %3, align 8, !tbaa !104 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !104 ; 4 uses
  %i.u = call { double, double } @_ZN5osgeo4proj14pj_hgrid_valueEP8PJconstsRKSt6vectorISt10unique_ptrINS0_22HorizontalShiftGridSetESt14default_deleteIS5_EESaIS8_EE5PJ_LP(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %i.t, double %.sroa.01.0.copyload, double %.sroa.22.0.copyload) ; 2 uses
  %i.v = extractvalue { double, double } %i.u, 0
  %i.w = extractvalue { double, double } %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = call noundef double @_ZN5osgeo4proj14pj_vgrid_valueEP8PJconstsRKSt6vectorISt10unique_ptrINS0_20VerticalShiftGridSetESt14default_deleteIS5_EESaIS8_EE5PJ_LPd(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %i.x, double %.sroa.01.0.copyload, double %.sroa.22.0.copyload, double noundef 1.000000e+00)
  %i.z = call i32 @proj_errno(ptr noundef nonnull %1)
  %i.aa = icmp eq i32 %i.z, 2052
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = call double @proj_todeg(double noundef %.sroa.01.0.copyload)
  %i.ac = call double @proj_todeg(double noundef %.sroa.22.0.copyload)
  call void (ptr, ptr, ...) @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, double noundef %i.ab, double noundef %i.ac)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.v, i64 1
  %i.af = fdiv <2 x double> %i.ae, splat (double 1.000000e+03)
  %i.ag = fdiv double %i.y, 1.000000e+03
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ah = phi double [ %.sroa.01.0.copyload, %bb.f ], [ %.pre44, %.thread ] ; 2 uses
  %i.ai = phi double [ %.sroa.22.0.copyload, %bb.f ], [ %.pre, %.thread ] ; 2 uses
  %.sroa.18.1 = phi double [ %i.ag, %bb.f ], [ %i.q, %.thread ] ; 2 uses
  %i.aj = phi <2 x double> [ %i.af, %bb.f ], [ %i.s, %.thread ] ; 4 uses
  %i.ak = call double @sin(double noundef %i.ai) #12 ; 2 uses
  %i.al = call double @cos(double noundef %i.ai) #12 ; 2 uses
  %i.am = call double @sin(double noundef %i.ah) #12 ; 2 uses
  %i.an = call double @cos(double noundef %i.ah) #12 ; 2 uses
  %i.ao = fneg double %i.ak
  %i.ap = fmul double %.sroa.18.1, %i.ak
  %i.aq = extractelement <2 x double> %i.aj, i64 0
  %i.ar = call double @llvm.fmuladd.f64(double %i.al, double %i.aq, double %i.ap)
  %i.as = call i32 @proj_errno_restore(ptr noundef nonnull %1, i32 noundef %i.d) ; 0 uses
  %i.at = insertelement <2 x double> poison, double %i.an, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.am, i64 1 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %5 = insertelement <2 x double> %i.aj, double %i.am, i64 0
  %6 = fneg <2 x double> %i.aj
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x double> %7, double %i.an, i64 1
  %8 = fmul <2 x double> %5, %i.ay
  %9 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %9, <2 x double> %8)
  %i.ba = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.bb, %i.au
  %i.bd = insertelement <2 x double> poison, double %.sroa.18.1, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.be, <2 x double> %i.az)
  store <2 x double> %i.bf, ptr %0, align 8, !tbaa !104
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ar, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !104
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #1

declare void @_Z8pj_inv3d6PJ_XYZP8PJconsts(ptr dead_on_unwind writable sret(%struct.PJ_LPZ) align 8, ptr noundef byval(%struct.PJ_XYZ) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL30pj_deformation_get_grid_valuesP8PJconstsPN12_GLOBAL__N_115deformationDataERK5PJ_LPRdS7_S7_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call noundef ptr @_ZN5osgeo4proj20pj_find_generic_gridERKSt6vectorISt10unique_ptrINS0_19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EERK5PJ_LPRPS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(120) %i.d)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %3, align 8, !tbaa !104
  store double 0.000000e+00, ptr %4, align 8, !tbaa !104
  store double 0.000000e+00, ptr %5, align 8, !tbaa !104
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(144) %i.d) ; 2 uses
  %i.m = icmp slt i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef %0, ptr noundef nonnull @.str.21)
  br label %bb.r

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 noundef %.149)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !106
  switch i64 %i.t, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %bb.i
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

bb.g:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.04379 = phi i32 [ 0, %.preheader ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 5 uses
  %.04478 = phi i32 [ 2, %.preheader ], [ %.145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 4 uses
  %.04677 = phi i32 [ 1, %.preheader ], [ %.147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 4 uses
  %.04876 = phi i32 [ 0, %.preheader ], [ %.149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 noundef %.04379)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !106  ; 4 uses
  %.pre81 = load ptr, ptr %6, align 8, !tbaa !107 ; 6 uses
  switch i64 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.y = load i64, ptr %.pre81, align 1
  %i.z = xor i64 %i.y, 7810779281091682661
  %i.aa = getelementptr i8, ptr %.pre81, i64 5
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 %i.ab, 8751735851679769974
  %i.ad = or i64 %i.z, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select90 = select i1 %i.ag, i32 %.04379, i32 %.04876
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58: ; preds = %bb.g
  %bcmp.i57 = call i32 @bcmp(ptr %.pre81, ptr nonnull @.str.23, i64 %i.x)
  %i.ah = icmp eq i32 %bcmp.i57, 0
  %spec.select91 = select i1 %i.ah, i32 %.04379, i32 %.04677
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %bb.g
  %bcmp.i59 = call i32 @bcmp(ptr %.pre81, ptr nonnull @.str.24, i64 %i.x)
  %bcmp.i59.fr = freeze i32 %bcmp.i59
  %i.ai = icmp eq i32 %bcmp.i59.fr, 0
  %spec.select = select i1 %i.ai, i32 %.04379, i32 %.04478
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %.149 = phi i32 [ %.04876, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ], [ %spec.select90, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.04876, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.04876, %bb.g ] ; 3 uses
  %.147 = phi i32 [ %.04677, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ], [ %.04677, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %spec.select91, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.04677, %bb.g ] ; 2 uses
  %.145 = phi i32 [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ], [ %.04478, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.04478, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.04478, %bb.g ] ; 2 uses
  %i.aj = icmp eq ptr %.pre81, %i.o
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ak = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.al = load i64, ptr %i.o, align 8, !tbaa !102
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre81, i64 noundef %i.am) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.an = add nuw nsw i32 %.04379, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.l
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !108

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.ao = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.ap = load i128, ptr %i.ao, align 1
  %i.aq = xor i128 %i.ap, 43129275113957474552762480631749568877
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = zext i32 %i.as to i128
  %i.au = xor i128 %i.at, 1918985593
  %i.av = or i128 %i.aq, %i.au
  %i.aw = icmp ne i128 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not75 = icmp eq i32 %i.ax, 0
  br i1 %.not75, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef %0, ptr noundef nonnull @.str.26)
          to label %bb.p unwind label %bb.h

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !109
  %i.az = load ptr, ptr %0, align 8, !tbaa !44
  %i.ba = invoke noundef zeroext i1 @_ZN5osgeo4proj39pj_bilinear_interpolation_three_samplesEP6pj_ctxPKNS0_16GenericShiftGridERK5PJ_LPiiiRdS9_S9_Rb(ptr noundef %i.az, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.149, i32 noundef %.147, i32 noundef %.145, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.ba, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.b, align 1, !tbaa !109, !range !110, !noundef !111
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bd = invoke fastcc noundef zeroext i1 @_ZL30pj_deformation_get_grid_valuesP8PJconstsPN12_GLOBAL__N_115deformationDataERK5PJ_LPRdS7_S7_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bf = load double, ptr %3, align 8, !tbaa !104
  %i.bg = fdiv double %i.bf, 1.000000e+03
  store double %i.bg, ptr %3, align 8, !tbaa !104
end_hunk_0
