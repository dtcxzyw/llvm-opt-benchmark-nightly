Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCLoader?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
.noexc80.i:                                       ; preds = %bb.io
  unreachable

bb.ip:                                            ; preds = %bb.ij
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i71.i
  %i.ang = invoke noundef zeroext i1 @_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9) %i.ane, i32 noundef %i.alg, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.iq unwind label %.loopexit.i

bb.iq:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i
  br i1 %i.ang, label %.thread.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.anh = load ptr, ptr %i.ane, align 8
  %i.ani = getelementptr i8, ptr %i.anh, i64 -24
  %i.anj = load i64, ptr %i.ani, align 8
  %i.ank = getelementptr inbounds i8, ptr %i.ane, i64 %i.anj
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %i.anm = load ptr, ptr %i.anl, align 8, !noalias !201 ; 4 uses
  store ptr %i.aev, ptr %19, align 8, !alias.scope !201
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %.noexc.i71.i.i, label %bb.is

.noexc.i71.i.i:                                   ; preds = %bb.ir
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.i.i

.noexc72.i.i:                                     ; preds = %.noexc.i71.i.i
  unreachable

bb.is:                                            ; preds = %bb.ir
  %i.ano = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anm) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !201
  store i64 %i.ano, ptr %i.b, align 8, !noalias !201
  %i.anp = icmp ugt i64 %i.ano, 15
  br i1 %i.anp, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.is
  %i.anq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc73.i.i unwind label %.loopexit191.i.i ; 2 uses

.noexc73.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.anq, ptr %19, align 8, !alias.scope !201
  %i.anr = load i64, ptr %i.b, align 8, !noalias !201
  store i64 %i.anr, ptr %i.aev, align 8, !alias.scope !201
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc73.i.i, %bb.is
  %i.ans = phi ptr [ %i.anq, %.noexc73.i.i ], [ %i.aev, %bb.is ] ; 2 uses
  switch i64 %i.ano, label %bb.iu [
    i64 1, label %bb.it
    i64 0, label %bb.iv
  ]

bb.it:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ant = load i8, ptr %i.anm, align 1
  store i8 %i.ant, ptr %i.ans, align 1
  br label %bb.iv

bb.iu:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ans, ptr nonnull align 1 %i.anm, i64 %i.ano, i1 false)
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it, %._crit_edge.i.i.i.i.i
  %i.anu = load i64, ptr %i.b, align 8, !noalias !201 ; 2 uses
  store i64 %i.anu, ptr %i.aew, align 8, !alias.scope !201
  %i.anv = load ptr, ptr %19, align 8, !alias.scope !201
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.anu
  store i8 0, ptr %i.anw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !201
  %i.anx = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc74.i.i unwind label %bb.ix

.noexc74.i.i:                                     ; preds = %bb.iv
  br i1 %i.anx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i, label %bb.iw

bb.iw:                                            ; preds = %.noexc74.i.i
  %i.any = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc75.i.i unwind label %bb.ix

.noexc75.i.i:                                     ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA32_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.any, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(32) @.str.83, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 1 dereferenceable(40) @.str.84)
          to label %.noexc76.i.i unwind label %bb.ix

.noexc76.i.i:                                     ; preds = %.noexc75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i: ; preds = %.noexc76.i.i, %.noexc74.i.i
  %i.anz = load ptr, ptr %19, align 8             ; 2 uses
  %i.aoa = icmp eq ptr %i.anz, %i.aev
  br i1 %i.aoa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i
  %i.aob = load i64, ptr %i.aev, align 8
  %i.aoc = add i64 %i.aob, 1
  call void @_ZdlPvm(ptr noundef %i.anz, i64 noundef %i.aoc) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i

.loopexit.i:                                      ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i, %bb.in
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.split-lp.i:                             ; preds = %bb.io
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit191.i.i:                                 ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i71.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

bb.ix:                                            ; preds = %.noexc75.i.i, %bb.iw, %bb.iv
  %i.aod = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aoe = load ptr, ptr %19, align 8             ; 2 uses
  %i.aof = icmp eq ptr %i.aoe, %i.aev
  br i1 %i.aof, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i: ; preds = %bb.ix
  %i.aog = load i64, ptr %i.aev, align 8
  %i.aoh = add i64 %i.aog, 1
  call void @_ZdlPvm(ptr noundef %i.aoe, i64 noundef %i.aoh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i, %.loopexit.split-lp.i.i, %.loopexit191.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aod, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit191.i.i ], [ %i.aod, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.body95.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.0134.0202.i.i, i64 8 ; 2 uses
  %.not190.i.i = icmp eq ptr %i.aoi, %i.amp
  br i1 %.not190.i.i, label %._crit_edge206.i.i, label %bb.ig

.thread.i:                                        ; preds = %bb.iq
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0134.0202.i.i, i64 8 ; 2 uses
  %.not190.i153.i = icmp eq ptr %i.aoj, %i.amp
  br i1 %.not190.i153.i, label %._crit_edge206.i.thread.i, label %.outer.i

._crit_edge206.i.thread.i:                        ; preds = %.thread.i, %._crit_edge206.i.i
  %i.aok = load ptr, ptr %14, align 8
  invoke void @_ZN6Assimp3IFC17AssignAddedMeshesERSt3setIjSt4lessIjESaIjEEP6aiNodeRNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.aok, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.iy unwind label %bb.ja

bb.iy:                                            ; preds = %._crit_edge206.i.thread.i
  %i.aol = load ptr, ptr %i.abl, align 8          ; 3 uses
  %.not56.i.i = icmp eq ptr %i.aol, null
  br i1 %.not56.i.i, label %.loopexit.i.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8
  %i.aoo = load ptr, ptr %i.aol, align 8
  %i.aop = ptrtoint ptr %i.aon to i64
  %i.aoq = ptrtoint ptr %i.aoo to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = sdiv exact i64 %i.aor, 88              ; 2 uses
  %i.aot = sub nsw i64 %i.aos, %i.akp
  %.not209.i.i = icmp eq i64 %i.aos, %i.akp
  br i1 %.not209.i.i, label %.loopexit.i.i, label %.lr.ph208.i.i

bb.ja:                                            ; preds = %._crit_edge206.i.thread.i
  %i.aou = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.lr.ph208.i.i:                                    ; preds = %bb.iz, %bb.jb
  %.0207.i.i = phi i64 [ %i.aoz, %bb.jb ], [ 0, %bb.iz ] ; 2 uses
  %i.aov = load ptr, ptr %i.abl, align 8
  %i.aow = load ptr, ptr %i.aov, align 8
  %i.aox = getelementptr [88 x i8], ptr %i.aow, i64 %i.akp
  %i.aoy = getelementptr [88 x i8], ptr %i.aox, i64 %.0207.i.i
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %i.aoy, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %.lr.ph208.i.i
  %i.aoz = add nuw i64 %.0207.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aoz, %i.aot
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph208.i.i, !llvm.loop !204

bb.jc:                                            ; preds = %.lr.ph208.i.i
  %i.apa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.i.i:                                    ; preds = %bb.jb, %bb.iz, %bb.iy
  %.sroa.087.0.copyload88.i.i = load float, ptr %i.aex, align 4
  %.sroa.789.0.copyload91.i.i = load float, ptr %.sroa.789.0..sroa_idx90.i.i, align 8
  %.sroa.992.0.copyload94.i.i = load float, ptr %.sroa.992.0..sroa_idx93.i.i, align 4
  %.sroa.1195.0.copyload97.i.i = load float, ptr %.sroa.1195.0..sroa_idx96.i.i, align 8
  %.sroa.1398.0.copyload100.i.i = load float, ptr %.sroa.1398.0..sroa_idx99.i.i, align 4
  %.sroa.15101.0.copyload103.i.i = load float, ptr %.sroa.15101.0..sroa_idx102.i.i, align 8
  %.sroa.17104.0.copyload106.i.i = load float, ptr %.sroa.17104.0..sroa_idx105.i.i, align 4
  %.sroa.19107.0.copyload109.i.i = load float, ptr %.sroa.19107.0..sroa_idx108.i.i, align 8
  %.sroa.21110.0.copyload112.i.i = load float, ptr %.sroa.21110.0..sroa_idx111.i.i, align 4
  %.sroa.23113.0.copyload115.i.i = load float, ptr %.sroa.23113.0..sroa_idx114.i.i, align 8
  %.sroa.25116.0.copyload118.i.i = load float, ptr %.sroa.25116.0..sroa_idx117.i.i, align 4
  %.sroa.27119.0.copyload121.i.i = load float, ptr %.sroa.27119.0..sroa_idx120.i.i, align 8
  %.sroa.29122.0.copyload124.i.i = load float, ptr %.sroa.29122.0..sroa_idx123.i.i, align 4
  %.sroa.31125.0.copyload127.i.i = load float, ptr %.sroa.31125.0..sroa_idx126.i.i, align 8
  %.sroa.33128.0.copyload130.i.i = load float, ptr %.sroa.33128.0..sroa_idx129.i.i, align 4
  %.sroa.35.0.copyload132.i.i = load float, ptr %.sroa.35.0..sroa_idx131.i.i, align 8
  %i.apb = load ptr, ptr %14, align 8             ; 6 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 1028
  %i.apd = load <4 x double>, ptr %16, align 16, !noalias !205
  %i.ape = fptrunc <4 x double> %i.apd to <4 x float> ; 4 uses
  %i.apf = load <4 x double>, ptr %i.ael, align 16, !noalias !205
  %i.apg = fptrunc <4 x double> %i.apf to <4 x float> ; 4 uses
  %i.aph = load <4 x double>, ptr %i.aem, align 16, !noalias !205
  %i.api = fptrunc <4 x double> %i.aph to <4 x float> ; 4 uses
  %i.apj = load <4 x double>, ptr %i.aen, align 16, !noalias !205
  %i.apk = fptrunc <4 x double> %i.apj to <4 x float> ; 4 uses
  %42 = insertelement <4 x float> poison, float %.sroa.789.0.copyload91.i.i, i64 0
  %i.apl = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apm = fmul <4 x float> %i.apl, %i.apg
  %43 = insertelement <4 x float> poison, float %.sroa.087.0.copyload88.i.i, i64 0
  %i.apn = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> %i.apn, <4 x float> %i.apm)
  %44 = insertelement <4 x float> poison, float %.sroa.992.0.copyload94.i.i, i64 0
  %i.app = shufflevector <4 x float> %44, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.api, <4 x float> %i.app, <4 x float> %i.apo)
  %45 = insertelement <4 x float> poison, float %.sroa.1195.0.copyload97.i.i, i64 0
  %i.apr = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aps = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apk, <4 x float> %i.apr, <4 x float> %i.apq)
  store <4 x float> %i.aps, ptr %i.apc, align 4
  %.sroa.1398.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.apb, i64 1044
  %46 = insertelement <4 x float> poison, float %.sroa.15101.0.copyload103.i.i, i64 0
  %i.apt = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apu = fmul <4 x float> %i.apt, %i.apg
  %47 = insertelement <4 x float> poison, float %.sroa.1398.0.copyload100.i.i, i64 0
  %i.apv = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> %i.apv, <4 x float> %i.apu)
  %48 = insertelement <4 x float> poison, float %.sroa.17104.0.copyload106.i.i, i64 0
  %i.apx = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.api, <4 x float> %i.apx, <4 x float> %i.apw)
  %49 = insertelement <4 x float> poison, float %.sroa.19107.0.copyload109.i.i, i64 0
  %i.apz = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apk, <4 x float> %i.apz, <4 x float> %i.apy)
  store <4 x float> %i.aqa, ptr %.sroa.1398.0..sroa_idx.i.i, align 4
  %.sroa.21110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.apb, i64 1060
  %50 = insertelement <4 x float> poison, float %.sroa.23113.0.copyload115.i.i, i64 0
  %i.aqb = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqc = fmul <4 x float> %i.aqb, %i.apg
  %51 = insertelement <4 x float> poison, float %.sroa.21110.0.copyload112.i.i, i64 0
  %i.aqd = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> %i.aqd, <4 x float> %i.aqc)
  %52 = insertelement <4 x float> poison, float %.sroa.25116.0.copyload118.i.i, i64 0
  %i.aqf = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.api, <4 x float> %i.aqf, <4 x float> %i.aqe)
  %53 = insertelement <4 x float> poison, float %.sroa.27119.0.copyload121.i.i, i64 0
  %i.aqh = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apk, <4 x float> %i.aqh, <4 x float> %i.aqg)
  store <4 x float> %i.aqi, ptr %.sroa.21110.0..sroa_idx.i.i, align 4
  %.sroa.29122.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.apb, i64 1076
  %54 = insertelement <4 x float> poison, float %.sroa.31125.0.copyload127.i.i, i64 0
  %i.aqj = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqk = fmul <4 x float> %i.aqj, %i.apg
  %55 = insertelement <4 x float> poison, float %.sroa.29122.0.copyload124.i.i, i64 0
  %i.aql = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> %i.aql, <4 x float> %i.aqk)
  %56 = insertelement <4 x float> poison, float %.sroa.33128.0.copyload130.i.i, i64 0
  %i.aqn = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.api, <4 x float> %i.aqn, <4 x float> %i.aqm)
  %57 = insertelement <4 x float> poison, float %.sroa.35.0.copyload132.i.i, i64 0
  %i.aqp = shufflevector <4 x float> %57, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apk, <4 x float> %i.aqp, <4 x float> %i.aqo)
  store <4 x float> %i.aqq, ptr %.sroa.29122.0..sroa_idx.i.i, align 4
  store ptr null, ptr %14, align 8
  %.not.i.i.i63.i = icmp eq ptr %.sroa.18448.19, %.sroa.38.19
  br i1 %.not.i.i.i63.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %.loopexit.i.i
  store ptr %i.apb, ptr %.sroa.18448.19, align 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %.sroa.18448.19, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i

bb.je:                                            ; preds = %.loopexit.i.i
  %i.aqs = ptrtoint ptr %.sroa.18448.19 to i64
  %i.aqt = ptrtoint ptr %.sroa.0438.19 to i64
  %i.aqu = sub i64 %i.aqs, %i.aqt                 ; 6 uses
  %i.aqv = icmp eq i64 %i.aqu, 9223372036854775800
  br i1 %i.aqv, label %bb.jf, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc84.i.i unwind label %.loopexit.split-lp179.i

.noexc84.i.i:                                     ; preds = %bb.jf
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.je
  %i.aqw = ashr exact i64 %i.aqu, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aqw, i64 1)
  %i.aqx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.aqw ; 2 uses
  %i.aqy = icmp ult i64 %i.aqx, %i.aqw
  %i.aqz = call i64 @llvm.umin.i64(i64 %i.aqx, i64 1152921504606846975)
  %i.ara = select i1 %i.aqy, i64 1152921504606846975, i64 %i.aqz ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ara, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.arb = shl nuw nsw i64 %i.ara, 3
  %i.arc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arb) #29
          to label %.noexc85.i.i unwind label %.loopexit178.i ; 4 uses

.noexc85.i.i:                                     ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ard = getelementptr inbounds i8, ptr %i.arc, i64 %i.aqu ; 2 uses
  store ptr %i.apb, ptr %i.ard, align 8
  %i.are = icmp sgt i64 %i.aqu, 0
  br i1 %i.are, label %bb.jg, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

bb.jg:                                            ; preds = %.noexc85.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.arc, ptr align 8 %.sroa.0438.19, i64 %i.aqu, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i: ; preds = %bb.jg, %.noexc85.i.i
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0438.19, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.jh

bb.jh:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.19, i64 noundef %i.aqu) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.jh, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.arc, i64 %i.ara
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i

.loopexit178.i:                                   ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit180.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.split-lp179.i:                          ; preds = %bb.jf
  %lpad.loopexit.split-lp181.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, %bb.jd, %._crit_edge206.i.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i
  %.sroa.0438.20 = phi ptr [ %.sroa.0438.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.arc, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0438.19, %bb.jd ], [ %.sroa.0438.19, %._crit_edge206.i.i ]
  %.sroa.18448.20 = phi ptr [ %.sroa.18448.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.arf, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %i.aqr, %bb.jd ], [ %.sroa.18448.19, %._crit_edge206.i.i ]
  %.sroa.38.20 = phi ptr [ %.sroa.38.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.arg, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %.sroa.38.19, %bb.jd ], [ %.sroa.38.19, %._crit_edge206.i.i ]
  %.037.lcssa230.i.i = phi i1 [ %.0287.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ true, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ true, %bb.jd ], [ %.0287.i, %._crit_edge206.i.i ]
  %i.arh = load ptr, ptr %i.aer, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.arh)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i unwind label %bb.ji

bb.ji:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i
  %i.ari = landingpad { ptr, i32 }
          catch ptr null
  %i.arj = extractvalue { ptr, i32 } %i.ari, 0
  call void @__clang_call_terminate(ptr %i.arj) #31
  unreachable

_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i:         ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ark = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i62.i = icmp eq ptr %i.ark, null
  br i1 %.not.i.i62.i, label %bb.jk, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i: ; preds = %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.ark) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ark, i64 noundef 1144) #32
  br label %bb.jk

.body95.i:                                        ; preds = %.loopexit.split-lp179.i, %.loopexit178.i, %bb.jc, %bb.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i, %.loopexit.split-lp.i, %.loopexit.i, %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i, %.loopexit.split-lp174.i, %.loopexit173.i, %bb.if, %bb.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i, %bb.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i, %bb.hm
  %.sroa.38.191093 = phi ptr [ %.sroa.38.19, %bb.hm ], [ %.sroa.38.19, %bb.if ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i ], [ %.sroa.38.19, %bb.ja ], [ %.sroa.38.19, %bb.jc ], [ %.sroa.38.19, %.loopexit.split-lp.i ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92.i ], [ %.sroa.38.19, %bb.ib ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i ], [ %.sroa.38.19, %bb.ht ], [ %.sroa.38.19, %.loopexit.split-lp174.i ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i ], [ %.sroa.38.19, %bb.il ], [ %.sroa.38.19, %.loopexit173.i ], [ %.sroa.38.19, %.loopexit.i ], [ %.sroa.18448.19, %.loopexit178.i ], [ %.sroa.18448.19, %.loopexit.split-lp179.i ]
  %.pn63.pn.i.i = phi { ptr, i32 } [ %.pn63.i.i, %bb.hm ], [ %i.amq, %bb.if ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i ], [ %i.aou, %bb.ja ], [ %i.apa, %bb.jc ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.all, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i ], [ %i.amb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i ], [ %i.amb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92.i ], [ %.pn10.i88.i, %bb.ib ], [ %i.amv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i ], [ %i.all, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i ], [ %.pn10.i101.i, %bb.ht ], [ %lpad.loopexit.split-lp176.i, %.loopexit.split-lp174.i ], [ %i.amv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i ], [ %.pn10.i74.i, %bb.il ], [ %lpad.loopexit175.i, %.loopexit173.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit180.i, %.loopexit178.i ], [ %lpad.loopexit.split-lp181.i, %.loopexit.split-lp179.i ]
  call void @_ZNSt3setIjSt4lessIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body121.i

.body121.i:                                       ; preds = %.body95.i, %.loopexit.split-lp169.i, %.loopexit168.i, %bb.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i
  %.sroa.38.191092 = phi ptr [ %.sroa.38.191093, %.body95.i ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i ], [ %.sroa.38.19, %bb.gy ], [ %.sroa.38.19, %.loopexit168.i ], [ %.sroa.38.19, %.loopexit.split-lp169.i ]
  %.pn63.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.i.i, %.body95.i ], [ %i.aha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i ], [ %i.aha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i ], [ %.pn10.i114.i, %bb.gy ], [ %lpad.loopexit170.i, %.loopexit168.i ], [ %lpad.loopexit.split-lp171.i, %.loopexit.split-lp169.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.body135.i

.body135.i:                                       ; preds = %.body121.i, %.loopexit.split-lp164.i, %.loopexit163.i, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i
  %.sroa.38.191091 = phi ptr [ %.sroa.38.191092, %.body121.i ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i ], [ %.sroa.38.19, %bb.go ], [ %.sroa.38.19, %.loopexit163.i ], [ %.sroa.38.19, %.loopexit.split-lp164.i ]
  %.pn63.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.pn.i.i, %.body121.i ], [ %i.agk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i ], [ %i.agk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i ], [ %.pn10.i128.i, %bb.go ], [ %lpad.loopexit165.i, %.loopexit163.i ], [ %lpad.loopexit.split-lp166.i, %.loopexit.split-lp164.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  br label %bb.jj

bb.jj:                                            ; preds = %.body135.i, %bb.hi
  %.sroa.38.191090 = phi ptr [ %.sroa.38.191091, %.body135.i ], [ %.sroa.38.19, %bb.hi ]
  %.pn63.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.pn.pn.i.i, %.body135.i ], [ %i.akw, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body.i

bb.jk:                                            ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.jo

.loopexit158.i:                                   ; preds = %bb.gg
  %lpad.loopexit160.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp159.i:                          ; preds = %bb.gh
  %lpad.loopexit.split-lp161.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.jl:                                            ; preds = %bb.jm, %bb.gj
  %i.arl = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.jm:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit.i
  %i.arm = invoke noundef zeroext i1 @_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9) %i.afv, i32 noundef %i.abw, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.jn unwind label %bb.jl

bb.jn:                                            ; preds = %bb.jm
  %i.arn = select i1 %i.arm, i1 true, i1 %.0287.i
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jk
  %.sroa.0438.21 = phi ptr [ %.sroa.0438.19, %bb.jn ], [ %.sroa.0438.20, %bb.jk ] ; 3 uses
  %.sroa.18448.21 = phi ptr [ %.sroa.18448.19, %bb.jn ], [ %.sroa.18448.20, %bb.jk ] ; 3 uses
  %.sroa.38.21 = phi ptr [ %.sroa.38.19, %bb.jn ], [ %.sroa.38.20, %bb.jk ] ; 3 uses
  %.1.i = phi i1 [ %i.arn, %bb.jn ], [ %.037.lcssa230.i.i, %bb.jk ] ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.sroa.0137.0286.i, i64 8 ; 2 uses
  %.not157.i = icmp eq ptr %i.aro, %i.afg
  br i1 %.not157.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge291.i:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i, %.loopexit194.i
  %.sroa.0438.22 = phi ptr [ %.sroa.0438.7.lcssa, %.loopexit194.i ], [ %.sroa.0438.18.ph, %._crit_edge.thread.i ], [ %.sroa.0438.21, %._crit_edge.i ] ; 2 uses
  %.sroa.18448.22 = phi ptr [ %.sroa.18448.7.lcssa, %.loopexit194.i ], [ %.sroa.18448.18.ph, %._crit_edge.thread.i ], [ %.sroa.18448.21, %._crit_edge.i ] ; 2 uses
  %.sroa.38.22 = phi ptr [ %.sroa.38.7.lcssa, %.loopexit194.i ], [ %.sroa.38.18.ph, %._crit_edge.thread.i ], [ %.sroa.38.21, %._crit_edge.i ] ; 2 uses
  invoke void @_ZN6Assimp3IFC17AssignAddedMeshesERSt3setIjSt4lessIjESaIjEEP6aiNodeRNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.jp unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

bb.jp:                                            ; preds = %._crit_edge291.i
  %.not.i.i.i67.i = icmp eq ptr %.sroa.0145.0.i, null
  br i1 %.not.i.i.i67.i, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.arp = ptrtoint ptr %.sroa.14.0.i to i64
  %i.arq = sub i64 %i.arp, %i.adf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0145.0.i, i64 noundef %i.arq) #32
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit.i

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit.i: ; preds = %bb.jq, %bb.jp
  %i.arr = load ptr, ptr %i.abz, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %i.arr)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i unwind label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit.i
  %i.ars = landingpad { ptr, i32 }
          catch ptr null
  %i.art = extractvalue { ptr, i32 } %i.ars, 0
  call void @__clang_call_terminate(ptr %i.art) #31
  unreachable

_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i:           ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %_ZN12_GLOBAL__N_128ProcessProductRepresentationERKN6Assimp3IFC10Schema_2x310IfcProductEP6aiNodeRSt6vectorIS7_SaIS7_EERNS1_14ConversionDataE.exit

.body.i:                                          ; preds = %bb.jl, %.loopexit.split-lp159.i, %.loopexit158.i, %bb.jj, %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp184.loopexit.split-lp.loopexit.i, %.loopexit.split-lp184.loopexit.i, %.loopexit183.i
  %.sroa.0438.17 = phi ptr [ %.sroa.0438.16, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0438.19, %bb.ge ], [ %.sroa.0438.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.0438.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.sroa.0438.19, %.loopexit.split-lp159.i ], [ %.sroa.0438.19, %bb.jl ], [ %.sroa.0438.19, %bb.jj ], [ %.sroa.0438.19, %.loopexit158.i ], [ %.sroa.0438.7.lcssa, %.loopexit183.i ], [ %.sroa.0438.7.lcssa, %.loopexit.split-lp184.loopexit.i ], [ %.sroa.0438.7.lcssa, %.loopexit.split-lp184.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.sroa.18448.17 = phi ptr [ %.sroa.18448.16, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.18448.19, %bb.ge ], [ %.sroa.18448.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.18448.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.sroa.18448.19, %.loopexit.split-lp159.i ], [ %.sroa.18448.19, %bb.jl ], [ %.sroa.18448.19, %bb.jj ], [ %.sroa.18448.19, %.loopexit158.i ], [ %.sroa.18448.7.lcssa, %.loopexit183.i ], [ %.sroa.18448.7.lcssa, %.loopexit.split-lp184.loopexit.i ], [ %.sroa.18448.7.lcssa, %.loopexit.split-lp184.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.sroa.38.17 = phi ptr [ %.sroa.38.16, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.38.19, %bb.ge ], [ %.sroa.38.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.38.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.sroa.38.19, %.loopexit.split-lp159.i ], [ %.sroa.38.19, %bb.jl ], [ %.sroa.38.191090, %bb.jj ], [ %.sroa.38.19, %.loopexit158.i ], [ %.sroa.38.7.lcssa, %.loopexit183.i ], [ %.sroa.38.7.lcssa, %.loopexit.split-lp184.loopexit.i ], [ %.sroa.38.7.lcssa, %.loopexit.split-lp184.loopexit.split-lp.loopexit.i ] ; 2 uses
end_hunk_0
