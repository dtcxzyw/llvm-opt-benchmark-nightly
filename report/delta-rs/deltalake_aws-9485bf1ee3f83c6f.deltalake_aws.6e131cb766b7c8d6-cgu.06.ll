inline.NumInlined: 1445
inline.NumDeleted: 620
begin_hunk_0_@_RNvXs1_NtCskW4GF8MLwaI_6backon5retryINtB5_5RetryNtNtNtB7_7backoff11exponential18ExponentialBackoffNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query13__query_output11QueryOutputINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtB1C_10QueryErrorNtNtNtB32_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB52_18DynamoDbLockClient18get_latest_entries000NCB4U_0NtNtB7_5sleep12TokioSleeperNCB4U_s_0FG_RL0_B2V_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B2V_INtNtB7e_6option6OptionB7a_EEB7Y_ENtNtNtB7e_6future6future6Future4pollB52_:bb.a

bb.k:                                             ; preds = %.body.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2339
  unreachable

.body.i.i:                                        ; preds = %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.ea = load ptr, ptr %i.bc, align 8, !alias.scope !2348, !noalias !2329, !nonnull !3, !noundef !3
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !2349
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m, !noalias !2350

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.l
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2350
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.l, %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.bd) #30
          to label %.body.i unwind label %bb.m, !noalias !2350

bb.n:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query8builders18QueryFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(976) %i.ar) #30
          to label %bb.am unwind label %bb.ai, !noalias !2314

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !alias.scope !2340, !noalias !2341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.aq, ptr noundef nonnull align 8 dereferenceable(472) %i.af, i64 472, i1 false), !noalias !2329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.060.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(216) %i.aq, i64 216, i1 false), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.060.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.14.0..sroa_idx.i.i, i64 240, i1 false), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(511) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(511) %.sroa.20.0..sroa_idx.i.i, i64 511, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2317
  %i.ef = load ptr, ptr %i.be, align 8, !noalias !2317, !nonnull !3, !align !4, !noundef !3
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !2314, !noundef !3 ; 2 uses
  %i.eh = add i64 %i.eg, -2147483648
  %or.cond.i.i.i = icmp ult i64 %i.eh, -4294967296
  %i.ei = trunc nsw i64 %i.eg to i32
  %..i.i = select i1 %or.cond.i.i.i, i32 2147483647, i32 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(510) %.sroa.663.0..sroa_idx64.i, ptr noundef nonnull align 1 dereferenceable(510) %.sroa.8.466..sroa_idx.i, i64 510, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ar, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.060.sroa.0.i, i64 216, i1 false), !alias.scope !2351, !noalias !2317
  store i32 1, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2351, !noalias !2317
  store i32 %..i.i, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !alias.scope !2351, !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.060.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.060.sroa.7.i, i64 240, i1 false), !alias.scope !2351, !noalias !2317
  store i8 1, ptr %.sroa.060.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2351, !noalias !2317
  store i8 0, ptr %.sroa.5.0..sroa_idx61.i, align 1, !alias.scope !2351, !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2317
  store <2 x ptr> <ptr @44, ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws>, ptr %i.am, align 16, !noalias !2317
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull @45, ptr noundef nonnull %i.am)
          to label %bb.p unwind label %bb.n, !noalias !2314

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.an, i64 24, i1 false), !alias.scope !2355, !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2317
  call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ae, ptr noundef nonnull align 8 dereferenceable(976) %i.ar, i64 472, i1 false), !noalias !2366
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.ej = load i64, ptr %i.bf, align 8, !range !161, !alias.scope !2370, !noalias !2374, !noundef !3
  %i.ek = icmp eq i64 %i.ej, -9223372036854775808
  br i1 %i.ek, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i40.i unwind label %bb.r, !noalias !2376

bb.r:                                             ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body.i.i36.i unwind label %bb.s, !noalias !2376

bb.s:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2376
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i40.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.y unwind label %bb.t, !noalias !2376

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i40.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i36.i

.body.i.i36.i:                                    ; preds = %bb.t, %bb.r
  %eh.lpad-body.i.i37.i = phi { ptr, i32 } [ %i.en, %bb.t ], [ %i.el, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !alias.scope !2377, !noalias !2378
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query12__query_input17QueryInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.ae) #30
          to label %.body.i38.i unwind label %bb.u, !noalias !2376

bb.u:                                             ; preds = %.body.i.i36.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2376
  unreachable

.body.i38.i:                                      ; preds = %.body.i.i36.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ar, i64 968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !2385, !noalias !2366, !nonnull !3, !noundef !3
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !2386
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i39.i

bb.v:                                             ; preds = %.body.i38.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ep) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i39.i unwind label %bb.w, !noalias !2387

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i39.i, %bb.v
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2387
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i39.i: ; preds = %bb.v, %.body.i38.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 472
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.eu) #30
          to label %bb.x unwind label %bb.w, !noalias !2387

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.am

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i40.i, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !alias.scope !2377, !noalias !2378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ar, ptr noundef nonnull align 8 dereferenceable(472) %i.ae, i64 472, i1 false), !noalias !2366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.as, ptr noundef nonnull align 8 dereferenceable(976) %i.ar, i64 976, i1 false), !alias.scope !2388, !noalias !2389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2317
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2396
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -9223372036854775808) 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %.loopexit, !noalias !2314

.noexc43.i:                                       ; preds = %bb.y
  %i.ev = load i64, ptr %i.ad, align 8, !range !651, !noalias !2396, !noundef !3
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = load i64, ptr %i.bg, align 8, !range !161, !noalias !2396, !noundef !3 ; 3 uses
  br i1 %i.ew, label %bb.z, label %bb.ab, !prof !8

bb.z:                                             ; preds = %.noexc43.i
  %i.ey = load i64, ptr %i.bh, align 8, !noalias !2396
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ex, i64 %i.ey) #29
          to label %.noexc44.i unwind label %.loopexit.split-lp, !noalias !2314

.noexc44.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %.pn20.i = phi { ptr, i32 } [ %i.fe, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ak

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ab:                                            ; preds = %.noexc43.i
  %i.ez = load ptr, ptr %i.bh, align 8, !noalias !2396, !nonnull !3, !noundef !3 ; 2 uses
  %i.fa = icmp samesign ugt i64 %i.ex, 2
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ez, ptr noundef nonnull readonly align 1 dereferenceable(3) @46, i64 range(i64 0, -9223372036854775808) 3, i1 false), !noalias !2402
  store i64 %i.ex, ptr %i.ah, align 8, !alias.scope !2403, !noalias !2404
  store ptr %i.ez, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2403, !noalias !2404
  store i64 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2403, !noalias !2404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2317
  %i.fb = load ptr, ptr %i.bi, align 8, !noalias !2317, !nonnull !3, !noundef !3
  %i.fc = load i64, ptr %i.bj, align 8, !noalias !2317, !noundef !3
  %i.fd = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre16trim_end_matchescECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc, i32 noundef 47)
          to label %bb.ad unwind label %bb.ac, !noalias !2314 ; 2 uses

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2317
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #30
          to label %bb.aa unwind label %bb.ai, !noalias !2314

bb.ad:                                            ; preds = %bb.ab
  %i.ff = extractvalue { ptr, i64 } %i.fd, 0
  %i.fg = extractvalue { ptr, i64 } %i.fd, 1
  invoke void @_RINvCs9rVkZwOUgsI_13deltalake_aws11string_attrReEB2_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ff, i64 noundef %i.fg)
          to label %bb.ae unwind label %bb.ac, !noalias !2314

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i64 80, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtCsbvkFyIu7lgC_4core7convert4FromATB13_B1F_Ej1_E4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.aj)
          to label %bb.ag unwind label %bb.af, !noalias !2314

bb.af:                                            ; preds = %bb.ae
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2317
  invoke void @_RNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query8buildersNtB5_18QueryFluentBuilder31set_expression_attribute_values(ptr noalias noundef nonnull sret([976 x i8]) align 8 captures(none) dereferenceable(976) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(976) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.al)
          to label %.thread.i unwind label %bb.ah, !noalias !2314

bb.ah:                                            ; preds = %bb.ag
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2317
  br label %bb.aj

.thread.i:                                        ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %.sroa.058.i, ptr noundef nonnull align 8 dereferenceable(976) %i.at, i64 976, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7752) %i.az, ptr noundef nonnull align 8 dereferenceable(7752) %.sroa.058.i, i64 7752, i1 false), !noalias !2317
  store i8 0, ptr %.phi.trans.insert.i, align 8, !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10101.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11103.i.i)
  br label %bb.at

bb.ai:                                            ; preds = %.body54.i, %bb.ao, %bb.ak, %bb.ac, %bb.n
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2314
  unreachable

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %.pn2482.i = phi { ptr, i32 } [ %.pn22.i, %bb.ak ], [ %i.fi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2317
  br label %bb.al

bb.ak:                                            ; preds = %bb.af, %bb.aa
  %.pn22.i = phi { ptr, i32 } [ %i.fh, %bb.af ], [ %.pn20.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2317
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query8builders18QueryFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(976) %i.as) #30
          to label %bb.aj unwind label %bb.ai, !noalias !2314

common.resume:                                    ; preds = %bb.fd, %bb.fv, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %.pn30.i, %bb.al ], [ %i.lw, %bb.fv ], [ %.pn, %bb.fd ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.ez, %.body54.i, %bb.am, %bb.aj
  %.pn30.i = phi { ptr, i32 } [ %i.lc, %bb.ez ], [ %eh.lpad-body55.i, %.body54.i ], [ %.pn2482.i, %bb.aj ], [ %.pn17.pn.i, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.058.i)
  store i8 2, ptr %i.ay, align 8, !noalias !2317
  br label %common.resume

bb.am:                                            ; preds = %bb.an, %bb.x, %bb.n
  %.pn17.pn.i = phi { ptr, i32 } [ %i.ee, %bb.n ], [ %eh.lpad-body.i.i37.i, %bb.x ], [ %.pn.i, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2317
  br label %bb.al

bb.an:                                            ; preds = %bb.ao, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.fk, %bb.ao ], [ %eh.lpad-body.i.i.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060.sroa.7.i)
  br label %bb.am

bb.ao:                                            ; preds = %bb.e
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2317
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query8builders18QueryFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(976) %i.aq) #30
          to label %bb.an unwind label %bb.ai, !noalias !2314

bb.ap:                                            ; preds = %bb.b
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #33, !noalias !2314
  unreachable

bb.aq:                                            ; preds = %bb.b
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #33, !noalias !2314
  unreachable

bb.ar:                                            ; preds = %bb.bl, %bb.bk
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

.body54.i:                                        ; preds = %bb.bg, %bb.ar
  %eh.lpad-body55.i = phi { ptr, i32 } [ %i.fl, %bb.ar ], [ %.pn23.i.i, %bb.bg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query8buildersNtBO_18QueryFluentBuilder4send0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.az) #30
          to label %bb.al unwind label %bb.ai, !noalias !2314

bb.as:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058.i)
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !453, !noalias !2405
  call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10101.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11103.i.i)
  switch i8 %.pre.i, label %default.unreachable667 [
    i8 0, label %bb.at
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
  ]

bb.at:                                            ; preds = %bb.as, %.thread.i
  store i8 1, ptr %i.bl, align 1, !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.bm, ptr noundef nonnull align 8 dereferenceable(976) %i.az, i64 976, i1 false), !noalias !2405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.15.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.053.sroa.0.0.copyload.i.i = load i64, ptr %i.bm, align 8, !noalias !2405 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.4.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !2405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.72..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.120..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.144..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.168..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.6.192..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !2405
  %i.fm = load <2 x i32>, ptr %.sroa.1354.0..sroa_idx.i.i, align 8, !noalias !2405
  %.sroa.20.0.copyload.i.i = load i8, ptr %.sroa.20.0..sroa_idx.i47.i, align 8, !noalias !2405
  %.sroa.21.0.copyload.i.i = load i8, ptr %.sroa.21.0..sroa_idx.i.i, align 1, !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.i.i, i64 40, i1 false), !noalias !2410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0.i.sroa.6.i.i, i64 168, i1 false), !noalias !2410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.fn = icmp eq i64 %.sroa.053.sroa.0.0.copyload.i.i, -9223372036854775807
  br i1 %i.fn, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !2419
  invoke void @_RINvMs3_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6resultINtB6_8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query10QueryErrorNtNtNtBa_4http8response8ResponseE20construction_failureNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation10BuildErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %.sroa.6.0..sroa_idx.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.y)
          to label %bb.bd unwind label %bb.av, !noalias !2420

bb.av:                                            ; preds = %bb.au
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.16.i.i)
  br label %bb.bi

bb.aw:                                            ; preds = %bb.at
  store i64 %.sroa.053.sroa.0.0.copyload.i.i, ptr %i.ab, align 8, !alias.scope !2421, !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !alias.scope !2421, !noalias !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.i.i, i64 168, i1 false), !alias.scope !2421, !noalias !2405
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCskW4GF8MLwaI_6backon5retryINtB5_5RetryNtNtNtB7_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtB1G_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB4E_18DynamoDbLockClient19delete_commit_entry000NCB4w_0NtNtB7_5sleep12TokioSleeperNCB4w_s_0FG_RL0_B1z_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B1z_INtNtB6R_6option6OptionB6N_EEB7B_ENtNtNtB6R_6future6future6Future4pollB4E_:bb.a
bb.b:                                             ; preds = %.backedge
  call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10108.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11109.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1275.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1377.i)
  %i.dy = load i8, ptr %i.bb, align 8, !range !453, !noalias !2849, !noundef !3
  switch i8 %i.dy, label %default.unreachable739 [
    i8 0, label %bb.c
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.ax
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.048.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2849
  %i.dz = load ptr, ptr %i.ba, align 8, !noalias !2849, !nonnull !3, !align !4, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 480
  %.val.i = load ptr, ptr %i.ea, align 8, !noalias !2846, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.eb = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !2854
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %.val.i, ptr %i.bf, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775808, ptr %i.as, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775808, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775806, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775806, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775806, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775805, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775803, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store ptr null, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store ptr null, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store ptr null, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store ptr null, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2849
  store i64 -9223372036854775808, ptr %i.bg, align 8, !alias.scope !2851, !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2849
  %i.ed = load ptr, ptr %i.ba, align 8, !noalias !2849, !nonnull !3, !align !4, !noundef !3
  invoke void @_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient19get_lock_table_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.ed)
          to label %bb.f unwind label %bb.at, !noalias !2846

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2849
  br label %bb.as

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ai, ptr noundef nonnull align 8 dereferenceable(864) %i.as, i64 360, i1 false), !noalias !2862
  call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  %i.ee = load i64, ptr %i.ai, align 8, !range !161, !alias.scope !2866, !noalias !2870, !noundef !3
  %i.ef = icmp eq i64 %i.ee, -9223372036854775808
  br i1 %i.ef, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.h, !noalias !2872

bb.h:                                             ; preds = %bb.g
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.ai)
          to label %.body.i.i.i unwind label %bb.i, !noalias !2872

bb.i:                                             ; preds = %bb.h
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2872
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.ai)
          to label %bb.n unwind label %bb.j, !noalias !2872

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.j ], [ %i.eg, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !alias.scope !2873, !noalias !2874
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item18__delete_item_input22DeleteItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.ai) #30
          to label %.body.i.i unwind label %bb.k, !noalias !2872

bb.k:                                             ; preds = %.body.i.i.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2872
  unreachable

.body.i.i:                                        ; preds = %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %i.ek = load ptr, ptr %i.bf, align 8, !alias.scope !2881, !noalias !2862, !nonnull !3, !noundef !3
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !2882
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m, !noalias !2883

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.l
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2883
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.l, %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.bg) #30
          to label %.body.i unwind label %bb.m, !noalias !2883

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !alias.scope !2873, !noalias !2874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.as, ptr noundef nonnull align 8 dereferenceable(360) %i.ai, i64 360, i1 false), !noalias !2862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(864) %i.at, ptr noundef nonnull align 8 dereferenceable(864) %i.as, i64 864, i1 false), !alias.scope !2884, !noalias !2885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2849
  %i.eo = load ptr, ptr %i.bh, align 8, !noalias !2849, !nonnull !3, !align !4, !noundef !3
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !2846, !noundef !3
  %i.eq = load ptr, ptr %i.bi, align 8, !noalias !2849, !nonnull !3, !noundef !3
  %i.er = load i64, ptr %i.bj, align 8, !noalias !2849, !noundef !3
  invoke void @_RNvCs9rVkZwOUgsI_13deltalake_aws15get_primary_key(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ap, i64 noundef %i.ep, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.er)
          to label %bb.o unwind label %bb.ar, !noalias !2846

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2849
  invoke void @_RNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item8buildersNtB5_23DeleteItemFluentBuilder7set_key(ptr noalias noundef nonnull sret([864 x i8]) align 8 captures(none) dereferenceable(864) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(864) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aq)
          to label %bb.q unwind label %bb.p, !noalias !2846

bb.p:                                             ; preds = %bb.o
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2849
  br label %bb.aq

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2849
  call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2892
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef range(i64 0, -9223372036854775808) 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit, !noalias !2846

.noexc.i:                                         ; preds = %bb.q
  %i.et = load i64, ptr %i.ah, align 8, !range !651, !noalias !2892, !noundef !3
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = load i64, ptr %i.bk, align 8, !range !161, !noalias !2892, !noundef !3 ; 3 uses
  br i1 %i.eu, label %bb.r, label %bb.t, !prof !8

bb.r:                                             ; preds = %.noexc.i
  %i.ew = load i64, ptr %i.bl, align 8, !noalias !2892
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ew) #29
          to label %.noexc23.i unwind label %.loopexit.split-lp, !noalias !2846

.noexc23.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u
  %.pn9.i = phi { ptr, i32 } [ %i.ez, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ap

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.t:                                             ; preds = %.noexc.i
  %i.ex = load ptr, ptr %i.bl, align 8, !noalias !2892, !nonnull !3, !noundef !3 ; 2 uses
  %i.ey = icmp samesign ugt i64 %i.ev, 1
  call void @llvm.assume(i1 %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2892
  store i16 26170, ptr %i.ex, align 1, !noalias !2898
  store i64 %i.ev, ptr %i.ak, align 8, !alias.scope !2899, !noalias !2900
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2899, !noalias !2900
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2899, !noalias !2900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2849
  invoke void @_RINvCs9rVkZwOUgsI_13deltalake_aws11string_attrReEB2_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
          to label %bb.v unwind label %bb.u, !noalias !2846

bb.u:                                             ; preds = %bb.t
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2849
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #30
          to label %bb.s unwind label %bb.an, !noalias !2846

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 80, i1 false), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtCsbvkFyIu7lgC_4core7convert4FromATB13_B1F_Ej1_E4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.am)
          to label %bb.x unwind label %bb.w, !noalias !2846

bb.w:                                             ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2849
  invoke void @_RNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item8buildersNtB5_23DeleteItemFluentBuilder31set_expression_attribute_values(ptr noalias noundef nonnull sret([864 x i8]) align 8 captures(none) dereferenceable(864) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(864) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ao)
          to label %bb.z unwind label %bb.y, !noalias !2846

bb.y:                                             ; preds = %bb.x
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2849
  br label %bb.ao

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2849
  %i.fc = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9rVkZwOUgsI_13deltalake_aws9constants27CONDITION_DELETE_INCOMPLETE, i64 24) acquire, align 8, !noalias !2849
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ab, label %bb.aa, !prof !2007

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2849
  store ptr @_RNvNtCs9rVkZwOUgsI_13deltalake_aws9constants27CONDITION_DELETE_INCOMPLETE, ptr %i.ag, align 8, !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2849
  store ptr %i.ag, ptr %i.af, align 8, !noalias !2849
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9rVkZwOUgsI_13deltalake_aws9constants27CONDITION_DELETE_INCOMPLETE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %.noexc24.i unwind label %bb.am, !noalias !2846

.noexc24.i:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2849
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc24.i, %bb.z
  %.val21.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9rVkZwOUgsI_13deltalake_aws9constants27CONDITION_DELETE_INCOMPLETE, i64 8), align 8, !noalias !2849, !nonnull !3, !noundef !3
  %.val22.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9rVkZwOUgsI_13deltalake_aws9constants27CONDITION_DELETE_INCOMPLETE, i64 16), align 8, !noalias !2849, !noundef !3 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ae, ptr noundef nonnull align 8 dereferenceable(864) %i.av, i64 360, i1 false), !noalias !2907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2908
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %.val22.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit55, !noalias !2918

.noexc.i.i:                                       ; preds = %bb.ab
  %i.fe = load i64, ptr %i.ad, align 8, !range !651, !noalias !2908, !noundef !3
  %i.ff = trunc nuw i64 %i.fe to i1
  %i.fg = load i64, ptr %i.bn, align 8, !range !161, !noalias !2908, !noundef !3 ; 4 uses
  br i1 %i.ff, label %bb.ac, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, !prof !8

bb.ac:                                            ; preds = %.noexc.i.i
  %i.fh = load i64, ptr %i.bo, align 8, !noalias !2908
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fg, i64 %i.fh) #29
          to label %.noexc2.i.i unwind label %.loopexit.split-lp56, !noalias !2918

.noexc2.i.i:                                      ; preds = %bb.ac
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.fi = load ptr, ptr %i.bo, align 8, !noalias !2908, !nonnull !3, !noundef !3 ; 3 uses
  %i.fj = icmp samesign ule i64 %.val22.i, %i.fg
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2908
  %.not.i.i.i.i.i = icmp eq i64 %.val22.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCs6Po7BT7Nknu_5alloc6string6StringE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull readonly align 1 %.val21.i, i64 range(i64 0, -9223372036854775808) %.val22.i, i1 false), !noalias !2919
  br label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCs6Po7BT7Nknu_5alloc6string6StringE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCs6Po7BT7Nknu_5alloc6string6StringE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ad, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.fk = load i64, ptr %i.bp, align 8, !range !161, !alias.scope !2923, !noalias !2927, !noundef !3
  %i.fl = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %i.fl, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCs6Po7BT7Nknu_5alloc6string6StringE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i29.i unwind label %bb.af, !noalias !2929

bb.af:                                            ; preds = %bb.ae
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body.i.i27.i unwind label %bb.ag, !noalias !2929

bb.ag:                                            ; preds = %bb.af
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2929
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i29.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.thread.i unwind label %bb.ah, !noalias !2929

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i29.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i27.i

.body.i.i27.i:                                    ; preds = %bb.ah, %bb.af
  %eh.lpad-body.i.i28.i = phi { ptr, i32 } [ %i.fo, %bb.ah ], [ %i.fm, %bb.af ]
  store i64 %i.fg, ptr %i.bp, align 8, !alias.scope !2930, !noalias !2931
  store ptr %i.fi, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !alias.scope !2930, !noalias !2931
  store i64 %.val22.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !alias.scope !2930, !noalias !2931
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item18__delete_item_input22DeleteItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.ae) #30
          to label %.body.i25.i unwind label %bb.ai, !noalias !2929

bb.ai:                                            ; preds = %.body.i.i27.i
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2929
  unreachable

.body.i25.i:                                      ; preds = %bb.ak, %.body.i.i27.i
  %eh.lpad-body11.i.i = phi { ptr, i32 } [ %lpad.phi59, %bb.ak ], [ %eh.lpad-body.i.i28.i, %.body.i.i27.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.av, i64 856 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !2938, !noalias !2907, !nonnull !3, !noundef !3
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !2939
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i26.i

bb.aj:                                            ; preds = %.body.i25.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fq) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i26.i unwind label %bb.al, !noalias !2940

.loopexit55:                                      ; preds = %bb.ab
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp56:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp56, %.loopexit55
  %lpad.phi59 = phi { ptr, i32 } [ %lpad.loopexit57, %.loopexit55 ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp56 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item18__delete_item_input22DeleteItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(360) %i.ae) #30
          to label %.body.i25.i unwind label %bb.al, !noalias !2918

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i26.i, %bb.ak, %bb.aj
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2940
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i26.i: ; preds = %bb.aj, %.body.i25.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.av, i64 360
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.fv) #30
          to label %.body30.i unwind label %bb.al, !noalias !2940

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i29.i, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCs6Po7BT7Nknu_5alloc6string6StringE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  store i64 %i.fg, ptr %i.bp, align 8, !alias.scope !2930, !noalias !2931
  store ptr %i.fi, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !alias.scope !2930, !noalias !2931
  store i64 %.val22.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !alias.scope !2930, !noalias !2931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.av, ptr noundef nonnull align 8 dereferenceable(360) %i.ae, i64 360, i1 false), !noalias !2907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(864) %.sroa.048.i, ptr noundef nonnull align 8 dereferenceable(864) %i.av, i64 864, i1 false), !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7304) %i.bc, ptr noundef nonnull align 8 dereferenceable(7304) %.sroa.048.i, i64 7304, i1 false), !noalias !2849
  store i8 0, ptr %.phi.trans.insert.i, align 8, !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1169.i.i)
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCskW4GF8MLwaI_6backon5retryINtB5_5RetryNtNtNtB7_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtB1G_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB4E_18DynamoDbLockClient19update_commit_entry000NCB4w_0NtNtB7_5sleep12TokioSleeperNCB4w_s_0FG_RL0_B1z_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B1z_INtNtB6R_6option6OptionB6N_EEB7B_ENtNtNtB6R_6future6future6Future4pollB4E_:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 7824
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 7816
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 7776
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 7792
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 7800
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 7808
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.eu = load i64, ptr %i.bi, align 8, !range !171, !noundef !3
  switch i64 %i.eu, label %default.unreachable968 [
    i64 0, label %bb.gt
    i64 1, label %bb.b
    i64 2, label %bb.gs
  ]

default.unreachable968:                           ; preds = %bb.cr, %bb.co, %bb.bu, %bb.b, %.backedge
  unreachable

bb.b:                                             ; preds = %.backedge
  call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10141.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11142.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12108.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13110.i)
  %i.ev = load i8, ptr %i.bk, align 8, !range !453, !noalias !3158, !noundef !3
  switch i8 %i.ev, label %default.unreachable968 [
    i8 0, label %bb.c
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bu
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.074.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3158
  %i.ew = load ptr, ptr %i.bj, align 8, !noalias !3158, !nonnull !3, !align !4, !noundef !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 480
  %.val.i = load ptr, ptr %i.ex, align 8, !noalias !3155, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.ey = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !3163
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %.val.i, ptr %i.bo, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775808, ptr %i.ba, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775808, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775806, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775806, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775806, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775805, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775803, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store ptr null, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store ptr null, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store ptr null, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store ptr null, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store ptr null, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !alias.scope !3160, !noalias !3158
  store i64 -9223372036854775808, ptr %i.bp, align 8, !alias.scope !3160, !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3158
  %i.fa = load ptr, ptr %i.bj, align 8, !noalias !3158, !nonnull !3, !align !4, !noundef !3
  invoke void @_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient19get_lock_table_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.fa)
          to label %bb.f unwind label %bb.bq, !noalias !3155

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3158
  br label %bb.bp

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ak, ptr noundef nonnull align 8 dereferenceable(936) %i.ba, i64 432, i1 false), !noalias !3171
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %i.fb = load i64, ptr %i.ak, align 8, !range !161, !alias.scope !3175, !noalias !3179, !noundef !3
  %i.fc = icmp eq i64 %i.fb, -9223372036854775808
  br i1 %i.fc, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.h, !noalias !3181

bb.h:                                             ; preds = %bb.g
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ak)
          to label %.body.i.i.i unwind label %bb.i, !noalias !3181

bb.i:                                             ; preds = %bb.h
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3181
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ak)
          to label %bb.n unwind label %bb.j, !noalias !3181

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ff, %bb.j ], [ %i.fd, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.az, i64 24, i1 false), !alias.scope !3182, !noalias !3183
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item18__update_item_input22UpdateItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ak) #30
          to label %.body.i.i unwind label %bb.k, !noalias !3181

bb.k:                                             ; preds = %.body.i.i.i
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3181
  unreachable

.body.i.i:                                        ; preds = %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  %i.fh = load ptr, ptr %i.bo, align 8, !alias.scope !3190, !noalias !3171, !nonnull !3, !noundef !3
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !3191
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bo) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m, !noalias !3192

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.l
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3192
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.l, %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.bp) #30
          to label %.body.i unwind label %bb.m, !noalias !3192

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.az, i64 24, i1 false), !alias.scope !3182, !noalias !3183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ba, ptr noundef nonnull align 8 dereferenceable(432) %i.ak, i64 432, i1 false), !noalias !3171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %i.bb, ptr noundef nonnull align 8 dereferenceable(936) %i.ba, i64 936, i1 false), !alias.scope !3193, !noalias !3194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3158
  %i.fl = load ptr, ptr %i.bq, align 8, !noalias !3158, !nonnull !3, !align !4, !noundef !3
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !3155, !noundef !3
  %i.fn = load ptr, ptr %i.br, align 8, !noalias !3158, !nonnull !3, !noundef !3
  %i.fo = load i64, ptr %i.bs, align 8, !noalias !3158, !noundef !3
  invoke void @_RNvCs9rVkZwOUgsI_13deltalake_aws15get_primary_key(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ax, i64 noundef %i.fm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo)
          to label %bb.o unwind label %bb.bo, !noalias !3155

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3158
  invoke void @_RNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8buildersNtB5_23UpdateItemFluentBuilder7set_key(ptr noalias noundef nonnull sret([936 x i8]) align 8 captures(none) dereferenceable(936) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(936) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ay)
          to label %bb.q unwind label %bb.p, !noalias !3155

bb.p:                                             ; preds = %bb.o
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3158
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3195
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef range(i64 0, -9223372036854775808) 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit, !noalias !3155

.noexc.i:                                         ; preds = %bb.q
  %i.fq = load i64, ptr %i.aj, align 8, !range !651, !noalias !3195, !noundef !3
  %i.fr = trunc nuw i64 %i.fq to i1
  %i.fs = load i64, ptr %i.bt, align 8, !range !161, !noalias !3195, !noundef !3 ; 4 uses
  br i1 %i.fr, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %.noexc.i
  %i.ft = load i64, ptr %i.bu, align 8, !noalias !3195
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fs, i64 %i.ft) #29
          to label %.noexc28.i unwind label %.loopexit.split-lp, !noalias !3155

.noexc28.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc.i
  %i.fu = load ptr, ptr %i.bu, align 8, !noalias !3195, !nonnull !3, !noundef !3 ; 3 uses
  %i.fv = icmp samesign ugt i64 %i.fs, 33
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.fu, ptr noundef nonnull readonly align 1 dereferenceable(34) @50, i64 range(i64 0, -9223372036854775808) 34, i1 false), !noalias !3202
  call void @llvm.experimental.noalias.scope.decl(metadata !3203)
  call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ai, ptr noundef nonnull align 8 dereferenceable(936) %i.bc, i64 432, i1 false), !noalias !3210
  call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %i.fw = load i64, ptr %i.bv, align 8, !range !161, !alias.scope !3214, !noalias !3218, !noundef !3
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808
  br i1 %i.fx, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i33.i unwind label %bb.u, !noalias !3220

bb.u:                                             ; preds = %bb.t
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body.i.i29.i unwind label %bb.v, !noalias !3220

bb.v:                                             ; preds = %bb.u
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3220
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i33.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.aa unwind label %bb.w, !noalias !3220

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i33.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i29.i

.body.i.i29.i:                                    ; preds = %bb.w, %bb.u
  %eh.lpad-body.i.i30.i = phi { ptr, i32 } [ %i.ga, %bb.w ], [ %i.fy, %bb.u ]
  store i64 %i.fs, ptr %i.bv, align 8, !alias.scope !3221, !noalias !3222
  store ptr %i.fu, ptr %.sroa.6.0..sroa_idx78.i, align 8, !alias.scope !3221, !noalias !3222
  store i64 34, ptr %.sroa.7.0..sroa_idx80.i, align 8, !alias.scope !3221, !noalias !3222
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item18__update_item_input22UpdateItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ai) #30
          to label %.body.i31.i unwind label %bb.x, !noalias !3220

bb.x:                                             ; preds = %.body.i.i29.i
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3220
  unreachable

.body.i31.i:                                      ; preds = %.body.i.i29.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bc, i64 928 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !3229, !noalias !3210, !nonnull !3, !noundef !3
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !3230
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i

bb.y:                                             ; preds = %.body.i31.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gc) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i unwind label %bb.z, !noalias !3231

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i, %bb.y
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3231
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i: ; preds = %bb.y, %.body.i31.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bc, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.gh) #30
          to label %.body34.i unwind label %bb.z, !noalias !3231

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i33.i, %bb.s
  store i64 %i.fs, ptr %i.bv, align 8, !alias.scope !3221, !noalias !3222
  store ptr %i.fu, ptr %.sroa.6.0..sroa_idx78.i, align 8, !alias.scope !3221, !noalias !3222
  store i64 34, ptr %.sroa.7.0..sroa_idx80.i, align 8, !alias.scope !3221, !noalias !3222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.bc, ptr noundef nonnull align 8 dereferenceable(432) %i.ai, i64 432, i1 false), !noalias !3210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %i.bd, ptr noundef nonnull align 8 dereferenceable(936) %i.bc, i64 936, i1 false), !alias.scope !3232, !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3158
  call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3237
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef range(i64 0, -9223372036854775808) 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc38.i unwind label %.loopexit56, !noalias !3155

.noexc38.i:                                       ; preds = %bb.aa
  %i.gi = load i64, ptr %i.ah, align 8, !range !651, !noalias !3237, !noundef !3
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = load i64, ptr %i.bw, align 8, !range !161, !noalias !3237, !noundef !3 ; 3 uses
  br i1 %i.gj, label %bb.ab, label %bb.ad, !prof !8

bb.ab:                                            ; preds = %.noexc38.i
  %i.gl = load i64, ptr %i.bx, align 8, !noalias !3237
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gk, i64 %i.gl) #29
          to label %.noexc39.i unwind label %.loopexit.split-lp57, !noalias !3155

.noexc39.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %.loopexit56, %.loopexit.split-lp57, %bb.ae
  %.pn9.i = phi { ptr, i32 } [ %i.go, %bb.ae ], [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3158
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8builders23UpdateItemFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(936) %i.bd) #30
          to label %bb.bl unwind label %bb.be, !noalias !3155

.loopexit56:                                      ; preds = %bb.aa
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp57:                             ; preds = %bb.ab
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ad:                                            ; preds = %.noexc38.i
  %i.gm = load ptr, ptr %i.bx, align 8, !noalias !3237, !nonnull !3, !noundef !3 ; 2 uses
  %i.gn = icmp samesign ugt i64 %i.gk, 1
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3237
  store i16 25402, ptr %i.gm, align 1, !noalias !3242
  store i64 %i.gk, ptr %i.as, align 8, !alias.scope !3234, !noalias !3243
  store ptr %i.gm, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !alias.scope !3234, !noalias !3243
  store i64 2, ptr %.sroa.5.0..sroa_idx.i37.i, align 8, !alias.scope !3234, !noalias !3243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3158
  invoke void @_RINvCs9rVkZwOUgsI_13deltalake_aws11string_attrReEB2_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
          to label %bb.af unwind label %bb.ae, !noalias !3155

bb.ae:                                            ; preds = %bb.ad
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3158
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as) #30
          to label %bb.ac unwind label %bb.be, !noalias !3155

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 56, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3158
  call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3247
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, i64 noundef range(i64 0, -9223372036854775808) 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %.loopexit61, !noalias !3155

.noexc43.i:                                       ; preds = %bb.af
  %i.gp = load i64, ptr %i.ag, align 8, !range !651, !noalias !3247, !noundef !3
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = load i64, ptr %i.bz, align 8, !range !161, !noalias !3247, !noundef !3 ; 3 uses
  br i1 %i.gq, label %bb.ag, label %bb.ai, !prof !8

bb.ag:                                            ; preds = %.noexc43.i
  %i.gs = load i64, ptr %i.ca, align 8, !noalias !3247
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gr, i64 %i.gs) #29
          to label %.noexc44.i unwind label %.loopexit.split-lp62, !noalias !3155

.noexc44.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %.loopexit61, %.loopexit.split-lp62, %bb.aj
  %.pn11.i = phi { ptr, i32 } [ %i.gx, %bb.aj ], [ %lpad.loopexit63, %.loopexit61 ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3158
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.at) #30
          to label %bb.bj unwind label %bb.be, !noalias !3155

.loopexit61:                                      ; preds = %bb.af
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp62:                             ; preds = %bb.ag
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ai:                                            ; preds = %.noexc43.i
  %i.gt = load ptr, ptr %i.ca, align 8, !noalias !3247, !nonnull !3, !noundef !3 ; 2 uses
  %i.gu = icmp samesign ugt i64 %i.gr, 1
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3247
  store i16 25914, ptr %i.gt, align 1, !noalias !3252
  store i64 %i.gr, ptr %i.ap, align 8, !alias.scope !3244, !noalias !3253
  store ptr %i.gt, ptr %.sroa.4.0..sroa_idx.i41.i, align 8, !alias.scope !3244, !noalias !3253
  store i64 2, ptr %.sroa.5.0..sroa_idx.i42.i, align 8, !alias.scope !3244, !noalias !3253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3158
  %i.gv = load ptr, ptr %i.cb, align 8, !noalias !3158, !nonnull !3, !align !4, !noundef !3
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !3155, !noundef !3
  invoke void @_RINvCs9rVkZwOUgsI_13deltalake_aws8num_attryEB2_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ao, i64 noundef %i.gw)
          to label %bb.ak unwind label %bb.aj, !noalias !3155

bb.aj:                                            ; preds = %bb.ai
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3158
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap) #30
          to label %bb.ah unwind label %bb.be, !noalias !3155

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3158
  call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3260
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef range(i64 0, -9223372036854775808) 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc46.i unwind label %.loopexit66, !noalias !3155

.noexc46.i:                                       ; preds = %bb.ak
  %i.gy = load i64, ptr %i.af, align 8, !range !651, !noalias !3260, !noundef !3
  %i.gz = trunc nuw i64 %i.gy to i1
  %i.ha = load i64, ptr %i.cd, align 8, !range !161, !noalias !3260, !noundef !3 ; 3 uses
  br i1 %i.gz, label %bb.al, label %bb.an, !prof !8

bb.al:                                            ; preds = %.noexc46.i
  %i.hb = load i64, ptr %i.ce, align 8, !noalias !3260
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ha, i64 %i.hb) #29
          to label %.noexc47.i unwind label %.loopexit.split-lp67, !noalias !3155

.noexc47.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %.loopexit66, %.loopexit.split-lp67, %bb.ao
  %.pn13.i = phi { ptr, i32 } [ %i.he, %bb.ao ], [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.aq) #30
          to label %bb.bf unwind label %bb.be, !noalias !3155

.loopexit66:                                      ; preds = %bb.ak
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp67:                             ; preds = %bb.al
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.an:                                            ; preds = %.noexc46.i
  %i.hc = load ptr, ptr %i.ce, align 8, !noalias !3260, !nonnull !3, !noundef !3 ; 2 uses
  %i.hd = icmp samesign ugt i64 %i.ha, 1
  call void @llvm.assume(i1 %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3260
  store i16 26170, ptr %i.hc, align 1, !noalias !3266
  store i64 %i.ha, ptr %i.am, align 8, !alias.scope !3267, !noalias !3268
  store ptr %i.hc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3267, !noalias !3268
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3267, !noalias !3268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3158
  invoke void @_RINvCs9rVkZwOUgsI_13deltalake_aws11string_attrReEB2_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
          to label %bb.ap unwind label %bb.ao, !noalias !3155

bb.ao:                                            ; preds = %bb.an
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3158
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #30
          to label %bb.am unwind label %bb.be, !noalias !3155

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(80) %i.at, i64 80, i1 false), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(80) %i.an, i64 80, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3158
  invoke void @_RNvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtCsbvkFyIu7lgC_4core7convert4FromATB13_B1F_Ej3_E4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.au)
          to label %bb.ar unwind label %bb.aq, !noalias !3155

bb.aq:                                            ; preds = %bb.ap
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3158
  invoke void @_RNvMs0_NtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8buildersNtB5_23UpdateItemFluentBuilder31set_expression_attribute_values(ptr noalias noundef nonnull sret([936 x i8]) align 8 captures(none) dereferenceable(936) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(936) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aw)
          to label %bb.at unwind label %bb.as, !noalias !3155

bb.as:                                            ; preds = %bb.ar
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3158
  br label %bb.bh

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ae, ptr noundef nonnull align 8 dereferenceable(936) %i.be, i64 432, i1 false), !noalias !3274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3275
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -9223372036854775808) 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit71, !noalias !3285

.noexc.i.i:                                       ; preds = %bb.at
  %i.hh = load i64, ptr %i.ad, align 8, !range !651, !noalias !3275, !noundef !3
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = load i64, ptr %i.ci, align 8, !range !161, !noalias !3275, !noundef !3 ; 4 uses
  br i1 %i.hi, label %bb.au, label %bb.av, !prof !8

bb.au:                                            ; preds = %.noexc.i.i
  %i.hk = load i64, ptr %i.cj, align 8, !noalias !3275
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hj, i64 %i.hk) #29
          to label %.noexc2.i.i unwind label %.loopexit.split-lp72, !noalias !3285

.noexc2.i.i:                                      ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %.noexc.i.i
  %i.hl = load ptr, ptr %i.cj, align 8, !noalias !3275, !nonnull !3, !noundef !3 ; 3 uses
  %i.hm = icmp samesign ugt i64 %i.hj, 12
  call void @llvm.assume(i1 %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.hl, ptr noundef nonnull readonly align 1 dereferenceable(13) @52, i64 range(i64 0, -9223372036854775808) 13, i1 false), !noalias !3286
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.hn = load i64, ptr %i.ck, align 8, !range !161, !alias.scope !3290, !noalias !3294, !noundef !3
  %i.ho = icmp eq i64 %i.hn, -9223372036854775808
  br i1 %i.ho, label %.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i53.i unwind label %bb.ax, !noalias !3296

bb.ax:                                            ; preds = %bb.aw
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %.body.i.i50.i unwind label %bb.ay, !noalias !3296

bb.ay:                                            ; preds = %bb.ax
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3296
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i53.i: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %.thread.i unwind label %bb.az, !noalias !3296

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i53.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i50.i

.body.i.i50.i:                                    ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i.i51.i = phi { ptr, i32 } [ %i.hr, %bb.az ], [ %i.hp, %bb.ax ]
  store i64 %i.hj, ptr %i.ck, align 8, !alias.scope !3297, !noalias !3298
  store ptr %i.hl, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !3297, !noalias !3298
  store i64 13, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !alias.scope !3297, !noalias !3298
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item18__update_item_input22UpdateItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(432) %i.ae) #30
          to label %.body.i48.i unwind label %bb.ba, !noalias !3296

bb.ba:                                            ; preds = %.body.i.i50.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3296
  unreachable

.body.i48.i:                                      ; preds = %bb.bc, %.body.i.i50.i
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %lpad.phi75, %bb.bc ], [ %eh.lpad-body.i.i51.i, %.body.i.i50.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.be, i64 928 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !3305, !noalias !3274, !nonnull !3, !noundef !3
  %i.hv = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !3306
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i

bb.bb:                                            ; preds = %.body.i48.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ht) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i unwind label %bb.bd, !noalias !3307

.loopexit71:                                      ; preds = %bb.at
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp72:                             ; preds = %bb.au
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp72, %.loopexit71
  %lpad.phi75 = phi { ptr, i32 } [ %lpad.loopexit73, %.loopexit71 ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp72 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item18__update_item_input22UpdateItemInputBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(432) %i.ae) #30
          to label %.body.i48.i unwind label %bb.bd, !noalias !3285

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i, %bb.bc, %bb.bb
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i: ; preds = %bb.bb, %.body.i48.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.be, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(496) %i.hy) #30
          to label %.body54.i unwind label %bb.bd, !noalias !3307

.body54.i:                                        ; preds = %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i
  %.pn19.i = phi { ptr, i32 } [ %.pn17157.i, %bb.bh ], [ %eh.lpad-body8.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i49.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  br label %.body66.i

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i53.i, %bb.av
  store i64 %i.hj, ptr %i.ck, align 8, !alias.scope !3297, !noalias !3298
  store ptr %i.hl, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !3297, !noalias !3298
  store i64 13, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !alias.scope !3297, !noalias !3298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.be, ptr noundef nonnull align 8 dereferenceable(432) %i.ae, i64 432, i1 false), !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %.sroa.074.i, ptr noundef nonnull align 8 dereferenceable(936) %i.be, i64 936, i1 false), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7592) %i.bl, ptr noundef nonnull align 8 dereferenceable(7592) %.sroa.074.i, i64 7592, i1 false), !noalias !3158
  store i8 0, ptr %.phi.trans.insert.i, align 8, !noalias !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1084.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1186.i.i)
  br label %bb.bv

bb.be:                                            ; preds = %.body62.i, %bb.bq, %bb.bo, %bb.bm, %bb.bj, %bb.bi, %bb.bf, %bb.ao, %bb.am, %bb.aj, %bb.ah, %bb.ae, %bb.ac
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !3155
  unreachable

bb.bf:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3158
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.at) #30
          to label %bb.bg unwind label %bb.be, !noalias !3155

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3158
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.as
  %.pn17157.i = phi { ptr, i32 } [ %.pn15.i, %bb.bi ], [ %i.hg, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  br label %.body54.i

bb.bi:                                            ; preds = %bb.bg, %bb.aq
  %.pn15.i = phi { ptr, i32 } [ %i.hf, %bb.aq ], [ %.pn13.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3158
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8builders23UpdateItemFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(936) %i.bd) #30
          to label %bb.bh unwind label %bb.be, !noalias !3155

common.resume:                                    ; preds = %bb.gw, %bb.hm, %.body66.i
  %common.resume.op = phi { ptr, i32 } [ %.pn25.i, %.body66.i ], [ %i.nu, %bb.hm ], [ %.pn, %bb.gw ]
  resume { ptr, i32 } %common.resume.op

.body66.i:                                        ; preds = %bb.go, %bb.gk, %bb.gc, %.body62.i, %bb.bn, %.body34.i, %bb.bl, %bb.bk, %.body54.i
  %.pn25.i = phi { ptr, i32 } [ %.pn6.pn.i, %bb.bn ], [ %eh.lpad-body63.i, %.body62.i ], [ %.pn19.i, %.body54.i ], [ %.pn11.i, %bb.bk ], [ %.pn9.i, %bb.bl ], [ %eh.lpad-body35152.i, %.body34.i ], [ %i.mn, %bb.gc ], [ %i.mv, %bb.go ], [ %.pn2.i.i, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.074.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3158
  store i8 2, ptr %i.bk, align 8, !noalias !3158
  br label %common.resume

bb.bj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3158
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8builders23UpdateItemFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(936) %i.bd) #30
          to label %bb.bk unwind label %bb.be, !noalias !3155

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  br label %.body66.i

bb.bl:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  br label %.body66.i

.body34.i:                                        ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i
  %eh.lpad-body35152.i = phi { ptr, i32 } [ %lpad.phi, %bb.bm ], [ %eh.lpad-body.i.i30.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit.i32.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  br label %.body66.i

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item8builders23UpdateItemFluentBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(936) %i.bc) #30
          to label %.body34.i unwind label %bb.be, !noalias !3155

bb.bn:                                            ; preds = %bb.bp, %bb.bo, %bb.p
  %.pn6.pn.i = phi { ptr, i32 } [ %i.ia, %bb.bo ], [ %i.fp, %bb.p ], [ %.pn.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3158
  br label %.body66.i

bb.bo:                                            ; preds = %bb.n
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3158
end_hunk_2
