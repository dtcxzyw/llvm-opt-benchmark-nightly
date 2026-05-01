inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector.240", align 8  ; 12 uses
  %39 = alloca %class.aiMatrix4x4t.76, align 4    ; 5 uses
  %40 = alloca %class.aiMatrix4x4t, align 16      ; 12 uses
  %41 = alloca %"class.std::unique_ptr.268", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !align !30 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %.sroa.9469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.sroa.11471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.15473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 32
  %.sroa.17475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 48
  %.sroa.18476.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %40, i64 64
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 80
  %.sroa.23477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 96
  %.sroa.25478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.nv = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %38, i64 16
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.0963 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.18449.5, %.loopexit525 ] ; 18 uses
  %.sroa.38.0962 = phi ptr [ null, %.lr.ph983 ], [ %.sroa.38.5, %.loopexit525 ] ; 20 uses
  %.sroa.0426.0961 = phi ptr [ %.sroa.06.1.i.i.i259, %.lr.ph983 ], [ %i.vv, %.loopexit525 ] ; 2 uses
  %42 = phi <16 x double> [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %.lr.ph983 ], [ %75, %.loopexit525 ] ; 9 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0426.0961, i64 16
  %i.oa = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.oa, null
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rm, i64 1112
  store ptr %i.se, ptr %i.sf, align 8
  store ptr %i.sc, ptr %i.se, align 8
  %i.sg = load ptr, ptr %.sroa.9469.0..sroa_idx, align 8 ; 2 uses
  %i.sh = load ptr, ptr %38, align 8              ; 2 uses
  %.not167 = icmp eq ptr %i.sg, %i.sh
  br i1 %.not167, label %.loopexit524, label %bb.dh
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %39, ptr noundef nonnull align 4 dereferenceable(64) %i.nu, i64 64, i1 false)
  %i.si = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %39)
          to label %bb.dj unwind label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %43 = load <16 x float>, ptr %i.si, align 4, !noalias !189
  %44 = fpext <16 x float> %43 to <16 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %.pre1400 = load ptr, ptr %38, align 8
  %.pre1401 = load ptr, ptr %.sroa.9469.0..sroa_idx, align 8
  br label %bb.dr

bb.dk:                                            ; preds = %bb.cy
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
bb.dr:                                            ; preds = %bb.dj, %bb.dh
  %i.sq = phi ptr [ %i.sg, %bb.dh ], [ %.pre1401, %bb.dj ] ; 2 uses
  %i.sr = phi ptr [ %i.sh, %bb.dh ], [ %.pre1400, %bb.dj ] ; 2 uses
  %45 = phi <16 x double> [ %42, %bb.dh ], [ %44, %bb.dj ] ; 18 uses
  %.not516956 = icmp eq ptr %i.sr, %i.sq
  br i1 %.not516956, label %.loopexit524, label %.lr.ph959.preheader

.lr.ph959.preheader:                              ; preds = %bb.dr
  %i.ss = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %46 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %47 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %48 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %49 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %50 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %51 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 6, i32 6> ; 2 uses
  %52 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 7, i32 7> ; 2 uses
  %53 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 9, i32 9> ; 2 uses
  %54 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 8, i32 8> ; 2 uses
  %55 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 10, i32 10> ; 2 uses
  %56 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 11, i32 11> ; 2 uses
  %57 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 13, i32 13> ; 2 uses
  %58 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 12, i32 12> ; 2 uses
  %59 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 14, i32 14> ; 2 uses
  %60 = shufflevector <16 x double> %45, <16 x double> poison, <2 x i32> <i32 15, i32 15> ; 2 uses
  br label %.lr.ph959

.lr.ph959:                                        ; preds = %.lr.ph959.preheader, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.st = load ptr, ptr %36, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1112
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = load ptr, ptr %i.sv, align 8            ; 8 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1028
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 1036
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 1044
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 1052
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 1060
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 1068
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 1076
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 1084
  %i.tf = load <2 x float>, ptr %i.sx, align 4, !noalias !192
  %i.tg = fpext <2 x float> %i.tf to <2 x double> ; 4 uses
  %i.th = load <2 x float>, ptr %i.sz, align 4, !noalias !192
  %i.ti = fpext <2 x float> %i.th to <2 x double> ; 4 uses
  %i.tj = load <2 x float>, ptr %i.tb, align 4, !noalias !192
  %i.tk = fpext <2 x float> %i.tj to <2 x double> ; 4 uses
  %61 = load <2 x float>, ptr %i.td, align 4, !noalias !192
  %i.tl = fpext <2 x float> %61 to <2 x double>   ; 4 uses
  %i.tm = fmul <2 x double> %i.ss, %i.ti
  %i.tn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %46, <2 x double> %i.tm)
  %i.to = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %47, <2 x double> %i.tn)
  %i.tp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %48, <2 x double> %i.to)
  store <2 x double> %i.tp, ptr %40, align 16
  %i.tq = load <2 x float>, ptr %i.sy, align 4, !noalias !192
  %i.tr = fpext <2 x float> %i.tq to <2 x double> ; 4 uses
  %i.ts = load <2 x float>, ptr %i.ta, align 4, !noalias !192
  %i.tt = fpext <2 x float> %i.ts to <2 x double> ; 4 uses
  %i.tu = load <2 x float>, ptr %i.tc, align 4, !noalias !192
  %i.tv = fpext <2 x float> %i.tu to <2 x double> ; 4 uses
  %i.tw = load <2 x float>, ptr %i.te, align 4, !noalias !192
  %i.tx = fpext <2 x float> %i.tw to <2 x double> ; 4 uses
  %foldExtExtBinop2345 = fmul <2 x double> %i.ss, %i.tt
  %62 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %46, <2 x double> %foldExtExtBinop2345)
  %63 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %47, <2 x double> %62)
  %64 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %48, <2 x double> %63)
  store <2 x double> %64, ptr %.sroa.11471.0..sroa_idx, align 16
  %i.ty = fmul <2 x double> %49, %i.ti
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %50, <2 x double> %i.ty)
  %i.ua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %51, <2 x double> %i.tz)
  %i.ub = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %52, <2 x double> %i.ua)
  store <2 x double> %i.ub, ptr %.sroa.15473.0..sroa_idx, align 16
  %65 = fmul <2 x double> %49, %i.tt
  %66 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %50, <2 x double> %65)
  %67 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %51, <2 x double> %66)
  %68 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %52, <2 x double> %67)
  store <2 x double> %68, ptr %.sroa.17475.0..sroa_idx, align 16
  %69 = fmul <2 x double> %53, %i.ti
  %70 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %54, <2 x double> %69)
  %71 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %55, <2 x double> %70)
  %72 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %56, <2 x double> %71)
  store <2 x double> %72, ptr %.sroa.18476.0..sroa_idx.a, align 16
  %i.uc = fmul <2 x double> %53, %i.tt
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %54, <2 x double> %i.uc)
  %i.ue = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %55, <2 x double> %i.ud)
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %56, <2 x double> %i.ue)
  store <2 x double> %i.uf, ptr %.sroa.20.0..sroa_idx, align 16
  %i.ug = fmul <2 x double> %57, %i.ti
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %58, <2 x double> %i.ug)
  %i.ui = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %59, <2 x double> %i.uh)
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %60, <2 x double> %i.ui)
  store <2 x double> %i.uj, ptr %.sroa.23477.0..sroa_idx, align 16
  %i.uk = fmul <2 x double> %57, %i.tt
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %58, <2 x double> %i.uk)
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %59, <2 x double> %i.ul)
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %60, <2 x double> %i.um)
  store <2 x double> %i.un, ptr %.sroa.25478.0..sroa_idx, align 16
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0405.0957, ptr noundef nonnull align 8 dereferenceable(128) %40)
          to label %bb.ds unwind label %bb.dv

end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
.loopexit524:                                     ; preds = %.loopexit524.loopexit, %bb.dr, %bb.dg
  %i.uv = phi ptr [ %i.rm, %bb.dg ], [ %i.rm, %bb.dr ], [ %.pre1402, %.loopexit524.loopexit ] ; 2 uses
  %.2136 = phi i1 [ %.0134981, %bb.dg ], [ true, %bb.dr ], [ true, %.loopexit524.loopexit ] ; 2 uses
  %73 = phi <16 x double> [ %42, %bb.dg ], [ %45, %bb.dr ], [ %45, %.loopexit524.loopexit ] ; 2 uses
  store ptr null, ptr %36, align 8
  %.not.i.i296 = icmp eq ptr %.sroa.18449.0963, %.sroa.38.0962
  br i1 %.not.i.i296, label %bb.dy, label %bb.dx
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.4 = phi ptr [ %.sroa.18449.0963, %bb.de ], [ %i.vk, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.uw, %bb.dx ]
  %.sroa.0439.4 = phi ptr [ %.sroa.0439.0964, %bb.de ], [ %i.vh, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0439.0964, %bb.dx ]
  %.3137 = phi i1 [ %.0134981, %bb.de ], [ %.2136, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.2136, %bb.dx ]
  %74 = phi <16 x double> [ %42, %bb.de ], [ %73, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %73, %bb.dx ]
  %i.vm = load ptr, ptr %38, align 8              ; 3 uses
  %i.vn = load ptr, ptr %.sroa.9469.0..sroa_idx, align 8 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.vm, %i.vn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %.sroa.18449.5 = phi ptr [ %.sroa.18449.0963, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.18449.0963, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.18449.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.18449.0963, %bb.cz ], [ %.sroa.18449.0963, %bb.cd ], [ %.sroa.18449.0963, %bb.cg ], [ %.sroa.18449.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0439.5 = phi ptr [ %.sroa.0439.0964, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.0439.0964, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.0439.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0439.0964, %bb.cz ], [ %.sroa.0439.0964, %bb.cd ], [ %.sroa.0439.0964, %bb.cg ], [ %.sroa.0439.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.7141 = phi i1 [ %.0134981, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.0134981, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.3137, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.0134981, %bb.cz ], [ %.0134981, %bb.cd ], [ %.0134981, %bb.cg ], [ %.0134981, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %75 = phi <16 x double> [ %42, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %42, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %74, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %42, %bb.cz ], [ %42, %bb.cd ], [ %42, %bb.cg ], [ %42, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.vv = load ptr, ptr %.sroa.0426.0961, align 8 ; 2 uses
  %.not508 = icmp eq ptr %i.vv, %.sroa.03.0.i.i261
  br i1 %.not508, label %.lr.ph997, label %bb.bz, !llvm.loop !196
end_hunk_9
