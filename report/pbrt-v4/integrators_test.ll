Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators_test?download=true
inline.NumInlined: 2677
inline.NumDeleted: 1027
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z14GetIntegratorsv:bb.a
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.yn to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %i.yn, i64 noundef %i.ze) #30
  br label %_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit529

_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit529: ; preds = %_ZSt8_DestroyIPSt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i526, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  invoke void @_Z11GetSamplersB5cxx11RKN4pbrt6Point2IiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.60") align 8 %47, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.dv unwind label %bb.dx

bb.bs:                                            ; preds = %_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.bt:                                            ; preds = %.lr.ph5743, %_ZN4pbrt18FilmBaseParametersD2Ev.exit670
  %.sroa.01885.05741 = phi ptr [ %i.yn, %.lr.ph5743 ], [ %i.akt, %_ZN4pbrt18FilmBaseParametersD2Ev.exit670 ] ; 4 uses
  %i.zg = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.bu unwind label %bb.de     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  store <2 x float> splat (float 5.000000e-01), ptr %i.zg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %.sroa.062.0.copyload = load i64, ptr %9, align 8 ; 3 uses
  %i.zh = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  %i.zi = invoke noundef ptr @_ZN4pbrt11PixelSensor13CreateDefaultEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr %i.zh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566 unwind label %bb.df

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566: ; preds = %bb.bu
  %.sroa.3.0.extract.shift.i.i534 = lshr i64 %.sroa.062.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i535 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i534 to i32 ; 2 uses
  %.sroa.speculated.i15.i543 = call i32 @llvm.smax.i32(i32 %.sroa.3.0.extract.trunc.i.i535, i32 0)
  %.sroa.2.0.insert.ext.i16.i544 = zext nneg i32 %.sroa.speculated.i15.i543 to i64
  %.sroa.2.0.insert.shift.i17.i545 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i544, 32
  %.sroa.0.0.extract.trunc.i.i533 = trunc i64 %.sroa.062.0.copyload to i32 ; 2 uses
  %.sroa.speculated4.i14.i542 = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i533, i32 0)
  %.sroa.09.0.insert.ext.i18.i546 = zext nneg i32 %.sroa.speculated4.i14.i542 to i64
  %.sroa.09.0.insert.insert.i19.i547 = or disjoint i64 %.sroa.2.0.insert.shift.i17.i545, %.sroa.09.0.insert.ext.i18.i546
  %.sroa.speculated.i.i537 = call i32 @llvm.smin.i32(i32 %.sroa.3.0.extract.trunc.i.i535, i32 0)
  %.sroa.2.0.insert.ext.i.i538 = zext i32 %.sroa.speculated.i.i537 to i64
  %.sroa.2.0.insert.shift.i.i539 = shl nuw i64 %.sroa.2.0.insert.ext.i.i538, 32
  %.sroa.speculated4.i.i536 = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i.i533, i32 0)
  %.sroa.09.0.insert.ext.i.i540 = zext i32 %.sroa.speculated4.i.i536 to i64
  %.sroa.09.0.insert.insert.i.i541 = or disjoint i64 %.sroa.2.0.insert.shift.i.i539, %.sroa.09.0.insert.ext.i.i540
  %i.zj = ptrtoint ptr %i.zg to i64
  %i.zk = or i64 %i.zj, 144115188075855872
  store ptr %i.bm, ptr %32, align 8, !tbaa !24, !alias.scope !464
  store i64 8248453967725684084, ptr %i.bm, align 8
  store i64 8, ptr %i.bn, align 8, !tbaa !23, !alias.scope !464
  store i8 0, ptr %i.kl, align 8, !tbaa !26
  store i64 %.sroa.062.0.copyload, ptr %31, align 8
  store i64 %.sroa.09.0.insert.insert.i.i541, ptr %i.bo, align 8
  store i64 %.sroa.09.0.insert.insert.i19.i547, ptr %.sroa.2.0..sroa_idx.i556, align 8
  store i64 %i.zk, ptr %i.bp, align 8, !tbaa !117
  store float 1.000000e+00, ptr %i.bq, align 8, !tbaa !452
  store ptr %i.zi, ptr %i.br, align 8, !tbaa !453
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !24
  %i.zl = load i64, ptr %i.bm, align 8
  store i64 %i.zl, ptr %i.bt, align 8
  store i64 8, ptr %i.bu, align 8, !tbaa !23
  store i8 0, ptr %i.km, align 8, !tbaa !26
  %i.zm = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32
          to label %bb.bv unwind label %bb.dg     ; 3 uses

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %33, ptr noundef nonnull align 8 dereferenceable(80) %31, i64 24, i1 false)
  %i.zn = load i64, ptr %i.bp, align 8, !tbaa !117
  store i64 %i.zn, ptr %i.bv, align 8, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !24
  %i.zo = load ptr, ptr %i.bs, align 8, !tbaa !22 ; 2 uses
  %i.zp = load i64, ptr %i.bu, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i64 %i.zp, ptr %i.k, align 8, !tbaa !25
  %i.zq = icmp ugt i64 %i.zp, 15
  br i1 %i.zq, label %.noexc.i.i568, label %._crit_edge.i.i.i567

.noexc.i.i568:                                    ; preds = %bb.bv
  %i.zr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc569 unwind label %bb.dh ; 2 uses

.noexc569:                                        ; preds = %.noexc.i.i568
  store ptr %i.zr, ptr %i.bx, align 8, !tbaa !22
  %i.zs = load i64, ptr %i.k, align 8, !tbaa !25
  store i64 %i.zs, ptr %i.by, align 8, !tbaa !26
  br label %._crit_edge.i.i.i567

._crit_edge.i.i.i567:                             ; preds = %.noexc569, %bb.bv
  %i.zt = phi ptr [ %i.zr, %.noexc569 ], [ %i.by, %bb.bv ] ; 2 uses
  switch i64 %i.zp, label %bb.bx [
    i64 1, label %bb.bw
    i64 0, label %bb.by
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i.i567
  %i.zu = load i8, ptr %i.zo, align 1, !tbaa !26
  store i8 %i.zu, ptr %i.zt, align 1, !tbaa !26
  br label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i.i567
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zt, ptr align 1 %i.zo, i64 %i.zp, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.i.i.i567
  %i.zv = load i64, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  store i64 %i.zv, ptr %i.bz, align 8, !tbaa !23
  %i.zw = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zv
  store i8 0, ptr %i.zx, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.zy = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !119
  %i.zz = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  invoke void @_ZN4pbrt7RGBFilmC1ENS_18FilmBaseParametersEPKNS_13RGBColorSpaceEfbN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(168) %i.zm, ptr nofree noundef nonnull align 8 dereferenceable(80) %33, ptr noundef %i.zy, float noundef +inf, i1 noundef zeroext true, ptr %i.zz)
          to label %bb.bz unwind label %bb.di

bb.bz:                                            ; preds = %bb.by
  %i.aaa = load ptr, ptr %i.bx, align 8, !tbaa !22 ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.by
  br i1 %i.aab, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i571: ; preds = %bb.bz
  %i.aac = load i64, ptr %i.by, align 8, !tbaa !26
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #30
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit573

_ZN4pbrt18FilmBaseParametersD2Ev.exit573:         ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i571
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZN4pbrt15CameraTransformC1ERKNS_17AnimatedTransformE(ptr noundef nonnull align 4 dereferenceable(824) %35, ptr noundef nonnull align 4 dereferenceable(696) %10)
          to label %bb.ca unwind label %bb.dj

bb.ca:                                            ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit573
  %i.aae = ptrtoint ptr %i.zm to i64
  %i.aaf = or i64 %i.aae, 144115188075855872
  store i64 %i.aaf, ptr %36, align 8, !tbaa !121
  store i64 0, ptr %37, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %38, i8 0, i64 112, i1 false)
  %i.aag = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  %i.aah = ptrtoint ptr %i.aag to i64
  store i64 %i.aah, ptr %38, align 8, !tbaa !74
  store ptr null, ptr %i.ca, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  invoke void @_ZN4pbrt20CameraBaseParametersC1ERKNS_15CameraTransformENS_4FilmENS_6MediumERKNS_19ParameterDictionaryEPKNS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(848) %34, ptr noundef nonnull align 4 dereferenceable(824) %35, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %36, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(108) %38, ptr noundef null)
          to label %bb.cb unwind label %bb.dk

bb.cb:                                            ; preds = %bb.ca
  store i64 0, ptr %i.cc, align 8, !tbaa !127
  %i.aai = load ptr, ptr %i.ca, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i.i574 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i.i.i574, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit575, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aaj = load i64, ptr %i.cb, align 8, !tbaa !128
  %i.aak = shl i64 %i.aaj, 3
  %i.aal = load ptr, ptr %38, align 8, !tbaa !129 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !48
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8
  invoke void %i.aao(ptr noundef nonnull align 8 dereferenceable(8) %i.aal, ptr noundef nonnull %i.aai, i64 noundef %i.aak, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit575 unwind label %bb.cd, !inline_history !3

bb.cd:                                            ; preds = %bb.cc
  %i.aap = landingpad { ptr, i32 }
          catch ptr null
  %i.aaq = extractvalue { ptr, i32 } %i.aap, 0
  call void @__clang_call_terminate(ptr %i.aaq) #29
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit575:        ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.aar = invoke noalias noundef nonnull dereferenceable(1440) ptr @_Znwm(i64 noundef 1440) #32
          to label %bb.ce unwind label %bb.dm     ; 21 uses

bb.ce:                                            ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit575
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %7, ptr noundef nonnull align 8 dereferenceable(832) %34, i64 832, i1 false)
  %i.aas = load <2 x i64>, ptr %i.cd, align 8, !tbaa !25
  store <2 x i64> %i.aas, ptr %i.ce, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN4pbrt12OrthographicEff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc584 unwind label %bb.dn

.noexc584:                                        ; preds = %bb.ce
  invoke void @_ZN4pbrt16ProjectiveCameraC2ENS_20CameraBaseParametersERKNS_9TransformENS_7Bounds2IfEEff(ptr noundef nonnull align 8 dereferenceable(1440) %i.aar, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(848) %7, ptr noundef nonnull align 4 dereferenceable(128) %8, <2 x float> splat (float -1.000000e-01), <2 x float> splat (float 1.000000e-01), float noundef 0.000000e+00, float noundef 1.000000e+01)
          to label %bb.cf unwind label %bb.dn

bb.cf:                                            ; preds = %.noexc584
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 1416 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 1424
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 1428 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 1436
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 1024
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aar, i64 1028
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aar, i64 1032
  %121 = load <4 x float>, ptr %i.aaz, align 4
  %122 = shufflevector <4 x float> %121, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aar, i64 1040
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aar, i64 1044
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aar, i64 1048
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !71
  %i.abe = load <2 x float>, ptr %i.aax, align 4, !tbaa !71 ; 2 uses
  %123 = load <4 x float>, ptr %i.aay, align 4
  %124 = shufflevector <4 x float> %123, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.abf = load <2 x float>, ptr %i.aba, align 4, !tbaa !71 ; 2 uses
  %i.abg = load float, ptr %i.abb, align 4, !tbaa !71
  %i.abh = shufflevector <2 x float> %i.abe, <2 x float> %i.abf, <2 x i32> <i32 1, i32 3>
  %i.abi = fmul <2 x float> %i.abh, zeroinitializer
  %i.abj = shufflevector <2 x float> %i.abe, <2 x float> %i.abf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.abk = fadd <2 x float> %i.abj, %i.abi
  %i.abl = insertelement <2 x float> %122, float %i.abd, i64 1
  %i.abm = fmul <2 x float> %i.abl, zeroinitializer ; 2 uses
  %i.abn = fadd <2 x float> %i.abk, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aar, i64 1056
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aar, i64 1064
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !71
  %i.abr = fmul float %i.abq, 0.000000e+00
  store <2 x float> %i.abn, ptr %i.aat, align 8
  %i.abs = fmul <2 x float> %i.abj, zeroinitializer
  %i.abt = insertelement <2 x float> %124, float %i.abg, i64 1
  %i.abu = fadd <2 x float> %i.abs, %i.abt
  %i.abv = fadd <2 x float> %i.abu, %i.abm
  %i.abw = load <2 x float>, ptr %i.abo, align 8, !tbaa !71 ; 2 uses
  %i.abx = fmul <2 x float> %i.abw, zeroinitializer
  %i.aby = shufflevector <2 x float> %i.abx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abz = fadd <2 x float> %i.abw, %i.aby
  %i.aca = insertelement <2 x float> poison, float %i.abr, i64 0
  %i.acb = shufflevector <2 x float> %i.aca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acc = fadd <2 x float> %i.abz, %i.acb        ; 2 uses
  %i.acd = extractelement <2 x float> %i.acc, i64 0
  store float %i.acd, ptr %i.aau, align 8
  store <2 x float> %i.abv, ptr %i.aav, align 4
  %i.ace = extractelement <2 x float> %i.acc, i64 1
  store float %i.ace, ptr %i.aaw, align 4
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aar, i64 884 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.acf, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aar, i64 892
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aar, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.acg, ptr noundef nonnull align 4 dereferenceable(12) %i.acf, i64 12, i1 false)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aar, i64 848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ach, ptr noundef nonnull align 8 dereferenceable(12) %i.aat, i64 12, i1 false)
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aar, i64 860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aci, ptr noundef nonnull align 4 dereferenceable(12) %i.aav, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aar, i64 832
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !121, !noalias !465
  %i.acl = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32
          to label %bb.cg unwind label %bb.do     ; 3 uses

bb.cg:                                            ; preds = %bb.cf
  %i.acm = ptrtoint ptr %i.aar to i64
  %i.acn = or i64 %i.acm, 288230376151711744
  store i64 %i.acn, ptr %39, align 8, !tbaa !131
  store i64 0, ptr %40, align 8, !tbaa !115
  %i.aco = load i64, ptr %.sroa.01885.05741, align 8, !tbaa !115
  store i64 %i.aco, ptr %40, align 8, !tbaa !115
  %i.acp = load i64, ptr %.sroa.01912.05766, align 8, !tbaa !80
  store i64 %i.acp, ptr %41, align 8, !tbaa !80
  %i.acq = load ptr, ptr %i.yq, align 8, !tbaa !92 ; 2 uses
  %i.acr = load ptr, ptr %i.yp, align 8, !tbaa !90 ; 2 uses
  %i.acs = ptrtoint ptr %i.acq to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %.not.i.i.i.i586 = icmp eq ptr %i.acq, %i.acr
  br i1 %.not.i.i.i.i586, label %.noexc596, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.acv = icmp ugt i64 %i.acu, 9223372036854775800
  br i1 %i.acv, label %.noexc.i.i594, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i587, !prof !109

.noexc.i.i594:                                    ; preds = %bb.ch
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc595 unwind label %.loopexit.split-lp2116

.noexc595:                                        ; preds = %.noexc.i.i594
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i587: ; preds = %bb.ch
  %i.acw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acu) #32
          to label %.noexc596 unwind label %.loopexit2115

.noexc596:                                        ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i587, %bb.cg
  %i.acx = phi ptr [ null, %bb.cg ], [ %i.acw, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i587 ] ; 11 uses
  store ptr %i.acx, ptr %42, align 8, !tbaa !90
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acu
  store ptr %i.acy, ptr %i.cg, align 8, !tbaa !91
  %i.acz = load ptr, ptr %i.yp, align 8, !tbaa !103 ; 10 uses
  %i.ada = ptrtoaddr ptr %i.acz to i64            ; 2 uses
  %i.adb = load ptr, ptr %i.yq, align 8, !tbaa !103 ; 3 uses
  %i.adc = ptrtoaddr ptr %i.adb to i64            ; 2 uses
  %.not11.i.i.i.i.i588 = icmp eq ptr %i.acz, %i.adb
  br i1 %.not11.i.i.i.i.i588, label %._crit_edge.i.i598, label %iter.check11437

iter.check11437:                                  ; preds = %.noexc596
  %i.add = add i64 %i.adc, -8
  %i.ade = sub i64 %i.add, %i.ada                 ; 3 uses
  %i.adf = lshr i64 %i.ade, 3
  %i.adg = add nuw nsw i64 %i.adf, 1              ; 5 uses
  %min.iters.check11419 = icmp ult i64 %i.ade, 24
  br i1 %min.iters.check11419, label %.lr.ph.i.i.i.i.i589.preheader, label %vector.memcheck11411

vector.memcheck11411:                             ; preds = %iter.check11437
  %scevgep11412 = getelementptr i8, ptr %i.acx, i64 8
  %i.adh = add i64 %i.adc, -8
  %i.adi = sub i64 %i.adh, %i.ada
  %i.adj = and i64 %i.adi, -8                     ; 2 uses
  %scevgep11413 = getelementptr i8, ptr %scevgep11412, i64 %i.adj
  %scevgep11414 = getelementptr i8, ptr %i.acz, i64 8
  %scevgep11415 = getelementptr i8, ptr %scevgep11414, i64 %i.adj
  %bound011416 = icmp ult ptr %i.acx, %scevgep11415
  %bound111417 = icmp ult ptr %i.acz, %scevgep11413
  %found.conflict11418 = and i1 %bound011416, %bound111417
  br i1 %found.conflict11418, label %.lr.ph.i.i.i.i.i589.preheader, label %vector.main.loop.iter.check11420

vector.main.loop.iter.check11420:                 ; preds = %vector.memcheck11411
  %min.iters.check11421 = icmp ult i64 %i.ade, 120
  br i1 %min.iters.check11421, label %vec.epilog.ph11441, label %vector.ph11422

vector.ph11422:                                   ; preds = %vector.main.loop.iter.check11420
  %i.adk = and i64 %i.adg, 12
  %n.vec11423 = and i64 %i.adg, 4611686018427387888 ; 4 uses
  %i.adl = shl i64 %n.vec11423, 3                 ; 2 uses
  %i.adm = getelementptr i8, ptr %i.acx, i64 %i.adl ; 2 uses
  %i.adn = getelementptr i8, ptr %i.acz, i64 %i.adl
  br label %vector.body11424

vector.body11424:                                 ; preds = %vector.ph11422, %vector.body11424
  %index11425 = phi i64 [ 0, %vector.ph11422 ], [ %index.next11432, %vector.body11424 ] ; 2 uses
  %i.ado = shl i64 %index11425, 3                 ; 2 uses
  %next.gep11426 = getelementptr i8, ptr %i.acx, i64 %i.ado ; 5 uses
  %next.gep11427 = getelementptr i8, ptr %i.acz, i64 %i.ado ; 4 uses
  %i.adp = getelementptr i8, ptr %next.gep11426, i64 32 ; 2 uses
  %i.adq = getelementptr i8, ptr %next.gep11426, i64 64 ; 2 uses
  %i.adr = getelementptr i8, ptr %next.gep11426, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep11426, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> zeroinitializer, ptr %i.adp, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> zeroinitializer, ptr %i.adq, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> zeroinitializer, ptr %i.adr, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  %i.ads = getelementptr i8, ptr %next.gep11427, i64 32
  %i.adt = getelementptr i8, ptr %next.gep11427, i64 64
  %i.adu = getelementptr i8, ptr %next.gep11427, i64 96
  %wide.load11428 = load <4 x i64>, ptr %next.gep11427, align 8, !tbaa !78, !alias.scope !467
  %wide.load11429 = load <4 x i64>, ptr %i.ads, align 8, !tbaa !78, !alias.scope !467
  %wide.load11430 = load <4 x i64>, ptr %i.adt, align 8, !tbaa !78, !alias.scope !467
  %wide.load11431 = load <4 x i64>, ptr %i.adu, align 8, !tbaa !78, !alias.scope !467
  store <4 x i64> %wide.load11428, ptr %next.gep11426, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> %wide.load11429, ptr %i.adp, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> %wide.load11430, ptr %i.adq, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  store <4 x i64> %wide.load11431, ptr %i.adr, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  %index.next11432 = add nuw i64 %index11425, 16  ; 2 uses
  %i.adv = icmp eq i64 %index.next11432, %n.vec11423
  br i1 %i.adv, label %middle.block11433, label %vector.body11424, !llvm.loop !319

middle.block11433:                                ; preds = %vector.body11424
  %cmp.n11434 = icmp eq i64 %i.adg, %n.vec11423
  br i1 %cmp.n11434, label %._crit_edge.i.i598, label %vec.epilog.iter.check11439

vec.epilog.iter.check11439:                       ; preds = %middle.block11433
  %min.epilog.iters.check11440 = icmp eq i64 %i.adk, 0
  br i1 %min.epilog.iters.check11440, label %.lr.ph.i.i.i.i.i589.preheader, label %vec.epilog.ph11441, !prof !134

vec.epilog.ph11441:                               ; preds = %vector.main.loop.iter.check11420, %vec.epilog.iter.check11439
  %vec.epilog.resume.val11435 = phi i64 [ %n.vec11423, %vec.epilog.iter.check11439 ], [ 0, %vector.main.loop.iter.check11420 ]
  %n.vec11442 = and i64 %i.adg, 4611686018427387900 ; 3 uses
  %i.adw = shl i64 %n.vec11442, 3                 ; 2 uses
  %i.adx = getelementptr i8, ptr %i.acx, i64 %i.adw ; 2 uses
  %i.ady = getelementptr i8, ptr %i.acz, i64 %i.adw
  br label %vec.epilog.vector.body11443

vec.epilog.vector.body11443:                      ; preds = %vec.epilog.vector.body11443, %vec.epilog.ph11441
  %index11444 = phi i64 [ %vec.epilog.resume.val11435, %vec.epilog.ph11441 ], [ %index.next11448, %vec.epilog.vector.body11443 ] ; 2 uses
  %i.adz = shl i64 %index11444, 3                 ; 2 uses
  %next.gep11445 = getelementptr i8, ptr %i.acx, i64 %i.adz ; 2 uses
  %next.gep11446 = getelementptr i8, ptr %i.acz, i64 %i.adz
  store <4 x i64> zeroinitializer, ptr %next.gep11445, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  %wide.load11447 = load <4 x i64>, ptr %next.gep11446, align 8, !tbaa !78, !alias.scope !467
  store <4 x i64> %wide.load11447, ptr %next.gep11445, align 8, !tbaa !78, !alias.scope !466, !noalias !467
  %index.next11448 = add nuw i64 %index11444, 4   ; 2 uses
  %i.aea = icmp eq i64 %index.next11448, %n.vec11442
  br i1 %i.aea, label %vec.epilog.middle.block11449, label %vec.epilog.vector.body11443, !llvm.loop !320

vec.epilog.middle.block11449:                     ; preds = %vec.epilog.vector.body11443
  %cmp.n11450 = icmp eq i64 %i.adg, %n.vec11442
  br i1 %cmp.n11450, label %._crit_edge.i.i598, label %.lr.ph.i.i.i.i.i589.preheader

.lr.ph.i.i.i.i.i589.preheader:                    ; preds = %iter.check11437, %vector.memcheck11411, %vec.epilog.iter.check11439, %vec.epilog.middle.block11449
  %.013.i.i.i.i.i590.ph = phi ptr [ %i.acx, %iter.check11437 ], [ %i.acx, %vector.memcheck11411 ], [ %i.adm, %vec.epilog.iter.check11439 ], [ %i.adx, %vec.epilog.middle.block11449 ]
  %.sroa.08.012.i.i.i.i.i591.ph = phi ptr [ %i.acz, %iter.check11437 ], [ %i.acz, %vector.memcheck11411 ], [ %i.adn, %vec.epilog.iter.check11439 ], [ %i.ady, %vec.epilog.middle.block11449 ]
  br label %.lr.ph.i.i.i.i.i589

.lr.ph.i.i.i.i.i589:                              ; preds = %.lr.ph.i.i.i.i.i589.preheader, %.lr.ph.i.i.i.i.i589
  %.013.i.i.i.i.i590 = phi ptr [ %i.aed, %.lr.ph.i.i.i.i.i589 ], [ %.013.i.i.i.i.i590.ph, %.lr.ph.i.i.i.i.i589.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i591 = phi ptr [ %i.aec, %.lr.ph.i.i.i.i.i589 ], [ %.sroa.08.012.i.i.i.i.i591.ph, %.lr.ph.i.i.i.i.i589.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i.i590, align 8, !tbaa !78
  %i.aeb = load i64, ptr %.sroa.08.012.i.i.i.i.i591, align 8, !tbaa !78
  store i64 %i.aeb, ptr %.013.i.i.i.i.i590, align 8, !tbaa !78
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i591, i64 8 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i590, i64 8 ; 2 uses
  %.not.i.i.i.i.i592 = icmp eq ptr %i.aec, %i.adb
  br i1 %.not.i.i.i.i.i592, label %._crit_edge.i.i598, label %.lr.ph.i.i.i.i.i589, !llvm.loop !321

._crit_edge.i.i598:                               ; preds = %.lr.ph.i.i.i.i.i589, %middle.block11433, %vec.epilog.middle.block11449, %.noexc596
  %.0.lcssa.i.i.i.i.i593 = phi ptr [ %i.acx, %.noexc596 ], [ %i.adx, %vec.epilog.middle.block11449 ], [ %i.adm, %middle.block11433 ], [ %i.aed, %.lr.ph.i.i.i.i.i589 ]
  store ptr %.0.lcssa.i.i.i.i.i593, ptr %i.cf, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  store ptr %i.ch, ptr %43, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ch, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  store i64 3, ptr %i.ci, align 8, !tbaa !23
  store i8 0, ptr %i.kn, align 1, !tbaa !26
  invoke void @_ZN4pbrt14PathIntegratorC1EiNS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(97) %i.acl, i32 noundef 8, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %39, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %40, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %41, ptr nofree noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(32) %43, i1 noundef zeroext false)
          to label %bb.ci unwind label %bb.dp

bb.ci:                                            ; preds = %._crit_edge.i.i598
  %i.aee = load ptr, ptr %43, align 8, !tbaa !22  ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.ch
  br i1 %i.aef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602: ; preds = %bb.ci
end_hunk_0
begin_hunk_1_@_Z14GetIntegratorsv:bb.a
  %i.bcd = ptrtoint ptr %i.bcc to i64
  %i.bce = ptrtoint ptr %i.bbo to i64
  %i.bcf = sub i64 %i.bcd, %i.bce
  call void @_ZdlPvm(ptr noundef nonnull %i.bbo, i64 noundef %i.bcf) #30
  br label %_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit926

_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit926: ; preds = %_ZSt8_DestroyIPSt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i923, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28
  invoke void @_Z11GetSamplersB5cxx11RKN4pbrt6Point2IiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.60") align 8 %74, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.iz unwind label %bb.jb

bb.gm:                                            ; preds = %_ZNSt6vectorISt4pairIN4pbrt7SamplerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit720
  %i.bcg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.gn:                                            ; preds = %.lr.ph5753, %_ZN4pbrt18FilmBaseParametersD2Ev.exit1096
  %.sroa.01825.05751 = phi ptr [ %i.bbo, %.lr.ph5753 ], [ %i.bqb, %_ZN4pbrt18FilmBaseParametersD2Ev.exit1096 ] ; 4 uses
  %i.bch = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.go unwind label %bb.ii     ; 2 uses

bb.go:                                            ; preds = %bb.gn
  store <2 x float> splat (float 5.000000e-01), ptr %i.bch, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  %.sroa.038.0.copyload = load i64, ptr %9, align 8 ; 3 uses
  %i.bci = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  %i.bcj = invoke noundef ptr @_ZN4pbrt11PixelSensor13CreateDefaultEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr %i.bci)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit963 unwind label %bb.ij

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit963: ; preds = %bb.go
  %.sroa.3.0.extract.shift.i.i931 = lshr i64 %.sroa.038.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i932 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i931 to i32 ; 2 uses
  %.sroa.speculated.i15.i940 = call i32 @llvm.smax.i32(i32 %.sroa.3.0.extract.trunc.i.i932, i32 0)
  %.sroa.2.0.insert.ext.i16.i941 = zext nneg i32 %.sroa.speculated.i15.i940 to i64
  %.sroa.2.0.insert.shift.i17.i942 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i941, 32
  %.sroa.0.0.extract.trunc.i.i930 = trunc i64 %.sroa.038.0.copyload to i32 ; 2 uses
  %.sroa.speculated4.i14.i939 = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i930, i32 0)
  %.sroa.09.0.insert.ext.i18.i943 = zext nneg i32 %.sroa.speculated4.i14.i939 to i64
  %.sroa.09.0.insert.insert.i19.i944 = or disjoint i64 %.sroa.2.0.insert.shift.i17.i942, %.sroa.09.0.insert.ext.i18.i943
  %.sroa.speculated.i.i934 = call i32 @llvm.smin.i32(i32 %.sroa.3.0.extract.trunc.i.i932, i32 0)
  %.sroa.2.0.insert.ext.i.i935 = zext i32 %.sroa.speculated.i.i934 to i64
  %.sroa.2.0.insert.shift.i.i936 = shl nuw i64 %.sroa.2.0.insert.ext.i.i935, 32
  %.sroa.speculated4.i.i933 = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i.i930, i32 0)
  %.sroa.09.0.insert.ext.i.i937 = zext i32 %.sroa.speculated4.i.i933 to i64
  %.sroa.09.0.insert.insert.i.i938 = or disjoint i64 %.sroa.2.0.insert.shift.i.i936, %.sroa.09.0.insert.ext.i.i937
  %i.bck = ptrtoint ptr %i.bch to i64
  %i.bcl = or i64 %i.bck, 144115188075855872
  store ptr %i.eq, ptr %63, align 8, !tbaa !24, !alias.scope !487
  store i64 8248453967725684084, ptr %i.eq, align 8
  store i64 8, ptr %i.er, align 8, !tbaa !23, !alias.scope !487
  store i8 0, ptr %i.kr, align 8, !tbaa !26
  store i64 %.sroa.038.0.copyload, ptr %62, align 8
  store i64 %.sroa.09.0.insert.insert.i.i938, ptr %i.es, align 8
  store i64 %.sroa.09.0.insert.insert.i19.i944, ptr %.sroa.2.0..sroa_idx.i953, align 8
  store i64 %i.bcl, ptr %i.et, align 8, !tbaa !117
  store float 1.000000e+00, ptr %i.eu, align 8, !tbaa !452
  store ptr %i.bcj, ptr %i.ev, align 8, !tbaa !453
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !24
  %i.bcm = load i64, ptr %i.eq, align 8
  store i64 %i.bcm, ptr %i.ex, align 8
  store i64 8, ptr %i.ey, align 8, !tbaa !23
  store i8 0, ptr %i.ks, align 8, !tbaa !26
  %i.bcn = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32
          to label %bb.gp unwind label %bb.ik     ; 3 uses

bb.gp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %64, ptr noundef nonnull align 8 dereferenceable(80) %62, i64 24, i1 false)
  %i.bco = load i64, ptr %i.et, align 8, !tbaa !117
  store i64 %i.bco, ptr %i.ez, align 8, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false)
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !24
  %i.bcp = load ptr, ptr %i.ew, align 8, !tbaa !22 ; 2 uses
  %i.bcq = load i64, ptr %i.ey, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 %i.bcq, ptr %i.g, align 8, !tbaa !25
  %i.bcr = icmp ugt i64 %i.bcq, 15
  br i1 %i.bcr, label %.noexc.i.i965, label %._crit_edge.i.i.i964

.noexc.i.i965:                                    ; preds = %bb.gp
  %i.bcs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc966 unwind label %bb.il ; 2 uses

.noexc966:                                        ; preds = %.noexc.i.i965
  store ptr %i.bcs, ptr %i.fb, align 8, !tbaa !22
  %i.bct = load i64, ptr %i.g, align 8, !tbaa !25
  store i64 %i.bct, ptr %i.fc, align 8, !tbaa !26
  br label %._crit_edge.i.i.i964

._crit_edge.i.i.i964:                             ; preds = %.noexc966, %bb.gp
  %i.bcu = phi ptr [ %i.bcs, %.noexc966 ], [ %i.fc, %bb.gp ] ; 2 uses
  switch i64 %i.bcq, label %bb.gr [
    i64 1, label %bb.gq
    i64 0, label %bb.gs
  ]

bb.gq:                                            ; preds = %._crit_edge.i.i.i964
  %i.bcv = load i8, ptr %i.bcp, align 1, !tbaa !26
  store i8 %i.bcv, ptr %i.bcu, align 1, !tbaa !26
  br label %bb.gs

bb.gr:                                            ; preds = %._crit_edge.i.i.i964
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bcu, ptr align 1 %i.bcp, i64 %i.bcq, i1 false)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %._crit_edge.i.i.i964
  %i.bcw = load i64, ptr %i.g, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bcw, ptr %i.fd, align 8, !tbaa !23
  %i.bcx = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 %i.bcw
  store i8 0, ptr %i.bcy, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.bcz = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !119
  %i.bda = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  invoke void @_ZN4pbrt7RGBFilmC1ENS_18FilmBaseParametersEPKNS_13RGBColorSpaceEfbN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bcn, ptr nofree noundef nonnull align 8 dereferenceable(80) %64, ptr noundef %i.bcz, float noundef +inf, i1 noundef zeroext true, ptr %i.bda)
          to label %bb.gt unwind label %bb.im

bb.gt:                                            ; preds = %bb.gs
  %i.bdb = load ptr, ptr %i.fb, align 8, !tbaa !22 ; 2 uses
  %i.bdc = icmp eq ptr %i.bdb, %i.fc
  br i1 %i.bdc, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i968: ; preds = %bb.gt
  %i.bdd = load i64, ptr %i.fc, align 8, !tbaa !26
  %i.bde = add i64 %i.bdd, 1
  call void @_ZdlPvm(ptr noundef %i.bdb, i64 noundef %i.bde) #30
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit970

_ZN4pbrt18FilmBaseParametersD2Ev.exit970:         ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i968
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #28
  invoke void @_ZN4pbrt15CameraTransformC1ERKNS_17AnimatedTransformE(ptr noundef nonnull align 4 dereferenceable(824) %66, ptr noundef nonnull align 4 dereferenceable(696) %10)
          to label %bb.gu unwind label %bb.in

bb.gu:                                            ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit970
  %i.bdf = ptrtoint ptr %i.bcn to i64
  %i.bdg = or i64 %i.bdf, 144115188075855872
  store i64 %i.bdg, ptr %67, align 8, !tbaa !121
  store i64 0, ptr %68, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %69, i8 0, i64 112, i1 false)
  %i.bdh = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28
  %i.bdi = ptrtoint ptr %i.bdh to i64
  store i64 %i.bdi, ptr %69, align 8, !tbaa !74
  store ptr null, ptr %i.fe, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  invoke void @_ZN4pbrt20CameraBaseParametersC1ERKNS_15CameraTransformENS_4FilmENS_6MediumERKNS_19ParameterDictionaryEPKNS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(848) %65, ptr noundef nonnull align 4 dereferenceable(824) %66, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %67, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %68, ptr noundef nonnull align 8 dereferenceable(108) %69, ptr noundef null)
          to label %bb.gv unwind label %bb.io

bb.gv:                                            ; preds = %bb.gu
  store i64 0, ptr %i.fg, align 8, !tbaa !127
  %i.bdj = load ptr, ptr %i.fe, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i.i971 = icmp eq ptr %i.bdj, null
  br i1 %.not.i.i.i.i.i971, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit972, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bdk = load i64, ptr %i.ff, align 8, !tbaa !128
  %i.bdl = shl i64 %i.bdk, 3
  %i.bdm = load ptr, ptr %69, align 8, !tbaa !129 ; 2 uses
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !48
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 24
  %i.bdp = load ptr, ptr %i.bdo, align 8
  invoke void %i.bdp(ptr noundef nonnull align 8 dereferenceable(8) %i.bdm, ptr noundef nonnull %i.bdj, i64 noundef %i.bdl, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit972 unwind label %bb.gx, !inline_history !3

bb.gx:                                            ; preds = %bb.gw
  %i.bdq = landingpad { ptr, i32 }
          catch ptr null
  %i.bdr = extractvalue { ptr, i32 } %i.bdq, 0
  call void @__clang_call_terminate(ptr %i.bdr) #29
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit972:        ; preds = %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  %i.bds = invoke noalias noundef nonnull dereferenceable(1440) ptr @_Znwm(i64 noundef 1440) #32
          to label %bb.gy unwind label %bb.iq     ; 21 uses

bb.gy:                                            ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit972
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %5, ptr noundef nonnull align 8 dereferenceable(832) %65, i64 832, i1 false)
  %i.bdt = load <2 x i64>, ptr %i.fh, align 8, !tbaa !25
  store <2 x i64> %i.bdt, ptr %i.fi, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN4pbrt12OrthographicEff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %6, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc987 unwind label %bb.ir

.noexc987:                                        ; preds = %bb.gy
  invoke void @_ZN4pbrt16ProjectiveCameraC2ENS_20CameraBaseParametersERKNS_9TransformENS_7Bounds2IfEEff(ptr noundef nonnull align 8 dereferenceable(1440) %i.bds, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(848) %5, ptr noundef nonnull align 4 dereferenceable(128) %6, <2 x float> splat (float -1.000000e-01), <2 x float> splat (float 1.000000e-01), float noundef 0.000000e+00, float noundef 1.000000e+01)
          to label %bb.gz unwind label %bb.ir

bb.gz:                                            ; preds = %.noexc987
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bds, i64 1416 ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bds, i64 1424
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bds, i64 1428 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bds, i64 1436
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bds, i64 1024
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bds, i64 1028
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bds, i64 1032
  %125 = load <4 x float>, ptr %i.bea, align 4
  %126 = shufflevector <4 x float> %125, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bds, i64 1040
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bds, i64 1044
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bds, i64 1048
  %i.bee = load float, ptr %i.bed, align 4, !tbaa !71
  %i.bef = load <2 x float>, ptr %i.bdy, align 4, !tbaa !71 ; 2 uses
  %127 = load <4 x float>, ptr %i.bdz, align 4
  %128 = shufflevector <4 x float> %127, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.beg = load <2 x float>, ptr %i.beb, align 4, !tbaa !71 ; 2 uses
  %i.beh = load float, ptr %i.bec, align 4, !tbaa !71
  %i.bei = shufflevector <2 x float> %i.bef, <2 x float> %i.beg, <2 x i32> <i32 1, i32 3>
  %i.bej = fmul <2 x float> %i.bei, zeroinitializer
  %i.bek = shufflevector <2 x float> %i.bef, <2 x float> %i.beg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bel = fadd <2 x float> %i.bek, %i.bej
  %i.bem = insertelement <2 x float> %126, float %i.bee, i64 1
  %i.ben = fmul <2 x float> %i.bem, zeroinitializer ; 2 uses
  %i.beo = fadd <2 x float> %i.bel, %i.ben
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bds, i64 1056
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bds, i64 1064
  %i.ber = load float, ptr %i.beq, align 4, !tbaa !71
  %i.bes = fmul float %i.ber, 0.000000e+00
  store <2 x float> %i.beo, ptr %i.bdu, align 8
  %i.bet = fmul <2 x float> %i.bek, zeroinitializer
  %i.beu = insertelement <2 x float> %128, float %i.beh, i64 1
  %i.bev = fadd <2 x float> %i.bet, %i.beu
  %i.bew = fadd <2 x float> %i.bev, %i.ben
  %i.bex = load <2 x float>, ptr %i.bep, align 8, !tbaa !71 ; 2 uses
  %i.bey = fmul <2 x float> %i.bex, zeroinitializer
  %i.bez = shufflevector <2 x float> %i.bey, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bfa = fadd <2 x float> %i.bex, %i.bez
  %i.bfb = insertelement <2 x float> poison, float %i.bes, i64 0
  %i.bfc = shufflevector <2 x float> %i.bfb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfd = fadd <2 x float> %i.bfa, %i.bfc        ; 2 uses
  %i.bfe = extractelement <2 x float> %i.bfd, i64 0
  store float %i.bfe, ptr %i.bdv, align 8
  store <2 x float> %i.bew, ptr %i.bdw, align 4
  %i.bff = extractelement <2 x float> %i.bfd, i64 1
  store float %i.bff, ptr %i.bdx, align 4
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bds, i64 884 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bfg, align 4
  %.sroa.5.0..sroa_idx.i986 = getelementptr inbounds nuw i8, ptr %i.bds, i64 892
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i986, align 4
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bds, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bfh, ptr noundef nonnull align 4 dereferenceable(12) %i.bfg, i64 12, i1 false)
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bds, i64 848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bfi, ptr noundef nonnull align 8 dereferenceable(12) %i.bdu, i64 12, i1 false)
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bds, i64 860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bfj, ptr noundef nonnull align 4 dereferenceable(12) %i.bdw, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bds, i64 832
  %i.bfl = load i64, ptr %i.bfk, align 8, !tbaa !121, !noalias !488
  %i.bfm = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32
          to label %bb.ha unwind label %bb.is     ; 12 uses

bb.ha:                                            ; preds = %bb.gz
  %i.bfn = ptrtoint ptr %i.bds to i64
  %i.bfo = or i64 %i.bfn, 288230376151711744
  %i.bfp = load i64, ptr %.sroa.01825.05751, align 8, !tbaa !115
  %i.bfq = load i64, ptr %.sroa.01912.05766, align 8, !tbaa !80 ; 2 uses
  %i.bfr = load ptr, ptr %i.bbr, align 8, !tbaa !92 ; 3 uses
  %i.bfs = load ptr, ptr %i.bbq, align 8, !tbaa !90 ; 3 uses
  %i.bft = ptrtoint ptr %i.bfr to i64
  %i.bfu = ptrtoint ptr %i.bfs to i64
  %i.bfv = sub i64 %i.bft, %i.bfu                 ; 4 uses
  %.not.i.i.i.i990 = icmp eq ptr %i.bfr, %i.bfs
  br i1 %.not.i.i.i.i990, label %.noexc1000, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bfw = icmp ugt i64 %i.bfv, 9223372036854775800
  br i1 %i.bfw, label %.noexc.i.i998, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991, !prof !109

.noexc.i.i998:                                    ; preds = %bb.hb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc999 unwind label %.loopexit.split-lp2044

.noexc999:                                        ; preds = %.noexc.i.i998
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991: ; preds = %bb.hb
  %i.bfx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfv) #32
          to label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge unwind label %.loopexit2043

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991
  %.pre6506 = load ptr, ptr %i.bbq, align 8, !tbaa !103
  %.pre6507 = load ptr, ptr %i.bbr, align 8, !tbaa !103
  br label %.noexc1000

.noexc1000:                                       ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge, %bb.ha
  %i.bfy = phi ptr [ %i.bfr, %bb.ha ], [ %.pre6507, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge ] ; 3 uses
  %i.bfz = phi ptr [ %i.bfs, %bb.ha ], [ %.pre6506, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge ] ; 10 uses
  %i.bga = phi ptr [ null, %bb.ha ], [ %i.bfx, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i991..noexc1000_crit_edge ] ; 17 uses
  %i.bgb = ptrtoaddr ptr %i.bfy to i64            ; 2 uses
  %i.bgc = ptrtoaddr ptr %i.bfz to i64            ; 2 uses
  %.not11.i.i.i.i.i992 = icmp eq ptr %i.bfz, %i.bfy
  br i1 %.not11.i.i.i.i.i992, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001, label %iter.check11269

iter.check11269:                                  ; preds = %.noexc1000
  %i.bgd = add i64 %i.bgb, -8
  %i.bge = sub i64 %i.bgd, %i.bgc                 ; 3 uses
  %i.bgf = lshr i64 %i.bge, 3
  %i.bgg = add nuw nsw i64 %i.bgf, 1              ; 5 uses
  %min.iters.check11251 = icmp ult i64 %i.bge, 24
  br i1 %min.iters.check11251, label %.lr.ph.i.i.i.i.i993.preheader, label %vector.memcheck11243

vector.memcheck11243:                             ; preds = %iter.check11269
  %scevgep11244 = getelementptr i8, ptr %i.bga, i64 8
  %i.bgh = add i64 %i.bgb, -8
  %i.bgi = sub i64 %i.bgh, %i.bgc
  %i.bgj = and i64 %i.bgi, -8                     ; 2 uses
  %scevgep11245 = getelementptr i8, ptr %scevgep11244, i64 %i.bgj
  %scevgep11246 = getelementptr i8, ptr %i.bfz, i64 8
  %scevgep11247 = getelementptr i8, ptr %scevgep11246, i64 %i.bgj
  %bound011248 = icmp ult ptr %i.bga, %scevgep11247
  %bound111249 = icmp ult ptr %i.bfz, %scevgep11245
  %found.conflict11250 = and i1 %bound011248, %bound111249
  br i1 %found.conflict11250, label %.lr.ph.i.i.i.i.i993.preheader, label %vector.main.loop.iter.check11252

vector.main.loop.iter.check11252:                 ; preds = %vector.memcheck11243
  %min.iters.check11253 = icmp ult i64 %i.bge, 120
  br i1 %min.iters.check11253, label %vec.epilog.ph11273, label %vector.ph11254

vector.ph11254:                                   ; preds = %vector.main.loop.iter.check11252
  %i.bgk = and i64 %i.bgg, 12
  %n.vec11255 = and i64 %i.bgg, 4611686018427387888 ; 4 uses
  %i.bgl = shl i64 %n.vec11255, 3                 ; 2 uses
  %i.bgm = getelementptr i8, ptr %i.bga, i64 %i.bgl ; 2 uses
  %i.bgn = getelementptr i8, ptr %i.bfz, i64 %i.bgl
  br label %vector.body11256

vector.body11256:                                 ; preds = %vector.ph11254, %vector.body11256
  %index11257 = phi i64 [ 0, %vector.ph11254 ], [ %index.next11264, %vector.body11256 ] ; 2 uses
  %i.bgo = shl i64 %index11257, 3                 ; 2 uses
  %next.gep11258 = getelementptr i8, ptr %i.bga, i64 %i.bgo ; 5 uses
  %next.gep11259 = getelementptr i8, ptr %i.bfz, i64 %i.bgo ; 4 uses
  %i.bgp = getelementptr i8, ptr %next.gep11258, i64 32 ; 2 uses
  %i.bgq = getelementptr i8, ptr %next.gep11258, i64 64 ; 2 uses
  %i.bgr = getelementptr i8, ptr %next.gep11258, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep11258, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> zeroinitializer, ptr %i.bgp, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> zeroinitializer, ptr %i.bgq, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> zeroinitializer, ptr %i.bgr, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  %i.bgs = getelementptr i8, ptr %next.gep11259, i64 32
  %i.bgt = getelementptr i8, ptr %next.gep11259, i64 64
  %i.bgu = getelementptr i8, ptr %next.gep11259, i64 96
  %wide.load11260 = load <4 x i64>, ptr %next.gep11259, align 8, !tbaa !78, !alias.scope !490
  %wide.load11261 = load <4 x i64>, ptr %i.bgs, align 8, !tbaa !78, !alias.scope !490
  %wide.load11262 = load <4 x i64>, ptr %i.bgt, align 8, !tbaa !78, !alias.scope !490
  %wide.load11263 = load <4 x i64>, ptr %i.bgu, align 8, !tbaa !78, !alias.scope !490
  store <4 x i64> %wide.load11260, ptr %next.gep11258, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> %wide.load11261, ptr %i.bgp, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> %wide.load11262, ptr %i.bgq, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  store <4 x i64> %wide.load11263, ptr %i.bgr, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  %index.next11264 = add nuw i64 %index11257, 16  ; 2 uses
  %i.bgv = icmp eq i64 %index.next11264, %n.vec11255
  br i1 %i.bgv, label %middle.block11265, label %vector.body11256, !llvm.loop !367

middle.block11265:                                ; preds = %vector.body11256
  %cmp.n11266 = icmp eq i64 %i.bgg, %n.vec11255
  br i1 %cmp.n11266, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001, label %vec.epilog.iter.check11271

vec.epilog.iter.check11271:                       ; preds = %middle.block11265
  %min.epilog.iters.check11272 = icmp eq i64 %i.bgk, 0
  br i1 %min.epilog.iters.check11272, label %.lr.ph.i.i.i.i.i993.preheader, label %vec.epilog.ph11273, !prof !134

vec.epilog.ph11273:                               ; preds = %vector.main.loop.iter.check11252, %vec.epilog.iter.check11271
  %vec.epilog.resume.val11267 = phi i64 [ %n.vec11255, %vec.epilog.iter.check11271 ], [ 0, %vector.main.loop.iter.check11252 ]
  %n.vec11274 = and i64 %i.bgg, 4611686018427387900 ; 3 uses
  %i.bgw = shl i64 %n.vec11274, 3                 ; 2 uses
  %i.bgx = getelementptr i8, ptr %i.bga, i64 %i.bgw ; 2 uses
  %i.bgy = getelementptr i8, ptr %i.bfz, i64 %i.bgw
  br label %vec.epilog.vector.body11275

vec.epilog.vector.body11275:                      ; preds = %vec.epilog.vector.body11275, %vec.epilog.ph11273
  %index11276 = phi i64 [ %vec.epilog.resume.val11267, %vec.epilog.ph11273 ], [ %index.next11280, %vec.epilog.vector.body11275 ] ; 2 uses
  %i.bgz = shl i64 %index11276, 3                 ; 2 uses
  %next.gep11277 = getelementptr i8, ptr %i.bga, i64 %i.bgz ; 2 uses
  %next.gep11278 = getelementptr i8, ptr %i.bfz, i64 %i.bgz
  store <4 x i64> zeroinitializer, ptr %next.gep11277, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  %wide.load11279 = load <4 x i64>, ptr %next.gep11278, align 8, !tbaa !78, !alias.scope !490
  store <4 x i64> %wide.load11279, ptr %next.gep11277, align 8, !tbaa !78, !alias.scope !489, !noalias !490
  %index.next11280 = add nuw i64 %index11276, 4   ; 2 uses
  %i.bha = icmp eq i64 %index.next11280, %n.vec11274
  br i1 %i.bha, label %vec.epilog.middle.block11281, label %vec.epilog.vector.body11275, !llvm.loop !368

vec.epilog.middle.block11281:                     ; preds = %vec.epilog.vector.body11275
  %cmp.n11282 = icmp eq i64 %i.bgg, %n.vec11274
  br i1 %cmp.n11282, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001, label %.lr.ph.i.i.i.i.i993.preheader

.lr.ph.i.i.i.i.i993.preheader:                    ; preds = %iter.check11269, %vector.memcheck11243, %vec.epilog.iter.check11271, %vec.epilog.middle.block11281
  %.013.i.i.i.i.i994.ph = phi ptr [ %i.bga, %iter.check11269 ], [ %i.bga, %vector.memcheck11243 ], [ %i.bgm, %vec.epilog.iter.check11271 ], [ %i.bgx, %vec.epilog.middle.block11281 ]
  %.sroa.08.012.i.i.i.i.i995.ph = phi ptr [ %i.bfz, %iter.check11269 ], [ %i.bfz, %vector.memcheck11243 ], [ %i.bgn, %vec.epilog.iter.check11271 ], [ %i.bgy, %vec.epilog.middle.block11281 ]
  br label %.lr.ph.i.i.i.i.i993

.lr.ph.i.i.i.i.i993:                              ; preds = %.lr.ph.i.i.i.i.i993.preheader, %.lr.ph.i.i.i.i.i993
  %.013.i.i.i.i.i994 = phi ptr [ %i.bhd, %.lr.ph.i.i.i.i.i993 ], [ %.013.i.i.i.i.i994.ph, %.lr.ph.i.i.i.i.i993.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i995 = phi ptr [ %i.bhc, %.lr.ph.i.i.i.i.i993 ], [ %.sroa.08.012.i.i.i.i.i995.ph, %.lr.ph.i.i.i.i.i993.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i.i994, align 8, !tbaa !78
  %i.bhb = load i64, ptr %.sroa.08.012.i.i.i.i.i995, align 8, !tbaa !78
  store i64 %i.bhb, ptr %.013.i.i.i.i.i994, align 8, !tbaa !78
  %i.bhc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i995, i64 8 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i994, i64 8 ; 2 uses
  %.not.i.i.i.i.i996 = icmp eq ptr %i.bhc, %i.bfy
  br i1 %.not.i.i.i.i.i996, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001, label %.lr.ph.i.i.i.i.i993, !llvm.loop !369

_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001: ; preds = %.lr.ph.i.i.i.i.i993, %middle.block11265, %vec.epilog.middle.block11281, %.noexc1000
  %.0.lcssa.i.i.i.i.i997 = phi ptr [ %i.bga, %.noexc1000 ], [ %i.bgx, %vec.epilog.middle.block11281 ], [ %i.bgm, %middle.block11265 ], [ %i.bhd, %.lr.ph.i.i.i.i.i993 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28
  store ptr %i.fj, ptr %70, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fj, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  store i64 3, ptr %i.fk, align 8, !tbaa !23
  store i8 0, ptr %i.kt, align 1, !tbaa !26
  %i.bhe = ptrtoint ptr %.0.lcssa.i.i.i.i.i997 to i64 ; 2 uses
  %i.bhf = ptrtoint ptr %i.bga to i64             ; 2 uses
  %i.bhg = sub i64 %i.bhe, %i.bhf                 ; 5 uses
  %.not.i.i.i.i.i1006 = icmp eq ptr %.0.lcssa.i.i.i.i.i997, %i.bga
  br i1 %.not.i.i.i.i.i1006, label %.noexc1730.thread, label %bb.hc

.noexc1730.thread:                                ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit1001
  %i.bhh = getelementptr inbounds nuw i8, ptr null, i64 %i.bhg
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.bfq, ptr %1, align 8, !tbaa !80
  store ptr null, ptr %2, align 8, !tbaa !90
  store ptr null, ptr %i.fm, align 8, !tbaa !91
end_hunk_1
