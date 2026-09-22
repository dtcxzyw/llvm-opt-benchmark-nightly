Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/execute.execute.3f09b7a32ff94216-cgu.1?download=true
inline.NumInlined: 335
inline.NumDeleted: 168
begin_hunk_0_@_RNvNvCs5py4yDLWIja_7execute1__19___libfuzzer_sys_run:bb.a
bb.k:                                             ; preds = %bb.j
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !523
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.bb = phi <2 x ptr> [ %i.bg, %bb.m ], [ <ptr null, ptr undef>, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  %i.bd = load i32, ptr %i.bc, align 8, !noalias !523, !noundef !5
  %i.be = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !523
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.o, label %_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bg = load <2 x ptr>, ptr %i.ax, align 8, !noalias !523
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i: ; preds = %bb.l
  %i.bh = atomicrmw add ptr @_RNvNvMNtNtCsefoF4u9kbII_5wasmi5store2idNtB4_7StoreId3new8STORE_ID, i32 1 acq_rel, align 4, !noalias !523
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.431.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.435.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.439.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.443.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.453.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.457.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !522, !noalias !521
  store i64 0, ptr %i.d, align 8, !alias.scope !522, !noalias !521
  %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !522, !noalias !521
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.07.sroa.0.sroa.7.sroa.5.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.812.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.07.sroa.0.sroa.7.sroa.5.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, i8 0, i64 44, i1 false), !alias.scope !522, !noalias !521
  store i64 -1, ptr %.sroa.812.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 1576
  store i32 %i.bh, ptr %i.bi, align 8, !alias.scope !522, !noalias !521
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 0, ptr %i.bj, align 8, !alias.scope !522, !noalias !521
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 0, ptr %i.bk, align 8, !alias.scope !522, !noalias !521
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  store i64 0, ptr %i.bl, align 8, !alias.scope !522, !noalias !521
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  store i64 0, ptr %i.bm, align 8, !alias.scope !522, !noalias !521
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 0, ptr %i.bn, align 8, !alias.scope !522, !noalias !521
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.448.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.549.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  store i64 0, ptr %i.bo, align 8, !alias.scope !522, !noalias !521
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 1352
  store i64 0, ptr %i.bp, align 8, !alias.scope !522, !noalias !521
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.549.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !522, !noalias !521
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.462.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i64 0, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.at, ptr %i.bq, align 8, !alias.scope !522, !noalias !521
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i64 0, ptr %i.br, align 8, !alias.scope !522, !noalias !521
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store <2 x ptr> %i.bb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i8 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !522, !noalias !521
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 1580
  store i32 %i.bd, ptr %i.bs, align 4, !alias.scope !522, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !524
  store i64 0, ptr %i.c, align 8, !noalias !524
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !524
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !524
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !524
  %i.bt = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 65) 64, i64 noundef range(i64 1, 9) 8) #21, !noalias !524 ; 9 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.p, label %bb.v, !prof !525

bb.p:                                             ; preds = %_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc.i.i unwind label %bb.q, !noalias !524

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1u_4func10TrampolineEINtB27_16TrampolineEntityNtNtB1u_7limiter11StoreLimitsEEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %.body.i unwind label %bb.r, !noalias !524

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !524
  unreachable

.body.i:                                          ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi5store5inner10StoreInnerECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1584) %i.d) #22
          to label %.body64 unwind label %bb.s, !noalias !521

bb.s:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !521
  unreachable

bb.t:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

.body64:                                          ; preds = %bb.cf, %bb.bc, %.body.i, %bb.u, %.body
  %.pn48 = phi { ptr, i32 } [ %.pn46, %.body ], [ %i.bv, %.body.i ], [ %i.dv, %bb.bc ], [ %i.by, %bb.u ], [ %i.ga, %bb.cf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker6LinkerNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(88) %i.u) #22
          to label %.body96 unwind label %bb.cc

bb.u:                                             ; preds = %bb.cg, %bb.bd
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body64

.body:                                            ; preds = %.body87, %bb.ak, %bb.ag, %.body67
  %.pn46 = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.bz, %.body67 ], [ %.pn44, %bb.ak ], [ %.pn44, %.body87 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi5store5StoreNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1688) %i.t) #22
          to label %.body64 unwind label %bb.cc

.body67:                                          ; preds = %bb.v, %bb.z, %bb.ac, %bb.ad, %bb.x, %bb.ab, %bb.bb, %bb.cd
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i
  store i64 1, ptr %i.bt, align 8, !noalias !526
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 65536000, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !526
  %.sroa.4.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx142, align 8, !noalias !526
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 10000, ptr %.sroa.5145.0..sroa_idx, align 8, !noalias !526
  %.sroa.6.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 10000, ptr %.sroa.6.0..sroa_idx146, align 8, !noalias !526
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 10000, ptr %.sroa.7148.0..sroa_idx, align 8, !noalias !526
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !526
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 1584 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1688) %i.t, ptr noundef nonnull align 8 dereferenceable(1584) %i.d, i64 1584, i1 false), !noalias !527
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1608
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx1.i, align 8, !alias.scope !520, !noalias !527
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1616
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1632
  store ptr null, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !520, !noalias !527
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 1672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) @9, i64 16, i1 false), !noalias !527
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 1648
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB1M_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB3A_5inout11InOutParamsNtBa_9CallHooksEE9call_onceCs5py4yDLWIja_7execute, ptr %i.cc, align 8, !alias.scope !520, !noalias !527
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1656
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceCs5py4yDLWIja_7execute, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !520, !noalias !527
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1664
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceCs5py4yDLWIja_7execute, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !520, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !521
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 1624
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !528
  store ptr @0, ptr %i.cd, align 8, !alias.scope !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ce = invoke noundef align 8 ptr @_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner8set_fuel(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %i.t, i64 noundef 1000)
          to label %bb.w unwind label %.body67    ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.ce, ptr %i.s, align 8
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsefoF4u9kbII_5wasmi5error5ErrorEECs5py4yDLWIja_7execute.exit unwind label %.body67

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cf = and i16 %.sroa.0.0.copyload, -256
  %.not157 = icmp eq i16 %i.cf, 256
  br i1 %.not157, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cg = invoke noundef align 8 ptr @_RNvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB5_6Module8validate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.aa unwind label %.body67   ; 2 uses

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cg, ptr %i.r, align 8
  %.not37 = icmp eq ptr %i.cg, null
  br i1 %.not37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsefoF4u9kbII_5wasmi5error5ErrorEECs5py4yDLWIja_7execute.exit74 unwind label %.body67

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ch = invoke { i64, ptr } @_RNvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB5_6Module13new_unchecked(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.ae unwind label %.body67

bb.ad:                                            ; preds = %bb.y
  %i.ci = invoke { i64, ptr } @_RINvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB6_6Module3newRShECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.ae unwind label %.body67

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn = phi { i64, ptr } [ %i.ci, %bb.ad ], [ %i.ch, %bb.ac ] ; 2 uses
  %.sroa.06.0 = extractvalue { i64, ptr } %.pn, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn, 1  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cj = trunc nuw i64 %.sroa.06.0 to i1
  br i1 %i.cj, label %bb.af, label %bb.aj, !prof !14

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  store ptr %.sroa.3.0, ptr %i.e, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #22
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  store ptr %.sroa.3.0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkerNtNtB8_7limiter11StoreLimitsE21instantiate_and_startQINtNtB8_5store5StoreBM_EECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.am unwind label %bb.al

.body87:                                          ; preds = %bb.ay, %bb.al, %.body83
  %.pn44 = phi { ptr, i32 } [ %.pn40.pn.pn, %.body83 ], [ %i.cp, %bb.al ], [ %i.dq, %bb.ay ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.cm = load ptr, ptr %i.q, align 8, !alias.scope !532, !nonnull !5, !noundef !5
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !532
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ak, label %.body

bb.ak:                                            ; preds = %.body87
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module11ModuleInnerE9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #23
          to label %.body unwind label %bb.cc

bb.al:                                            ; preds = %bb.az, %bb.an, %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.am:                                            ; preds = %bb.aj
  %i.cq = load i32, ptr %i.o, align 8, !range !15, !noundef !5
  %i.cr = trunc nuw i32 %i.cq to i1
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsefoF4u9kbII_5wasmi8instance8InstanceNtNtB11_5error5ErrorEECs5py4yDLWIja_7execute.exit unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.cu = load <2 x i32>, ptr %i.ct, align 4
  store <2 x i32> %i.cu, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMNtCsefoF4u9kbII_5wasmi8instanceNtB3_8Instance7exportsNtNtB5_7limiter11StoreLimitsRINtNtB5_5store5StoreBU_EECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.t)
          to label %bb.aq unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit, %bb.ap
  %.pn40.pn = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #22
          to label %.body83 unwind label %bb.cc

bb.ap:                                            ; preds = %._crit_edge, %bb.aq, %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsefoF4u9kbII_5wasmi4func4FuncEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtNtB15_8instance7exports11ExportsIterNvMs8_B38_NtB38_6Export9into_funcEE9from_iterCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.k)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dc = load i64, ptr %i.l, align 8, !range !6, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 3 uses
  %i.df = icmp ult i64 %i.de, 1152921504606846976
  call void @llvm.assume(i1 %i.df)
  %.idx = shl nuw nsw i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.db, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.dc, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.dg, ptr %.sroa.69.0..sroa_idx, align 8
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %.sroa.4.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  br label %bb.at

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit: ; preds = %bb.bs, %bb.br, %bb.bt, %bb.as
  %.pn40 = phi { ptr, i32 } [ %i.dj, %bb.as ], [ %i.ev, %bb.bt ], [ %i.ev, %bb.br ], [ %i.ev, %bb.bs ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit unwind label %bb.cc

bb.as:                                            ; preds = %bb.cb, %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit

bb.at:                                            ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117
  %i.dk = phi ptr [ %i.db, %.lr.ph ], [ %i.fu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !533
  %i.dm = load <2 x i32>, ptr %i.dk, align 4, !noalias !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x i32> %i.dm, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRINtNtB8_5store5StoreNtNtB8_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.t)
          to label %bb.bq unwind label %bb.as

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117, %bb.ar
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81 unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body83 unwind label %bb.aw

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81
end_hunk_0
