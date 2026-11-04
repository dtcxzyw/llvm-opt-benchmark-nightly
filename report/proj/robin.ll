Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/robin?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@pj_robin:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z34pj_projection_specific_setup_robinP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15robin_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15robin_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15robin_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = insertelement <2 x double> poison, double %0, i64 0
  %i.b = insertelement <2 x double> %i.a, double %1, i64 1
  %i.c = fdiv <2 x double> %i.b, <double 8.487000e-01, double 1.352300e+00> ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 4 uses
  %i.e = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 9 uses
  %i.g = fcmp ult double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ogt double %i.f, f0x3FF000010C6F7A0B
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp olt double %1, 0.000000e+00
  %i.k = select i1 %i.j, double f0xBFF921FB54442D18, double f0x3FF921FB54442D18
  %i.l = fdiv double %i.d, f0x3FE107C840000000
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.m = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fmul nnan double %i.f, 1.800000e+01
  %i.o = tail call double @llvm.floor.f64(double %i.n)
  %i.p = tail call i64 @lround(double noundef %i.o) #6 ; 2 uses
  %or.cond = icmp ult i64 %i.p, 18
  br i1 %or.cond, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.q = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.n

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0 = phi i64 [ %.0.be, %.preheader.backedge ], [ %i.p, %bb.f ] ; 5 uses
  %i.r = getelementptr inbounds [16 x i8], ptr @_ZL1Y, i64 %.0 ; 4 uses
  %i.s = load float, ptr %i.r, align 16, !tbaa !50 ; 2 uses
  %i.t = fpext float %i.s to double               ; 3 uses
  %i.u = fcmp olt double %i.f, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.v = add nsw i64 %.0, -1
  br label %.preheader.backedge

bb.h:                                             ; preds = %.preheader
  %i.w = add nsw i64 %.0, 1                       ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr @_ZL1Y, i64 %i.w
  %i.y = load float, ptr %i.x, align 16, !tbaa !50 ; 2 uses
  %i.z = fpext float %i.y to double
  %i.aa = fcmp ult double %i.f, %i.z
  br i1 %i.aa, label %bb.i, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %bb.g
  %.0.be = phi i64 [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  br label %.preheader, !llvm.loop !47

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !41
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !41
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !41
  %i.ab = fsub double %i.f, %i.t
  %i.ac = fmul double %i.ab, 5.000000e+00
  %i.ad = fsub float %i.y, %i.s
  %i.ae = fpext float %i.ad to double
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = fpext float %.sroa.6.0.copyload to double ; 2 uses
  %i.ah = fpext float %.sroa.8.0.copyload to double ; 2 uses
  %i.ai = fpext float %.sroa.10.0.copyload to double ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %.05673, -1                 ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.l, label %bb.k, !llvm.loop !48

bb.k:                                             ; preds = %bb.i, %bb.j
  %.05673 = phi i32 [ 100, %bb.i ], [ %i.aj, %bb.j ]
  %.05772 = phi double [ %i.af, %bb.i ], [ %i.au, %bb.j ] ; 7 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %.05772, double %i.ai, double %i.ah)
  %i.al = tail call double @llvm.fmuladd.f64(double %.05772, double %i.ak, double %i.ag)
  %i.am = tail call double @llvm.fmuladd.f64(double %.05772, double %i.al, double %i.t)
  %i.an = fsub double %i.am, %i.f
  %i.ao = fmul double %.05772, 2.000000e+00
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ah, double %i.ag)
  %i.aq = fmul double %.05772, %.05772
  %i.ar = fmul double %i.aq, 3.000000e+00
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ai, double %i.ap)
  %i.at = fdiv double %i.an, %i.as                ; 2 uses
  %i.au = fsub double %.05772, %i.at              ; 5 uses
  %i.av = tail call double @llvm.fabs.f64(double %i.at)
  %i.aw = fcmp olt double %i.av, 1.000000e-10
  br i1 %i.aw, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.ax, i32 noundef 2050)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.l
  %i.ay = mul nsw i64 %.0, 5
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fadd double %i.au, %i.az
  %i.bb = fmul double %i.ba, f0x3F91DF46A2529D39  ; 2 uses
  %i.bc = fcmp olt double %1, 0.000000e+00
  %i.bd = fneg double %i.bb
  %.sroa.9.0 = select i1 %i.bc, double %i.bd, double %i.bb
  %i.be = getelementptr inbounds [16 x i8], ptr @_ZL1X, i64 %.0
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !41
  %i.bg = fpext <4 x float> %i.bf to <4 x double> ; 4 uses
  %i.bh = extractelement <4 x double> %i.bg, i64 2
  %i.bi = extractelement <4 x double> %i.bg, i64 3
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.au, double %i.bi, double %i.bh)
  %i.bk = extractelement <4 x double> %i.bg, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.au, double %i.bj, double %i.bk)
  %i.bm = extractelement <4 x double> %i.bg, i64 0
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.au, double %i.bl, double %i.bm)
  %i.bo = fdiv double %i.d, %i.bn                 ; 2 uses
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ogt double %i.bp, f0x400921FB54442D18
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.br = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.043.0.copyload = load double, ptr %3, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %.loopexit, %bb.d, %bb.c
  %.sroa.9.4 = phi double [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.f, %.thread ], [ %.sroa.9.0.copyload, %bb.m ], [ %.sroa.9.0, %.loopexit ]
  %.sroa.043.3 = phi double [ %i.d, %bb.c ], [ %i.l, %bb.d ], [ %i.d, %.thread ], [ %.sroa.043.0.copyload, %bb.m ], [ %i.bo, %.loopexit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.043.3, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.9.4, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15robin_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.b = fcmp uno double %1, 0.000000e+00
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double f0x4026EB167B830193, double 1.000000e-15)
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = tail call i64 @lround(double noundef %i.d) #6 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.e, i64 18) ; 3 uses
  %i.i = uitofp nneg i64 %i.h to double
  %i.j = tail call nnan double @llvm.fmuladd.f64(double %i.i, double f0xBFB657184AE74487, double %i.a)
  %i.k = fmul nnan double %i.j, f0x404CA5DC1A63C1F8 ; 6 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZL1X, i64 %i.h
  %i.m = load <4 x float>, ptr %i.l, align 16, !tbaa !41
  %i.n = fpext <4 x float> %i.m to <4 x double>   ; 4 uses
  %i.o = extractelement <4 x double> %i.n, i64 2
  %i.p = extractelement <4 x double> %i.n, i64 3
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double %i.o)
  %i.r = extractelement <4 x double> %i.n, i64 1
  %i.s = tail call double @llvm.fmuladd.f64(double %i.k, double %i.q, double %i.r)
  %i.t = extractelement <4 x double> %i.n, i64 0
  %i.u = tail call double @llvm.fmuladd.f64(double %i.k, double %i.s, double %i.t)
  %i.v = fmul double %i.u, 8.487000e-01
  %i.w = fmul double %0, %i.v
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZL1Y, i64 %i.h
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !41
  %i.z = fpext <4 x float> %i.y to <4 x double>   ; 4 uses
  %i.aa = extractelement <4 x double> %i.z, i64 2
  %i.ab = extractelement <4 x double> %i.z, i64 3
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ab, double %i.aa)
  %i.ad = extractelement <4 x double> %i.z, i64 1
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ac, double %i.ad)
  %i.af = extractelement <4 x double> %i.z, i64 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ae, double %i.af)
  %i.ah = fmul double %i.ag, 1.352300e+00         ; 2 uses
  %i.ai = fcmp olt double %1, 0.000000e+00
  %i.aj = fneg double %i.ah
  %.sroa.3.0 = select i1 %i.ai, double %i.aj, double %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.sroa.3.1 = phi double [ 0.000000e+00, %.thread ], [ %.sroa.3.0, %bb.c ]
  %.sroa.021.0 = phi double [ 0.000000e+00, %.thread ], [ %i.w, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!37 = !{!36, !14, i64 216}
!38 = !{!36, !8, i64 112}
!39 = !{!36, !8, i64 104}
!40 = !{!"float", !4, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!36, !10, i64 8}
!43 = !{!36, !10, i64 16}
!44 = !{!36, !5, i64 360}
!45 = !{!36, !15, i64 380}
!46 = !{!36, !15, i64 384}
!47 = distinct !{!47, !51}
!48 = distinct !{!48, !51}
!49 = !{!"_ZTSN12_GLOBAL__N_15COEFSE", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!50 = !{!49, !40, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!36, !9, i64 0}
!53 = !{!14, !14, i64 0}
end_hunk_0
