Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.01?download=true
inline.NumInlined: 1838
inline.NumDeleted: 674
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !2593
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2593
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 1610612768, ptr %i.gz, align 8, !noalias !2593
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !2593
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !2593
  store ptr %i.n, ptr %i.m, align 8, !noalias !2593
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @166, ptr %i.ha, align 8, !noalias !2593
  %i.hb = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 4 uses
  %i.hc = inttoptr i64 %.sroa.6.sroa.0.0.copyload.i to ptr ; 7 uses
  %i.hd = invoke noundef zeroext i1 @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ck unwind label %bb.cj, !noalias !2600

bb.cj:                                            ; preds = %bb.cl, %bb.ci
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #31
          to label %.body.i.i.i unwind label %bb.cm, !noalias !2600

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.hd, label %bb.cl, label %bb.cn, !prof !1778

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #35
          to label %.noexc.i.i.i.i unwind label %bb.cj, !noalias !2600

.noexc.i.i.i.i:                                   ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cj
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2600
  unreachable

.body.i.i.i:                                      ; preds = %bb.cj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECs9rVkZwOUgsI_13deltalake_aws(ptr %i.hb, ptr %i.hc) #31
          to label %.body28.i unwind label %bb.cu, !noalias !2601

bb.cn:                                            ; preds = %bb.ck
  %.sroa.4.i.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !2602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !2602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2593
  %i.hg = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.hg, label %bb.gw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hc) ]
  %i.hh = load ptr, ptr %i.hc, align 8, !invariant.load !3, !noalias !2601 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void %i.hh(ptr noundef nonnull %i.hb)
          to label %bb.cq unwind label %bb.cs, !noalias !2601

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !range !4, !invariant.load !3, !noalias !2601 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.gw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !range !5, !invariant.load !3, !noalias !2601
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef range(i64 1, 0) %i.hj, i64 noundef range(i64 1, 536870913) %i.hm) #29, !noalias !2601
  br label %bb.gw

bb.cs:                                            ; preds = %bb.cp
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !range !4, !invariant.load !3, !noalias !2601 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.body28.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !range !5, !invariant.load !3, !noalias !2601
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef range(i64 1, 0) %i.hp, i64 noundef range(i64 1, 536870913) %i.hs) #29, !noalias !2601
  br label %.body28.i

bb.cu:                                            ; preds = %.body.i.i.i
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2601
  unreachable

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.11.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.3.i, i64 16, i1 false), !noalias !2567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.13.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.i, i64 64, i1 false), !noalias !2567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.3.i, i64 16, i1 false), !noalias !2567
  %.sroa.9.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.i, i64 64, i1 false), !noalias !2567
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %i.hv = trunc nuw i64 %i.gv to i1
  br i1 %i.hv, label %bb.cw, label %bb.ga

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2606
  store i64 %.sroa.5.0.copyload.i, ptr %i.l, align 16, !noalias !2609
  %.sroa.755.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.755.16..sroa_idx.i, align 8, !noalias !2609
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9.i, i64 80, i1 false), !noalias !2609
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2616
  store i64 0, ptr %i.g, align 8, !noalias !2616
  %.sroa.42.0..sroa_idx.i.i.i20.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i20.i, align 8, !noalias !2616
  %.sroa.53.0..sroa_idx.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i21.i, align 8, !noalias !2616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2616
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.hw, align 8, !noalias !2616
  %.sroa.4.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i22.i, align 4, !noalias !2616
  %.sroa.5.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i23.i, align 2, !noalias !2616
  store ptr %i.g, ptr %i.f, align 8, !noalias !2616
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @166, ptr %i.hx, align 8, !noalias !2616
  %i.hy = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.cy unwind label %bb.cx, !noalias !2620

bb.cx:                                            ; preds = %bb.cz, %bb.cw
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %.body.i.i24.i unwind label %bb.da, !noalias !2621

bb.cy:                                            ; preds = %bb.cw
  br i1 %i.hy, label %bb.cz, label %bb.dc, !prof !1778

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #35
          to label %.noexc.i.i.i27.i unwind label %bb.cx, !noalias !2621

.noexc.i.i.i27.i:                                 ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cx
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2621
  unreachable

.body.i.i24.i:                                    ; preds = %bb.fv, %bb.fq, %bb.fo, %.body24.i.i.i, %bb.db, %bb.cx
  %.pn6.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body24.i.i.i ], [ %i.hz, %bb.cx ], [ %i.ug, %bb.fq ], [ %i.ub, %bb.fo ], [ %i.ib, %bb.db ], [ %i.ui, %bb.fv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.l) #31
          to label %.body28.i unwind label %bb.fx, !noalias !2622

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i48.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i34.i.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i24.i

bb.dc:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2616
  %i.ic = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !2613, !nonnull !3, !noundef !3 ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !noalias !2613, !noundef !3 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2613
  store ptr %i.hu, ptr %i.h, align 8, !noalias !2613
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !2613
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @33, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.dd, !noalias !2622

.body24.i.i.i:                                    ; preds = %bb.fm, %bb.fk, %.loopexit.split-lp.i.i.i, %bb.dd
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.tx, %bb.fk ], [ %i.ig, %bb.dd ], [ %i.tz, %bb.fm ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #31
          to label %.body.i.i24.i unwind label %bb.fx, !noalias !2622

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i28.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.dc
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2613
  %i.ih = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !2613, !nonnull !3, !noundef !3 ; 9 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !2613, !noundef !3 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.thread.i.i.i, label %bb.de

bb.de:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.im = icmp ult i64 %i.ik, %i.if
  br i1 %i.im, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.in = icmp eq i64 %i.ik, 1
  br i1 %i.in, label %bb.di, label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.io = icmp eq i64 %i.ik, %i.if
  br i1 %i.io, label %bb.fi, label %.thread55.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.ip = icmp ult i64 %i.ik, 33
  br i1 %i.ip, label %bb.et, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.di:                                            ; preds = %bb.df
  %i.iq = load i8, ptr %i.ii, align 1, !alias.scope !2624, !noalias !2629, !noundef !3 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.if, 16
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.is = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.iq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef range(i64 0, -9223372036854775808) %i.if)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2622

.noexc.i.i.i:                                     ; preds = %bb.dj
  %i.it = extractvalue { i64, i64 } %i.is, 0
  %i.iu = icmp eq i64 %i.it, 1
  %i.iv = zext i1 %i.iu to i8
  br label %bb.fj

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.di, %bb.dk
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.iz, %bb.dk ], [ 0, %bb.di ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.01.05.i.i.i.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !2630, !noalias !2633, !noundef !3
  %i.iy = icmp eq i8 %i.ix, %i.iq
  br i1 %i.iy, label %.thread.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.iz = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.iz, %i.if
  br i1 %exitcond.not.i.i.i.i.i, label %.thread55.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %bb.ev, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2634
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.if, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ik)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2622

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  %i.ja = load i64, ptr %i.e, align 8, !range !65, !alias.scope !2635, !noalias !2638, !noundef !3
  %i.jb = trunc nuw i64 %i.ja to i1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.jb, label %bb.du, label %.preheader.i4.i.i.i.i

.preheader.i4.i.i.i.i:                            ; preds = %.noexc9.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.je = load i8, ptr %i.jd, align 2, !range !703, !alias.scope !2640, !noalias !2643, !noundef !3
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph.i5.i.i.i.i

.lr.ph.i5.i.i.i.i:                                ; preds = %.preheader.i4.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.jc, align 8, !alias.scope !2635, !noalias !2638 ; 12 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !2640, !noalias !2643, !nonnull !3, !noundef !3 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !2640, !noalias !2643, !noundef !3 ; 14 uses
  %.promoted26.i.i.i.i.i = load i8, ptr %i.jg, align 8, !alias.scope !2640, !noalias !2643 ; 2 uses
  %i.jl = trunc nuw i8 %.promoted26.i.i.i.i.i to i1
  %i.jm = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.jm, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.dm, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.dl
  %i.jn = icmp eq i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %i.jn, label %bb.dn, label %.loopexit.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.promoted.i.i.i.i.i
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !2645, !noalias !2648, !noundef !3
  %i.jq = icmp sgt i8 %i.jp, -65
  br i1 %i.jq, label %bb.dn, label %.loopexit.i.i.i.i

bb.dn:                                            ; preds = %bb.dm, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i5.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.js = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %i.js, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jt = load i8, ptr %i.jr, align 1, !noalias !2650, !noundef !3 ; 5 uses
  %i.ju = icmp sgt i8 %i.jt, -1
  br i1 %i.ju, label %bb.dp, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.do
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jw = and i8 %i.jt, 31
  %i.jx = zext nneg i8 %i.jw to i32               ; 3 uses
  %i.jy = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.jz = icmp samesign ne i64 %i.jy, %i.jk
  call void @llvm.assume(i1 %i.jz)
  %i.ka = load i8, ptr %i.jv, align 1, !noalias !2650, !noundef !3
  %i.kb = shl nuw nsw i32 %i.jx, 6
  %i.kc = and i8 %i.ka, 63
  %i.kd = zext nneg i8 %i.kc to i32               ; 2 uses
  %i.ke = or disjoint i32 %i.kb, %i.kd
  %i.kf = icmp samesign ugt i8 %i.jt, -33
  br i1 %i.kf, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i, label %bb.dq

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.kh = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.ki = icmp samesign ne i64 %i.kh, %i.jk
  call void @llvm.assume(i1 %i.ki)
  %i.kj = load i8, ptr %i.kg, align 1, !noalias !2650, !noundef !3
  %i.kk = shl nuw nsw i32 %i.kd, 6
  %i.kl = and i8 %i.kj, 63
  %i.km = zext nneg i8 %i.kl to i32
  %i.kn = or disjoint i32 %i.kk, %i.km            ; 2 uses
  %i.ko = shl nuw nsw i32 %i.jx, 12
  %i.kp = or disjoint i32 %i.kn, %i.ko
  %i.kq = icmp samesign ugt i8 %i.jt, -17
  br i1 %i.kq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i, label %bb.dq

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 3
  %i.ks = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.kt = icmp samesign ne i64 %i.ks, %i.jk
  call void @llvm.assume(i1 %i.kt)
  %i.ku = load i8, ptr %i.kr, align 1, !noalias !2650, !noundef !3
  %i.kv = shl nuw nsw i32 %i.jx, 18
  %i.kw = and i32 %i.kv, 1835008
  %i.kx = shl nuw nsw i32 %i.kn, 6
  %i.ky = and i8 %i.ku, 63
  %i.kz = zext nneg i8 %i.ky to i32
  %i.la = or disjoint i32 %i.kx, %i.kz
  %i.lb = or disjoint i32 %i.la, %i.kw
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lc = zext nneg i8 %i.jt to i32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.kp, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i ], [ %i.lb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i ], [ %i.ke, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i ], [ %i.lc, %bb.dp ] ; 4 uses
  %i.ld = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ld)
  br i1 %i.jl, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.le = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.le, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.lf, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.lg, i64 3, i64 4
  br label %bb.dv

bb.du:                                            ; preds = %.noexc9.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.li = load i64, ptr %i.lh, align 8, !alias.scope !2635, !noalias !2638, !noundef !3 ; 2 uses
  %i.lj = icmp eq i64 %i.li, -1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !2635, !noalias !2638, !nonnull !3, !noundef !3 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ln = load i64, ptr %i.lm, align 8, !alias.scope !2635, !noalias !2638, !noundef !3 ; 14 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !2635, !noalias !2638, !nonnull !3, !noundef !3 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.lr = load i64, ptr %i.lq, align 8, !alias.scope !2635, !noalias !2638, !noundef !3 ; 12 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.lt = add nsw i64 %i.lr, -1                   ; 4 uses
  br i1 %i.lj, label %bb.ea, label %bb.ei

bb.dv:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.ds ], [ %..i.i.peel.i.i.i.i, %bb.dt ], [ 1, %bb.dr ]
  %i.lu = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not.i.i.i.i.i.i26.i = icmp ult i64 %i.lu, %i.jk
  br i1 %.not.i.i.i.i.i.i26.i, label %bb.dx, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.dw
  %i.lw = icmp eq i64 %i.lu, %i.jk
  br i1 %i.lw, label %bb.dy, label %.loopexit.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lu
  %i.ly = load i8, ptr %i.lx, align 1, !alias.scope !2645, !noalias !2654, !noundef !3
  %i.lz = icmp sgt i8 %i.ly, -65
  br i1 %i.lz, label %bb.dy, label %.loopexit.i.i.i.i

bb.dy:                                            ; preds = %bb.dx, %.split.i.i.i.i.i.i.i, %bb.dv
  %i.ma = icmp samesign eq i64 %i.lu, %i.jk
  br i1 %i.ma, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lu
  %i.mc = load i8, ptr %i.mb, align 1, !noalias !2655, !noundef !3 ; 3 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i: ; preds = %bb.dz
  %i.me = add nuw nsw i64 %i.lu, 1
  %i.mf = icmp samesign ne i64 %i.me, %i.jk
  call void @llvm.assume(i1 %i.mf)
  %i.mg = icmp samesign ugt i8 %i.mc, -33
  br i1 %i.mg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i
  %i.mh = add nuw nsw i64 %i.lu, 2
  %i.mi = icmp samesign ne i64 %i.mh, %i.jk
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp samesign ugt i8 %i.mc, -17
  br i1 %i.mj, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i
  %i.mk = add nuw nsw i64 %i.lu, 3
  %i.ml = icmp samesign ne i64 %i.mk, %i.jk
  call void @llvm.assume(i1 %i.ml)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dx, %.split.i.i.i.i.i.i.i, %bb.dm, %.split.i.i.i.peel.i.i.i.i
  %.lcssa150.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.dm ], [ %i.lu, %.split.i.i.i.i.i.i.i ], [ %i.lu, %bb.dx ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %i.jk, i64 noundef %.lcssa150.i.i.i.i, i64 noundef %i.jk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #34
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2622

.noexc10.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  unreachable

bb.ea:                                            ; preds = %bb.du
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
end_hunk_0
begin_hunk_1_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.ec, label %.preheader96.i.i.i.i.preheader

.preheader96.i.i.i.i.preheader:                   ; preds = %bb.eb
  br i1 %exitcond.not.i25.i.i.i.i368.not, label %.lr.ph370, label %.preheader.i.preheader.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.nd = add i64 %i.mu, %i.lr
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.split98.us.i.i.i, %bb.ec
  %i.ne = phi i64 [ %i.nx, %bb.eh ], [ %i.nd, %bb.ec ], [ %i.np, %.split98.us.i.i.i ] ; 2 uses
  %i.nf = add i64 %i.ne, %i.lt                    ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.ln
  br i1 %i.ng, label %bb.eb, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader96.i.i.i.i:                             ; preds = %bb.ef
  %i.nh = add i64 %.sroa.02.0.i24.i.i.i.i369, 1   ; 2 uses
  %exitcond.not.i25.i.i.i.i = icmp eq i64 %i.nh, %umax49.i23.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i, label %.preheader.i.preheader.i.i.i, label %.lr.ph370

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader96.i.i.i.i, %.preheader96.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i371, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph373

.preheader.i.us.i.i.i:                            ; preds = %bb.ee
  %.not.i.us.i.i.i = icmp eq i64 %i.ni, 0
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph373

.lr.ph373:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i28.i.us.i.i.i372 = phi i64 [ %i.ni, %.preheader.i.us.i.i.i ], [ %.fr99.i.i.i, %.preheader.i.us.i.i.i.preheader ]
  %i.ni = add i64 %.sroa.2.0.i28.i.us.i.i.i372, -1 ; 4 uses
  %i.nj = add i64 %i.ni, %i.mu                    ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %i.ln
  br i1 %i.nk, label %bb.ee, label %.invoke.i.i.i

bb.ee:                                            ; preds = %.lr.ph373
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ni
  %i.nm = load i8, ptr %i.nl, align 1, !alias.scope !2661, !noalias !2666, !noundef !3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.nj
  %i.no = load i8, ptr %i.nn, align 1, !alias.scope !2659, !noalias !2665, !noundef !3
  %.not.i29.i.us.i.i.i = icmp eq i8 %i.nm, %i.no
  br i1 %.not.i29.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %.split98.us.i.i.i

.split98.us.i.i.i:                                ; preds = %bb.ee
  %i.np = add i64 %i.mu, %i.ms
  br label %bb.ed

.lr.ph370:                                        ; preds = %.preheader96.i.i.i.i.preheader, %.preheader96.i.i.i.i
  %.sroa.02.0.i24.i.i.i.i369 = phi i64 [ %i.nh, %.preheader96.i.i.i.i ], [ %.fr99.i.i.i, %.preheader96.i.i.i.i.preheader ] ; 4 uses
  %i.nq = add i64 %.sroa.02.0.i24.i.i.i.i369, %i.mu ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.ln
  br i1 %i.nr, label %bb.ef, label %bb.eg

.preheader.i.i.i.i:                               ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i371, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

bb.ef:                                            ; preds = %.lr.ph370
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.02.0.i24.i.i.i.i369
  %i.nt = load i8, ptr %i.ns, align 1, !alias.scope !2661, !noalias !2666, !noundef !3
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.nq
  %i.nv = load i8, ptr %i.nu, align 1, !alias.scope !2659, !noalias !2665, !noundef !3
  %.not21.i27.i.i.i.i = icmp eq i8 %i.nt, %i.nv
  br i1 %.not21.i27.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph370
  %i.nw = add i64 %i.mu, %.fr99.i.i.i
  %umax.i26.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ln, i64 %i.nw)
  br label %.invoke.i.i.i

bb.eh:                                            ; preds = %bb.ef
  %.reass235.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.mu, %invariant.op436
  %i.nx = add i64 %.reass235.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i24.i.i.i.i369
  br label %bb.ed

bb.ei:                                            ; preds = %bb.du
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  %.promoted.i11.i.i.i.i = load i64, ptr %i.ls, align 8, !alias.scope !2667, !noalias !2674 ; 2 uses
  %i.ny = add i64 %.promoted.i11.i.i.i.i, %i.lt   ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.ln
  br i1 %i.nz, label %.lr.ph.i14.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %bb.ei
  %i.oa = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !2667, !noalias !2674, !noundef !3
  %i.oc = load i64, ptr %i.jc, align 8, !alias.scope !2667, !noalias !2674 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !alias.scope !2667, !noalias !2674 ; 2 uses
  %i.of = sub i64 %i.lr, %i.oe
  %invariant.op = sub i64 1, %i.oc
  br label %bb.ej

bb.ej:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
  %i.og = phi i64 [ %.promoted.i11.i.i.i.i, %.lr.ph.i14.i.i.i.i ], [ %.ph71.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.oh = phi i64 [ %i.li, %.lr.ph.i14.i.i.i.i ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 3 uses
  %i.oi = phi i64 [ %i.ny, %.lr.ph.i14.i.i.i.i ], [ %i.or, %.sink.split.i.i.i.i.i ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !alias.scope !2670, !noalias !2676, !noundef !3
  %i.ol = and i8 %i.ok, 63
  %i.om = zext nneg i8 %i.ol to i64
  %i.on = shl nuw i64 1, %i.om
  %i.oo = and i64 %i.on, %i.ob
  %i.op = icmp eq i64 %i.oo, 0
  br i1 %i.op, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.oq = add i64 %i.og, %i.lr
  br label %.sink.split.i.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oh, i64 %i.oc) ; 4 uses
  %umax49.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.lr)
  %exitcond.not.i15.i.i.i.i363.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %i.lr
  br i1 %exitcond.not.i15.i.i.i.i363.not, label %.lr.ph365, label %.preheader35.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %bb.es, %bb.ep, %bb.ek
  %.sink.i.i.i.i.i = phi i64 [ %i.of, %bb.ep ], [ 0, %bb.es ], [ 0, %bb.ek ]
  %.ph71.i.i.i.i.i = phi i64 [ %i.pg, %bb.ep ], [ %i.pm, %bb.es ], [ %i.oq, %bb.ek ] ; 2 uses
  %i.or = add i64 %.ph71.i.i.i.i.i, %i.lt         ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.ln
  br i1 %i.os, label %bb.ej, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

bb.em:                                            ; preds = %bb.eq
  %i.ot = add i64 %.sroa.02.0.i.i.i.i.i364, 1     ; 2 uses
  %exitcond.not.i15.i.i.i.i = icmp eq i64 %i.ot, %umax49.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i, label %.preheader35.i.i.i.i.preheader, label %.lr.ph365

.preheader35.i.i.i.i.preheader:                   ; preds = %bb.em, %bb.el
  %i.ou = icmp ult i64 %i.oh, %i.oc
  br i1 %i.ou, label %.lr.ph367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph365:                                        ; preds = %bb.el, %bb.em
  %.sroa.02.0.i.i.i.i.i364 = phi i64 [ %i.ot, %bb.em ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.el ] ; 4 uses
  %i.ov = add i64 %.sroa.02.0.i.i.i.i.i364, %i.og ; 2 uses
  %i.ow = icmp ult i64 %i.ov, %i.ln
  br i1 %i.ow, label %bb.eq, label %bb.er

.preheader35.i.i.i.i:                             ; preds = %bb.eo
  %i.ox = icmp ult i64 %i.oh, %i.oy
  br i1 %i.ox, label %.lr.ph367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph367:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.2.0.i.i.i.i.i366 = phi i64 [ %i.oy, %.preheader35.i.i.i.i ], [ %i.oc, %.preheader35.i.i.i.i.preheader ]
  %i.oy = add i64 %.sroa.2.0.i.i.i.i.i366, -1     ; 6 uses
  %i.oz = icmp ult i64 %i.oy, %i.lr
  br i1 %i.oz, label %bb.en, label %.invoke.i.i.i

bb.en:                                            ; preds = %.lr.ph367
  %i.pa = add i64 %i.oy, %i.og                    ; 3 uses
  %i.pb = icmp ult i64 %i.pa, %i.ln
  br i1 %i.pb, label %bb.eo, label %.invoke.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.oy
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !2672, !noalias !2677, !noundef !3
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.pa
  %i.pf = load i8, ptr %i.pe, align 1, !alias.scope !2670, !noalias !2676, !noundef !3
  %.not.i16.i.i.i.i = icmp eq i8 %i.pd, %i.pf
  br i1 %.not.i16.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pg = add i64 %i.og, %i.oe
  br label %.sink.split.i.i.i.i.i

bb.eq:                                            ; preds = %.lr.ph365
  %i.ph = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.02.0.i.i.i.i.i364
  %i.pi = load i8, ptr %i.ph, align 1, !alias.scope !2672, !noalias !2677, !noundef !3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ov
  %i.pk = load i8, ptr %i.pj, align 1, !alias.scope !2670, !noalias !2676, !noundef !3
  %.not21.i.i.i.i.i = icmp eq i8 %i.pi, %i.pk
  br i1 %.not21.i.i.i.i.i, label %bb.em, label %bb.es

bb.er:                                            ; preds = %.lr.ph365
  %i.pl = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.og
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ln, i64 %i.pl)
  br label %.invoke.i.i.i

bb.es:                                            ; preds = %bb.eq
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.og, %invariant.op
  %i.pm = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i364
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i, %bb.ed, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, %bb.dz, %bb.ei, %.preheader.i.i.i.i, %bb.ea, %bb.dy, %bb.dq, %bb.dn, %.preheader.i4.i.i.i.i
  %.sroa.0.031.i.i.i.i = phi i8 [ 1, %.preheader.i.us.i.i.i ], [ 0, %bb.ea ], [ 0, %.preheader.i4.i.i.i.i ], [ 1, %bb.dy ], [ 1, %.preheader35.i.i.i.i ], [ 1, %bb.dq ], [ %.promoted26.i.i.i.i.i, %bb.dn ], [ 0, %bb.ei ], [ 1, %.preheader.i.us.i.i.i.preheader ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i ], [ 1, %bb.dz ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i ], [ 0, %bb.ed ], [ 0, %.sink.split.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2634
  br label %bb.fj

bb.et:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.pn = load i8, ptr %i.ii, align 1, !alias.scope !2683, !noalias !2684, !noundef !3 ; 3 uses
  %i.po = add nsw i64 %i.ik, -1                   ; 2 uses
  %i.pp = icmp eq i64 %i.ik, 2
  br i1 %i.pp, label %.thread.i.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pq = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.ik, i64 4)
  br label %.lr.ph

bb.ev:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.pr = icmp ult i64 %i.pq, %i.pt
  br i1 %i.pr, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.eu, %bb.ev
  %i.ps = phi i64 [ %i.ik, %bb.eu ], [ %i.pt, %bb.ev ]
  %i.pt = add nsw i64 %i.ps, -1                   ; 6 uses
  %i.pu = icmp ult i64 %i.pt, %i.ik
  br i1 %i.pu, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %bb.en, %.lr.ph367, %.lr.ph373, %bb.er, %bb.eg, %.preheader.i.i.i.i
  %i.pv = phi i64 [ %i.mt, %.preheader.i.i.i.i ], [ %umax.i.i.i.i.i, %bb.er ], [ %i.pa, %bb.en ], [ %i.nj, %.lr.ph373 ], [ %umax.i26.i.i.i.i, %bb.eg ], [ %i.oy, %.lr.ph367 ], [ %i.pt, %.lr.ph ]
  %i.pw = phi i64 [ %i.lr, %.preheader.i.i.i.i ], [ %i.ln, %bb.er ], [ %i.ln, %bb.en ], [ %i.ln, %.lr.ph373 ], [ %i.ln, %bb.eg ], [ %i.lr, %.lr.ph367 ], [ %i.ik, %.lr.ph ]
  %i.px = phi ptr [ @6, %.preheader.i.i.i.i ], [ @8, %bb.er ], [ @7, %bb.en ], [ @7, %.lr.ph373 ], [ @8, %bb.eg ], [ @6, %.lr.ph367 ], [ @74, %.lr.ph ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.pv, i64 noundef range(i64 0, -9223372036854775808) %i.pw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.px) #34
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2622

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.py = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.pt
  %i.pz = load i8, ptr %i.py, align 1, !alias.scope !2683, !noalias !2685, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.pz, %i.pn
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.ev, label %bb.ew

bb.ew:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.qa = add nuw nsw i64 %i.ik, 15
  %i.qb = icmp ult i64 %i.if, %i.qa
  br i1 %i.qb, label %.lr.ph.split.us.i.i.i.i.i.i, label %bb.ex

.thread.i.i.i.i.i:                                ; preds = %bb.et
  %i.qc = icmp ult i64 %i.if, 17
  br i1 %i.qc, label %.lr.ph.split.us.i.i.i.i.i.i, label %.thread93.i.i.i.i.i

.thread93.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.qd = insertelement <16 x i8> poison, i8 %i.pn, i64 0
  %i.qe = shufflevector <16 x i8> %i.qd, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !2683, !noalias !2684
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.qf = insertelement <16 x i8> poison, i8 %i.pn, i64 0
  %i.qg = shufflevector <16 x i8> %i.qf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ey

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.thread.i.i.i.i.i, %bb.ew
  %bcmp.i.i.us23.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.id, ptr noundef nonnull readonly dereferenceable(1) %i.ii, i64 range(i64 2, 33) %i.ik), !alias.scope !2693, !noalias !2694
  %i.qh = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i, 0
  br i1 %i.qh, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.qi, ptr noundef nonnull readonly dereferenceable(1) %i.ii, i64 range(i64 2, 33) %i.ik), !alias.scope !2693, !noalias !2694
  %i.qj = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.qj, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.qi, %.split.us.i.i.i.i.i.i ], [ %i.id, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.qk, %.split.us.i.i.i.i.i.i ], [ %i.if, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.qk = add i64 %.in.i.i.i.i.i, -1              ; 2 uses
  %.not28.i.i.i.i.i.i = icmp ugt i64 %i.ik, %i.qk
  br i1 %.not28.i.i.i.i.i.i, label %.thread55.i.i.i, label %.split.us.i.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ex, %.thread93.i.i.i.i.i
  %i.ql = phi i8 [ %.pre.i.i.i.i.i, %.thread93.i.i.i.i.i ], [ %i.pz, %bb.ex ]
  %i.qm = phi <16 x i8> [ %i.qe, %.thread93.i.i.i.i.i ], [ %i.qg, %bb.ex ] ; 6 uses
  %storemerge9295.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i ], [ %i.pt, %bb.ex ] ; 6 uses
  %i.qn = insertelement <16 x i8> poison, i8 %i.ql, i64 0
  %i.qo = shufflevector <16 x i8> %i.qn, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2698
  store ptr %i.id, ptr %i.d, align 8, !noalias !2698
  %i.qq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.if, ptr %i.qq, align 8, !noalias !2698
  %i.qr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.qp, ptr %i.qr, align 8, !noalias !2698
  %i.qs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.po, ptr %i.qs, align 8, !noalias !2698
  %i.qt = add nuw nsw i64 %i.ik, 63               ; 2 uses
  %.not.i7.i.i.i.i = icmp ult i64 %i.qt, %i.if
  br i1 %.not.i7.i.i.i.i, label %.lr.ph.i10.i.i.i.i, label %.preheader.i8.i.i.i.i

.preheader.i8.i.i.i.i:                            ; preds = %bb.fc, %bb.ey
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.ey ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.fc ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ey ], [ %i.sp, %bb.fc ] ; 2 uses
  %i.qu = add nuw nsw i64 %i.ik, 15               ; 2 uses
  %i.qv = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.qu
  %i.qw = icmp uge i64 %i.qv, %i.if
  %i.qx = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i = select i1 %i.qw, i1 true, i1 %i.qx
  br i1 %or.cond3105.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i, label %.lr.ph107.i.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.ey, %bb.fc
  %.sroa.06.0103.i.i.i.i.i = phi i64 [ %i.sp, %bb.fc ], [ 0, %bb.ey ] ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.06.0103.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.qy, align 1, !alias.scope !2699, !noalias !2700
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.qz, align 1, !alias.scope !2699, !noalias !2700
  %i.ra = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.qm
  %i.rb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i, %i.qo
  %i.rc = and <16 x i1> %i.ra, %i.rb
  %i.rd = bitcast <16 x i1> %i.rc to i16          ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.re, align 1, !alias.scope !2699, !noalias !2700
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.rf, align 1, !alias.scope !2699, !noalias !2700
  %i.rg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i, %i.qm
  %i.rh = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i, %i.qo
  %i.ri = and <16 x i1> %i.rg, %i.rh
  %i.rj = bitcast <16 x i1> %i.ri to i16          ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qy, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.rk, align 1, !alias.scope !2699, !noalias !2700
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.rl, align 1, !alias.scope !2699, !noalias !2700
  %i.rm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i, %i.qm
  %i.rn = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i, %i.qo
  %i.ro = and <16 x i1> %i.rm, %i.rn
  %i.rp = bitcast <16 x i1> %i.ro to i16          ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.rq, align 1, !alias.scope !2699, !noalias !2700
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.rr, align 1, !alias.scope !2699, !noalias !2700
  %i.rs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i, %i.qm
  %i.rt = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i, %i.qo
  %i.ru = and <16 x i1> %i.rs, %i.rt
  %i.rv = bitcast <16 x i1> %i.ru to i16          ; 2 uses
  %i.rw = icmp eq i16 %i.rd, 0
  br i1 %i.rw, label %.preheader96.1.i.i.i.i.i, label %bb.fd

.preheader96.1.i.i.i.i.i:                         ; preds = %.noexc21.i.i.i, %.lr.ph.i10.i.i.i.i
  %.sroa.014.2.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i10.i.i.i.i ], [ %i.su, %.noexc21.i.i.i ] ; 3 uses
  %i.rx = icmp eq i16 %i.rj, 0
  br i1 %i.rx, label %.preheader96.2.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %.preheader96.1.i.i.i.i.i
  %i.ry = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 16
  %i.rz = trunc nuw i8 %.sroa.014.2.i.i.i.i.i to i1
  %i.sa = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ry, i16 noundef %i.rj, i1 noundef zeroext %i.rz) #33
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !2622

.noexc18.i.i.i:                                   ; preds = %bb.ez
  %i.sb = zext i1 %i.sa to i8
  %i.sc = or i8 %.sroa.014.2.i.i.i.i.i, %i.sb
  br label %.preheader96.2.i.i.i.i.i

.preheader96.2.i.i.i.i.i:                         ; preds = %.noexc18.i.i.i, %.preheader96.1.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i, %.preheader96.1.i.i.i.i.i ], [ %i.sc, %.noexc18.i.i.i ] ; 3 uses
  %i.sd = icmp eq i16 %i.rp, 0
  br i1 %i.sd, label %.preheader96.3.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %.preheader96.2.i.i.i.i.i
  %i.se = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 32
  %i.sf = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i to i1
  %i.sg = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.se, i16 noundef %i.rp, i1 noundef zeroext %i.sf) #33
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !2622

.noexc19.i.i.i:                                   ; preds = %bb.fa
  %i.sh = zext i1 %i.sg to i8
  %i.si = or i8 %.sroa.014.2.1.i.i.i.i.i, %i.sh
  br label %.preheader96.3.i.i.i.i.i

.preheader96.3.i.i.i.i.i:                         ; preds = %.noexc19.i.i.i, %.preheader96.2.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i, %.preheader96.2.i.i.i.i.i ], [ %i.si, %.noexc19.i.i.i ] ; 3 uses
  %i.sj = icmp eq i16 %i.rv, 0
  br i1 %i.sj, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.preheader96.3.i.i.i.i.i
  %i.sk = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 48
  %i.sl = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i to i1
  %i.sm = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.sk, i16 noundef %i.rv, i1 noundef zeroext %i.sl) #33
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !2622

.noexc20.i.i.i:                                   ; preds = %bb.fb
  %i.sn = zext i1 %i.sm to i8
  %i.so = or i8 %.sroa.014.2.2.i.i.i.i.i, %i.sn
  br label %bb.fc

bb.fc:                                            ; preds = %.noexc20.i.i.i, %.preheader96.3.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i, %.preheader96.3.i.i.i.i.i ], [ %i.so, %.noexc20.i.i.i ] ; 2 uses
  %i.sp = add i64 %.sroa.06.0103.i.i.i.i.i, 64    ; 3 uses
  %i.sq = add i64 %i.sp, %i.qt
  %i.sr = icmp uge i64 %i.sq, %i.if
  %i.ss = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.sr, i1 true, i1 %i.ss
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i8.i.i.i.i, label %.lr.ph.i10.i.i.i.i

bb.fd:                                            ; preds = %.lr.ph.i10.i.i.i.i
  %i.st = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.0103.i.i.i.i.i, i16 noundef %i.rd, i1 noundef zeroext false) #33
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !2622

.noexc21.i.i.i:                                   ; preds = %bb.fd
  %i.su = zext i1 %i.st to i8
  br label %.preheader96.1.i.i.i.i.i

._crit_edge.i9.i.i.i.i:                           ; preds = %bb.fe, %.preheader.i8.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i, %.preheader.i8.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i, %bb.fe ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i1 [ %i.qx, %.preheader.i8.i.i.i.i ], [ %i.to, %bb.fe ]
  %i.sv = sub nuw i64 %i.if, %i.po
  %i.sw = add i64 %i.sv, -16                      ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.sw ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i = load <16 x i8>, ptr %i.sx, align 1, !alias.scope !2699, !noalias !2703
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i59.i.i.i.i.i = load <16 x i8>, ptr %i.sy, align 1, !alias.scope !2699, !noalias !2703
  %i.sz = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i, %i.qm
end_hunk_1
