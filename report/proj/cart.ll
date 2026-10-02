Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cart?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@pj_cart:bb.a
  store i32 %.sink, ptr %i.k, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %.sink17, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_cartP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 136), (380, 388)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL9cartesian6PJ_LPZP8PJconsts, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZL8geodetic6PJ_XYZP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL12cart_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL12cart_reverse5PJ_XYP8PJconsts, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 4, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 3, ptr %i.f, align 8, !tbaa !42
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL9cartesian6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.c = tail call double @cos(double noundef %i.b) #8
  %i.d = tail call double @sin(double noundef %i.b) #8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !45 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !46 ; 3 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  br i1 %i.i, label %_ZL26normal_radius_of_curvatureddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg double %i.d
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.d, double 1.000000e+00)
  %i.m = tail call double @sqrt(double noundef %i.l) #8
  %i.n = fdiv double %i.f, %i.m
  br label %_ZL26normal_radius_of_curvatureddd.exit

_ZL26normal_radius_of_curvatureddd.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.n, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !47 ; 2 uses
  %i.q = fadd double %.0.i, %i.p
  %i.r = fmul double %i.c, %i.q                   ; 2 uses
  %i.s = load double, ptr %1, align 8, !tbaa !48  ; 2 uses
  %i.t = tail call double @cos(double noundef %i.s) #8
  %i.u = fmul double %i.r, %i.t
  store double %i.u, ptr %0, align 8, !tbaa !50
  %i.v = tail call double @sin(double noundef %i.s) #8
  %i.w = fmul double %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.w, ptr %i.x, align 8, !tbaa !51
  %i.y = fsub double 1.000000e+00, %i.h
  %i.z = tail call double @llvm.fmuladd.f64(double %.0.i, double %i.y, double %i.p)
  %i.aa = fmul double %i.d, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.aa, ptr %i.ab, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL8geodetic6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.c = load double, ptr %i.b, align 8, !tbaa !56 ; 3 uses
  %i.d = fmul double %i.a, %i.c                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !51
  %i.g = fmul double %i.c, %i.f                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !52 ; 3 uses
  %i.j = fmul double %i.g, %i.g
  %i.k = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.j)
  %sqrt71 = tail call double @llvm.sqrt.f64(double %i.k) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.m = load double, ptr %i.l, align 8, !tbaa !57
  %i.n = fsub double 1.000000e+00, %i.m           ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.p = load double, ptr %i.o, align 8, !tbaa !58
  %i.q = fmul double %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.s = load double, ptr %i.r, align 8, !tbaa !46 ; 3 uses
  %i.t = fmul double %i.c, %i.i                   ; 3 uses
  %i.u = fmul double %i.n, %sqrt71                ; 3 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.v) ; 2 uses
  %sqrt70 = tail call double @llvm.sqrt.f64(double %i.w)
  %i.x = fcmp une double %i.w, 0.000000e+00
  %i.y = fdiv double 1.000000e+00, %sqrt70        ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.y, i64 1 ; 2 uses
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x i1> poison, i1 %i.x, i64 0
  %i.af = shufflevector <2 x i1> %i.ae, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x double> %i.ad, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 4 uses
  %i.ah = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.s, i64 1
  %i.aj = fmul <2 x double> %i.ai, %i.ag
  %i.ak = fneg <2 x double> %i.ag
  %i.al = shufflevector <2 x double> %i.ag, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = fmul <2 x double> %i.al, %i.aj
  %i.an = insertelement <2 x double> %i.ac, double %sqrt71, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ag, <2 x double> %i.an) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 1 ; 5 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = extractelement <2 x double> %i.ao, i64 0 ; 4 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.aq) ; 2 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %i.as)
  %i.at = fcmp une double %i.as, 0.000000e+00     ; 2 uses
  %i.au = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.av = fmul double %i.ap, %i.au
  %i.aw = fmul double %i.ar, %i.au
  %.059 = select i1 %i.at, double %i.av, double 1.000000e+00 ; 3 uses
  %.0 = select i1 %i.at, double %i.aw, double 0.000000e+00 ; 3 uses
  %i.ax = fcmp ugt double %i.ap, 0.000000e+00
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ax, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.az = fcmp oge double %i.i, 0.000000e+00      ; 2 uses
  %i.ba = select i1 %i.az, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  store double %i.ba, ptr %i.ay, align 8, !tbaa !44
  %i.bb = select i1 %i.az, double 1.000000e+00, double -1.000000e+00
  %i.bc = tail call double @atan2(double noundef %i.g, double noundef %i.d) #8
  store double %i.bc, ptr %0, align 8, !tbaa !48
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bd = fdiv double %i.ar, %i.ap
  %i.be = tail call double @atan(double noundef %i.bd) #8
  store double %i.be, ptr %i.ay, align 8, !tbaa !44
  %i.bf = tail call double @atan2(double noundef %i.g, double noundef %i.d) #8
  store double %i.bf, ptr %0, align 8, !tbaa !48
  %i.bg = fcmp olt double %.059, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %.169 = phi double [ %i.bb, %.thread ], [ %.0, %bb.b ] ; 2 uses
  %.16068 = phi double [ 0.000000e+00, %.thread ], [ %.059, %bb.b ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !45
  %i.bj = fmul double %.16068, %.16068            ; 2 uses
  %i.bk = fmul double %.169, %.169
  %i.bl = fmul double %i.n, %i.n                  ; 2 uses
  %i.bm = fmul double %i.bl, %i.bk                ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bj)
  %i.bo = fadd double %i.bj, %i.bm
  %i.bp = fdiv double %i.bn, %i.bo
  %i.bq = tail call double @sqrt(double noundef %i.bp) #8
  %i.br = fmul double %i.bi, %i.bq
  %i.bs = tail call double @llvm.fabs.f64(double %i.i)
  %i.bt = fsub double %i.bs, %i.br
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  %i.bw = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.bw, label %_ZL26normal_radius_of_curvatureddd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = fneg double %.0
  %i.by = fmul double %i.s, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %.0, double 1.000000e+00)
  %i.ca = tail call double @sqrt(double noundef %i.bz) #8
  %i.cb = fdiv double %i.bv, %i.ca
  br label %_ZL26normal_radius_of_curvatureddd.exit

_ZL26normal_radius_of_curvatureddd.exit:          ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.cb, %bb.e ], [ %i.bv, %bb.d ]
  %i.cc = fmul double %sqrt71, %i.bv
  %i.cd = fdiv double %i.cc, %.059
  %i.ce = fsub double %i.cd, %.0.i
  br label %bb.f

bb.f:                                             ; preds = %_ZL26normal_radius_of_curvatureddd.exit, %bb.c
  %.sink = phi double [ %i.ce, %_ZL26normal_radius_of_curvatureddd.exit ], [ %i.bt, %bb.c ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %i.cf, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL12cart_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call double @cos(double noundef %1) #8, !noalias !61
  %i.b = tail call double @sin(double noundef %1) #8, !noalias !61 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.d = load double, ptr %i.c, align 8, !tbaa !45, !noalias !61 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.f = load double, ptr %i.e, align 8, !tbaa !46, !noalias !61 ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %_ZL9cartesian6PJ_LPZP8PJconsts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fneg double %i.b
  %i.i = fmul double %i.f, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.b, double 1.000000e+00)
  %i.k = tail call double @sqrt(double noundef %i.j) #8, !noalias !61
  %i.l = fdiv double %i.d, %i.k
  br label %_ZL9cartesian6PJ_LPZP8PJconsts.exit

_ZL9cartesian6PJ_LPZP8PJconsts.exit:              ; preds = %bb.a, %bb.b
  %.0.i.i = phi double [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %i.m = fadd double %.0.i.i, 0.000000e+00
  %i.n = fmul double %i.a, %i.m                   ; 2 uses
  %i.o = tail call double @cos(double noundef %0) #8, !noalias !61
  %i.p = fmul double %i.o, %i.n
  %i.q = tail call double @sin(double noundef %0) #8, !noalias !61
  %i.r = fmul double %i.n, %i.q
  %.fca.0.insert = insertvalue { double, double } poison, double %i.p, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.r, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal { double, double } @_ZL12cart_reverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct.PJ_LPZ, align 8             ; 5 uses
  %4 = alloca %struct.PJ_XYZ, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store double %0, ptr %4, align 8, !tbaa !62
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %1, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !tbaa !62
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !62
  call void @_ZL8geodetic6PJ_XYZP8PJconsts(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %3, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %4, ptr noundef %2)
  %.sroa.0.sroa.0.0.copyload4 = load double, ptr %3, align 8, !tbaa !62
  %.sroa.0.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.6.0.copyload7 = load double, ptr %.sroa.0.sroa.6.0..sroa_idx6, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.sroa.0.0.copyload4, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.0.sroa.6.0.copyload7, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!37 = !{!36, !8, i64 120}
!38 = !{!36, !8, i64 128}
!39 = !{!36, !8, i64 104}
!40 = !{!36, !8, i64 112}
!41 = !{!36, !15, i64 380}
!42 = !{!36, !15, i64 384}
!43 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!43, !14, i64 8}
!45 = !{!36, !14, i64 168}
!46 = !{!36, !14, i64 216}
!47 = !{!43, !14, i64 16}
!48 = !{!43, !14, i64 0}
!49 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!50 = !{!49, !14, i64 0}
!51 = !{!49, !14, i64 8}
!52 = !{!49, !14, i64 16}
!53 = !{!36, !10, i64 8}
!54 = !{!36, !10, i64 16}
!55 = !{!36, !5, i64 360}
!56 = !{!36, !14, i64 184}
!57 = !{!36, !14, i64 272}
!58 = !{!36, !14, i64 232}
!59 = distinct !{!59, i1 false, !"_ZL9cartesian6PJ_LPZP8PJconsts"}
!60 = distinct !{!60, !59, !"_ZL9cartesian6PJ_LPZP8PJconsts: argument 0"}
!61 = !{!60}
!62 = !{!14, !14, i64 0}
end_hunk_0
