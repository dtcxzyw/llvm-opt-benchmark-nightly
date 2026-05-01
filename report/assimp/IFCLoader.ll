inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector.240", align 8  ; 12 uses
  %39 = alloca %class.aiMatrix4x4t.76, align 4    ; 5 uses
  %40 = alloca %class.aiMatrix4x4t, align 8       ; 15 uses
  %41 = alloca %"class.std::unique_ptr.268", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !align !30 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.sroa.6467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.8468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.9469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 24
  %.sroa.11471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 40
  %.sroa.15473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 56
  %.sroa.17475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 72
  %.sroa.18476.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %40, i64 80
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 88
  %.sroa.23477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 104
  %.sroa.25478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 120
  %i.nv = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %38, i64 16
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.0963 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.18449.5, %.loopexit525 ] ; 18 uses
  %.sroa.38.0962 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.38.5, %.loopexit525 ] ; 20 uses
  %.sroa.0426.0961 = phi ptr [ %.sroa.06.1.i.i.i259, %.lr.ph983 ], [ %i.vv, %.loopexit525 ] ; 2 uses
  %43 = phi <2 x double> [ zeroinitializer, %.lr.ph983 ], [ %160, %.loopexit525 ] ; 9 uses
  %44 = phi <2 x double> [ zeroinitializer, %.lr.ph983 ], [ %161, %.loopexit525 ] ; 9 uses
  %45 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph983 ], [ %162, %.loopexit525 ] ; 9 uses
  %46 = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph983 ], [ %163, %.loopexit525 ] ; 9 uses
  %47 = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph983 ], [ %164, %.loopexit525 ] ; 9 uses
  %48 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph983 ], [ %165, %.loopexit525 ] ; 9 uses
  %49 = phi <2 x double> [ zeroinitializer, %.lr.ph983 ], [ %166, %.loopexit525 ] ; 9 uses
  %50 = phi <2 x double> [ zeroinitializer, %.lr.ph983 ], [ %167, %.loopexit525 ] ; 9 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0426.0961, i64 16
  %i.oa = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.oa, null
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rm, i64 1112
  store ptr %i.se, ptr %i.sf, align 8
  store ptr %i.sc, ptr %i.se, align 8
  %i.sg = load ptr, ptr %42, align 8              ; 2 uses
  %i.sh = load ptr, ptr %38, align 8              ; 2 uses
  %.not167 = icmp eq ptr %i.sg, %i.sh
  br i1 %.not167, label %.loopexit524, label %bb.dh
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %39, ptr noundef nonnull align 4 dereferenceable(64) %i.nu, i64 64, i1 false)
  %i.si = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %39)
          to label %bb.dj unwind label %bb.dq     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %51 = load <8 x float>, ptr %i.si, align 4, !noalias !189 ; 4 uses
  %52 = shufflevector <8 x float> %51, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %53 = fpext <2 x float> %52 to <2 x double>
  %54 = shufflevector <8 x float> %51, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %55 = fpext <2 x float> %54 to <2 x double>
  %56 = shufflevector <8 x float> %51, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %57 = fpext <2 x float> %56 to <2 x double>
  %58 = shufflevector <8 x float> %51, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %59 = fpext <2 x float> %58 to <2 x double>
  %60 = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %61 = load <8 x float>, ptr %60, align 4, !noalias !189 ; 4 uses
  %62 = shufflevector <8 x float> %61, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %63 = fpext <2 x float> %62 to <2 x double>
  %64 = shufflevector <8 x float> %61, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = shufflevector <8 x float> %61, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %67 = fpext <2 x float> %66 to <2 x double>
  %68 = shufflevector <8 x float> %61, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %69 = fpext <2 x float> %68 to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %.pre1400 = load ptr, ptr %38, align 8
  %.pre1401 = load ptr, ptr %42, align 8
  br label %bb.dr

bb.dk:                                            ; preds = %bb.cy
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
bb.dr:                                            ; preds = %bb.dj, %bb.dh
  %i.sq = phi ptr [ %i.sg, %bb.dh ], [ %.pre1401, %bb.dj ] ; 2 uses
  %i.sr = phi ptr [ %i.sh, %bb.dh ], [ %.pre1400, %bb.dj ] ; 2 uses
  %70 = phi <2 x double> [ %43, %bb.dh ], [ %59, %bb.dj ] ; 6 uses
  %71 = phi <2 x double> [ %44, %bb.dh ], [ %57, %bb.dj ] ; 6 uses
  %72 = phi <2 x double> [ %45, %bb.dh ], [ %53, %bb.dj ] ; 6 uses
  %73 = phi <2 x double> [ %46, %bb.dh ], [ %55, %bb.dj ] ; 8 uses
  %74 = phi <2 x double> [ %47, %bb.dh ], [ %69, %bb.dj ] ; 7 uses
  %75 = phi <2 x double> [ %48, %bb.dh ], [ %67, %bb.dj ] ; 7 uses
  %76 = phi <2 x double> [ %49, %bb.dh ], [ %63, %bb.dj ] ; 7 uses
  %77 = phi <2 x double> [ %50, %bb.dh ], [ %65, %bb.dj ] ; 8 uses
  %.not516956 = icmp eq ptr %i.sr, %i.sq
  br i1 %.not516956, label %.loopexit524, label %.lr.ph959.preheader

.lr.ph959.preheader:                              ; preds = %bb.dr
  %78 = extractelement <2 x double> %73, i64 0
  %79 = extractelement <2 x double> %72, i64 0    ; 3 uses
  %80 = extractelement <2 x double> %71, i64 0    ; 3 uses
  %81 = extractelement <2 x double> %70, i64 0    ; 3 uses
  %shift2342 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %82 = extractelement <2 x double> %76, i64 1
  %83 = extractelement <2 x double> %75, i64 1
  %84 = extractelement <2 x double> %74, i64 1
  %i.ss = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %85 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %86 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %87 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %88 = extractelement <2 x double> %77, i64 0
  %89 = extractelement <2 x double> %76, i64 0    ; 2 uses
  %90 = extractelement <2 x double> %75, i64 0    ; 2 uses
  %91 = extractelement <2 x double> %74, i64 0    ; 2 uses
  %92 = shufflevector <2 x double> %73, <2 x double> %77, <2 x i32> <i32 1, i32 2>
  %93 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 2>
  %94 = shufflevector <2 x double> %71, <2 x double> %75, <2 x i32> <i32 1, i32 2>
  %95 = shufflevector <2 x double> %70, <2 x double> %74, <2 x i32> <i32 1, i32 2>
  %96 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %97 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %98 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %99 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph959

.lr.ph959:                                        ; preds = %.lr.ph959.preheader, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.st = load ptr, ptr %36, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1112
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = load ptr, ptr %i.sv, align 8            ; 9 uses
  %100 = getelementptr inbounds nuw i8, ptr %i.sw, i64 1028
  %101 = load float, ptr %100, align 4, !noalias !192
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1032
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 1040
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 1048
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 1056
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 1064
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 1072
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 1080
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 1088
  %102 = load float, ptr %i.te, align 4, !noalias !192
  %i.tf = load <2 x float>, ptr %i.sy, align 4, !noalias !192 ; 2 uses
  %103 = insertelement <2 x float> %i.tf, float %101, i64 1
  %i.tg = fpext <2 x float> %103 to <2 x double>  ; 5 uses
  %i.th = load <2 x float>, ptr %i.ta, align 4, !noalias !192 ; 2 uses
  %104 = shufflevector <2 x float> %i.th, <2 x float> %i.tf, <2 x i32> <i32 0, i32 3>
  %i.ti = fpext <2 x float> %104 to <2 x double>  ; 5 uses
  %i.tj = load <2 x float>, ptr %i.tc, align 4, !noalias !192 ; 2 uses
  %105 = shufflevector <2 x float> %i.tj, <2 x float> %i.th, <2 x i32> <i32 0, i32 3>
  %i.tk = fpext <2 x float> %105 to <2 x double>  ; 5 uses
  %106 = insertelement <2 x float> %i.tj, float %102, i64 0
  %i.tl = fpext <2 x float> %106 to <2 x double>  ; 5 uses
  %shift = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %73, %shift
  %107 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %108 = extractelement <2 x double> %i.tg, i64 1
  %109 = call double @llvm.fmuladd.f64(double %108, double %79, double %107)
  %110 = extractelement <2 x double> %i.tk, i64 1
  %111 = call double @llvm.fmuladd.f64(double %110, double %80, double %109)
  %112 = extractelement <2 x double> %i.tl, i64 1
  %113 = call double @llvm.fmuladd.f64(double %112, double %81, double %111)
  %i.tm = fmul <2 x double> %73, %i.ti
  %i.tn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %72, <2 x double> %i.tm)
  %i.to = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %71, <2 x double> %i.tn)
  %i.tp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %70, <2 x double> %i.to)
  %114 = extractelement <2 x double> %i.tg, i64 0
  %115 = extractelement <2 x double> %i.tk, i64 0
  %116 = extractelement <2 x double> %i.tl, i64 0
  %foldExtExtBinop2343 = fmul <2 x double> %shift2342, %i.ti
  %117 = extractelement <2 x double> %foldExtExtBinop2343, i64 0
  %118 = call double @llvm.fmuladd.f64(double %114, double %82, double %117)
  %119 = call double @llvm.fmuladd.f64(double %115, double %83, double %118)
  %120 = call double @llvm.fmuladd.f64(double %116, double %84, double %119)
  store double %113, ptr %40, align 8
  store <2 x double> %i.tp, ptr %.sroa.9469.0..sroa_idx, align 8
  %i.tq = load <2 x float>, ptr %i.sx, align 4, !noalias !192
  %i.tr = fpext <2 x float> %i.tq to <2 x double> ; 4 uses
  %i.ts = load <2 x float>, ptr %i.sz, align 4, !noalias !192
  %i.tt = fpext <2 x float> %i.ts to <2 x double> ; 5 uses
  %i.tu = load <2 x float>, ptr %i.tb, align 4, !noalias !192
  %i.tv = fpext <2 x float> %i.tu to <2 x double> ; 4 uses
  %i.tw = load <2 x float>, ptr %i.td, align 4, !noalias !192
  %i.tx = fpext <2 x float> %i.tw to <2 x double> ; 4 uses
  %foldExtExtBinop2345 = fmul <2 x double> %73, %i.tt
  %121 = extractelement <2 x double> %foldExtExtBinop2345, i64 0
  %122 = extractelement <2 x double> %i.tr, i64 0 ; 2 uses
  %123 = call double @llvm.fmuladd.f64(double %122, double %79, double %121)
  %124 = extractelement <2 x double> %i.tv, i64 0 ; 2 uses
  %125 = call double @llvm.fmuladd.f64(double %124, double %80, double %123)
  %126 = extractelement <2 x double> %i.tx, i64 0 ; 2 uses
  %127 = call double @llvm.fmuladd.f64(double %126, double %81, double %125)
  %128 = extractelement <2 x double> %i.tt, i64 1 ; 2 uses
  %129 = fmul double %78, %128
  %130 = extractelement <2 x double> %i.tr, i64 1 ; 2 uses
  %131 = call double @llvm.fmuladd.f64(double %130, double %79, double %129)
  %132 = extractelement <2 x double> %i.tv, i64 1 ; 2 uses
  %133 = call double @llvm.fmuladd.f64(double %132, double %80, double %131)
  %134 = extractelement <2 x double> %i.tx, i64 1 ; 2 uses
  %135 = call double @llvm.fmuladd.f64(double %134, double %81, double %133)
  %i.ty = fmul <2 x double> %i.ss, %i.tt
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %85, <2 x double> %i.ty)
  %i.ua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %86, <2 x double> %i.tz)
  %i.ub = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %87, <2 x double> %i.ua)
  %foldExtExtBinop2347 = fmul <2 x double> %77, %i.tt
  %136 = extractelement <2 x double> %foldExtExtBinop2347, i64 0
  %137 = call double @llvm.fmuladd.f64(double %122, double %89, double %136)
  %138 = call double @llvm.fmuladd.f64(double %124, double %90, double %137)
  %139 = call double @llvm.fmuladd.f64(double %126, double %91, double %138)
  %140 = fmul double %88, %128
  %141 = call double @llvm.fmuladd.f64(double %130, double %89, double %140)
  %142 = call double @llvm.fmuladd.f64(double %132, double %90, double %141)
  %143 = call double @llvm.fmuladd.f64(double %134, double %91, double %142)
  store double %127, ptr %.sroa.6467.0..sroa_idx, align 8
  store double %135, ptr %.sroa.8468.0..sroa_idx, align 8
  store <2 x double> %i.ub, ptr %.sroa.11471.0..sroa_idx, align 8
  %i.uc = fmul <2 x double> %92, %i.ti
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %93, <2 x double> %i.uc)
  %i.ue = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %94, <2 x double> %i.ud)
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %95, <2 x double> %i.ue)
  store <2 x double> %i.uf, ptr %.sroa.15473.0..sroa_idx, align 8
  store double %139, ptr %.sroa.17475.0..sroa_idx, align 8
  store double %143, ptr %.sroa.18476.0..sroa_idx.a, align 8
  %i.ug = fmul <2 x double> %77, %i.ti
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %76, <2 x double> %i.ug)
  %i.ui = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %75, <2 x double> %i.uh)
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %74, <2 x double> %i.ui)
  store <2 x double> %i.uj, ptr %.sroa.20.0..sroa_idx, align 8
  %i.uk = fmul <2 x double> %96, %i.tt
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %97, <2 x double> %i.uk)
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %98, <2 x double> %i.ul)
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %99, <2 x double> %i.um)
  store <2 x double> %i.un, ptr %.sroa.23477.0..sroa_idx, align 8
  store double %120, ptr %.sroa.25478.0..sroa_idx, align 8
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0405.0957, ptr noundef nonnull align 8 dereferenceable(128) %40)
          to label %bb.ds unwind label %bb.dv

end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
.loopexit524:                                     ; preds = %.loopexit524.loopexit, %bb.dr, %bb.dg
  %i.uv = phi ptr [ %i.rm, %bb.dg ], [ %i.rm, %bb.dr ], [ %.pre1402, %.loopexit524.loopexit ] ; 2 uses
  %.2136 = phi i1 [ %.0134981, %bb.dg ], [ true, %bb.dr ], [ true, %.loopexit524.loopexit ] ; 2 uses
  %144 = phi <2 x double> [ %43, %bb.dg ], [ %70, %bb.dr ], [ %70, %.loopexit524.loopexit ] ; 2 uses
  %145 = phi <2 x double> [ %44, %bb.dg ], [ %71, %bb.dr ], [ %71, %.loopexit524.loopexit ] ; 2 uses
  %146 = phi <2 x double> [ %45, %bb.dg ], [ %72, %bb.dr ], [ %72, %.loopexit524.loopexit ] ; 2 uses
  %147 = phi <2 x double> [ %46, %bb.dg ], [ %73, %bb.dr ], [ %73, %.loopexit524.loopexit ] ; 2 uses
  %148 = phi <2 x double> [ %47, %bb.dg ], [ %74, %bb.dr ], [ %74, %.loopexit524.loopexit ] ; 2 uses
  %149 = phi <2 x double> [ %48, %bb.dg ], [ %75, %bb.dr ], [ %75, %.loopexit524.loopexit ] ; 2 uses
  %150 = phi <2 x double> [ %49, %bb.dg ], [ %76, %bb.dr ], [ %76, %.loopexit524.loopexit ] ; 2 uses
  %151 = phi <2 x double> [ %50, %bb.dg ], [ %77, %bb.dr ], [ %77, %.loopexit524.loopexit ] ; 2 uses
  store ptr null, ptr %36, align 8
  %.not.i.i296 = icmp eq ptr %.sroa.18449.0963, %.sroa.38.0962
  br i1 %.not.i.i296, label %bb.dy, label %bb.dx
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.4 = phi ptr [ %.sroa.18449.0963, %bb.de ], [ %i.vk, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.uw, %bb.dx ]
  %.sroa.0439.4 = phi ptr [ %.sroa.0439.0964, %bb.de ], [ %i.vh, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0439.0964, %bb.dx ]
  %.3137 = phi i1 [ %.0134981, %bb.de ], [ %.2136, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.2136, %bb.dx ]
  %152 = phi <2 x double> [ %43, %bb.de ], [ %144, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %144, %bb.dx ]
  %153 = phi <2 x double> [ %44, %bb.de ], [ %145, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %145, %bb.dx ]
  %154 = phi <2 x double> [ %45, %bb.de ], [ %146, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %146, %bb.dx ]
  %155 = phi <2 x double> [ %46, %bb.de ], [ %147, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %147, %bb.dx ]
  %156 = phi <2 x double> [ %47, %bb.de ], [ %148, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %148, %bb.dx ]
  %157 = phi <2 x double> [ %48, %bb.de ], [ %149, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %149, %bb.dx ]
  %158 = phi <2 x double> [ %49, %bb.de ], [ %150, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %150, %bb.dx ]
  %159 = phi <2 x double> [ %50, %bb.de ], [ %151, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %151, %bb.dx ]
  %i.vm = load ptr, ptr %38, align 8              ; 3 uses
  %i.vn = load ptr, ptr %42, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.vm, %i.vn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.5 = phi ptr [ %.sroa.18449.0963, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.18449.0963, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.18449.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.18449.0963, %bb.cz ], [ %.sroa.18449.0963, %bb.cd ], [ %.sroa.18449.0963, %bb.cg ], [ %.sroa.18449.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0439.5 = phi ptr [ %.sroa.0439.0964, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.0439.0964, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.0439.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0439.0964, %bb.cz ], [ %.sroa.0439.0964, %bb.cd ], [ %.sroa.0439.0964, %bb.cg ], [ %.sroa.0439.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.7141 = phi i1 [ %.0134981, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.0134981, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.3137, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.0134981, %bb.cz ], [ %.0134981, %bb.cd ], [ %.0134981, %bb.cg ], [ %.0134981, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %160 = phi <2 x double> [ %43, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %43, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %152, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %43, %bb.cz ], [ %43, %bb.cd ], [ %43, %bb.cg ], [ %43, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %161 = phi <2 x double> [ %44, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %44, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %153, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %44, %bb.cz ], [ %44, %bb.cd ], [ %44, %bb.cg ], [ %44, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %162 = phi <2 x double> [ %45, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %45, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %154, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %45, %bb.cz ], [ %45, %bb.cd ], [ %45, %bb.cg ], [ %45, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %163 = phi <2 x double> [ %46, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %46, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %155, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %46, %bb.cz ], [ %46, %bb.cd ], [ %46, %bb.cg ], [ %46, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %164 = phi <2 x double> [ %47, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %47, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %156, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %47, %bb.cz ], [ %47, %bb.cd ], [ %47, %bb.cg ], [ %47, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %165 = phi <2 x double> [ %48, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %48, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %157, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %48, %bb.cz ], [ %48, %bb.cd ], [ %48, %bb.cg ], [ %48, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %166 = phi <2 x double> [ %49, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %49, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %158, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %49, %bb.cz ], [ %49, %bb.cd ], [ %49, %bb.cg ], [ %49, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %167 = phi <2 x double> [ %50, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %50, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %159, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %50, %bb.cz ], [ %50, %bb.cd ], [ %50, %bb.cg ], [ %50, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.vv = load ptr, ptr %.sroa.0426.0961, align 8 ; 2 uses
  %.not508 = icmp eq ptr %i.vv, %.sroa.03.0.i.i261
  br i1 %.not508, label %.lr.ph997, label %bb.bz, !llvm.loop !196
end_hunk_9
