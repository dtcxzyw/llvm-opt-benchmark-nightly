inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %4 = alloca %class.aiVector3t, align 8          ; 6 uses
  %5 = alloca %class.aiMatrix3x3t, align 8        ; 15 uses
  %6 = alloca %"class.std::vector.43", align 8    ; 15 uses
  %7 = alloca %"class.std::vector.43", align 8    ; 17 uses
  %8 = alloca %class.aiVector3t, align 8          ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit
  %.sroa.0594.0.copyload = load double, ptr %5, align 8 ; 6 uses
  %.sroa.6596.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6596.0.copyload = load double, ptr %.sroa.6596.0..sroa_idx.a, align 8 ; 5 uses
  %.sroa.8599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.8599.0.copyload = load double, ptr %.sroa.8599.0..sroa_idx, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx.a, align 8 ; 4 uses
  %.sroa.12604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %.sroa.12604.0.copyload = load double, ptr %.sroa.12604.0..sroa_idx, align 8 ; 5 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.14.0.copyload.a = load double, ptr %.sroa.14.0..sroa_idx, align 8 ; 6 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %.sroa.16.0.copyload = load double, ptr %.sroa.16.0..sroa_idx, align 8 ; 3 uses
  %.sroa.18611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa.18611.0.copyload = load double, ptr %.sroa.18611.0..sroa_idx, align 8 ; 4 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %.sroa.20.0.copyload = load double, ptr %.sroa.20.0..sroa_idx, align 8 ; 6 uses
  %i.n = fmul double %.sroa.0594.0.copyload, %.sroa.12604.0.copyload
  %i.o = fmul double %.sroa.0594.0.copyload, %.sroa.14.0.copyload.a
  %i.p = fneg double %.sroa.18611.0.copyload      ; 3 uses
  %i.q = fmul double %i.o, %i.p
  %i.r = call double @llvm.fmuladd.f64(double %i.n, double %.sroa.20.0.copyload, double %i.q)
  %i.s = fmul double %.sroa.6596.0.copyload, %.sroa.14.0.copyload.a
  %i.t = call double @llvm.fmuladd.f64(double %i.s, double %.sroa.16.0.copyload, double %i.r)
  %i.u = fneg double %.sroa.10.0.copyload         ; 2 uses
  %i.v = fmul double %.sroa.6596.0.copyload, %i.u ; 2 uses
  %i.w = call double @llvm.fmuladd.f64(double %i.v, double %.sroa.20.0.copyload, double %i.t)
  %i.x = fmul double %.sroa.8599.0.copyload, %.sroa.10.0.copyload
  %i.y = call double @llvm.fmuladd.f64(double %i.x, double %.sroa.18611.0.copyload, double %i.w)
  %i.z = fneg double %.sroa.12604.0.copyload
  %i.aa = fmul double %.sroa.8599.0.copyload, %i.z ; 2 uses
  %i.ab = call noundef double @llvm.fmuladd.f64(double %i.aa, double %.sroa.16.0.copyload, double %i.y) ; 2 uses
  %i.ac = fcmp oeq double %i.ab, 0.000000e+00
  br i1 %i.ac, label %_ZN12aiMatrix3x3tIdE7InverseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = fdiv double 1.000000e+00, %i.ab         ; 6 uses
  %29 = fmul double %.sroa.14.0.copyload.a, %i.p
  %30 = call double @llvm.fmuladd.f64(double %.sroa.12604.0.copyload, double %.sroa.20.0.copyload, double %29)
  %31 = fmul double %30, %i.ad
  %i.ae = fneg double %i.ad                       ; 4 uses
  %32 = fmul double %.sroa.8599.0.copyload, %i.p
  %33 = call double @llvm.fmuladd.f64(double %.sroa.6596.0.copyload, double %.sroa.20.0.copyload, double %32)
  %34 = fmul double %33, %i.ae
  %35 = call double @llvm.fmuladd.f64(double %.sroa.6596.0.copyload, double %.sroa.14.0.copyload.a, double %i.aa)
  %36 = fmul double %35, %i.ad
  %37 = fneg double %.sroa.16.0.copyload          ; 4 uses
  %38 = fmul double %.sroa.14.0.copyload.a, %37
  %39 = call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %.sroa.20.0.copyload, double %38)
  %40 = fmul double %39, %i.ae
  %41 = fmul double %.sroa.8599.0.copyload, %37
  %42 = call double @llvm.fmuladd.f64(double %.sroa.0594.0.copyload, double %.sroa.20.0.copyload, double %41)
  %43 = fmul double %42, %i.ad
  %44 = fmul double %.sroa.8599.0.copyload, %i.u
  %45 = call double @llvm.fmuladd.f64(double %.sroa.0594.0.copyload, double %.sroa.14.0.copyload.a, double %44)
  %46 = fmul double %45, %i.ae
  %47 = fmul double %.sroa.12604.0.copyload, %37
  %48 = call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %.sroa.18611.0.copyload, double %47)
  %49 = fmul double %48, %i.ad
  %50 = fmul double %.sroa.6596.0.copyload, %37
  %51 = call double @llvm.fmuladd.f64(double %.sroa.0594.0.copyload, double %.sroa.18611.0.copyload, double %50)
  %52 = fmul double %51, %i.ae
  %i.af = call double @llvm.fmuladd.f64(double %.sroa.0594.0.copyload, double %.sroa.12604.0.copyload, double %i.v)
  %i.ag = fmul double %i.af, %i.ad
  br label %_ZN12aiMatrix3x3tIdE7InverseEv.exit

_ZN12aiMatrix3x3tIdE7InverseEv.exit:              ; preds = %bb.c, %bb.d
  %storemerge26.i = phi double [ %31, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge25.i = phi double [ %34, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge24.i = phi double [ %36, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge23.i = phi double [ %40, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge22.i = phi double [ %43, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge21.i = phi double [ %46, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge20.i = phi double [ %49, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge19.i = phi double [ %52, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %storemerge.i = phi double [ %i.ag, %bb.d ], [ 0x7FF8000000000000, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = load ptr, ptr %1, align 8               ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.bf = load double, ptr %i.be, align 8, !noalias !264 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0559.0803, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !noalias !264 ; 2 uses
  %i.bi = load double, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !264
  %i.bj = load double, ptr %.sroa.18611.0..sroa_idx, align 8, !noalias !264
  %i.bk = load double, ptr %.sroa.20.0..sroa_idx, align 8, !noalias !264
  %i.bl = load <4 x double>, ptr %5, align 8, !noalias !264 ; 3 uses
  %i.bm = load <2 x double>, ptr %.sroa.12604.0..sroa_idx, align 8, !noalias !264
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.bl, <2 x i32> <i32 0, i32 5>
  %i.bp = insertelement <2 x double> poison, double %i.bf, i64 0
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 -24
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 88
end_hunk_3
begin_hunk_4_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  store ptr %i.dr, ptr %i.ht, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %12, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.dd, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.dm, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dt, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dt, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.ua = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  br label %bb.cg

._crit_edge874:                                   ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit
end_hunk_5
begin_hunk_6_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.aba = load double, ptr %i.aaz, align 8
  %i.abb = call double @llvm.fmuladd.f64(double %i.aay, double %i.ay, double %i.ax) ; 3 uses
  %i.abc = call double @llvm.fmuladd.f64(double %i.aba, double %i.bb, double %i.ba) ; 3 uses
  %i.abd = fmul double %storemerge25.i, %i.abc
  %i.abe = call double @llvm.fmuladd.f64(double %storemerge26.i, double %i.abb, double %i.abd)
  %i.abf = call double @llvm.fmuladd.f64(double %storemerge24.i, double %.0104.lcssa, double %i.abe) ; 2 uses
  %i.abg = fmul double %storemerge22.i, %i.abc
  %i.abh = call double @llvm.fmuladd.f64(double %storemerge23.i, double %i.abb, double %i.abg)
  %i.abi = call double @llvm.fmuladd.f64(double %storemerge21.i, double %.0104.lcssa, double %i.abh) ; 2 uses
  %i.abj = fmul double %storemerge19.i, %i.abc
  %i.abk = call double @llvm.fmuladd.f64(double %storemerge20.i, double %i.abb, double %i.abj)
  %i.abl = call double @llvm.fmuladd.f64(double %storemerge.i, double %.0104.lcssa, double %i.abk) ; 2 uses
  %i.abm = load ptr, ptr %i.ah, align 8           ; 7 uses
  %i.abn = load ptr, ptr %i.tg, align 8
  %.not.i377 = icmp eq ptr %i.abm, %i.abn
end_hunk_6
begin_hunk_7_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.adf = load double, ptr %i.ade, align 8
  %i.adg = call double @llvm.fmuladd.f64(double %i.add, double %i.ay, double %i.ax) ; 3 uses
  %i.adh = call double @llvm.fmuladd.f64(double %i.adf, double %i.bb, double %i.ba) ; 3 uses
  %i.adi = fmul double %storemerge25.i, %i.adh
  %i.adj = call double @llvm.fmuladd.f64(double %storemerge26.i, double %i.adg, double %i.adi)
  %i.adk = call double @llvm.fmuladd.f64(double %storemerge24.i, double %.0104.lcssa, double %i.adj) ; 2 uses
  %i.adl = fmul double %storemerge22.i, %i.adh
  %i.adm = call double @llvm.fmuladd.f64(double %storemerge23.i, double %i.adg, double %i.adl)
  %i.adn = call double @llvm.fmuladd.f64(double %storemerge21.i, double %.0104.lcssa, double %i.adm) ; 2 uses
  %i.ado = fmul double %storemerge19.i, %i.adh
  %i.adp = call double @llvm.fmuladd.f64(double %storemerge20.i, double %i.adg, double %i.ado)
  %i.adq = call double @llvm.fmuladd.f64(double %storemerge.i, double %.0104.lcssa, double %i.adp) ; 2 uses
  %.not.i377.1 = icmp eq ptr %i.ada, %i.acz
  br i1 %.not.i377.1, label %bb.es, label %bb.er

end_hunk_7
begin_hunk_8_@_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE:bb.a
  %i.aeq = load double, ptr %i.aep, align 8
  %i.aer = call double @llvm.fmuladd.f64(double %i.aeo, double %i.ay, double %i.ax) ; 3 uses
  %i.aes = call double @llvm.fmuladd.f64(double %i.aeq, double %i.bb, double %i.ba) ; 3 uses
  %i.aet = fmul double %storemerge25.i, %i.aes
  %i.aeu = call double @llvm.fmuladd.f64(double %storemerge26.i, double %i.aer, double %i.aet)
  %i.aev = call double @llvm.fmuladd.f64(double %storemerge24.i, double %.0104.lcssa, double %i.aeu) ; 2 uses
  %i.aew = fmul double %storemerge22.i, %i.aes
  %i.aex = call double @llvm.fmuladd.f64(double %storemerge23.i, double %i.aer, double %i.aew)
  %i.aey = call double @llvm.fmuladd.f64(double %storemerge21.i, double %.0104.lcssa, double %i.aex) ; 2 uses
  %i.aez = fmul double %storemerge19.i, %i.aes
  %i.afa = call double @llvm.fmuladd.f64(double %storemerge20.i, double %i.aer, double %i.aez)
  %i.afb = call double @llvm.fmuladd.f64(double %storemerge.i, double %.0104.lcssa, double %i.afa) ; 2 uses
  %.not.i377.2 = icmp eq ptr %i.ael, %i.aek
  br i1 %.not.i377.2, label %bb.ev, label %bb.eu

end_hunk_8
