Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB5_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtBV_4moka14MokaCacheEntryE15with_everythingBX_:bb.a
  store ptr %.sink49.i75.i, ptr %i.cv, align 8, !noalias !18653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18664
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  store i64 1, ptr %i.cw, align 128, !noalias !18664
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  store i64 1, ptr %i.cx, align 8, !noalias !18664
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  store i8 0, ptr %i.cy, align 16, !noalias !18664
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %.sroa.9.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store i32 0, ptr %.sroa.9.0..sroa_idx.i94.i, align 128, !noalias !18664
  %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 260
  store i8 0, ptr %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !18664
  %.sroa.9.sroa.0.sroa.5.sroa.4.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store i64 0, ptr %.sroa.9.sroa.0.sroa.5.sroa.4.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !18664
  %.sroa.9.sroa.0.sroa.5.sroa.5.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !18664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.611.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !18664
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.5.sroa.5.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 16, !noalias !18664
  %.sroa.9.sroa.0.sroa.5.sroa.6.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %.sroa.9.sroa.0.sroa.5.sroa.8.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.0.sroa.5.sroa.6.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !18664
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.5.sroa.8.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !18664
  %.sroa.9.sroa.0.sroa.5.sroa.9.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  store i64 0, ptr %.sroa.9.sroa.0.sroa.5.sroa.9.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 16, !noalias !18664
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  store i8 1, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !18664
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18665
  %i.cz = call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #65, !noalias !18665 ; 8 uses
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  br i1 %i.da, label %bb.y, label %bb.ab, !prof !64

bb.y:                                             ; preds = %_RINvNtCs40Ppcsylqp4_17crossbeam_channel7channel7boundedINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1M_4moka14MokaCacheEntryEEB1O_.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #68
          to label %.noexc.i95.i unwind label %bb.z, !noalias !18664

.noexc.i95.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors4list7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2M_4moka14MokaCacheEntryEEEEB2O_(ptr noalias noundef nonnull align 128 dereferenceable(512) %i.m) #69
          to label %bb.cz unwind label %bb.aa, !noalias !18664

bb.aa:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !18664
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs40Ppcsylqp4_17crossbeam_channel7channel7boundedINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1M_4moka14MokaCacheEntryEEB1O_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.cz, ptr noundef nonnull align 128 dereferenceable(512) %i.m, i64 512, i1 false), !noalias !18664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !18653
  store i64 1, ptr %i.x, align 8, !noalias !18653
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cz, ptr %i.dd, align 8, !noalias !18653
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18653
  store i64 %.sroa.028.0.copyload, ptr %i.w, align 8, !noalias !18666
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx30, align 8, !noalias !18666
  %.sroa.8.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx32, align 8, !noalias !18666
  call void @llvm.experimental.noalias.scope.decl(metadata !18667)
  call void @llvm.experimental.noalias.scope.decl(metadata !18668)
  call void @llvm.experimental.noalias.scope.decl(metadata !18669)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.327.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18653
  store ptr %8, ptr %i.l, align 8, !noalias !18670
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %9, ptr %i.de, align 8, !noalias !18670
  store i64 %.sink51.i153.i, ptr %i.k, align 8, !noalias !18670
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sink49.i163.i, ptr %i.df, align 8, !noalias !18670
  store i64 %.sink51.i153.i, ptr %i.j, align 8, !noalias !18670
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sink49.i75.i, ptr %i.dg, align 8, !noalias !18670
  store i64 %16, ptr %i.i, align 8, !noalias !18670
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %17, ptr %i.dh, align 8, !noalias !18670
  %i.di = trunc nuw i64 %4 to i1
  %i.dj = add i64 %5, 384
  %i.dk = xor i1 %i.di, true
  %i.dl = select i1 %or.cond.i, i1 true, i1 %i.dk
  %.sroa.010.1.i.i = select i1 %i.dl, i64 0, i64 %i.dj ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i, i64 1, i64 64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18671
  %i.dm = shl nuw nsw i64 %spec.select.i.i, 4     ; 5 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18672
  %i.dn = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18672 ; 5 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.af, label %bb.ag

.body146.i.i:                                     ; preds = %bb.az, %bb.ax, %bb.aw, %.body.i.i.i, %bb.ae
  %.sroa.037.0.i.i = phi i1 [ %.sroa.037.1.i.i, %bb.az ], [ true, %bb.ae ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %.body.i.i.i ]
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.az ], [ %i.dt, %bb.ae ], [ %eh.lpad-body.ph.i.i.i, %bb.ax ], [ %eh.lpad-body.ph.i.i.i, %bb.aw ], [ %i.eg, %.body.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18673)
  call void @llvm.experimental.noalias.scope.decl(metadata !18674)
  %i.dp = load ptr, ptr %13, align 8, !alias.scope !18675, !noundef !48 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskTBvlRM5ILY_4moka6policy16ExpirationPolicyNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1s_4moka14MokaCacheEntryEEB1u_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.body146.i.i
  %i.dr = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !18676
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskTBvlRM5ILY_4moka6policy16ExpirationPolicyNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1s_4moka14MokaCacheEntryEEB1u_.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1n_4moka14MokaCacheEntryENtNtCscI6d9CVNmLh_4core6marker4SyncNtB2N_4SendEL_E9drop_slowB1p_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %13)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskTBvlRM5ILY_4moka6policy16ExpirationPolicyNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1s_4moka14MokaCacheEntryEEB1u_.exit.i.i unwind label %bb.bo, !noalias !18677

bb.ae:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body146.i.i

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dm) #68
          to label %.noexc148.i.i unwind label %bb.ae, !noalias !18678

.noexc148.i.i:                                    ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ab
  store i64 %spec.select.i.i, ptr %i.d, align 8, !noalias !18671
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.dn, ptr %i.du, align 8, !noalias !18671
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.dv, align 8, !noalias !18671
  %i.dw = icmp eq i64 %.sroa.010.1.i.i, 0
  br i1 %i.dw, label %.thread.i.i.i, label %bb.al

.thread.i.i.i:                                    ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i8 0, i64 %i.dm, i1 false), !noalias !18679
  br label %bb.ay

bb.ah:                                            ; preds = %bb.av
  %.sroa.023.0.copyload.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !18671 ; 2 uses
  %.sroa.424.0.copyload.pre.i.i.i = load ptr, ptr %i.du, align 8, !noalias !18671 ; 4 uses
  %i.dx = icmp ugt i64 %.sroa.023.0.copyload.pre.i.i.i, %spec.select.i.i
  br i1 %i.dx, label %bb.ai, label %bb.ay

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload.pre.i.i.i) ]
  %i.dy = shl nuw i64 %.sroa.023.0.copyload.pre.i.i.i, 4 ; 2 uses
  %i.dz = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.424.0.copyload.pre.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 8, 0) %i.dm) #65, !noalias !18680 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.aj, label %bb.ay

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dm) #68
          to label %bb.ak unwind label %.body.i.i.i, !noalias !18681

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.eb = shl i64 %.sroa.010.1.i.i, 1
  %i.ec = select i1 %or.cond.i, i64 0, i64 6
  %i.ed = lshr i64 %i.eb, %i.ec                   ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 2
  br i1 %i.ee, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.au, %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.body.i.i.i:                                      ; preds = %bb.aj
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.pre.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18681
  br label %.body146.i.i

bb.an:                                            ; preds = %bb.al
  %i.eh = add i64 %i.ed, -1
  %i.ei = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = lshr i64 -1, %i.ei
  %i.ek = add i64 %i.ej, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.sroa.06.0.i.i.i = phi i64 [ %i.ek, %bb.an ], [ 1, %bb.al ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %bb.ao
  %i.el = phi ptr [ %i.dn, %bb.ao ], [ %i.eu, %bb.av ]
  %i.em = phi i64 [ 0, %bb.ao ], [ %i.en, %bb.av ] ; 3 uses
  %i.en = add i64 %i.em, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18671
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2D_10ValueEntryB1z_NtNtB1D_4moka14MokaCacheEntryEEE11with_lengthB1F_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, i64 noundef 0, i64 noundef %.sroa.06.0.i.i.i)
          to label %bb.aq unwind label %bb.am, !noalias !18679

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18682
  %i.eo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18682 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ar, label %bb.at, !prof !64

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #68
          to label %.noexc.i.i.i unwind label %bb.as, !noalias !18679

.noexc.i.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtB37_10ValueEntryB23_NtNtB27_4moka14MokaCacheEntryEEEEB29_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #69, !noalias !18679
  br label %bb.aw

bb.at:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eo, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !18679
  %i.er = ptrtoint ptr %i.eo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18671
  call void @llvm.experimental.noalias.scope.decl(metadata !18683)
  %i.es = load i64, ptr %i.d, align 8, !range !63, !alias.scope !18683, !noalias !18671, !noundef !48
  %i.et = icmp eq i64 %i.em, %i.es
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCskTBvlRM5ILY_4moka3cht7segment7SegmentINtNtB7_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBT_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB1N_NtNtB1R_4moka14MokaCacheEntryEEEE8grow_oneB1T_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge.i.i.i unwind label %bb.am, !noalias !18679

._crit_edge.i.i.i:                                ; preds = %bb.au
  %.pre.i.i.i = load ptr, ptr %i.du, align 8, !alias.scope !18683, !noalias !18671
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i.i, %bb.at
  %i.eu = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.el, %bb.at ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.em ; 2 uses
  store i64 %i.er, ptr %i.ev, align 8, !noalias !18684
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !18684
  store i64 %i.en, ptr %i.dv, align 8, !alias.scope !18683, !noalias !18671
  %exitcond.not.i.i.i = icmp eq i64 %i.en, %spec.select.i.i
  br i1 %exitcond.not.i.i.i, label %bb.ah, label %bb.ap

bb.aw:                                            ; preds = %bb.as, %bb.am
  %eh.lpad-body.ph.i.i.i = phi { ptr, i32 } [ %i.ef, %bb.am ], [ %i.eq, %bb.as ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.d, align 8, !noalias !18671 ; 2 uses
  %i.ew = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ew, label %.body146.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val18.i.i.i = load ptr, ptr %i.du, align 8, !noalias !18671, !nonnull !48, !noundef !48
  %i.ex = shl nuw i64 %.val.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18679
  br label %.body146.i.i

bb.ay:                                            ; preds = %bb.ai, %bb.ah, %.thread.i.i.i
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.dz, %bb.ai ], [ %i.dn, %.thread.i.i.i ], [ %.sroa.424.0.copyload.pre.i.i.i, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18671
  %i.ey = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.bb unwind label %bb.ba, !noalias !18678 ; 2 uses

bb.az:                                            ; preds = %.body.i.i, %bb.ba
  %.sroa.037.1.i.i = phi i1 [ %.not.i, %.body.i.i ], [ true, %bb.ba ]
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.ez, %bb.ba ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i.i.i) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka3cht7segment7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBI_6common10concurrent3arc7MiniArcINtB2X_10ValueEntryB1T_NtNtB1X_4moka14MokaCacheEntryEEEEB1Z_(ptr nonnull %.sroa.410.0.copyload.i.i.i.i, i64 %spec.select.i.i) #69
          to label %.body146.i.i unwind label %bb.bo, !noalias !18678

bb.ba:                                            ; preds = %bb.ay
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18670
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !18670
  store ptr inttoptr (i64 8 to ptr), ptr %i.fa, align 8, !noalias !18670
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !18670
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.ey, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !18670
  %.sroa.654.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ey, ptr %.sroa.654.0..sroa_idx.i.i, align 8, !noalias !18670
  %.not.i = xor i1 %i.ah, true
  br i1 %i.ah, label %bb.bc, label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %12) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18670
  %i.fb = load i64, ptr %i.w, align 8, !range !50, !alias.scope !18668, !noalias !18653, !noundef !48
  %.not123.i.i = icmp eq i64 %i.fb, -1
  br i1 %.not123.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18670
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.be unwind label %bb.bp, !noalias !18678

bb.be:                                            ; preds = %bb.bd
  %.sroa.0176.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !18670 ; 2 uses
  %.sroa.5177.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5177.0.copyload.i.i = load ptr, ptr %.sroa.5177.0..sroa_idx.i.i, align 8, !noalias !18670 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18670
  %.0.val.off.i.i.i = add i64 %.sroa.0176.0.copyload.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5177.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5177.0.copyload.i.i, i64 noundef %.sroa.0176.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !18685
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18686
  %i.fc = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18686 ; 9 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bg, label %bb.bl, !prof !64

bb.bg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #68
          to label %.noexc149.i.i unwind label %bb.bh, !noalias !18678

.noexc149.i.i:                                    ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2f_4moka14MokaCacheEntryEEEB2h_(ptr nonnull %11, ptr nonnull %12) #69
          to label %.body.i.i unwind label %bb.bi, !noalias !18678

bb.bi:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !18678
  unreachable

.body.i.i:                                        ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bp, %bb.bk, %bb.bj, %bb.bh
  %.pn.i.i = phi { ptr, i32 } [ %i.fg, %bb.bj ], [ %eh.lpad-body157.i.i, %bb.bz ], [ %i.fl, %bb.bp ], [ %i.fe, %bb.bh ], [ %i.fg, %bb.bk ], [ %eh.lpad-body157.i.i, %bb.ca ], [ %eh.lpad-body157.i.i, %bb.by ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerWheelNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEEB2k_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #69
          to label %bb.az unwind label %bb.bo, !noalias !18678

bb.bj:                                            ; preds = %bb.bm
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = atomicrmw add ptr %i.fc, i64 -1 release, align 8, !noalias !18687
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.bk, label %.body.i.i

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1H_4moka14MokaCacheEntryEE9drop_slowB1J_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %.body.i.i unwind label %bb.bo, !noalias !18678

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i.i
  store i64 1, ptr %i.fc, align 8, !noalias !18678
  %.sroa.4194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 1, ptr %.sroa.4194.0..sroa_idx.i.i, align 8, !noalias !18678
  %.sroa.5195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %11, ptr %.sroa.5195.0..sroa_idx.i.i, align 8, !noalias !18678
  %.sroa.7196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store ptr %12, ptr %.sroa.7196.0..sroa_idx.i.i, align 8, !noalias !18678
  %.sroa.9197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i8 1, ptr %.sroa.9197.0..sroa_idx.i.i, align 8, !noalias !18678
  store ptr %i.fc, ptr %i.f, align 8, !noalias !18670
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18688
  %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i.i.i = call align 8 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 1024, i64 8), !noalias !18689 ; 2 uses
  %i.fj = icmp eq ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i.i.i, null
  br i1 %i.fj, label %bb.bm, label %_RNvMNtNtCskTBvlRM5ILY_4moka3cht7segmentINtB2_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE37with_num_segments_capacity_and_hasherB1t_.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #68
          to label %.noexc151.i.i unwind label %bb.bj, !noalias !18678

.noexc151.i.i:                                    ; preds = %bb.bm
  unreachable

_RNvMNtNtCskTBvlRM5ILY_4moka3cht7segmentINtB2_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE37with_num_segments_capacity_and_hasherB1t_.exit.i.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18670
  br label %bb.bn

bb.bn:                                            ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka3cht7segmentINtB2_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE37with_num_segments_capacity_and_hasherB1t_.exit.i.i, %bb.bb
  %.sroa.018.0.i.i = phi ptr [ %i.fc, %_RNvMNtNtCskTBvlRM5ILY_4moka3cht7segmentINtB2_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE37with_num_segments_capacity_and_hasherB1t_.exit.i.i ], [ null, %bb.bb ] ; 4 uses
  %.sroa.019.0.i.i = phi ptr [ %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i.i.i, %_RNvMNtNtCskTBvlRM5ILY_4moka3cht7segmentINtB2_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE37with_num_segments_capacity_and_hasherB1t_.exit.i.i ], [ null, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18670
  store ptr %.sroa.018.0.i.i, ptr %i.g, align 8, !noalias !18670
  br i1 %15, label %bb.br, label %bb.ci

bb.bo:                                            ; preds = %bb.cg, %bb.cf, %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskTBvlRM5ILY_4moka6policy16ExpirationPolicyNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1s_4moka14MokaCacheEntryEEB1u_.exit.i.i, %bb.ca, %.body156.i.i, %bb.bp, %bb.bk, %.body.i.i, %bb.az, %bb.ad
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !18678
end_hunk_0
