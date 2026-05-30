inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.asc, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %.noexc21.i.i.i405
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ars, ptr noundef nonnull %i.ary, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em)
          to label %bb.qo unwind label %bb.qe, !noalias !2782

bb.qo:                                            ; preds = %bb.qn, %.noexc21.i.i.i405, %bb.ql, %.noexc.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !2786
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qp:                                            ; preds = %bb.qj, %bb.qi, %bb.qf, %bb.qd
  %i.asd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2786
  %i.ase = icmp eq i8 %i.asd, 0
  br i1 %i.ase, label %bb.qq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qq:                                            ; preds = %bb.qp
  %i.asf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2786 ; 2 uses
  %i.asg = icmp ult i64 %i.asf, 6
  call void @llvm.assume(i1 %i.asg)
  %i.ash = icmp samesign ugt i64 %i.asf, 1
  br i1 %i.ash, label %bb.qr, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qr:                                            ; preds = %bb.qq
  %i.asi = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 32
  %i.ask = load ptr, ptr %i.asj, align 8, !noalias !2789, !nonnull !4, !noundef !4
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asi, i64 40
  %i.asm = load i64, ptr %i.asl, align 8, !noalias !2789, !noundef !4
  store i64 2, ptr %i.eh, align 8, !noalias !2786
  %.sroa.3.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ask, ptr %.sroa.3.0..sroa_idx.i.i.i393, align 8, !noalias !2786
  %.sroa.513.0..sroa_idx.i.i.i394 = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %i.asm, ptr %.sroa.513.0..sroa_idx.i.i.i394, align 8, !noalias !2786
  %i.asn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.qs unwind label %bb.qe, !noalias !2789 ; 2 uses

bb.qs:                                            ; preds = %bb.qr
  %i.aso = extractvalue { ptr, ptr } %i.asn, 0    ; 2 uses
  %i.asp = extractvalue { ptr, ptr } %i.asn, 1    ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 24
  %i.asr = load ptr, ptr %i.asq, align 8, !invariant.load !4, !noalias !2789, !nonnull !4
  %i.ass = invoke noundef zeroext i1 %i.asr(ptr noundef %i.aso, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.qt unwind label %bb.qe, !noalias !2789

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.ass, label %bb.qu, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !2786
  %i.ast = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !2786
  store ptr @20, ptr %i.ee, align 8, !noalias !2786
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.asv, align 8, !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !2786
  store ptr %i.en, ptr %i.ec, align 8, !noalias !2786
  store ptr %i.ec, ptr %i.ed, align 8, !noalias !2786
  store ptr %i.ee, ptr %i.ef, align 8, !noalias !2786
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @7, ptr %i.asw, align 8, !noalias !2786
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ed, ptr %i.asx, align 8, !noalias !2786
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr @15, ptr %i.asy, align 8, !noalias !2786
  store i64 1, ptr %i.eg, align 8, !noalias !2786
  %.sroa.415.0..sroa_idx.i.i.i395 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %.sroa.415.0..sroa_idx.i.i.i395, align 8, !noalias !2786
  %.sroa.516.0..sroa_idx.i.i.i396 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i396, align 8, !noalias !2786
  %i.asz = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.asu, ptr %i.asz, align 8, !noalias !2786
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.asi, ptr noundef nonnull %i.aso, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.asp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg)
          to label %bb.qv unwind label %bb.qe, !noalias !2782

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !2786
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qw:                                            ; preds = %bb.qe
  %i.ata = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2782
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.qv, %bb.qt, %bb.qq, %bb.qp, %bb.qo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.en)
          to label %bb.qy unwind label %bb.qx

.body.i388:                                       ; preds = %bb.qx, %bb.qe, %bb.qb
  %.pn10.i389 = phi { ptr, i32 } [ %i.aqx, %bb.qb ], [ %i.atd, %bb.qx ], [ %i.arb, %bb.qe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2745
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.atb = load ptr, ptr %i.aqw, align 8, !alias.scope !2800, !noalias !2745, !noundef !4 ; 2 uses
  %i.atc = icmp eq ptr %i.atb, null
  br i1 %i.atc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.rc

bb.qx:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i388

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.qc
  %i.ate = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.atf = load i8, ptr %i.ate, align 8, !range !2407, !alias.scope !2782, !noalias !2745, !noundef !4
  br label %bb.qz

bb.qy:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !2785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !2785
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.atg = phi i8 [ 2, %bb.qy ], [ %i.atf, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2745
  call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %i.ath = load ptr, ptr %i.aqw, align 8, !alias.scope !2807, !noalias !2745, !noundef !4 ; 2 uses
  %i.ati = icmp eq ptr %i.ath, null
  br i1 %i.ati, label %bb.rl, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.atj = atomicrmw sub ptr %i.ath, i64 1 release, align 8, !noalias !2808
  %i.atk = icmp eq i64 %i.atj, 1
  br i1 %i.atk, label %bb.rb, label %bb.rl

bb.rb:                                            ; preds = %bb.ra
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqw) #24
          to label %bb.rl unwind label %bb.ph

bb.rc:                                            ; preds = %.body.i388
  %i.atl = atomicrmw sub ptr %i.atb, i64 1 release, align 8, !noalias !2813
  %i.atm = icmp eq i64 %i.atl, 1
  br i1 %i.atm, label %bb.rd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.rd:                                            ; preds = %bb.rc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqw) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.re:                                            ; preds = %bb.ri, %bb.rg, %bb.rd, %bb.pz, %bb.pv
  %i.atn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.rf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382
  %i.ato = atomicrmw sub ptr %i.apq, i64 1 release, align 8, !noalias !2818
  %i.atp = icmp eq i64 %i.ato, 1
  br i1 %i.atp, label %bb.rg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.rg:                                            ; preds = %bb.rf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.app) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.rh:                                            ; preds = %bb.pm
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.atr = load i8, ptr %i.atq, align 8, !range !102, !noalias !2745, !noundef !4
  %cond.i.i28.i386 = icmp eq i8 %i.atr, 3
  br i1 %cond.i.i28.i386, label %bb.ri, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382

bb.ri:                                            ; preds = %bb.rh
  %i.ats = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ats)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382 unwind label %bb.re

bb.rj:                                            ; preds = %bb.pk, %bb.pj
  %i.att = landingpad { ptr, i32 }
          cleanup
  br label %.body411

bb.rk:                                            ; preds = %bb.pn
  store i8 3, ptr %i.aps, align 8, !noalias !2745
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.rl:                                            ; preds = %bb.ra, %bb.rb, %bb.qz
  store i8 1, ptr %i.aps, align 8, !noalias !2745
  br label %bb.rm

bb.rm:                                            ; preds = %bb.pb, %bb.rl
  %.val248.sink = phi i8 [ %i.atg, %bb.rl ], [ %.val248, %bb.pb ]
  %i.atu = getelementptr inbounds nuw i8, ptr %1, i64 2563
  store i8 %.val248.sink, ptr %i.atu, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.val249 = load i32, ptr %i.atv, align 8, !range !2823, !noundef !4
  %3 = trunc nuw i32 %.val249 to i1
  br i1 %3, label %bb.rn, label %.thread1283.a

bb.rn:                                            ; preds = %bb.rm
  %i.atw = getelementptr inbounds nuw i8, ptr %1, i64 1944
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 1004
  %i.aty = load i32, ptr %i.atx, align 4
  store i32 1, ptr %i.atw, align 8
  br label %.thread1284

.thread1283.a:                                    ; preds = %bb.rm
  %i.atz = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store ptr %i.atz, ptr %i.aua, align 8
  %.sroa.8873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3096
  store i8 0, ptr %.sroa.8873.0..sroa_idx, align 8
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 3096
  br label %bb.rp

.body411:                                         ; preds = %bb.rj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384
  %i.aud = phi ptr [ %i.apt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 ], [ %i.ape, %bb.rj ]
  %.pn93 = phi { ptr, i32 } [ %.pn14.i385, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 ], [ %i.att, %bb.rj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aud) #22
          to label %.body456 unwind label %bb.bk

.body456:                                         ; preds = %.body446, %.body411, %bb.tz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pn93, %.body411 ], [ %i.azd, %bb.tz ], [ %.pn97, %.body446 ] ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 2572
  %i.auf = load i8, ptr %i.aue, align 4, !range !5, !noundef !4
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %bb.are, label %bb.pc

bb.ro:                                            ; preds = %bb.a
  %.phi.trans.insert1154 = getelementptr inbounds nuw i8, ptr %1, i64 3096
  %.pre1155 = load i8, ptr %.phi.trans.insert1154, align 8, !range !102, !noalias !2824
  %i.auh = getelementptr inbounds nuw i8, ptr %1, i64 2600 ; 3 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 3096 ; 2 uses
  switch i8 %.pre1155, label %default.unreachable1278 [
    i8 0, label %bb.rp
    i8 1, label %bb.ru
    i8 2, label %bb.rv
    i8 3, label %bb.rw
  ]

bb.rp:                                            ; preds = %.thread1283.a, %bb.ro
  %i.auj = phi ptr [ %i.auc, %.thread1283.a ], [ %i.aui, %bb.ro ]
  %i.auk = phi ptr [ %i.aub, %.thread1283.a ], [ %i.auh, %bb.ro ] ; 2 uses
  %i.aul = load ptr, ptr %i.auk, align 8, !noalias !2824, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.aum = getelementptr i8, ptr %i.aul, i64 136
  %.val.i442 = load ptr, ptr %i.aum, align 8, !noundef !4 ; 3 uses
  %.not.i.i443 = icmp eq ptr %.val.i442, null
  br i1 %.not.i.i443, label %bb.rt, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.aun = atomicrmw add ptr %.val.i442, i64 1 monotonic, align 8
  %i.auo = icmp slt i64 %i.aun, 0
  br i1 %i.auo, label %bb.rr, label %bb.rt

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423: ; preds = %bb.tr, %bb.tq, %bb.to, %bb.tn, %.body.i425, %bb.sk, %bb.sj, %bb.si, %bb.sg, %bb.sf, %bb.se, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i, %bb.rs
  %.pn15.i = phi { ptr, i32 } [ %i.aup, %bb.rs ], [ %i.avt, %bb.sj ], [ %i.avn, %bb.sf ], [ %.pn11.i, %bb.tn ], [ %i.avn, %bb.sg ], [ %i.avn, %bb.se ], [ %i.avt, %bb.sk ], [ %i.avt, %bb.si ], [ %.pn11.i, %bb.to ], [ %.pn11.i, %.body.i425 ], [ %.pn7.i, %bb.tr ], [ %.pn7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i ], [ %.pn7.i, %bb.tq ]
  store i8 2, ptr %i.auv, align 8, !noalias !2824
  br label %.body446

bb.rs:                                            ; preds = %bb.tm
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.rt:                                            ; preds = %bb.rq, %bb.rp
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i442, ptr %i.auq, align 8, !noalias !2824
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.aul, ptr %i.aur, align 8, !noalias !2824
  %.sroa.8.0..sroa_idx.i444 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i444, align 8, !noalias !2824
  br label %bb.rw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i: ; preds = %bb.tt, %bb.ts, %bb.sc, %bb.rx
  %.pn7.i = phi { ptr, i32 } [ %i.avk, %bb.sc ], [ %i.auz, %bb.ts ], [ %i.auz, %bb.tt ], [ %i.auz, %bb.rx ] ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.aut = load ptr, ptr %i.aus, align 8, !alias.scope !2833, !noalias !2824, !noundef !4 ; 2 uses
  %i.auu = icmp eq ptr %i.aut, null
  br i1 %i.auu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.tq

bb.ru:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #26
          to label %.noexc448 unwind label %bb.tu

.noexc448:                                        ; preds = %bb.ru
  unreachable

bb.rv:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #26
          to label %.noexc449 unwind label %bb.tu

.noexc449:                                        ; preds = %bb.rv
  unreachable

bb.rw:                                            ; preds = %bb.rt, %bb.ro
  %i.auv = phi ptr [ %i.auj, %bb.rt ], [ %i.aui, %bb.ro ] ; 3 uses
  %i.auw = phi ptr [ %i.auk, %bb.rt ], [ %i.auh, %bb.ro ]
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.auy = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aux, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ry unwind label %bb.rx     ; 2 uses

bb.rx:                                            ; preds = %bb.rw
  %i.auz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.avb = load i8, ptr %i.ava, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i28.i = icmp eq i8 %i.avb, 3
  br i1 %cond.i28.i, label %bb.ts, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.ry:                                            ; preds = %bb.rw
  %i.avc = extractvalue { i64, ptr } %i.auy, 0
  %i.avd = extractvalue { i64, ptr } %i.auy, 1
  %i.ave = trunc nuw i64 %i.avc to i1
  br i1 %i.ave, label %bb.tv, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.avg = load i8, ptr %i.avf, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i.i424 = icmp eq i8 %i.avg, 3
  br i1 %cond.i.i424, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.avh = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.avi = load i8, ptr %i.avh, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i.i.i441 = icmp eq i8 %i.avi, 3
  br i1 %cond.i.i.i441, label %bb.sb, label %bb.sd

bb.sb:                                            ; preds = %bb.sa
  %i.avj = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.avj)
          to label %bb.sd unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.sd:                                            ; preds = %bb.sb, %bb.sa, %bb.rz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !2824
  store i64 -9223372036854775807, ptr %i.dx, align 8, !alias.scope !2834, !noalias !2824
  %i.avl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 -9223372036854775807, ptr %i.avl, align 8, !alias.scope !2834, !noalias !2824
  %i.avm = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i64 -9223372036854775807, ptr %i.avm, align 8, !alias.scope !2834, !noalias !2824
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 38)
          to label %bb.sh unwind label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.avn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !2824
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  %i.avp = load ptr, ptr %i.avo, align 8, !alias.scope !2843, !noalias !2824, !noundef !4 ; 2 uses
  %i.avq = icmp eq ptr %i.avp, null
  br i1 %i.avq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.avr = atomicrmw sub ptr %i.avp, i64 1 release, align 8, !noalias !2844
  %i.avs = icmp eq i64 %i.avr, 1
  br i1 %i.avs, label %bb.sg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.sg:                                            ; preds = %bb.sf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avo) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423 unwind label %bb.tp

bb.sh:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2824
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 34)
          to label %bb.sl unwind label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.avt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !2824
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  %i.avv = load ptr, ptr %i.avu, align 8, !alias.scope !2855, !noalias !2824, !noundef !4 ; 2 uses
  %i.avw = icmp eq ptr %i.avv, null
  br i1 %i.avw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sj
end_hunk_0
