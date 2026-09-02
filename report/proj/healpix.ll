Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/healpix?download=true
inline.NumInlined: 36
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL12combine_capsddiii:bb.a
bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ak = fcmp ugt double %1, %i.ad
  br i1 %i.ak, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = fadd double %i.t, f0x400F6A7A2955385E
  %i.am = fadd double %i.al, 1.000000e-15
  %i.an = fcmp ogt double %1, %i.am
  br i1 %i.an, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ao = add nsw i32 %2, 3
  %i.ap = srem i32 %i.ao, 4
  br label %bb.aq

bb.s:                                             ; preds = %bb.i
  %i.aq = sitofp i32 %3 to double                 ; 2 uses
  %i.ar = fneg double %i.aq
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = insertelement <2 x double> <double f0xC002D97C7F3321D2, double poison>, double %0, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double f0x3FF921FB54442D18), <2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 4 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0 ; 7 uses
  %i.ay = fadd double %i.aw, f0x3FE921FB54442D18  ; 2 uses
  %i.az = fadd double %i.ay, 1.000000e-15
  %i.ba = fcmp ugt double %1, %i.az
  br i1 %i.ba, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bc = fadd double %i.bb, 1.000000e-15
  %i.bd = fcmp ogt double %1, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %3, 1
  %i.bf = srem i32 %i.be, 4
  br label %bb.ax

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bg = fadd double %i.ay, -1.000000e-15        ; 2 uses
  %i.bh = fcmp olt double %1, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bi = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bj = fadd double %i.bi, 1.000000e-15
  %i.bk = fcmp ugt double %1, %i.bj
  br i1 %i.bk, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %3, 2
  %i.bm = srem i32 %i.bl, 4
  br label %bb.ax

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bn = fcmp ult double %1, %i.bg
  br i1 %i.bn, label %bb.ax, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bp = fadd double %i.bo, -1.000000e-15
  %i.bq = fcmp olt double %1, %i.bp
  br i1 %i.bq, label %bb.aa, label %bb.ax

bb.aa:                                            ; preds = %bb.z
  %i.br = add nsw i32 %3, 3
  %i.bs = srem i32 %i.br, 4
  br label %bb.ax

bb.ab:                                            ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %.sroa.2136.0.ph = phi double [ f0xBFE921FB54442D18, %bb.e ], [ f0xC002D97C7F3321D2, %bb.d ], [ f0x3FE921FB54442D18, %bb.f ], [ f0x4002D97C7F3321D2, %bb.g ] ; 14 uses
  %.sroa.031.0.ph = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.g ] ; 2 uses
  br i1 %i.b, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.bt = sub nsw i32 %.sroa.031.0.ph, %2
  switch i32 %i.bt, label %bb.ai [
    i32 -3, label %bb.ah
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 -1, label %bb.af
    i32 -2, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ae:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.af:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ag:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ah:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ai:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.aj:                                            ; preds = %bb.ab
  %.neg19 = sub nsw i32 %3, %.sroa.031.0.ph
  switch i32 %.neg19, label %bb.ap [
    i32 -3, label %bb.ao
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 -1, label %bb.am
    i32 -2, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.al:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.am:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.an:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.ao:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.ap:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.aq:                                            ; preds = %bb.r, %bb.o, %bb.l, %bb.p, %bb.q
  %.sroa.031.0.ph.ph.ph = phi i32 [ %2, %bb.q ], [ %2, %bb.p ], [ %i.ac, %bb.l ], [ %i.aj, %bb.o ], [ %i.ap, %bb.r ] ; 8 uses
  %.neg = sub nsw i32 %2, %.sroa.031.0.ph.ph.ph
  switch i32 %.neg, label %bb.aw [
    i32 -3, label %bb.av
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 -1, label %bb.at
    i32 -2, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.as:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.at:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.au:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.av:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.aw:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.ax:                                            ; preds = %bb.y, %bb.z, %bb.u, %bb.x, %bb.aa
  %.sroa.031.0.ph.ph = phi i32 [ %i.bm, %bb.x ], [ %i.bf, %bb.u ], [ %3, %bb.y ], [ %3, %bb.z ], [ %i.bs, %bb.aa ] ; 8 uses
  %i.bu = sub nsw i32 %.sroa.031.0.ph.ph, %3
  switch i32 %i.bu, label %bb.bd [
    i32 -3, label %bb.bc
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ay
    i32 3, label %bb.az
    i32 -1, label %bb.ba
    i32 -2, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.az:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.ba:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bb:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bc:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bd:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

_ZL16get_rotate_indexi.exit:                      ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0.i23.sink = phi i64 [ 1, %bb.aj ], [ 1, %bb.aq ], [ 1, %bb.ac ], [ 0, %bb.ai ], [ 6, %bb.ah ], [ 5, %bb.ag ], [ 2, %bb.ad ], [ 3, %bb.ae ], [ 4, %bb.af ], [ 0, %bb.ap ], [ 6, %bb.ao ], [ 5, %bb.an ], [ 2, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 0, %bb.aw ], [ 6, %bb.av ], [ 5, %bb.au ], [ 2, %bb.ar ], [ 3, %bb.as ], [ 4, %bb.at ], [ 0, %bb.bd ], [ 6, %bb.bc ], [ 5, %bb.bb ], [ 2, %bb.ay ], [ 3, %bb.az ], [ 4, %bb.ba ], [ 1, %bb.ax ]
  %i.bv = phi i32 [ %3, %bb.aj ], [ %.sroa.031.0.ph.ph.ph, %bb.aq ], [ %2, %bb.ac ], [ %2, %bb.ai ], [ %2, %bb.ah ], [ %2, %bb.ag ], [ %2, %bb.ad ], [ %2, %bb.ae ], [ %2, %bb.af ], [ %3, %bb.ap ], [ %3, %bb.ao ], [ %3, %bb.an ], [ %3, %bb.ak ], [ %3, %bb.al ], [ %3, %bb.am ], [ %.sroa.031.0.ph.ph.ph, %bb.aw ], [ %.sroa.031.0.ph.ph.ph, %bb.av ], [ %.sroa.031.0.ph.ph.ph, %bb.au ], [ %.sroa.031.0.ph.ph.ph, %bb.ar ], [ %.sroa.031.0.ph.ph.ph, %bb.as ], [ %.sroa.031.0.ph.ph.ph, %bb.at ], [ %.sroa.031.0.ph.ph, %bb.bd ], [ %.sroa.031.0.ph.ph, %bb.bc ], [ %.sroa.031.0.ph.ph, %bb.bb ], [ %.sroa.031.0.ph.ph, %bb.ay ], [ %.sroa.031.0.ph.ph, %bb.az ], [ %.sroa.031.0.ph.ph, %bb.ba ], [ %.sroa.031.0.ph.ph, %bb.ax ]
  %.sroa.2136.0.ph64 = phi double [ %.sroa.2136.0.ph, %bb.aj ], [ %i.u, %bb.aq ], [ %.sroa.2136.0.ph, %bb.ac ], [ %.sroa.2136.0.ph, %bb.ai ], [ %.sroa.2136.0.ph, %bb.ah ], [ %.sroa.2136.0.ph, %bb.ag ], [ %.sroa.2136.0.ph, %bb.ad ], [ %.sroa.2136.0.ph, %bb.ae ], [ %.sroa.2136.0.ph, %bb.af ], [ %.sroa.2136.0.ph, %bb.ap ], [ %.sroa.2136.0.ph, %bb.ao ], [ %.sroa.2136.0.ph, %bb.an ], [ %.sroa.2136.0.ph, %bb.ak ], [ %.sroa.2136.0.ph, %bb.al ], [ %.sroa.2136.0.ph, %bb.am ], [ %i.u, %bb.aw ], [ %i.u, %bb.av ], [ %i.u, %bb.au ], [ %i.u, %bb.ar ], [ %i.u, %bb.as ], [ %i.u, %bb.at ], [ %i.ax, %bb.bd ], [ %i.ax, %bb.bc ], [ %i.ax, %bb.bb ], [ %i.ax, %bb.ay ], [ %i.ax, %bb.az ], [ %i.ax, %bb.ba ], [ %i.ax, %bb.ax ]
  %.sroa.30.0.ph62 = phi double [ %.0.i, %bb.aj ], [ f0x3FF921FB54442D18, %bb.aq ], [ %.0.i, %bb.ac ], [ %.0.i, %bb.ai ], [ %.0.i, %bb.ah ], [ %.0.i, %bb.ag ], [ %.0.i, %bb.ad ], [ %.0.i, %bb.ae ], [ %.0.i, %bb.af ], [ %.0.i, %bb.ap ], [ %.0.i, %bb.ao ], [ %.0.i, %bb.an ], [ %.0.i, %bb.ak ], [ %.0.i, %bb.al ], [ %.0.i, %bb.am ], [ f0x3FF921FB54442D18, %bb.aw ], [ f0x3FF921FB54442D18, %bb.av ], [ f0x3FF921FB54442D18, %bb.au ], [ f0x3FF921FB54442D18, %bb.ar ], [ f0x3FF921FB54442D18, %bb.as ], [ f0x3FF921FB54442D18, %bb.at ], [ f0xBFF921FB54442D18, %bb.bd ], [ f0xBFF921FB54442D18, %bb.bc ], [ f0xBFF921FB54442D18, %bb.bb ], [ f0xBFF921FB54442D18, %bb.ay ], [ f0xBFF921FB54442D18, %bb.az ], [ f0xBFF921FB54442D18, %bb.ba ], [ f0xBFF921FB54442D18, %bb.ax ]
  %spec.select = phi double [ f0xBFF921FB54442D18, %bb.aj ], [ f0x3FF921FB54442D18, %bb.aq ], [ f0x3FF921FB54442D18, %bb.ac ], [ f0x3FF921FB54442D18, %bb.ai ], [ f0x3FF921FB54442D18, %bb.ah ], [ f0x3FF921FB54442D18, %bb.ag ], [ f0x3FF921FB54442D18, %bb.ad ], [ f0x3FF921FB54442D18, %bb.ae ], [ f0x3FF921FB54442D18, %bb.af ], [ f0xBFF921FB54442D18, %bb.ap ], [ f0xBFF921FB54442D18, %bb.ao ], [ f0xBFF921FB54442D18, %bb.an ], [ f0xBFF921FB54442D18, %bb.ak ], [ f0xBFF921FB54442D18, %bb.al ], [ f0xBFF921FB54442D18, %bb.am ], [ f0x3FF921FB54442D18, %bb.aw ], [ f0x3FF921FB54442D18, %bb.av ], [ f0x3FF921FB54442D18, %bb.au ], [ f0x3FF921FB54442D18, %bb.ar ], [ f0x3FF921FB54442D18, %bb.as ], [ f0x3FF921FB54442D18, %bb.at ], [ f0xBFF921FB54442D18, %bb.bd ], [ f0xBFF921FB54442D18, %bb.bc ], [ f0xBFF921FB54442D18, %bb.bb ], [ f0xBFF921FB54442D18, %bb.ay ], [ f0xBFF921FB54442D18, %bb.az ], [ f0xBFF921FB54442D18, %bb.ba ], [ f0xBFF921FB54442D18, %bb.ax ]
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr @_ZL3rot, i64 %.0.i23.sink ; 4 uses
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = insertelement <2 x double> %5, double %0, i64 1
  %7 = insertelement <2 x double> poison, double %.sroa.30.0.ph62, i64 0
  %8 = insertelement <2 x double> %7, double %.sroa.2136.0.ph64, i64 1
  %9 = fsub <2 x double> %6, %8                   ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.bx = sitofp i32 %i.bv to double
  %13 = load double, ptr %12, align 8, !tbaa !58
  %14 = load double, ptr %11, align 16, !tbaa !58
  %15 = load double, ptr %10, align 8, !tbaa !58
  %16 = load double, ptr %i.bw, align 16, !tbaa !58
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %i.by = insertelement <2 x double> %17, double %14, i64 1
  %18 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %18, <2 x double> zeroinitializer)
  %19 = insertelement <2 x double> poison, double %15, i64 0
  %i.ca = insertelement <2 x double> %19, double %13, i64 1
  %i.cb = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.bz)
  %20 = tail call double @llvm.fmuladd.f64(double %i.bx, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.cd = insertelement <2 x double> poison, double %20, i64 0
  %21 = insertelement <2 x double> %i.cd, double %spec.select, i64 1
  %i.ce = fadd <2 x double> %21, %i.cc
  br label %_ZL7get_capddiii.exit

_ZL7get_capddiii.exit:                            ; preds = %bb.i, %bb.c, %_ZL16get_rotate_indexi.exit
  %i.cf = phi <2 x double> [ %i.ce, %_ZL16get_rotate_indexi.exit ], [ %i.e, %bb.c ], [ %i.m, %bb.i ] ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cg, 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ch, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

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
!37 = !{!36, !10, i64 8}
!38 = !{!36, !10, i64 16}
!39 = !{!36, !5, i64 360}
!40 = !{!36, !15, i64 380}
!41 = !{!36, !15, i64 384}
!42 = !{!36, !8, i64 88}
!43 = !{!36, !8, i64 152}
!44 = !{!36, !9, i64 0}
!45 = !{!36, !11, i64 24}
!46 = !{!"p1 double", !8, i64 0}
!47 = !{!"_ZTSN12_GLOBAL__N_115pj_healpix_dataE", !5, i64 0, !5, i64 4, !14, i64 8, !14, i64 16, !46, i64 24}
!48 = !{!47, !14, i64 8}
!49 = !{!36, !14, i64 216}
!50 = !{!36, !14, i64 288}
!51 = !{!47, !46, i64 24}
!52 = !{!47, !14, i64 16}
!53 = !{!36, !14, i64 168}
!54 = !{!36, !8, i64 104}
!55 = !{!36, !8, i64 112}
!56 = !{!47, !5, i64 0}
!57 = !{!47, !5, i64 4}
!58 = !{!14, !14, i64 0}
!59 = !{!36, !14, i64 184}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
end_hunk_0
