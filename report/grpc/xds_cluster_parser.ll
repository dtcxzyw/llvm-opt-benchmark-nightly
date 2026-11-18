Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_cluster_parser?download=true
inline.NumInlined: 4181
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_116CdsResourceParseERKNS_15XdsResourceType13DecodeContextEPK31envoy_config_cluster_v3_Cluster:bb.a
  br i1 %.not235, label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit, label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %.thread859
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt32Value_msg_init) #31, !srcloc !132
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.avp, i64 152
  %i.ayp = load i64, ptr %i.ayo, align 1          ; 2 uses
  %i.ayq = icmp eq i64 %i.ayp, 0
  br i1 %i.ayq, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557: ; preds = %bb.qy
  %i.ayr = inttoptr i64 %i.ayp to ptr
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayt = load i32, ptr %i.ays, align 1
  br label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557, %bb.qy
  %.sroa.8.0 = phi i32 [ 5, %bb.qy ], [ %i.ayt, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557 ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt32Value_msg_init) #31, !srcloc !132
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.avp, i64 160
  %i.ayv = load i64, ptr %i.ayu, align 1          ; 2 uses
  %i.ayw = icmp eq i64 %i.ayv, 0
  br i1 %i.ayw, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread
  %i.ayx = inttoptr i64 %i.ayv to ptr
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  %i.ayz = load i32, ptr %i.ayy, align 1
  br label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread
  %.sroa.10.0 = phi i32 [ 50, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit557.thread ], [ %i.ayz, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559 ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt32Value_msg_init) #31, !srcloc !132
  %i.aza = getelementptr inbounds nuw i8, ptr %i.avp, i64 128
  %i.azb = load i64, ptr %i.aza, align 1          ; 2 uses
  %i.azc = icmp eq i64 %i.azb, 0
  br i1 %i.azc, label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread
  %i.azd = inttoptr i64 %i.azb to ptr
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.azf = load i32, ptr %i.aze, align 1          ; 2 uses
  br i1 %i.ayj, label %bb.qz, label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit

bb.qz:                                            ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #31
  store ptr %71, ptr %101, align 8, !tbaa !131
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 29, ptr nonnull @.str.42)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit563 unwind label %bb.rc

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit563: ; preds = %bb.qz
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 20, ptr nonnull @.str.39)
          to label %bb.ra unwind label %bb.rd

bb.ra:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit563
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 unwind label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.azg = landingpad { ptr, i32 }
          catch ptr null
  %i.azh = extractvalue { ptr, i32 } %i.azg, 0
  call void @__clang_call_terminate(ptr %i.azh) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565: ; preds = %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #31
  br label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit

bb.rc:                                            ; preds = %bb.qz
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.rd:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit563
  %i.azj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %101) #31
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %bb.rc
  %.pn236 = phi { ptr, i32 } [ %i.azj, %bb.rd ], [ %i.azi, %bb.rc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #31
  br label %bb.ri

_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561, %bb.qx
  %.sroa.0683.0.extract.trunc858 = phi i32 [ 0, %bb.qx ], [ %i.ayi, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 ], [ %i.ayi, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread ], [ 0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread ], [ %i.ayi, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561 ]
  %.sroa.20728.0 = phi i32 [ undef, %bb.qx ], [ %i.azf, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 ], [ 85, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread ], [ undef, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread ], [ %i.azf, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561 ]
  %.sroa.22.0 = phi i32 [ undef, %bb.qx ], [ %.sroa.8.0, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 ], [ %.sroa.8.0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread ], [ undef, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread ], [ %.sroa.8.0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561 ]
  %.sroa.23.0 = phi i32 [ undef, %bb.qx ], [ %.sroa.10.0, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 ], [ %.sroa.10.0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread ], [ undef, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread ], [ %.sroa.10.0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561 ]
  %.sroa.24.0 = phi i8 [ 0, %bb.qx ], [ 1, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit565 ], [ 1, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit559.thread ], [ 0, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit539.thread ], [ 1, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit561 ]
  %i.azk = load ptr, ptr %70, align 8, !tbaa !321 ; 15 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 320
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azk, i64 392 ; 2 uses
  %i.azn = load i8, ptr %i.azm, align 8, !tbaa !186, !range !45, !noundef !46
  %i.azo = trunc nuw i8 %i.azn to i1
  store i64 %.sroa.0709.0, ptr %i.azl, align 8
  %.sroa.7.0..sroa_idx711 = getelementptr inbounds nuw i8, ptr %i.azk, i64 328
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx711, align 8
  %.sroa.9.0..sroa_idx713 = getelementptr inbounds nuw i8, ptr %i.azk, i64 336
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx713, align 8
  %.sroa.11.0..sroa_idx715 = getelementptr inbounds nuw i8, ptr %i.azk, i64 344
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx715, align 8
  %.sroa.13.0..sroa_idx717 = getelementptr inbounds nuw i8, ptr %i.azk, i64 348
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx717, align 4
  %.sroa.14.0..sroa_idx719 = getelementptr inbounds nuw i8, ptr %i.azk, i64 352
  store i32 %.sroa.0683.0.extract.trunc690836, ptr %.sroa.14.0..sroa_idx719, align 8
  br i1 %i.azo, label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfigEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit, label %bb.rf

bb.rf:                                            ; preds = %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit
  store i8 1, ptr %i.azm, align 8, !tbaa !186
  br label %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfigEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit

_ZNSt8optionalIN9grpc_core22OutlierDetectionConfigEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit: ; preds = %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfig25FailurePercentageEjectionEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit, %bb.rf
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azk, i64 356
  store i32 %.sroa.15.0, ptr %i.azp, align 4
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azk, i64 360
  store i32 %.sroa.16.0, ptr %i.azq, align 8
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azk, i64 364
  store i8 %.sroa.17.0, ptr %i.azr, align 4
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azk, i64 368
  store i32 %.sroa.20728.0, ptr %i.azs, align 8
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azk, i64 372
  store i32 %.sroa.0683.0.extract.trunc858, ptr %i.azt, align 4
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azk, i64 376
  store i32 %.sroa.22.0, ptr %i.azu, align 8
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azk, i64 380
  store i32 %.sroa.23.0, ptr %i.azv, align 4
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azk, i64 384
  store i8 %.sroa.24.0, ptr %i.azw, align 8
  %i.azx = load ptr, ptr %94, align 8, !tbaa !131 ; 2 uses
  %.not.i566 = icmp eq ptr %i.azx, null
  br i1 %.not.i566, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit567, label %bb.rg

bb.rg:                                            ; preds = %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfigEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.azx)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit567 unwind label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.azy = landingpad { ptr, i32 }
          catch ptr null
  %i.azz = extractvalue { ptr, i32 } %i.azy, 0
  call void @__clang_call_terminate(ptr %i.azz) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit567: ; preds = %_ZNSt8optionalIN9grpc_core22OutlierDetectionConfigEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit, %bb.rg
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #31
  br label %bb.rk

bb.ri:                                            ; preds = %bb.qi, %bb.re, %bb.qw, %bb.qo, %bb.qb, %bb.pu, %bb.pn
  %.pn236.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217, %bb.pn ], [ %.pn220, %bb.pu ], [ %.pn233, %bb.qw ], [ %.pn223, %bb.qb ], [ %.pn236, %bb.re ], [ %.pn225, %bb.qi ], [ %.pn227, %bb.qo ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %94) #31
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.pk
  %.pn236.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn236.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ri ], [ %i.avw, %bb.pk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #31
  br label %.body370

bb.rk:                                            ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit567
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__cluster__v3__Cluster__CommonLbConfig_msg_init) #31, !srcloc !132
  %i.baa = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bab = load i64, ptr %i.baa, align 4          ; 2 uses
  %i.bac = inttoptr i64 %i.bab to ptr
  %.not247 = icmp eq i64 %i.bab, 0
  br i1 %.not247, label %bb.sb, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #31
  store ptr %71, ptr %102, align 8, !tbaa !131
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 17, ptr nonnull @.str.43)
          to label %bb.rm unwind label %bb.rr

bb.rm:                                            ; preds = %bb.rl
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__HealthStatusSet_msg_init) #31, !srcloc !132
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 40
  %i.bae = load i64, ptr %i.bad, align 1          ; 2 uses
  %i.baf = inttoptr i64 %i.bae to ptr
  %.not248.not = icmp eq i64 %i.bae, 0
  br i1 %.not248.not, label %.critedge272, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #31
  store ptr %71, ptr %103, align 8, !tbaa !131
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 21, ptr nonnull @.str.44)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit571 unwind label %bb.rs

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit571: ; preds = %bb.rn
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 8
  %i.bah = load i64, ptr %i.bag, align 1          ; 2 uses
  %.not.i572 = icmp eq i64 %i.bah, 0
  br i1 %.not.i572, label %._crit_edge, label %envoy_config_core_v3_HealthStatusSet_statuses.exit

envoy_config_core_v3_HealthStatusSet_statuses.exit: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit571
  %i.bai = inttoptr i64 %i.bah to ptr             ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 8
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !324 ; 2 uses
  %i.bal = load i64, ptr %i.bai, align 8, !tbaa !325
  %i.bam = and i64 %i.bal, -8
  %i.ban = inttoptr i64 %i.bam to ptr
  %.not908 = icmp eq i64 %i.bak, 0
  br i1 %.not908, label %._crit_edge, label %.lr.ph905.a

._crit_edge:                                      ; preds = %bb.rw, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit571, %envoy_config_core_v3_HealthStatusSet_statuses.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit575 unwind label %bb.ro

bb.ro:                                            ; preds = %._crit_edge
  %i.bao = landingpad { ptr, i32 }
          catch ptr null
  %i.bap = extractvalue { ptr, i32 } %i.bao, 0
  call void @__clang_call_terminate(ptr %i.bap) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit575: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #31
  %i.baq = load ptr, ptr %102, align 8, !tbaa !131 ; 2 uses
  %.not.i576 = icmp eq ptr %i.baq, null
  br i1 %.not.i576, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit577, label %bb.rp

bb.rp:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit575
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.baq)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit577 unwind label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bar = landingpad { ptr, i32 }
          catch ptr null
  %i.bas = extractvalue { ptr, i32 } %i.bar, 0
  call void @__clang_call_terminate(ptr %i.bas) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit577: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit575, %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #31
  br label %bb.sd

bb.rr:                                            ; preds = %bb.rl
  %i.bat = landingpad { ptr, i32 }
          cleanup
  br label %bb.ry

bb.rs:                                            ; preds = %bb.rn
  %i.bau = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

.lr.ph905.a:                                      ; preds = %envoy_config_core_v3_HealthStatusSet_statuses.exit, %bb.rw
  %.0109904 = phi i64 [ %i.bbd, %bb.rw ], [ 0, %envoy_config_core_v3_HealthStatusSet_statuses.exit ] ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.ban, i64 %.0109904
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !67
  %i.bax = invoke i64 @_ZN9grpc_core15XdsHealthStatus7FromUpbEj(i32 noundef %i.baw)
          to label %bb.rt unwind label %bb.rv     ; 2 uses

bb.rt:                                            ; preds = %.lr.ph905.a
  %i.bay = and i64 %i.bax, 4294967296
  %.not897 = icmp eq i64 %i.bay, 0
  br i1 %.not897, label %bb.rw, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %.sroa.0637.0.extract.trunc = trunc i64 %i.bax to i32
  %107 = load ptr, ptr %70, align 8, !tbaa !321
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 400 ; 2 uses
  %i.baz = shl nuw i32 1, %.sroa.0637.0.extract.trunc
  %i.bba = load i32, ptr %108, align 4, !tbaa !187
  %i.bbb = or i32 %i.bba, %i.baz
  store i32 %i.bbb, ptr %108, align 4, !tbaa !187
  br label %bb.rw

bb.rv:                                            ; preds = %.lr.ph905.a
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %103) #31
  br label %bb.rx

bb.rw:                                            ; preds = %bb.ru, %bb.rt
  %i.bbd = add nuw i64 %.0109904, 1               ; 2 uses
  %exitcond914.not = icmp eq i64 %i.bbd, %i.bak
  br i1 %exitcond914.not, label %._crit_edge, label %.lr.ph905.a, !llvm.loop !302

bb.rx:                                            ; preds = %bb.rv, %bb.rs
  %.pn253.pn = phi { ptr, i32 } [ %i.bbc, %bb.rv ], [ %i.bau, %bb.rs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #31
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %102) #31
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rr
  %.pn253.pn.pn.pn = phi { ptr, i32 } [ %.pn253.pn, %bb.rx ], [ %i.bat, %bb.rr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #31
  br label %.body370

.critedge272:                                     ; preds = %bb.rm
  %i.bbe = load ptr, ptr %102, align 8, !tbaa !131 ; 2 uses
  %.not.i578 = icmp eq ptr %i.bbe, null
  br i1 %.not.i578, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit579, label %bb.rz

bb.rz:                                            ; preds = %.critedge272
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bbe)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit579 unwind label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.bbf = landingpad { ptr, i32 }
          catch ptr null
  %i.bbg = extractvalue { ptr, i32 } %i.bbf, 0
  call void @__clang_call_terminate(ptr %i.bbg) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit579: ; preds = %.critedge272, %bb.rz
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #31
  br label %bb.sb

bb.sb:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit579, %bb.rk
  %i.bbh = load ptr, ptr %70, align 8, !tbaa !321
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 400 ; 2 uses
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !187
  %i.bbk = or i32 %i.bbj, 3
  store i32 %i.bbk, ptr %i.bbi, align 4, !tbaa !187
  br label %bb.sd

bb.sc:                                            ; preds = %bb.mw
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  br label %.thread889

bb.sd:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit577, %bb.sb
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #31
  store ptr %71, ptr %104, align 8, !tbaa !131
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 9, ptr nonnull @.str.45)
          to label %bb.se unwind label %bb.sp

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #31
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__Metadata_msg_init) #31, !srcloc !132
  %i.bbm = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bbn = load i64, ptr %i.bbm, align 4
  %i.bbo = inttoptr i64 %i.bbn to ptr
  invoke void @_ZN9grpc_core19ParseXdsMetadataMapERKNS_15XdsResourceType13DecodeContextEPK29envoy_config_core_v3_MetadataPNS_16ValidationErrorsE(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::XdsMetadataMap") align 8 %105, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.bbo, ptr noundef nonnull %71)
          to label %bb.sf unwind label %bb.sq

bb.sf:                                            ; preds = %bb.se
  %i.bbp = load ptr, ptr %70, align 8, !tbaa !321 ; 4 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 408 ; 6 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !188
  %i.bbs = icmp eq i64 %i.bbr, 0
  br i1 %i.bbs, label %_ZN9grpc_core14XdsMetadataMapD2Ev.exit, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.bbq, ptr %3, align 8, !tbaa !191
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bbq, i64 noundef 40, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISE_EEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSS_ST_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i.i unwind label %bb.sh

.noexc.i.i.i.i:                                   ; preds = %bb.sg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bbt = load i64, ptr %i.bbq, align 8, !tbaa !188
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbp, i64 424
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !53
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbp, i64 416
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !192
  %i.bby = and i64 %i.bbx, 65536
  %i.bbz = icmp ne i64 %i.bby, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.bbq, i64 noundef %i.bbt, ptr noundef %i.bbv, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %i.bbz)
          to label %_ZN9grpc_core14XdsMetadataMapD2Ev.exit unwind label %bb.sh

bb.sh:                                            ; preds = %.noexc.i.i.i.i, %bb.sg
  %i.bca = landingpad { ptr, i32 }
          catch ptr null
  %i.bcb = extractvalue { ptr, i32 } %i.bca, 0
  call void @__clang_call_terminate(ptr %i.bcb) #32
  unreachable

_ZN9grpc_core14XdsMetadataMapD2Ev.exit:           ; preds = %.noexc.i.i.i.i, %bb.sf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bbq, ptr noundef nonnull align 8 dereferenceable(32) %105, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #31
  %i.bcc = load ptr, ptr %104, align 8, !tbaa !131 ; 2 uses
  %.not.i583 = icmp eq ptr %i.bcc, null
  br i1 %.not.i583, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit584, label %bb.si

bb.si:                                            ; preds = %_ZN9grpc_core14XdsMetadataMapD2Ev.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bcc)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit584 unwind label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bcd = landingpad { ptr, i32 }
          catch ptr null
  %i.bce = extractvalue { ptr, i32 } %i.bcd, 0
  call void @__clang_call_terminate(ptr %i.bce) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit584: ; preds = %_ZN9grpc_core14XdsMetadataMapD2Ev.exit, %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #31
  %i.bcf = load i64, ptr %i.ab, align 8, !tbaa !141
  %i.bcg = icmp eq i64 %i.bcf, 0
  br i1 %i.bcg, label %bb.su, label %bb.sk

bb.sk:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit584
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #31
  invoke void @_ZNK9grpc_core16ValidationErrors6statusEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %106, ptr noundef nonnull align 8 dereferenceable(80) %71, i32 noundef 3, i64 34, ptr nonnull @.str.46)
          to label %bb.sl unwind label %bb.ss

bb.sl:                                            ; preds = %bb.sk
  %i.bch = load i64, ptr %106, align 8, !tbaa !27 ; 2 uses
  store i64 %i.bch, ptr %0, align 8, !tbaa !27
  store i64 55, ptr %106, align 8, !tbaa !27
  %i.bci = icmp eq i64 %i.bch, 1
  br i1 %i.bci, label %bb.sm, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !28

bb.sm:                                            ; preds = %bb.sl
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIKN9grpc_core18XdsClusterResourceEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit unwind label %.body585

.body585:                                         ; preds = %bb.sm
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #31
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %106) #31
  br label %bb.st

_ZN4absl12lts_202505128StatusOrISt10shared_ptrIKN9grpc_core18XdsClusterResourceEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit: ; preds = %bb.sm
  %.pre916 = load i64, ptr %106, align 8, !tbaa !27 ; 2 uses
  %i.bck = trunc i64 %.pre916 to i1
  br i1 %i.bck, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.sn

bb.sn:                                            ; preds = %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIKN9grpc_core18XdsClusterResourceEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit
  %i.bcl = inttoptr i64 %.pre916 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bcl)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bcm = landingpad { ptr, i32 }
          catch ptr null
  %i.bcn = extractvalue { ptr, i32 } %i.bcm, 0
  call void @__clang_call_terminate(ptr %i.bcn) #32
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.sl, %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIKN9grpc_core18XdsClusterResourceEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit, %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #31
  br label %_ZN9grpc_core13RefCountedPtrINS_24BackendMetricPropagationEED2Ev.exit

bb.sp:                                            ; preds = %bb.sd
  %i.bco = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.sq:                                            ; preds = %bb.se
  %i.bcp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #31
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #31
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sq, %bb.sp
  %.pn249 = phi { ptr, i32 } [ %i.bcp, %bb.sq ], [ %i.bco, %bb.sp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #31
  br label %.body370

bb.ss:                                            ; preds = %bb.sk
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %bb.st

bb.st:                                            ; preds = %.body585, %bb.ss
  %.pn251 = phi { ptr, i32 } [ %i.bcj, %.body585 ], [ %i.bcq, %bb.ss ]
end_hunk_0
